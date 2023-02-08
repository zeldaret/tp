lbl_80190B44:
/* 80190B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80190B48  7C 08 02 A6 */	mflr r0
/* 80190B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80190B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80190B54  7C 7F 1B 78 */	mr r31, r3
/* 80190B58  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80190B5C  28 03 00 00 */	cmplwi r3, 0
/* 80190B60  41 82 00 18 */	beq lbl_80190B78
/* 80190B64  80 9F 00 08 */	lwz r4, 8(r31)
/* 80190B68  80 84 00 04 */	lwz r4, 4(r4)
/* 80190B6C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80190B70  38 84 00 58 */	addi r4, r4, 0x58
/* 80190B74  4B E7 CC 35 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80190B78:
/* 80190B78  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80190B7C  28 03 00 00 */	cmplwi r3, 0
/* 80190B80  41 82 00 14 */	beq lbl_80190B94
/* 80190B84  80 9F 00 08 */	lwz r4, 8(r31)
/* 80190B88  80 84 00 04 */	lwz r4, 4(r4)
/* 80190B8C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80190B90  4B E7 CE 3D */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80190B94:
/* 80190B94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80190B98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80190B9C  7C 08 03 A6 */	mtlr r0
/* 80190BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80190BA4  4E 80 00 20 */	blr 
