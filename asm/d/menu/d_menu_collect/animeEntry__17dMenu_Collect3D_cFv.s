lbl_801B6FB0:
/* 801B6FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B6FB4  7C 08 02 A6 */	mflr r0
/* 801B6FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B6FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B6FC0  7C 7F 1B 78 */	mr r31, r3
/* 801B6FC4  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801B6FC8  28 03 00 00 */	cmplwi r3, 0
/* 801B6FCC  41 82 00 18 */	beq lbl_801B6FE4
/* 801B6FD0  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801B6FD4  80 84 00 04 */	lwz r4, 4(r4)
/* 801B6FD8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 801B6FDC  38 84 00 58 */	addi r4, r4, 0x58
/* 801B6FE0  4B E5 67 C9 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_801B6FE4:
/* 801B6FE4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801B6FE8  28 03 00 00 */	cmplwi r3, 0
/* 801B6FEC  41 82 00 14 */	beq lbl_801B7000
/* 801B6FF0  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801B6FF4  80 84 00 04 */	lwz r4, 4(r4)
/* 801B6FF8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 801B6FFC  4B E5 69 D1 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_801B7000:
/* 801B7000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B7004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B7008  7C 08 03 A6 */	mtlr r0
/* 801B700C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B7010  4E 80 00 20 */	blr 
