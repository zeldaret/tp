lbl_8000F950:
/* 8000F950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000F954  7C 08 02 A6 */	mflr r0
/* 8000F958  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000F95C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000F960  7C 7F 1B 78 */	mr r31, r3
/* 8000F964  3C 60 80 3A */	lis r3, __vt__10J3DMtxCalc@ha /* 0x803A3468@ha */
/* 8000F968  38 03 34 68 */	addi r0, r3, __vt__10J3DMtxCalc@l /* 0x803A3468@l */
/* 8000F96C  90 1F 00 00 */	stw r0, 0(r31)
/* 8000F970  3C 60 80 3A */	lis r3, __vt__19J3DMtxCalcNoAnmBase@ha /* 0x803A338C@ha */
/* 8000F974  38 03 33 8C */	addi r0, r3, __vt__19J3DMtxCalcNoAnmBase@l /* 0x803A338C@l */
/* 8000F978  90 1F 00 00 */	stw r0, 0(r31)
/* 8000F97C  3C 60 80 3A */	lis r3, data_803A3360@ha /* 0x803A3360@ha */
/* 8000F980  38 03 33 60 */	addi r0, r3, data_803A3360@l /* 0x803A3360@l */
/* 8000F984  90 1F 00 00 */	stw r0, 0(r31)
/* 8000F988  3C 60 80 3A */	lis r3, __vt__13mDoExt_morf_c@ha /* 0x803A3328@ha */
/* 8000F98C  38 03 33 28 */	addi r0, r3, __vt__13mDoExt_morf_c@l /* 0x803A3328@l */
/* 8000F990  90 1F 00 00 */	stw r0, 0(r31)
/* 8000F994  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 8000F998  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 8000F99C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8000F9A0  38 7F 00 0C */	addi r3, r31, 0xc
/* 8000F9A4  38 80 00 00 */	li r4, 0
/* 8000F9A8  48 31 8A 55 */	bl init__12J3DFrameCtrlFs
/* 8000F9AC  38 00 00 00 */	li r0, 0
/* 8000F9B0  90 1F 00 04 */	stw r0, 4(r31)
/* 8000F9B4  90 1F 00 08 */	stw r0, 8(r31)
/* 8000F9B8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8000F9BC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8000F9C0  7F E3 FB 78 */	mr r3, r31
/* 8000F9C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000F9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000F9CC  7C 08 03 A6 */	mtlr r0
/* 8000F9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8000F9D4  4E 80 00 20 */	blr 
