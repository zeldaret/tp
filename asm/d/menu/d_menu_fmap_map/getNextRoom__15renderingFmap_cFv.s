lbl_801CE84C:
/* 801CE84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE850  7C 08 02 A6 */	mflr r0
/* 801CE854  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE858  38 A0 00 00 */	li r5, 0
/* 801CE85C  80 83 00 84 */	lwz r4, 0x84(r3)
/* 801CE860  80 04 00 08 */	lwz r0, 8(r4)
/* 801CE864  90 03 00 84 */	stw r0, 0x84(r3)
/* 801CE868  80 03 00 84 */	lwz r0, 0x84(r3)
/* 801CE86C  28 00 00 00 */	cmplwi r0, 0
/* 801CE870  40 82 00 10 */	bne lbl_801CE880
/* 801CE874  48 00 00 45 */	bl getNextStage__15renderingFmap_cFv
/* 801CE878  7C 65 1B 78 */	mr r5, r3
/* 801CE87C  48 00 00 28 */	b lbl_801CE8A4
lbl_801CE880:
/* 801CE880  80 83 00 A4 */	lwz r4, 0xa4(r3)
/* 801CE884  38 04 00 01 */	addi r0, r4, 1
/* 801CE888  90 03 00 A4 */	stw r0, 0xa4(r3)
/* 801CE88C  80 83 00 84 */	lwz r4, 0x84(r3)
/* 801CE890  80 04 00 00 */	lwz r0, 0(r4)
/* 801CE894  90 03 00 88 */	stw r0, 0x88(r3)
/* 801CE898  80 83 00 84 */	lwz r4, 0x84(r3)
/* 801CE89C  88 04 00 10 */	lbz r0, 0x10(r4)
/* 801CE8A0  90 03 00 9C */	stw r0, 0x9c(r3)
lbl_801CE8A4:
/* 801CE8A4  7C A3 2B 78 */	mr r3, r5
/* 801CE8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE8AC  7C 08 03 A6 */	mtlr r0
/* 801CE8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE8B4  4E 80 00 20 */	blr 
