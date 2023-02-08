lbl_80321C20:
/* 80321C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80321C24  7C 08 02 A6 */	mflr r0
/* 80321C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80321C2C  80 83 00 04 */	lwz r4, 4(r3)
/* 80321C30  4B FF C4 69 */	bl indexToPtr_private__11J3DTevBlockFUl
/* 80321C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80321C38  7C 08 03 A6 */	mtlr r0
/* 80321C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80321C40  4E 80 00 20 */	blr 
