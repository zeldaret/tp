lbl_805BCC18:
/* 805BCC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BCC1C  7C 08 02 A6 */	mflr r0
/* 805BCC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BCC24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BCC28  7C 7F 1B 78 */	mr r31, r3
/* 805BCC2C  4B FF FF A5 */	bl mTimerClr__8daB_DR_cFv
/* 805BCC30  7F E3 FB 78 */	mr r3, r31
/* 805BCC34  4B FF FF C1 */	bl mCountClr__8daB_DR_cFv
/* 805BCC38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BCC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BCC40  7C 08 03 A6 */	mtlr r0
/* 805BCC44  38 21 00 10 */	addi r1, r1, 0x10
/* 805BCC48  4E 80 00 20 */	blr 
