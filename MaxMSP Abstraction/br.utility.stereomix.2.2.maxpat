{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            1160.0,
            335.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridonopen": 1,
        "gridsize": [
            15.0,
            15.0
        ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 0.0,
        "description": "br.utility.stereo.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "digest": "",
        "tags": "",
        "style": "",
        "subpatcher_template": "",
        "assistshowspatchername": 0,
        "dependency_cache": [],
        "autosave": 0,
        "boxes": [
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-signature",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        735.0,
                        15.0,
                        360.0,
                        33.0
                    ],
                    "text": "br.utility.stereomix.2.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-in1",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Left In (Signal)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-in2",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right In (Signal)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-in3",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Invert (Signal/Int) 0 Normal, 1 Invert L+R, 2 Invert L, 3 Invert R. Flips polarity along a 10 ms S-curve. Default 0",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-in4",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Left Gain (Signal/Float) dB -72. to 35. -72 = silent, 0 = unchanged. Default 0",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-in5",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        315.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right Gain (Signal/Float) dB -72. to 35. -72 = silent, 0 = unchanged. Default 0",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-in6",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Left Pan (Signal/Float) -100. to 100. Where the left input sits, constant power. Default -100 (hard left)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-out1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        170.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Left Out (Signal)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-out2",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        90.0,
                        170.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right Out (Signal)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-gen",
                    "numinlets": 7,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        110.0,
                        480.0,
                        22.0
                    ],
                    "text": "gen~ @title br.utility.stereomix.2.2",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [
                            100.0,
                            100.0,
                            1100.0,
                            760.0
                        ],
                        "bglocked": 0,
                        "openinpresentation": 0,
                        "default_fontsize": 12.0,
                        "default_fontface": 0,
                        "default_fontname": "Arial",
                        "gridonopen": 1,
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "gridsnaponopen": 1,
                        "objectsnaponopen": 1,
                        "statusbarvisible": 2,
                        "toolbarvisible": 1,
                        "lefttoolbarpinned": 0,
                        "toptoolbarpinned": 0,
                        "righttoolbarpinned": 0,
                        "bottomtoolbarpinned": 0,
                        "toolbars_unpinned_last_save": 0,
                        "tallnewobj": 0,
                        "boxanimatetime": 200,
                        "enablehscroll": 1,
                        "enablevscroll": 1,
                        "devicewidth": 0.0,
                        "description": "",
                        "digest": "",
                        "tags": "",
                        "style": "",
                        "subpatcher_template": "",
                        "assistshowspatchername": 0,
                        "dependency_cache": [],
                        "autosave": 0,
                        "boxes": [
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-in1",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        20.0,
                                        20.0,
                                        165.0,
                                        22.0
                                    ],
                                    "text": "in 1 @comment \"Left In (Signal)\"",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-in2",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        195.0,
                                        20.0,
                                        165.0,
                                        22.0
                                    ],
                                    "text": "in 2 @comment \"Right In (Signal)\"",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-in3",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        370.0,
                                        20.0,
                                        165.0,
                                        22.0
                                    ],
                                    "text": "in 3 @comment \"Invert (Signal/Int) 0 Normal, 1 Invert L+R, 2 Invert L, 3 Invert R. Flips polarity along a 10 ms S-curve. Default 0\"",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-in4",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        545.0,
                                        20.0,
                                        165.0,
                                        22.0
                                    ],
                                    "text": "in 4 @comment \"Left Gain (Signal/Float) dB -72. to 35. -72 = silent, 0 = unchanged. Default 0\"",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-in5",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        720.0,
                                        20.0,
                                        165.0,
                                        22.0
                                    ],
                                    "text": "in 5 @comment \"Right Gain (Signal/Float) dB -72. to 35. -72 = silent, 0 = unchanged. Default 0\"",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-in6",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        895.0,
                                        20.0,
                                        165.0,
                                        22.0
                                    ],
                                    "text": "in 6 @comment \"Left Pan (Signal/Float) -100. to 100. Where the left input sits, constant power. Default -100 (hard left)\" @default -100",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-in7",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1070.0,
                                        20.0,
                                        165.0,
                                        22.0
                                    ],
                                    "text": "in 7 @comment \"Right Pan (Signal/Float) -100. to 100. Where the right input sits, constant power. Default 100 (hard right)\" @default 100",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "codebox",
                                    "id": "obj-code",
                                    "numinlets": 7,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        20.0,
                                        70.0,
                                        700.0,
                                        900.0
                                    ],
                                    "parameter_enable": 0,
                                    "code": "// br.utility.stereomix.2.2 -- per-channel polarity, gain and pan\n// Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/\n// MUST MATCH: the core, the UI by reference, the RNBO host and the M4L device embed this same code\n// in1/in2 audio L/R\n// in3 invert 0 Normal, 1 Invert L+R, 2 Invert L, 3 Invert R\n// in4/in5 left / right gain in dB -72..35, -72 = silent, 0 = unchanged\n// in6/in7 left / right pan -100..100, -100 = hard left, 100 = hard right\n// out1/out2 audio L/R\n// Each input channel is its own mixer strip: polarity -> gain -> pan, then both strips are summed.\n// Defaults Normal, 0 dB, -100, 100 pass the stereo signal through unchanged.\n// Pan is constant power, sin/cos: -3 dB on each side at the center, so a channel keeps its loudness as it moves.\n// Every change glides, so nothing ever clicks: polarity flips along a 10 ms S-curve\n// that passes through silence, gain and pan follow a 10 ms smoother.\n\nHistory polL(0);\nHistory polR(0);\nHistory gL(0);\nHistory gR(0);\nHistory panL(-1);\nHistory panR(1);\n\n// read all state first\npl = polL;\npr = polR;\ngl = gL;\ngr = gR;\nal = panL;\nar = panR;\n\nramp = 1 / max(1, mstosamps(10));\nk = 1 - exp(-1 / max(1, mstosamps(10)));\n\n// POLARITY: 0 = normal, 1 = inverted. The fade position ramps over 10 ms and a cosine turns it into\n// a gain that glides from 1 through 0 to -1 along an S-curve\nmd = clip(floor(in3 + 0.5), 0, 3);\ninvL = (md == 1) || (md == 2);\ninvR = (md == 1) || (md == 3);\npl = clip(pl + (invL ? ramp : -ramp), 0, 1);\npr = clip(pr + (invR ? ramp : -ramp), 0, 1);\n\n// GAIN: smooths amplitude, not dB, and lands exactly on its target, so -72 is true silence\ndbl = clip(in4, -72, 35);\ndbr = clip(in5, -72, 35);\ngoalL = (dbl > -72) ? dbtoa(dbl) : 0;\ngoalR = (dbr > -72) ? dbtoa(dbr) : 0;\ngl = gl + (goalL - gl) * k;\ngr = gr + (goalR - gr) * k;\n// within -120 dB of the target: land on it\nif (abs(goalL - gl) < 0.000001) {\n    gl = goalL;\n}\nif (abs(goalR - gr) < 0.000001) {\n    gr = goalR;\n}\n\n// PAN: -1..1, constant power. Hard left = cos 1, sin 0 = unity on the left only\nal = al + (clip(in6, -100, 100) * 0.01 - al) * k;\nar = ar + (clip(in7, -100, 100) * 0.01 - ar) * k;\nangL = (al + 1) * pi * 0.25;\nangR = (ar + 1) * pi * 0.25;\n\nl = in1 * cos(pl * pi) * gl;\nr = in2 * cos(pr * pi) * gr;\n\n// write state last\npolL = pl;\npolR = pr;\ngL = gl;\ngR = gr;\npanL = al;\npanR = ar;\n\nout1 = l * cos(angL) + r * cos(angR);\nout2 = l * sin(angL) + r * sin(angR);\n",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-out1",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        20.0,
                                        990.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "out 1 @comment \"Left Out (Signal)\"",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-out2",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        380.0,
                                        990.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "out 2 @comment \"Right Out (Signal)\"",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-in1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-in2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-in3",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-in4",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-in5",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-in6",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-in7",
                                        0
                                    ],
                                    "destination": [
                                        "obj-code",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-code",
                                        0
                                    ],
                                    "destination": [
                                        "obj-out1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-code",
                                        1
                                    ],
                                    "destination": [
                                        "obj-out2",
                                        0
                                    ]
                                }
                            }
                        ]
                    }
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-why",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        735.0,
                        60.0,
                        400.0,
                        130.0
                    ],
                    "text": "Per-channel mixer: fixes one side of a stereo pair without touching the other. Each input is its own strip: Invert flips its polarity, Gain sets its level, Pan places it. The two strips are summed to L and R. Defaults (Normal, 0 dB, Left Pan -100, Right Pan 100) pass the signal through unchanged. Pan is constant power: a channel at the center is -3 dB on each side, so it keeps its loudness as it moves. Every change glides over 10 ms, so nothing clicks. No State outlet here: whatever drives the core already knows the values. The .ui version reports its controls.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-in7",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        465.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right Pan (Signal/Float) -100. to 100. Where the right input sits, constant power. Default 100 (hard right)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-plmdef",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        525.0,
                        60.0,
                        85.0,
                        22.0
                    ],
                    "text": "loadmess -100",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-prmdef",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        615.0,
                        60.0,
                        80.0,
                        22.0
                    ],
                    "text": "loadmess 100",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-pnote",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        525.0,
                        82.0,
                        200.0,
                        20.0
                    ],
                    "text": "Pans start hard left / hard right",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-in1",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in2",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in3",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in4",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in5",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in6",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in7",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-plmdef",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-prmdef",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gen",
                        0
                    ],
                    "destination": [
                        "obj-out1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gen",
                        1
                    ],
                    "destination": [
                        "obj-out2",
                        0
                    ]
                }
            }
        ]
    }
}