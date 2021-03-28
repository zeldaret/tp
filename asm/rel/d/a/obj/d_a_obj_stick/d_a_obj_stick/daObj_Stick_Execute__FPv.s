lbl_80599CCC:
/* 80599CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599CD0  7C 08 02 A6 */	mflr r0
/* 80599CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599CD8  4B FF FC 5D */	bl Execute__13daObj_Stick_cFv
/* 80599CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599CE0  7C 08 03 A6 */	mtlr r0
/* 80599CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80599CE8  4E 80 00 20 */	blr 
