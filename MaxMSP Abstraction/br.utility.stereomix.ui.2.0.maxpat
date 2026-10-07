{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "openrect": [
            85.0,
            104.0,
            108.0,
            146.0
        ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 108.0,
        "description": "br.utility.stereomix.ui.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "comment": "Left In (Signal)",
                    "id": "obj-in1",
                    "index": 0,
                    "maxclass": "inlet",
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
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right In (Signal)",
                    "id": "obj-in2",
                    "index": 0,
                    "maxclass": "inlet",
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
                    ]
                }
            },
            {
                "box": {
                    "comment": "Invert (Int) 0 Normal, 1 Invert L+R, 2 Invert L, 3 Invert R. Sets the menu. Default 0",
                    "id": "obj-in3",
                    "index": 0,
                    "maxclass": "inlet",
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
                    ]
                }
            },
            {
                "box": {
                    "comment": "Left Gain (Float) dB -72. to 35. -72 = silent, 0 = unchanged. Sets the dial. Default 0",
                    "id": "obj-in4",
                    "index": 0,
                    "maxclass": "inlet",
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
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Gain (Float) dB -72. to 35. -72 = silent, 0 = unchanged. Sets the dial. Default 0",
                    "id": "obj-in5",
                    "index": 0,
                    "maxclass": "inlet",
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
                    ]
                }
            },
            {
                "box": {
                    "comment": "Left Pan (Float) -100. to 100. Where the left input sits. Sets the dial. Default -100",
                    "id": "obj-in6",
                    "index": 0,
                    "maxclass": "inlet",
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
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Pan (Float) -100. to 100. Where the right input sits. Sets the dial. Default 100",
                    "id": "obj-in7",
                    "index": 0,
                    "maxclass": "inlet",
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
                    ]
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal)",
                    "id": "obj-out1",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        200.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal)",
                    "id": "obj-out2",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        90.0,
                        200.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Flips polarity: 0 Normal, 1 Invert L+R, 2 Invert L, 3 Invert R. 10 ms S-curve. Default Normal",
                    "annotation_name": "Invert",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-inv",
                    "maxclass": "live.menu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        165.0,
                        60.0,
                        64.0,
                        17.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        7.0,
                        7.0,
                        94.0,
                        17.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "Normal",
                                "Invert L+R",
                                "Invert L",
                                "Invert R"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Invert",
                            "parameter_mmax": 3,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Invert",
                            "parameter_type": 2
                        }
                    },
                    "varname": "Invert"
                }
            },
            {
                "box": {
                    "annotation": "Left input level. dB, -72 = silent, 0 = unchanged (12 o'clock), up to +35. Default 0",
                    "annotation_name": "Left Gain",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lgain",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        240.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        7.0,
                        30.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 0.57,
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Left Gain",
                            "parameter_mmax": 35.0,
                            "parameter_mmin": -72.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "L Gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "Left Gain"
                }
            },
            {
                "box": {
                    "annotation": "Right input level. dB, -72 = silent, 0 = unchanged (12 o'clock), up to +35. Default 0",
                    "annotation_name": "Right Gain",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rgain",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        315.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        57.0,
                        30.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 0.57,
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Right Gain",
                            "parameter_mmax": 35.0,
                            "parameter_mmin": -72.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "R Gain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "Right Gain"
                }
            },
            {
                "box": {
                    "annotation": "Where the left input sits, -100 to 100, constant power. Default -100 (hard left)",
                    "annotation_name": "Left Pan",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lpan",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        390.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        7.0,
                        88.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -100.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Left Pan",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": -100.0,
                            "parameter_modmode": 1,
                            "parameter_shortname": "L Pan",
                            "parameter_type": 0,
                            "parameter_unitstyle": 6
                        }
                    },
                    "varname": "Left Pan"
                }
            },
            {
                "box": {
                    "annotation": "Where the right input sits, -100 to 100, constant power. Default 100 (hard right)",
                    "annotation_name": "Right Pan",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rpan",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        465.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        57.0,
                        88.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                100.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Right Pan",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": -100.0,
                            "parameter_modmode": 1,
                            "parameter_shortname": "R Pan",
                            "parameter_type": 0,
                            "parameter_unitstyle": 6
                        }
                    },
                    "varname": "Right Pan"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-core",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        150.0,
                        480.0,
                        22.0
                    ],
                    "text": "br.utility.stereomix.2.0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        615.0,
                        15.0,
                        421.0,
                        33.0
                    ],
                    "text": "br.utility.stereomix.ui.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        615.0,
                        60.0,
                        360.0,
                        60.0
                    ],
                    "text": "Each inlet feeds its control, and each control feeds the core, so the screen always shows what you hear. Starting values (Invert Normal, 0 dB, Left Pan -100, Right Pan 100) are the controls' Initial Values and pass the signal through unchanged."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        615.0,
                        160.0,
                        360.0,
                        47.0
                    ],
                    "text": "[br.utility.stereomix.2.0] is the real object: open it to see the gen~ inside. This file only adds the controls, so you can also patch the core directly and drive any control with a signal."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        250.0,
                        500.0,
                        60.0
                    ],
                    "text": "A per-channel mixer for fixing one side of a stereo pair. Each input is its own strip: Invert flips its polarity (a channel wired backwards), Gain sets its level (one side too loud or quiet), Pan places it (narrow the pair, swap the sides, or move a mono source sitting on one side to the center)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        335.0,
                        500.0,
                        60.0
                    ],
                    "text": "Pan is constant power, like a mixing desk: hard left is unity on the left only, the center is -3 dB on each side, so a channel keeps its loudness as it moves. Both pans at the center = a mono mix that cannot jump in level. Invert passes through silence for a moment as it flips."
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "annotation": "br.utility.stereomix.ui.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "hint": "br.utility.stereomix.ui.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "id": "obj-panel",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        615.0,
                        250.0,
                        138.0,
                        74.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        108.0,
                        146.0
                    ],
                    "proportion": 0.5,
                    "rounded": 7
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
                        "obj-core",
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
                        "obj-core",
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
                        "obj-inv",
                        0
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
                        "obj-lgain",
                        0
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
                        "obj-rgain",
                        0
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
                        "obj-lpan",
                        0
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
                        "obj-rpan",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-inv",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-lgain",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rgain",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-lpan",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rpan",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
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
                        "obj-core",
                        1
                    ],
                    "destination": [
                        "obj-out2",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-inv": [
                "Invert",
                "Invert",
                0
            ],
            "obj-lgain": [
                "Left Gain",
                "L Gain",
                0
            ],
            "obj-rgain": [
                "Right Gain",
                "R Gain",
                0
            ],
            "obj-lpan": [
                "Left Pan",
                "L Pan",
                0
            ],
            "obj-rpan": [
                "Right Pan",
                "R Pan",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}