lbl_8007B87C:
/* 8007B87C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B880  7C 08 02 A6 */	mflr r0
/* 8007B884  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B888  A0 84 00 00 */	lhz r4, 0(r4)
/* 8007B88C  38 A0 00 FF */	li r5, 0xff
/* 8007B890  38 C0 00 00 */	li r6, 0
/* 8007B894  4B FF FF 91 */	bl GetPolyInf2__4cBgWCFiUlUl
/* 8007B898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B89C  7C 08 03 A6 */	mtlr r0
/* 8007B8A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B8A4  4E 80 00 20 */	blr 
