lbl_80D63B30:
/* 80D63B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63B34  7C 08 02 A6 */	mflr r0
/* 80D63B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63B3C  38 80 FF FF */	li r4, -1
/* 80D63B40  4B FF FF 59 */	bl __dt__13daTagStream_cFv
/* 80D63B44  38 60 00 01 */	li r3, 1
/* 80D63B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63B4C  7C 08 03 A6 */	mtlr r0
/* 80D63B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63B54  4E 80 00 20 */	blr 
