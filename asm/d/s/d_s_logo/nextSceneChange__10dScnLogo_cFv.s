lbl_80257284:
/* 80257284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80257288  7C 08 02 A6 */	mflr r0
/* 8025728C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257290  80 8D 86 F8 */	lwz r4, mResetData__6mDoRst(r13)
/* 80257294  80 04 00 00 */	lwz r0, 0(r4)
/* 80257298  2C 00 00 00 */	cmpwi r0, 0
/* 8025729C  40 82 00 0C */	bne lbl_802572A8
/* 802572A0  38 80 00 0C */	li r4, 0xc
/* 802572A4  4B DD 59 B1 */	bl dComIfG_changeOpeningScene__FP11scene_classs
lbl_802572A8:
/* 802572A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802572AC  7C 08 03 A6 */	mtlr r0
/* 802572B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802572B4  4E 80 00 20 */	blr 
