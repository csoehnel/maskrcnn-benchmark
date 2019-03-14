import os
import json
import pandas as pd
from argparse import ArgumentParser

dict_bdd2coco = {
    "bike":"bicycle",
    "bus":"bus",
    "car":"car",
    "motor":"motorcycle",
    "person":"person",
    "rider":"person",
    "traffic light":"traffic light",
    "traffic sign":"stop sign",
    "train":"train",
    "truck":"truck",
}

coco_categories = [
    {"supercategory": "person", "id": 1, "name": "person"},
    {"supercategory": "vehicle", "id": 2, "name": "bicycle"},
    {"supercategory": "vehicle", "id": 3, "name": "car"},
    {"supercategory": "vehicle", "id": 4, "name": "motorcycle"},
    {"supercategory": "vehicle", "id": 5, "name": "airplane"},
    {"supercategory": "vehicle", "id": 6, "name": "bus"},
    {"supercategory": "vehicle", "id": 7, "name": "train"},
    {"supercategory": "vehicle", "id": 8, "name": "truck"},
    {"supercategory": "vehicle", "id": 9, "name": "boat"},
    {"supercategory": "outdoor", "id": 10, "name": "traffic light"},
    {"supercategory": "outdoor", "id": 11, "name": "fire hydrant"},
    {"supercategory": "outdoor", "id": 13, "name": "stop sign"},
    {"supercategory": "outdoor", "id": 14, "name": "parking meter"},
    {"supercategory": "outdoor", "id": 15, "name": "bench"},
    {"supercategory": "animal", "id": 16, "name": "bird"},
    {"supercategory": "animal", "id": 17, "name": "cat"},
    {"supercategory": "animal", "id": 18, "name": "dog"},
    {"supercategory": "animal", "id": 19, "name": "horse"},
    {"supercategory": "animal", "id": 20, "name": "sheep"},
    {"supercategory": "animal", "id": 21, "name": "cow"},
    {"supercategory": "animal", "id": 22, "name": "elephant"},
    {"supercategory": "animal", "id": 23, "name": "bear"},
    {"supercategory": "animal", "id": 24, "name": "zebra"},
    {"supercategory": "animal", "id": 25, "name": "giraffe"},
    {"supercategory": "accessory", "id": 27, "name": "backpack"},
    {"supercategory": "accessory", "id": 28, "name": "umbrella"},
    {"supercategory": "accessory", "id": 31, "name": "handbag"},
    {"supercategory": "accessory", "id": 32, "name": "tie"},
    {"supercategory": "accessory", "id": 33, "name": "suitcase"},
    {"supercategory": "sports", "id": 34, "name": "frisbee"},
    {"supercategory": "sports", "id": 35, "name": "skis"},
    {"supercategory": "sports", "id": 36, "name": "snowboard"},
    {"supercategory": "sports", "id": 37, "name": "sports ball"},
    {"supercategory": "sports", "id": 38, "name": "kite"},
    {"supercategory": "sports", "id": 39, "name": "baseball bat"},
    {"supercategory": "sports", "id": 40, "name": "baseball glove"},
    {"supercategory": "sports", "id": 41, "name": "skateboard"},
    {"supercategory": "sports", "id": 42, "name": "surfboard"},
    {"supercategory": "sports", "id": 43, "name": "tennis racket"},
    {"supercategory": "kitchen", "id": 44, "name": "bottle"},
    {"supercategory": "kitchen", "id": 46, "name": "wine glass"},
    {"supercategory": "kitchen", "id": 47, "name": "cup"},
    {"supercategory": "kitchen", "id": 48, "name": "fork"},
    {"supercategory": "kitchen", "id": 49, "name": "knife"},
    {"supercategory": "kitchen", "id": 50, "name": "spoon"},
    {"supercategory": "kitchen", "id": 51, "name": "bowl"},
    {"supercategory": "food", "id": 52, "name": "banana"},
    {"supercategory": "food", "id": 53, "name": "apple"},
    {"supercategory": "food", "id": 54, "name": "sandwich"},
    {"supercategory": "food", "id": 55, "name": "orange"},
    {"supercategory": "food", "id": 56, "name": "broccoli"},
    {"supercategory": "food", "id": 57, "name": "carrot"},
    {"supercategory": "food", "id": 58, "name": "hot dog"},
    {"supercategory": "food", "id": 59, "name": "pizza"},
    {"supercategory": "food", "id": 60, "name": "donut"},
    {"supercategory": "food", "id": 61, "name": "cake"},
    {"supercategory": "furniture", "id": 62, "name": "chair"},
    {"supercategory": "furniture", "id": 63, "name": "couch"},
    {"supercategory": "furniture", "id": 64, "name": "potted plant"},
    {"supercategory": "furniture", "id": 65, "name": "bed"},
    {"supercategory": "furniture", "id": 67, "name": "dining table"},
    {"supercategory": "furniture", "id": 70, "name": "toilet"},
    {"supercategory": "electronic", "id": 72, "name": "tv"},
    {"supercategory": "electronic", "id": 73, "name": "laptop"},
    {"supercategory": "electronic", "id": 74, "name": "mouse"},
    {"supercategory": "electronic", "id": 75, "name": "remote"},
    {"supercategory": "electronic", "id": 76, "name": "keyboard"},
    {"supercategory": "electronic", "id": 77, "name": "cell phone"},
    {"supercategory": "appliance", "id": 78, "name": "microwave"},
    {"supercategory": "appliance", "id": 79, "name": "oven"},
    {"supercategory": "appliance", "id": 80, "name": "toaster"},
    {"supercategory": "appliance", "id": 81, "name": "sink"},
    {"supercategory": "appliance", "id": 82, "name": "refrigerator"},
    {"supercategory": "indoor", "id": 84, "name": "book"},
    {"supercategory": "indoor", "id": 85, "name": "clock"},
    {"supercategory": "indoor", "id": 86, "name": "vase"},
    {"supercategory": "indoor", "id": 87, "name": "scissors"},
    {"supercategory": "indoor", "id": 88, "name": "teddy bear"},
    {"supercategory": "indoor", "id": 89, "name": "hair drier"},
    {"supercategory": "indoor", "id": 90, "name": "toothbrush"}
]

def coco_annotations_for_file(df, row_idx):
    df_row = df.iloc[row_idx, :]
    df_anno = pd.DataFrame(df_row.loc["labels"]).dropna(subset = ["box2d"])
    if "attributes" in df_anno.columns:
        df_anno = df_anno.drop(columns = ["attributes"], axis = 1)
    if "manualAttributes" in df_anno.columns:
        df_anno = df_anno.drop(columns = ["manualAttributes"], axis = 1)
    if "manualShape" in df_anno.columns:
        df_anno = df_anno.drop(columns = ["manualShape"], axis = 1)
    if "poly2d" in df_anno.columns:
        df_anno = df_anno.drop(columns = ["poly2d"], axis = 1)
    df_anno = pd.concat([df_anno, df_anno.loc[:, "box2d"].apply(pd.Series)], axis = 1).drop(columns = "box2d")
    df_anno["image_id"] = df_row.loc["id"]
    df_anno["category"] = df_anno["category"].map(dict_bdd2coco)
    df_anno["category_id"] = df_anno["category"].map(dict_coco_catname2coco_catid)
    df_anno["bboxw"] = df_anno["x2"] - df_anno["x1"]
    df_anno["bboxh"] = df_anno["y2"] - df_anno["y1"]
    df_anno["bbox"] = df_anno[["x1", "y1", "bboxw", "bboxh"]].values.tolist()
    df_anno["iscrowd"] = 0 # setting default value
    df_anno["x3"] = df_anno["x2"] # top right
    df_anno["y3"] = df_anno["y1"] # top right
    df_anno["x4"] = df_anno["x1"] # bot left
    df_anno["y4"] = df_anno["y2"] # bot left
    df_anno["segmentation"] = df_anno[["x1", "y1", "x4", "y4", "x2", "y2", "x3", "y3"]].values.tolist() # following Pascal VOC 2 Coco template
    df_anno["segmentation"] = df_anno["segmentation"].apply(lambda x: [x])
    df_anno["area"] = df_anno["bboxw"] * df_anno["bboxh"] # following Pascal VOC 2 Coco template
    df_anno = df_anno.drop(columns = ["x1", "y1", "x2", "y2", "x3", "y3", "x4", "y4", "bboxw", "bboxh", "category"])
    return df_anno

if __name__ == "__main__":

    parser = ArgumentParser()
    parser.add_argument("--bdd100kjson", dest = "bdd100kjson", help = "path to input bdd100k json")
    parser.add_argument("--cocojson", dest = "cocojson", help = "path to output coco json")
    parser.add_argument("--timeofday", dest = "timeofday", default = None, help = "only convert for 'daytime' or 'night' images")
    parser.add_argument("--numframes", dest = "numframes", default = None, help = "convert this number of frames from bdd100kjson")
    args = parser.parse_args()
    path_to_bdd_json = args.bdd100kjson
    path_to_coco_json = args.cocojson
    timeofday = args.timeofday
    numframes = args.numframes

    df_coco = pd.DataFrame(coco_categories)
    dict_coco_catname2coco_catid = pd.Series(df_coco["id"].values, index = df_coco["name"]).to_dict()

    df_bdd = pd.read_json(path_to_bdd_json)
    df_bdd = df_bdd.reset_index(drop = True)

    if timeofday is not None:
        print(f"Filtering samples on timeofday = {timeofday}.")
        df_bdd["timeofday"] = df_bdd["attributes"].apply(lambda x: x["timeofday"])
        if timeofday == "daytime":
            df_bdd = df_bdd.loc[df_bdd.timeofday == "daytime"]
        elif timeofday == "night":
            df_bdd = df_bdd.loc[df_bdd.timeofday == "night"]
        df_bdd = df_bdd.drop(columns=["timeofday"])

    if numframes is not None:
        numframes = int(numframes)
        print(f"Sampling {numframes} frames.")
        df_bdd = df_bdd.sample(n = numframes, replace = False, random_state = 123).reset_index(drop = True)

    df_bdd = df_bdd.drop(columns = ["attributes", "timestamp"])
    df_bdd = df_bdd.rename(columns = {"name": "file_name"}).reset_index(drop = True)
    df_bdd["id"] = df_bdd.index
    df_bdd["width"] = 1280
    df_bdd["height"] = 720

    df_coco_annos = pd.concat([coco_annotations_for_file(df_bdd, i) for i in range(df_bdd.shape[0])], ignore_index = True)
    df_coco_annos = df_coco_annos.reset_index(drop = True)
    df_coco_annos["id"] = df_coco_annos.index

    df_bdd = df_bdd.drop(columns = ["labels"], axis = 1)

    output = {
        "images": list(df_bdd.T.to_dict().values()),
        "annotations": list(df_coco_annos.T.to_dict().values()),
        "categories": coco_categories
    }

    if os.path.exists(path_to_coco_json):
        os.remove(path_to_coco_json)

    with open(path_to_coco_json, "w") as f:
        f.write(json.dumps(output, indent = 4))
