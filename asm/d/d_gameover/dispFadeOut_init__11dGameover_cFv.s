lbl_8019B3A0:
/* 8019B3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019B3A4  7C 08 02 A6 */	mflr r0
/* 8019B3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019B3AC  38 00 00 1E */	li r0, 0x1e
/* 8019B3B0  B0 03 01 14 */	sth r0, 0x114(r3)
/* 8019B3B4  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8019B3B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8019B3BC  28 03 00 00 */	cmplwi r3, 0
/* 8019B3C0  41 82 00 18 */	beq lbl_8019B3D8
/* 8019B3C4  38 80 00 0F */	li r4, 0xf
/* 8019B3C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8019B3CC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8019B3D0  7D 89 03 A6 */	mtctr r12
/* 8019B3D4  4E 80 04 21 */	bctrl 
lbl_8019B3D8:
/* 8019B3D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019B3DC  7C 08 03 A6 */	mtlr r0
/* 8019B3E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8019B3E4  4E 80 00 20 */	blr 
