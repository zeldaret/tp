lbl_800C3868:
/* 800C3868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C386C  7C 08 02 A6 */	mflr r0
/* 800C3870  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C3874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C3878  7C 7F 1B 78 */	mr r31, r3
/* 800C387C  38 80 00 00 */	li r4, 0
/* 800C3880  4B FF 68 51 */	bl checkNextAction__9daAlink_cFi
/* 800C3884  2C 03 00 00 */	cmpwi r3, 0
/* 800C3888  40 82 00 2C */	bne lbl_800C38B4
/* 800C388C  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800C3890  28 00 00 00 */	cmplwi r0, 0
/* 800C3894  40 82 00 14 */	bne lbl_800C38A8
/* 800C3898  7F E3 FB 78 */	mr r3, r31
/* 800C389C  4B FF 31 95 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 800C38A0  2C 03 00 00 */	cmpwi r3, 0
/* 800C38A4  40 82 00 10 */	bne lbl_800C38B4
lbl_800C38A8:
/* 800C38A8  7F E3 FB 78 */	mr r3, r31
/* 800C38AC  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C38B0  4B FE B1 C1 */	bl setBlendAtnMoveAnime__9daAlink_cFf
lbl_800C38B4:
/* 800C38B4  38 60 00 01 */	li r3, 1
/* 800C38B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C38BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C38C0  7C 08 03 A6 */	mtlr r0
/* 800C38C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800C38C8  4E 80 00 20 */	blr 
