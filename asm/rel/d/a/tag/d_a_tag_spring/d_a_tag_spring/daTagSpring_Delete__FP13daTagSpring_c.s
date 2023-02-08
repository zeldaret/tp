lbl_805A6E24:
/* 805A6E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6E28  7C 08 02 A6 */	mflr r0
/* 805A6E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6E30  4B FF FF CD */	bl _delete__13daTagSpring_cFv
/* 805A6E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6E38  7C 08 03 A6 */	mtlr r0
/* 805A6E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6E40  4E 80 00 20 */	blr 
