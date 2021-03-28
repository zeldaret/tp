lbl_8096CF8C:
/* 8096CF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096CF90  7C 08 02 A6 */	mflr r0
/* 8096CF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096CF98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096CF9C  93 C1 00 08 */	stw r30, 8(r1)
/* 8096CFA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8096CFA4  7C 9F 23 78 */	mr r31, r4
/* 8096CFA8  41 82 01 14 */	beq lbl_8096D0BC
/* 8096CFAC  3C 60 80 97 */	lis r3, __vt__11daNpc_Bou_c@ha
/* 8096CFB0  38 03 33 6C */	addi r0, r3, __vt__11daNpc_Bou_c@l
/* 8096CFB4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 8096CFB8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8096CFBC  28 03 00 00 */	cmplwi r3, 0
/* 8096CFC0  41 82 00 08 */	beq lbl_8096CFC8
/* 8096CFC4  4B 6A 43 4C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8096CFC8:
/* 8096CFC8  7F C3 F3 78 */	mr r3, r30
/* 8096CFCC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 8096CFD0  54 00 10 3A */	slwi r0, r0, 2
/* 8096CFD4  3C 80 80 97 */	lis r4, l_loadResPtrnList@ha
/* 8096CFD8  38 84 2B 44 */	addi r4, r4, l_loadResPtrnList@l
/* 8096CFDC  7C 84 00 2E */	lwzx r4, r4, r0
/* 8096CFE0  3C A0 80 97 */	lis r5, l_resNameList@ha
/* 8096CFE4  38 A5 2B 10 */	addi r5, r5, l_resNameList@l
/* 8096CFE8  4B 7D B4 C4 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 8096CFEC  34 1E 0F 9C */	addic. r0, r30, 0xf9c
/* 8096CFF0  41 82 00 10 */	beq lbl_8096D000
/* 8096CFF4  3C 60 80 97 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 8096CFF8  38 03 33 60 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 8096CFFC  90 1E 0F C0 */	stw r0, 0xfc0(r30)
lbl_8096D000:
/* 8096D000  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 8096D004  3C 80 80 97 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 8096D008  38 84 19 6C */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 8096D00C  38 A0 00 08 */	li r5, 8
/* 8096D010  38 C0 00 03 */	li r6, 3
/* 8096D014  4B 9F 4C D4 */	b __destroy_arr
/* 8096D018  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 8096D01C  41 82 00 84 */	beq lbl_8096D0A0
/* 8096D020  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8096D024  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8096D028  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 8096D02C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8096D030  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 8096D034  38 03 00 84 */	addi r0, r3, 0x84
/* 8096D038  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 8096D03C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 8096D040  41 82 00 54 */	beq lbl_8096D094
/* 8096D044  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8096D048  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8096D04C  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 8096D050  38 03 00 58 */	addi r0, r3, 0x58
/* 8096D054  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 8096D058  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 8096D05C  41 82 00 10 */	beq lbl_8096D06C
/* 8096D060  3C 60 80 97 */	lis r3, __vt__8cM3dGCyl@ha
/* 8096D064  38 03 33 54 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8096D068  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_8096D06C:
/* 8096D06C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 8096D070  41 82 00 24 */	beq lbl_8096D094
/* 8096D074  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8096D078  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8096D07C  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 8096D080  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 8096D084  41 82 00 10 */	beq lbl_8096D094
/* 8096D088  3C 60 80 97 */	lis r3, __vt__8cM3dGAab@ha
/* 8096D08C  38 03 33 48 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8096D090  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_8096D094:
/* 8096D094  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 8096D098  38 80 00 00 */	li r4, 0
/* 8096D09C  4B 71 70 48 */	b __dt__12dCcD_GObjInfFv
lbl_8096D0A0:
/* 8096D0A0  7F C3 F3 78 */	mr r3, r30
/* 8096D0A4  38 80 00 00 */	li r4, 0
/* 8096D0A8  48 00 44 C5 */	bl __dt__8daNpcT_cFv
/* 8096D0AC  7F E0 07 35 */	extsh. r0, r31
/* 8096D0B0  40 81 00 0C */	ble lbl_8096D0BC
/* 8096D0B4  7F C3 F3 78 */	mr r3, r30
/* 8096D0B8  4B 96 1C 84 */	b __dl__FPv
lbl_8096D0BC:
/* 8096D0BC  7F C3 F3 78 */	mr r3, r30
/* 8096D0C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096D0C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8096D0C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096D0CC  7C 08 03 A6 */	mtlr r0
/* 8096D0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8096D0D4  4E 80 00 20 */	blr 
