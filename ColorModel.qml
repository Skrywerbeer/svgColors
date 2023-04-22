import QtQuick

ListModel {
    id: root;

    function insertionSort(cmpFunc, ascending=true) {
        for (let i = 0; i < root.count; ++i) {
            for (let j = i + 1; j < root.count; ++j) {
                if (cmpFunc(root.get(ascending ? j : i), root.get(ascending ? i : j)))
                    root.move(j, i, 1);
            }
        }
    }
    function nameLessThan(ele1, ele2) {
        return ele1.colorName < ele2.colorName;
    }
    function redLessThan(ele1, ele2) {
        return Number(`0x${ele1.colorHex.substr(1, 2)}`) < Number(`0x${ele2.colorHex.substr(1, 2)}`)
    }
    function greenLessThan(ele1, ele2) {
        return Number(`0x${ele1.colorHex.substr(3, 2)}`) < Number(`0x${ele2.colorHex.substr(3, 2)}`)
    }
    function blueLessThan(ele1, ele2) {
        return Number(`0x${ele1.colorHex.substr(5, 2)}`) < Number(`0x${ele2.colorHex.substr(5, 2)}`)
    }

    ListElement {
        colorName: "aliceblue"
        colorHex: "#f0f8ff"
    }
    ListElement {
        colorName: "antiquewhite"
        colorHex: "#faebd7"
    }
    ListElement {
        colorName: "aqua"
        colorHex: "#00ffff"
    }
    ListElement {
        colorName: "aquamarine"
        colorHex: "#7fffd4"
    }
    ListElement {
        colorName: "azure"
        colorHex: "#f0ffff"
    }
    ListElement {
        colorName: "beige"
        colorHex: "#f5f5dc"
    }
    ListElement {
        colorName: "bisque"
        colorHex: "#ffe4c4"
    }
    ListElement {
        colorName: "black"
        colorHex: "#000000"
    }
    ListElement {
        colorName: "blanchedalmond"
        colorHex: "#ffebcd"
    }
    ListElement {
        colorName: "blue"
        colorHex: "#0000ff"
    }
    ListElement {
        colorName: "blueviolet"
        colorHex: "#8a2be2"
    }
    ListElement {
        colorName: "brown"
        colorHex: "#a52a2a"
    }
    ListElement {
        colorName: "burlywood"
        colorHex: "#deb887"
    }
    ListElement {
        colorName: "cadetblue"
        colorHex: "#5f9ea0"
    }
    ListElement {
        colorName: "chartreuse"
        colorHex: "#7fff00"
    }
    ListElement {
        colorName: "chocolate"
        colorHex: "#d2691e"
    }
    ListElement {
        colorName: "coral"
        colorHex: "#ff7f50"
    }
    ListElement {
        colorName: "cornflowerblue"
        colorHex: "#6495ed"
    }
    ListElement {
        colorName: "cornsilk"
        colorHex: "#fff8dc"
    }
    ListElement {
        colorName: "crimson"
        colorHex: "#dc143c"
    }
    ListElement {
        colorName: "cyan"
        colorHex: "#00ffff"
    }
    ListElement {
        colorName: "darkblue"
        colorHex: "#00008b"
    }
    ListElement {
        colorName: "darkcyan"
        colorHex: "#008b8b"
    }
    ListElement {
        colorName: "darkgoldenrod"
        colorHex: "#b8860b"
    }
    ListElement {
        colorName: "darkgray"
        colorHex: "#a9a9a9"
    }
    ListElement {
        colorName: "darkgreen"
        colorHex: "#006400"
    }
    ListElement {
        colorName: "darkgrey"
        colorHex: "#a9a9a9"
    }
    ListElement {
        colorName: "darkkhaki"
        colorHex: "#bdb76b"
    }
    ListElement {
        colorName: "darkmagenta"
        colorHex: "#8b008b"
    }
    ListElement {
        colorName: "darkolivegreen"
        colorHex: "#556b2f"
    }
    ListElement {
        colorName: "darkorange"
        colorHex: "#ff8c00"
    }
    ListElement {
        colorName: "darkorchid"
        colorHex: "#9932cc"
    }
    ListElement {
        colorName: "darkred"
        colorHex: "#8b0000"
    }
    ListElement {
        colorName: "darksalmon"
        colorHex: "#e9967a"
    }
    ListElement {
        colorName: "darkseagreen"
        colorHex: "#8fbc8f"
    }
    ListElement {
        colorName: "darkslateblue"
        colorHex: "#483d8b"
    }
    ListElement {
        colorName: "darkslategray"
        colorHex: "#2f4f4f"
    }
    ListElement {
        colorName: "darkslategrey"
        colorHex: "#2f4f4f"
    }
    ListElement {
        colorName: "darkturquoise"
        colorHex: "#00ced1"
    }
    ListElement {
        colorName: "darkviolet"
        colorHex: "#9400d3"
    }
    ListElement {
        colorName: "deeppink"
        colorHex: "#ff1493"
    }
    ListElement {
        colorName: "deepskyblue"
        colorHex: "#00bfff"
    }
    ListElement {
        colorName: "dimgray"
        colorHex: "#696969"
    }
    ListElement {
        colorName: "dimgrey"
        colorHex: "#696969"
    }
    ListElement {
        colorName: "dodgerblue"
        colorHex: "#1e90ff"
    }
    ListElement {
        colorName: "firebrick"
        colorHex: "#b22222"
    }
    ListElement {
        colorName: "floralwhite"
        colorHex: "#fffaf0"
    }
    ListElement {
        colorName: "forestgreen"
        colorHex: "#228b22"
    }
    ListElement {
        colorName: "fuchsia"
        colorHex: "#ff00ff"
    }
    ListElement {
        colorName: "gainsboro"
        colorHex: "#dcdcdc"
    }
    ListElement {
        colorName: "ghostwhite"
        colorHex: "#f8f8ff"
    }
    ListElement {
        colorName: "gold"
        colorHex: "#ffd700"
    }
    ListElement {
        colorName: "goldenrod"
        colorHex: "#daa520"
    }
    ListElement {
        colorName: "gray"
        colorHex: "#808080"
    }
    ListElement {
        colorName: "grey"
        colorHex: "#808080"
    }
    ListElement {
        colorName: "green"
        colorHex: "#008000"
    }
    ListElement {
        colorName: "greenyellow"
        colorHex: "#adff2f"
    }
    ListElement {
        colorName: "honeydew"
        colorHex: "#f0fff0"
    }
    ListElement {
        colorName: "hotpink"
        colorHex: "#ff69b4"
    }
    ListElement {
        colorName: "indianred"
        colorHex: "#cd5c5c"
    }
    ListElement {
        colorName: "indigo"
        colorHex: "#4b0082"
    }
    ListElement {
        colorName: "ivory"
        colorHex: "#fffff0"
    }
    ListElement {
        colorName: "khaki"
        colorHex: "#f0e68c"
    }
    ListElement {
        colorName: "lavender"
        colorHex: "#e6e6fa"
    }
    ListElement {
        colorName: "lavenderblush"
        colorHex: "#fff0f5"
    }
    ListElement {
        colorName: "lawngreen"
        colorHex: "#7cfc00"
    }
    ListElement {
        colorName: "lemonchiffon"
        colorHex: "#fffacd"
    }
    ListElement {
        colorName: "lightblue"
        colorHex: "#add8e6"
    }
    ListElement {
        colorName: "lightcoral"
        colorHex: "#f08080"
    }
    ListElement {
        colorName: "lightcyan"
        colorHex: "#e0ffff"
    }
    ListElement {
        colorName: "lightgoldenrodyellow"
        colorHex: "#fafad2"
    }
    ListElement {
        colorName: "lightgray"
        colorHex: "#d3d3d3"
    }
    ListElement {
        colorName: "lightgreen"
        colorHex: "#90ee90"
    }
    ListElement {
        colorName: "lightgrey"
        colorHex: "#d3d3d3"
    }
    ListElement {
        colorName: "lightpink"
        colorHex: "#ffb6c1"
    }
    ListElement {
        colorName: "lightsalmon"
        colorHex: "#ffa07a"
    }
    ListElement {
        colorName: "lightseagreen"
        colorHex: "#20b2aa"
    }
    ListElement {
        colorName: "lightskyblue"
        colorHex: "#87cefa"
    }
    ListElement {
        colorName: "lightslategray"
        colorHex: "#778899"
    }
    ListElement {
        colorName: "lightslategrey"
        colorHex: "#778899"
    }
    ListElement {
        colorName: "lightsteelblue"
        colorHex: "#b0c4de"
    }
    ListElement {
        colorName: "lightyellow"
        colorHex: "#ffffe0"
    }
    ListElement {
        colorName: "lime"
        colorHex: "#00ff00"
    }
    ListElement {
        colorName: "limegreen"
        colorHex: "#32cd32"
    }
    ListElement {
        colorName: "linen"
        colorHex: "#faf0e6"
    }
    ListElement {
        colorName: "magenta"
        colorHex: "#ff00ff"
    }
    ListElement {
        colorName: "maroon"
        colorHex: "#800000"
    }
    ListElement {
        colorName: "mediumaquamarine"
        colorHex: "#66cdaa"
    }
    ListElement {
        colorName: "mediumblue"
        colorHex: "#0000cd"
    }
    ListElement {
        colorName: "mediumorchid"
        colorHex: "#ba55d3"
    }
    ListElement {
        colorName: "mediumpurple"
        colorHex: "#9370db"
    }
    ListElement {
        colorName: "mediumseagreen"
        colorHex: "#3cb371"
    }
    ListElement {
        colorName: "mediumslateblue"
        colorHex: "#7b68ee"
    }
    ListElement {
        colorName: "mediumspringgreen"
        colorHex: "#00fa9a"
    }
    ListElement {
        colorName: "mediumturquoise"
        colorHex: "#48d1cc"
    }
    ListElement {
        colorName: "mediumvioletred"
        colorHex: "#c71585"
    }
    ListElement {
        colorName: "midnightblue"
        colorHex: "#191970"
    }
    ListElement {
        colorName: "mintcream"
        colorHex: "#f5fffa"
    }
    ListElement {
        colorName: "mistyrose"
        colorHex: "#ffe4e1"
    }
    ListElement {
        colorName: "moccasin"
        colorHex: "#ffe4b5"
    }
    ListElement {
        colorName: "navajowhite"
        colorHex: "#ffdead"
    }
    ListElement {
        colorName: "navy"
        colorHex: "#000080"
    }
    ListElement {
        colorName: "oldlace"
        colorHex: "#fdf5e6"
    }
    ListElement {
        colorName: "olive"
        colorHex: "#808000"
    }
    ListElement {
        colorName: "olivedrab"
        colorHex: "#6b8e23"
    }
    ListElement {
        colorName: "orange"
        colorHex: "#ffa500"
    }
    ListElement {
        colorName: "orangered"
        colorHex: "#ff4500"
    }
    ListElement {
        colorName: "orchid"
        colorHex: "#da70d6"
    }
    ListElement {
        colorName: "palegoldenrod"
        colorHex: "#eee8aa"
    }
    ListElement {
        colorName: "palegreen"
        colorHex: "#98fb98"
    }
    ListElement {
        colorName: "paleturquoise"
        colorHex: "#afeeee"
    }
    ListElement {
        colorName: "palevioletred"
        colorHex: "#db7093"
    }
    ListElement {
        colorName: "papayawhip"
        colorHex: "#ffefd5"
    }
    ListElement {
        colorName: "peachpuff"
        colorHex: "#ffdab9"
    }
    ListElement {
        colorName: "peru"
        colorHex: "#cd853f"
    }
    ListElement {
        colorName: "pink"
        colorHex: "#ffc0cb"
    }
    ListElement {
        colorName: "plum"
        colorHex: "#dda0dd"
    }
    ListElement {
        colorName: "powderblue"
        colorHex: "#b0e0e6"
    }
    ListElement {
        colorName: "purple"
        colorHex: "#800080"
    }
    ListElement {
        colorName: "red"
        colorHex: "#ff0000"
    }
    ListElement {
        colorName: "rosybrown"
        colorHex: "#bc8f8f"
    }
    ListElement {
        colorName: "royalblue"
        colorHex: "#4169e1"
    }
    ListElement {
        colorName: "saddlebrown"
        colorHex: "#8b4513"
    }
    ListElement {
        colorName: "salmon"
        colorHex: "#fa8072"
    }
    ListElement {
        colorName: "sandybrown"
        colorHex: "#f4a460"
    }
    ListElement {
        colorName: "seagreen"
        colorHex: "#2e8b57"
    }
    ListElement {
        colorName: "seashell"
        colorHex: "#fff5ee"
    }
    ListElement {
        colorName: "sienna"
        colorHex: "#a0522d"
    }
    ListElement {
        colorName: "silver"
        colorHex: "#c0c0c0"
    }
    ListElement {
        colorName: "skyblue"
        colorHex: "#87ceeb"
    }
    ListElement {
        colorName: "slateblue"
        colorHex: "#6a5acd"
    }
    ListElement {
        colorName: "slategray"
        colorHex: "#708090"
    }
    ListElement {
        colorName: "slategrey"
        colorHex: "#708090"
    }
    ListElement {
        colorName: "snow"
        colorHex: "#fffafa"
    }
    ListElement {
        colorName: "springgreen"
        colorHex: "#00ff7f"
    }
    ListElement {
        colorName: "steelblue"
        colorHex: "#4682b4"
    }
    ListElement {
        colorName: "tan"
        colorHex: "#d2b48c"
    }
    ListElement {
        colorName: "teal"
        colorHex: "#008080"
    }
    ListElement {
        colorName: "thistle"
        colorHex: "#d8bfd8"
    }
    ListElement {
        colorName: "tomato"
        colorHex: "#ff6347"
    }
    ListElement {
        colorName: "turquoise"
        colorHex: "#40e0d0"
    }
    ListElement {
        colorName: "violet"
        colorHex: "#ee82ee"
    }
    ListElement {
        colorName: "wheat"
        colorHex: "#f5deb3"
    }
    ListElement {
        colorName: "white"
        colorHex: "#ffffff"
    }
    ListElement {
        colorName: "whitesmoke"
        colorHex: "#f5f5f5"
    }
    ListElement {
        colorName: "yellow"
        colorHex: "#ffff00"
    }
    ListElement {
        colorName: "yellowgreen"
        colorHex: "#9acd3"
    }
}
