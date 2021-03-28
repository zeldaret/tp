lbl_809BB60C:
/* 809BB60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BB610  7C 08 02 A6 */	mflr r0
/* 809BB614  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BB618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BB61C  93 C1 00 08 */	stw r30, 8(r1)
/* 809BB620  7C 7E 1B 79 */	or. r30, r3, r3
/* 809BB624  7C 9F 23 78 */	mr r31, r4
/* 809BB628  41 82 00 EC */	beq lbl_809BB714
/* 809BB62C  3C 60 80 9C */	lis r3, __vt__11daNpc_Gnd_c@ha
/* 809BB630  38 03 E7 70 */	addi r0, r3, __vt__11daNpc_Gnd_c@l
/* 809BB634  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809BB638  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809BB63C  28 00 00 00 */	cmplwi r0, 0
/* 809BB640  41 82 00 0C */	beq lbl_809BB64C
/* 809BB644  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809BB648  4B 65 5C C8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809BB64C:
/* 809BB64C  7F C3 F3 78 */	mr r3, r30
/* 809BB650  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 809BB654  54 00 10 3A */	slwi r0, r0, 2
/* 809BB658  3C 80 80 9C */	lis r4, l_loadResPtrnList@ha
/* 809BB65C  38 84 E5 E0 */	addi r4, r4, l_loadResPtrnList@l
/* 809BB660  7C 84 00 2E */	lwzx r4, r4, r0
/* 809BB664  3C A0 80 9C */	lis r5, l_resNameList@ha
/* 809BB668  38 A5 E5 D4 */	addi r5, r5, l_resNameList@l
/* 809BB66C  4B 78 CE 40 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 809BB670  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 809BB674  41 82 00 84 */	beq lbl_809BB6F8
/* 809BB678  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809BB67C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809BB680  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 809BB684  38 03 00 2C */	addi r0, r3, 0x2c
/* 809BB688  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 809BB68C  38 03 00 84 */	addi r0, r3, 0x84
/* 809BB690  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 809BB694  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 809BB698  41 82 00 54 */	beq lbl_809BB6EC
/* 809BB69C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809BB6A0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809BB6A4  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 809BB6A8  38 03 00 58 */	addi r0, r3, 0x58
/* 809BB6AC  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 809BB6B0  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 809BB6B4  41 82 00 10 */	beq lbl_809BB6C4
/* 809BB6B8  3C 60 80 9C */	lis r3, __vt__8cM3dGCyl@ha
/* 809BB6BC  38 03 E7 64 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809BB6C0  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_809BB6C4:
/* 809BB6C4  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 809BB6C8  41 82 00 24 */	beq lbl_809BB6EC
/* 809BB6CC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809BB6D0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809BB6D4  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 809BB6D8  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 809BB6DC  41 82 00 10 */	beq lbl_809BB6EC
/* 809BB6E0  3C 60 80 9C */	lis r3, __vt__8cM3dGAab@ha
/* 809BB6E4  38 03 E7 58 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809BB6E8  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_809BB6EC:
/* 809BB6EC  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 809BB6F0  38 80 00 00 */	li r4, 0
/* 809BB6F4  4B 6C 89 F0 */	b __dt__12dCcD_GObjInfFv
lbl_809BB6F8:
/* 809BB6F8  7F C3 F3 78 */	mr r3, r30
/* 809BB6FC  38 80 00 00 */	li r4, 0
/* 809BB700  48 00 1C 49 */	bl __dt__8daNpcT_cFv
/* 809BB704  7F E0 07 35 */	extsh. r0, r31
/* 809BB708  40 81 00 0C */	ble lbl_809BB714
/* 809BB70C  7F C3 F3 78 */	mr r3, r30
/* 809BB710  4B 91 36 2C */	b __dl__FPv
lbl_809BB714:
/* 809BB714  7F C3 F3 78 */	mr r3, r30
/* 809BB718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BB71C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BB720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB724  7C 08 03 A6 */	mtlr r0
/* 809BB728  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB72C  4E 80 00 20 */	blr 
