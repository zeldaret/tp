lbl_807FC1B0:
/* 807FC1B0  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 807FC1B4  7C 08 02 A6 */	mflr r0
/* 807FC1B8  90 01 01 24 */	stw r0, 0x124(r1)
/* 807FC1BC  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 807FC1C0  93 C1 01 18 */	stw r30, 0x118(r1)
/* 807FC1C4  3C 60 80 80 */	lis r3, lit_1109@ha
/* 807FC1C8  3B C3 D0 20 */	addi r30, r3, lit_1109@l
/* 807FC1CC  3C 60 80 80 */	lis r3, lit_3801@ha
/* 807FC1D0  3B E3 CC B4 */	addi r31, r3, lit_3801@l
/* 807FC1D4  38 7E 00 4C */	addi r3, r30, 0x4c
/* 807FC1D8  4B FF C1 75 */	bl __ct__12daE_YG_HIO_cFv
/* 807FC1DC  3C 80 80 80 */	lis r4, __dt__12daE_YG_HIO_cFv@ha
/* 807FC1E0  38 84 C1 68 */	addi r4, r4, __dt__12daE_YG_HIO_cFv@l
/* 807FC1E4  38 BE 00 40 */	addi r5, r30, 0x40
/* 807FC1E8  4B FF C0 F1 */	bl __register_global_object
/* 807FC1EC  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 807FC1F0  D0 41 01 00 */	stfs f2, 0x100(r1)
/* 807FC1F4  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 807FC1F8  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 807FC1FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FC200  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 807FC204  D0 5E 01 A4 */	stfs f2, 0x1a4(r30)
/* 807FC208  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC20C  D0 23 00 04 */	stfs f1, 4(r3)
/* 807FC210  D0 03 00 08 */	stfs f0, 8(r3)
/* 807FC214  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC218  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC21C  38 BE 01 08 */	addi r5, r30, 0x108
/* 807FC220  4B FF C0 B9 */	bl __register_global_object
/* 807FC224  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 807FC228  D0 41 00 F4 */	stfs f2, 0xf4(r1)
/* 807FC22C  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 807FC230  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 807FC234  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FC238  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 807FC23C  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC240  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 807FC244  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 807FC248  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807FC24C  38 63 00 0C */	addi r3, r3, 0xc
/* 807FC250  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC254  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC258  38 BE 01 14 */	addi r5, r30, 0x114
/* 807FC25C  4B FF C0 7D */	bl __register_global_object
/* 807FC260  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 807FC264  D0 41 00 E8 */	stfs f2, 0xe8(r1)
/* 807FC268  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807FC26C  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 807FC270  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807FC274  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 807FC278  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC27C  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 807FC280  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 807FC284  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 807FC288  38 63 00 18 */	addi r3, r3, 0x18
/* 807FC28C  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC290  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC294  38 BE 01 20 */	addi r5, r30, 0x120
/* 807FC298  4B FF C0 41 */	bl __register_global_object
/* 807FC29C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 807FC2A0  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 807FC2A4  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 807FC2A8  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 807FC2AC  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 807FC2B0  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC2B4  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 807FC2B8  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 807FC2BC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 807FC2C0  38 63 00 24 */	addi r3, r3, 0x24
/* 807FC2C4  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC2C8  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC2CC  38 BE 01 2C */	addi r5, r30, 0x12c
/* 807FC2D0  4B FF C0 09 */	bl __register_global_object
/* 807FC2D4  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 807FC2D8  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 807FC2DC  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 807FC2E0  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 807FC2E4  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 807FC2E8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 807FC2EC  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC2F0  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 807FC2F4  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 807FC2F8  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 807FC2FC  38 63 00 30 */	addi r3, r3, 0x30
/* 807FC300  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC304  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC308  38 BE 01 38 */	addi r5, r30, 0x138
/* 807FC30C  4B FF BF CD */	bl __register_global_object
/* 807FC310  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 807FC314  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 807FC318  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 807FC31C  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 807FC320  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 807FC324  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807FC328  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC32C  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 807FC330  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 807FC334  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 807FC338  38 63 00 3C */	addi r3, r3, 0x3c
/* 807FC33C  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC340  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC344  38 BE 01 44 */	addi r5, r30, 0x144
/* 807FC348  4B FF BF 91 */	bl __register_global_object
/* 807FC34C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 807FC350  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 807FC354  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 807FC358  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807FC35C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807FC360  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC364  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 807FC368  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 807FC36C  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 807FC370  38 63 00 48 */	addi r3, r3, 0x48
/* 807FC374  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC378  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC37C  38 BE 01 50 */	addi r5, r30, 0x150
/* 807FC380  4B FF BF 59 */	bl __register_global_object
/* 807FC384  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 807FC388  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 807FC38C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 807FC390  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 807FC394  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807FC398  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 807FC39C  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC3A0  D0 43 00 54 */	stfs f2, 0x54(r3)
/* 807FC3A4  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 807FC3A8  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 807FC3AC  38 63 00 54 */	addi r3, r3, 0x54
/* 807FC3B0  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC3B4  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC3B8  38 BE 01 5C */	addi r5, r30, 0x15c
/* 807FC3BC  4B FF BF 1D */	bl __register_global_object
/* 807FC3C0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807FC3C4  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 807FC3C8  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 807FC3CC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 807FC3D0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 807FC3D4  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC3D8  D0 23 00 60 */	stfs f1, 0x60(r3)
/* 807FC3DC  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 807FC3E0  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 807FC3E4  38 63 00 60 */	addi r3, r3, 0x60
/* 807FC3E8  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC3EC  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC3F0  38 BE 01 68 */	addi r5, r30, 0x168
/* 807FC3F4  4B FF BE E5 */	bl __register_global_object
/* 807FC3F8  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 807FC3FC  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 807FC400  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807FC404  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 807FC408  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 807FC40C  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC410  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 807FC414  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 807FC418  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 807FC41C  38 63 00 6C */	addi r3, r3, 0x6c
/* 807FC420  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC424  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC428  38 BE 01 74 */	addi r5, r30, 0x174
/* 807FC42C  4B FF BE AD */	bl __register_global_object
/* 807FC430  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 807FC434  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 807FC438  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807FC43C  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 807FC440  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 807FC444  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 807FC448  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC44C  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 807FC450  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 807FC454  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 807FC458  38 63 00 78 */	addi r3, r3, 0x78
/* 807FC45C  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC460  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC464  38 BE 01 80 */	addi r5, r30, 0x180
/* 807FC468  4B FF BE 71 */	bl __register_global_object
/* 807FC46C  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807FC470  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 807FC474  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807FC478  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 807FC47C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807FC480  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807FC484  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC488  D0 43 00 84 */	stfs f2, 0x84(r3)
/* 807FC48C  D0 23 00 88 */	stfs f1, 0x88(r3)
/* 807FC490  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 807FC494  38 63 00 84 */	addi r3, r3, 0x84
/* 807FC498  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC49C  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC4A0  38 BE 01 8C */	addi r5, r30, 0x18c
/* 807FC4A4  4B FF BE 35 */	bl __register_global_object
/* 807FC4A8  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807FC4AC  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 807FC4B0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807FC4B4  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 807FC4B8  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 807FC4BC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807FC4C0  38 7E 01 A4 */	addi r3, r30, 0x1a4
/* 807FC4C4  D0 43 00 90 */	stfs f2, 0x90(r3)
/* 807FC4C8  D0 23 00 94 */	stfs f1, 0x94(r3)
/* 807FC4CC  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 807FC4D0  38 63 00 90 */	addi r3, r3, 0x90
/* 807FC4D4  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FC4D8  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FC4DC  38 BE 01 98 */	addi r5, r30, 0x198
/* 807FC4E0  4B FF BD F9 */	bl __register_global_object
/* 807FC4E4  38 61 00 68 */	addi r3, r1, 0x68
/* 807FC4E8  38 80 00 00 */	li r4, 0
/* 807FC4EC  38 A0 00 00 */	li r5, 0
/* 807FC4F0  38 C0 13 88 */	li r6, 0x1388
/* 807FC4F4  4B A6 AF 00 */	b __ct__5csXyzFsss
/* 807FC4F8  80 01 00 68 */	lwz r0, 0x68(r1)
/* 807FC4FC  90 1E 02 DC */	stw r0, 0x2dc(r30)
/* 807FC500  A0 01 00 6C */	lhz r0, 0x6c(r1)
/* 807FC504  B0 1E 02 E0 */	sth r0, 0x2e0(r30)
/* 807FC508  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC50C  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC510  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC514  38 BE 02 40 */	addi r5, r30, 0x240
/* 807FC518  4B FF BD C1 */	bl __register_global_object
/* 807FC51C  38 61 00 60 */	addi r3, r1, 0x60
/* 807FC520  38 80 00 00 */	li r4, 0
/* 807FC524  38 A0 00 00 */	li r5, 0
/* 807FC528  38 C0 0B B8 */	li r6, 0xbb8
/* 807FC52C  4B A6 AE C8 */	b __ct__5csXyzFsss
/* 807FC530  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC534  80 01 00 60 */	lwz r0, 0x60(r1)
/* 807FC538  90 03 00 06 */	stw r0, 6(r3)
/* 807FC53C  A0 01 00 64 */	lhz r0, 0x64(r1)
/* 807FC540  B0 03 00 0A */	sth r0, 0xa(r3)
/* 807FC544  38 63 00 06 */	addi r3, r3, 6
/* 807FC548  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC54C  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC550  38 BE 02 4C */	addi r5, r30, 0x24c
/* 807FC554  4B FF BD 85 */	bl __register_global_object
/* 807FC558  38 61 00 58 */	addi r3, r1, 0x58
/* 807FC55C  38 80 00 00 */	li r4, 0
/* 807FC560  38 A0 00 00 */	li r5, 0
/* 807FC564  38 C0 07 D0 */	li r6, 0x7d0
/* 807FC568  4B A6 AE 8C */	b __ct__5csXyzFsss
/* 807FC56C  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC570  80 01 00 58 */	lwz r0, 0x58(r1)
/* 807FC574  90 03 00 0C */	stw r0, 0xc(r3)
/* 807FC578  A0 01 00 5C */	lhz r0, 0x5c(r1)
/* 807FC57C  B0 03 00 10 */	sth r0, 0x10(r3)
/* 807FC580  38 63 00 0C */	addi r3, r3, 0xc
/* 807FC584  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC588  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC58C  38 BE 02 58 */	addi r5, r30, 0x258
/* 807FC590  4B FF BD 49 */	bl __register_global_object
/* 807FC594  38 61 00 50 */	addi r3, r1, 0x50
/* 807FC598  38 80 00 00 */	li r4, 0
/* 807FC59C  38 A0 E0 C0 */	li r5, -8000
/* 807FC5A0  38 C0 13 88 */	li r6, 0x1388
/* 807FC5A4  4B A6 AE 50 */	b __ct__5csXyzFsss
/* 807FC5A8  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC5AC  80 01 00 50 */	lwz r0, 0x50(r1)
/* 807FC5B0  90 03 00 12 */	stw r0, 0x12(r3)
/* 807FC5B4  A0 01 00 54 */	lhz r0, 0x54(r1)
/* 807FC5B8  B0 03 00 16 */	sth r0, 0x16(r3)
/* 807FC5BC  38 63 00 12 */	addi r3, r3, 0x12
/* 807FC5C0  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC5C4  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC5C8  38 BE 02 64 */	addi r5, r30, 0x264
/* 807FC5CC  4B FF BD 0D */	bl __register_global_object
/* 807FC5D0  38 61 00 48 */	addi r3, r1, 0x48
/* 807FC5D4  38 80 00 00 */	li r4, 0
/* 807FC5D8  38 A0 E0 C0 */	li r5, -8000
/* 807FC5DC  38 C0 00 00 */	li r6, 0
/* 807FC5E0  4B A6 AE 14 */	b __ct__5csXyzFsss
/* 807FC5E4  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC5E8  80 01 00 48 */	lwz r0, 0x48(r1)
/* 807FC5EC  90 03 00 18 */	stw r0, 0x18(r3)
/* 807FC5F0  A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 807FC5F4  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 807FC5F8  38 63 00 18 */	addi r3, r3, 0x18
/* 807FC5FC  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC600  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC604  38 BE 02 70 */	addi r5, r30, 0x270
/* 807FC608  4B FF BC D1 */	bl __register_global_object
/* 807FC60C  38 61 00 40 */	addi r3, r1, 0x40
/* 807FC610  38 80 00 00 */	li r4, 0
/* 807FC614  38 A0 E0 C0 */	li r5, -8000
/* 807FC618  38 C0 F4 48 */	li r6, -3000
/* 807FC61C  4B A6 AD D8 */	b __ct__5csXyzFsss
/* 807FC620  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC624  80 01 00 40 */	lwz r0, 0x40(r1)
/* 807FC628  90 03 00 1E */	stw r0, 0x1e(r3)
/* 807FC62C  A0 01 00 44 */	lhz r0, 0x44(r1)
/* 807FC630  B0 03 00 22 */	sth r0, 0x22(r3)
/* 807FC634  38 63 00 1E */	addi r3, r3, 0x1e
/* 807FC638  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC63C  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC640  38 BE 02 7C */	addi r5, r30, 0x27c
/* 807FC644  4B FF BC 95 */	bl __register_global_object
/* 807FC648  38 61 00 38 */	addi r3, r1, 0x38
/* 807FC64C  38 80 00 00 */	li r4, 0
/* 807FC650  38 A0 1F 40 */	li r5, 0x1f40
/* 807FC654  38 C0 13 88 */	li r6, 0x1388
/* 807FC658  4B A6 AD 9C */	b __ct__5csXyzFsss
/* 807FC65C  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC660  80 01 00 38 */	lwz r0, 0x38(r1)
/* 807FC664  90 03 00 24 */	stw r0, 0x24(r3)
/* 807FC668  A0 01 00 3C */	lhz r0, 0x3c(r1)
/* 807FC66C  B0 03 00 28 */	sth r0, 0x28(r3)
/* 807FC670  38 63 00 24 */	addi r3, r3, 0x24
/* 807FC674  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC678  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC67C  38 BE 02 88 */	addi r5, r30, 0x288
/* 807FC680  4B FF BC 59 */	bl __register_global_object
/* 807FC684  38 61 00 30 */	addi r3, r1, 0x30
/* 807FC688  38 80 00 00 */	li r4, 0
/* 807FC68C  38 A0 1F 40 */	li r5, 0x1f40
/* 807FC690  38 C0 00 00 */	li r6, 0
/* 807FC694  4B A6 AD 60 */	b __ct__5csXyzFsss
/* 807FC698  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC69C  80 01 00 30 */	lwz r0, 0x30(r1)
/* 807FC6A0  90 03 00 2A */	stw r0, 0x2a(r3)
/* 807FC6A4  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 807FC6A8  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 807FC6AC  38 63 00 2A */	addi r3, r3, 0x2a
/* 807FC6B0  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC6B4  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC6B8  38 BE 02 94 */	addi r5, r30, 0x294
/* 807FC6BC  4B FF BC 1D */	bl __register_global_object
/* 807FC6C0  38 61 00 28 */	addi r3, r1, 0x28
/* 807FC6C4  38 80 00 00 */	li r4, 0
/* 807FC6C8  38 A0 1F 40 */	li r5, 0x1f40
/* 807FC6CC  38 C0 F4 48 */	li r6, -3000
/* 807FC6D0  4B A6 AD 24 */	b __ct__5csXyzFsss
/* 807FC6D4  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC6D8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 807FC6DC  90 03 00 30 */	stw r0, 0x30(r3)
/* 807FC6E0  A0 01 00 2C */	lhz r0, 0x2c(r1)
/* 807FC6E4  B0 03 00 34 */	sth r0, 0x34(r3)
/* 807FC6E8  38 63 00 30 */	addi r3, r3, 0x30
/* 807FC6EC  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC6F0  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC6F4  38 BE 02 A0 */	addi r5, r30, 0x2a0
/* 807FC6F8  4B FF BB E1 */	bl __register_global_object
/* 807FC6FC  38 61 00 20 */	addi r3, r1, 0x20
/* 807FC700  38 80 00 00 */	li r4, 0
/* 807FC704  38 A0 4E 20 */	li r5, 0x4e20
/* 807FC708  38 C0 13 88 */	li r6, 0x1388
/* 807FC70C  4B A6 AC E8 */	b __ct__5csXyzFsss
/* 807FC710  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC714  80 01 00 20 */	lwz r0, 0x20(r1)
/* 807FC718  90 03 00 36 */	stw r0, 0x36(r3)
/* 807FC71C  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 807FC720  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 807FC724  38 63 00 36 */	addi r3, r3, 0x36
/* 807FC728  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC72C  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC730  38 BE 02 AC */	addi r5, r30, 0x2ac
/* 807FC734  4B FF BB A5 */	bl __register_global_object
/* 807FC738  38 61 00 18 */	addi r3, r1, 0x18
/* 807FC73C  38 80 00 00 */	li r4, 0
/* 807FC740  38 A0 B1 E0 */	li r5, -20000
/* 807FC744  38 C0 13 88 */	li r6, 0x1388
/* 807FC748  4B A6 AC AC */	b __ct__5csXyzFsss
/* 807FC74C  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC750  80 01 00 18 */	lwz r0, 0x18(r1)
/* 807FC754  90 03 00 3C */	stw r0, 0x3c(r3)
/* 807FC758  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 807FC75C  B0 03 00 40 */	sth r0, 0x40(r3)
/* 807FC760  38 63 00 3C */	addi r3, r3, 0x3c
/* 807FC764  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC768  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC76C  38 BE 02 B8 */	addi r5, r30, 0x2b8
/* 807FC770  4B FF BB 69 */	bl __register_global_object
/* 807FC774  38 61 00 10 */	addi r3, r1, 0x10
/* 807FC778  38 80 00 00 */	li r4, 0
/* 807FC77C  38 A0 4E 20 */	li r5, 0x4e20
/* 807FC780  38 C0 EC 78 */	li r6, -5000
/* 807FC784  4B A6 AC 70 */	b __ct__5csXyzFsss
/* 807FC788  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC78C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 807FC790  90 03 00 42 */	stw r0, 0x42(r3)
/* 807FC794  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 807FC798  B0 03 00 46 */	sth r0, 0x46(r3)
/* 807FC79C  38 63 00 42 */	addi r3, r3, 0x42
/* 807FC7A0  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC7A4  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC7A8  38 BE 02 C4 */	addi r5, r30, 0x2c4
/* 807FC7AC  4B FF BB 2D */	bl __register_global_object
/* 807FC7B0  38 61 00 08 */	addi r3, r1, 8
/* 807FC7B4  38 80 00 00 */	li r4, 0
/* 807FC7B8  38 A0 B1 E0 */	li r5, -20000
/* 807FC7BC  38 C0 EC 78 */	li r6, -5000
/* 807FC7C0  4B A6 AC 34 */	b __ct__5csXyzFsss
/* 807FC7C4  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 807FC7C8  80 01 00 08 */	lwz r0, 8(r1)
/* 807FC7CC  90 03 00 48 */	stw r0, 0x48(r3)
/* 807FC7D0  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 807FC7D4  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 807FC7D8  38 63 00 48 */	addi r3, r3, 0x48
/* 807FC7DC  3C 80 80 80 */	lis r4, __dt__5csXyzFv@ha
/* 807FC7E0  38 84 CC 28 */	addi r4, r4, __dt__5csXyzFv@l
/* 807FC7E4  38 BE 02 D0 */	addi r5, r30, 0x2d0
/* 807FC7E8  4B FF BA F1 */	bl __register_global_object
/* 807FC7EC  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 807FC7F0  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 807FC7F4  80 01 01 24 */	lwz r0, 0x124(r1)
/* 807FC7F8  7C 08 03 A6 */	mtlr r0
/* 807FC7FC  38 21 01 20 */	addi r1, r1, 0x120
/* 807FC800  4E 80 00 20 */	blr 
