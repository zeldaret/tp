lbl_8099A14C:
/* 8099A14C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099A150  7C 08 02 A6 */	mflr r0
/* 8099A154  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099A158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099A15C  93 C1 00 08 */	stw r30, 8(r1)
/* 8099A160  7C 7E 1B 79 */	or. r30, r3, r3
/* 8099A164  7C 9F 23 78 */	mr r31, r4
/* 8099A168  41 82 01 08 */	beq lbl_8099A270
/* 8099A16C  3C 80 80 9A */	lis r4, __vt__13daNpcClerkT_c@ha /* 0x8099D56C@ha */
/* 8099A170  38 04 D5 6C */	addi r0, r4, __vt__13daNpcClerkT_c@l /* 0x8099D56C@l */
/* 8099A174  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 8099A178  4B 80 03 ED */	bl deleteObject__13dShopSystem_cFv
/* 8099A17C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 8099A180  28 00 00 00 */	cmplwi r0, 0
/* 8099A184  41 82 00 0C */	beq lbl_8099A190
/* 8099A188  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8099A18C  4B 67 71 85 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8099A190:
/* 8099A190  7F C3 F3 78 */	mr r3, r30
/* 8099A194  88 1E 10 BC */	lbz r0, 0x10bc(r30)
/* 8099A198  54 00 10 3A */	slwi r0, r0, 2
/* 8099A19C  3C 80 80 9A */	lis r4, l_loadResPtrnList@ha /* 0x8099D39C@ha */
/* 8099A1A0  38 84 D3 9C */	addi r4, r4, l_loadResPtrnList@l /* 0x8099D39C@l */
/* 8099A1A4  7C 84 00 2E */	lwzx r4, r4, r0
/* 8099A1A8  3C A0 80 9A */	lis r5, l_resNameList@ha /* 0x8099D390@ha */
/* 8099A1AC  38 A5 D3 90 */	addi r5, r5, l_resNameList@l /* 0x8099D390@l */
/* 8099A1B0  4B 7A E2 FD */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 8099A1B4  38 7E 10 C0 */	addi r3, r30, 0x10c0
/* 8099A1B8  3C 80 80 9A */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x8099C2D4@ha */
/* 8099A1BC  38 84 C2 D4 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x8099C2D4@l */
/* 8099A1C0  38 A0 00 08 */	li r5, 8
/* 8099A1C4  38 C0 00 01 */	li r6, 1
/* 8099A1C8  4B 9C 7B 21 */	bl __destroy_arr
/* 8099A1CC  34 1E 0F 80 */	addic. r0, r30, 0xf80
/* 8099A1D0  41 82 00 84 */	beq lbl_8099A254
/* 8099A1D4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8099A1D8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8099A1DC  90 7E 0F BC */	stw r3, 0xfbc(r30)
/* 8099A1E0  38 03 00 2C */	addi r0, r3, 0x2c
/* 8099A1E4  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 8099A1E8  38 03 00 84 */	addi r0, r3, 0x84
/* 8099A1EC  90 1E 10 B8 */	stw r0, 0x10b8(r30)
/* 8099A1F0  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 8099A1F4  41 82 00 54 */	beq lbl_8099A248
/* 8099A1F8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8099A1FC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8099A200  90 7E 10 A0 */	stw r3, 0x10a0(r30)
/* 8099A204  38 03 00 58 */	addi r0, r3, 0x58
/* 8099A208  90 1E 10 B8 */	stw r0, 0x10b8(r30)
/* 8099A20C  34 1E 10 A4 */	addic. r0, r30, 0x10a4
/* 8099A210  41 82 00 10 */	beq lbl_8099A220
/* 8099A214  3C 60 80 9A */	lis r3, __vt__8cM3dGCyl@ha /* 0x8099D560@ha */
/* 8099A218  38 03 D5 60 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8099D560@l */
/* 8099A21C  90 1E 10 B8 */	stw r0, 0x10b8(r30)
lbl_8099A220:
/* 8099A220  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 8099A224  41 82 00 24 */	beq lbl_8099A248
/* 8099A228  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8099A22C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8099A230  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 8099A234  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 8099A238  41 82 00 10 */	beq lbl_8099A248
/* 8099A23C  3C 60 80 9A */	lis r3, __vt__8cM3dGAab@ha /* 0x8099D554@ha */
/* 8099A240  38 03 D5 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8099D554@l */
/* 8099A244  90 1E 10 9C */	stw r0, 0x109c(r30)
lbl_8099A248:
/* 8099A248  38 7E 0F 80 */	addi r3, r30, 0xf80
/* 8099A24C  38 80 00 00 */	li r4, 0
/* 8099A250  4B 6E 9E 95 */	bl __dt__12dCcD_GObjInfFv
lbl_8099A254:
/* 8099A254  7F C3 F3 78 */	mr r3, r30
/* 8099A258  38 80 00 00 */	li r4, 0
/* 8099A25C  4B 7F D2 89 */	bl __dt__13dShopSystem_cFv
/* 8099A260  7F E0 07 35 */	extsh. r0, r31
/* 8099A264  40 81 00 0C */	ble lbl_8099A270
/* 8099A268  7F C3 F3 78 */	mr r3, r30
/* 8099A26C  4B 93 4A D1 */	bl __dl__FPv
lbl_8099A270:
/* 8099A270  7F C3 F3 78 */	mr r3, r30
/* 8099A274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099A278  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099A27C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099A280  7C 08 03 A6 */	mtlr r0
/* 8099A284  38 21 00 10 */	addi r1, r1, 0x10
/* 8099A288  4E 80 00 20 */	blr 
