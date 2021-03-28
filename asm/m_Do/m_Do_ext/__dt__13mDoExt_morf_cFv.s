lbl_8000FAE8:
/* 8000FAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000FAEC  7C 08 02 A6 */	mflr r0
/* 8000FAF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000FAF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000FAF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8000FAFC  41 82 00 68 */	beq lbl_8000FB64
/* 8000FB00  3C 60 80 3A */	lis r3, __vt__13mDoExt_morf_c@ha
/* 8000FB04  38 03 33 28 */	addi r0, r3, __vt__13mDoExt_morf_c@l
/* 8000FB08  90 1F 00 00 */	stw r0, 0(r31)
/* 8000FB0C  34 1F 00 0C */	addic. r0, r31, 0xc
/* 8000FB10  41 82 00 10 */	beq lbl_8000FB20
/* 8000FB14  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8000FB18  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8000FB1C  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_8000FB20:
/* 8000FB20  28 1F 00 00 */	cmplwi r31, 0
/* 8000FB24  41 82 00 30 */	beq lbl_8000FB54
/* 8000FB28  3C 60 80 3A */	lis r3, data_803A3360@ha
/* 8000FB2C  38 03 33 60 */	addi r0, r3, data_803A3360@l
/* 8000FB30  90 1F 00 00 */	stw r0, 0(r31)
/* 8000FB34  41 82 00 20 */	beq lbl_8000FB54
/* 8000FB38  3C 60 80 3A */	lis r3, __vt__19J3DMtxCalcNoAnmBase@ha
/* 8000FB3C  38 03 33 8C */	addi r0, r3, __vt__19J3DMtxCalcNoAnmBase@l
/* 8000FB40  90 1F 00 00 */	stw r0, 0(r31)
/* 8000FB44  41 82 00 10 */	beq lbl_8000FB54
/* 8000FB48  3C 60 80 3A */	lis r3, __vt__10J3DMtxCalc@ha
/* 8000FB4C  38 03 34 68 */	addi r0, r3, __vt__10J3DMtxCalc@l
/* 8000FB50  90 1F 00 00 */	stw r0, 0(r31)
lbl_8000FB54:
/* 8000FB54  7C 80 07 35 */	extsh. r0, r4
/* 8000FB58  40 81 00 0C */	ble lbl_8000FB64
/* 8000FB5C  7F E3 FB 78 */	mr r3, r31
/* 8000FB60  48 2B F1 DD */	bl __dl__FPv
lbl_8000FB64:
/* 8000FB64  7F E3 FB 78 */	mr r3, r31
/* 8000FB68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000FB6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000FB70  7C 08 03 A6 */	mtlr r0
/* 8000FB74  38 21 00 10 */	addi r1, r1, 0x10
/* 8000FB78  4E 80 00 20 */	blr 
