lbl_8023C4A4:
/* 8023C4A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023C4A8  7C 08 02 A6 */	mflr r0
/* 8023C4AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023C4B0  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8023C4B4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8023C4B8  7C 7F 1B 78 */	mr r31, r3
/* 8023C4BC  FF E0 08 90 */	fmr f31, f1
/* 8023C4C0  81 83 00 00 */	lwz r12, 0(r3)
/* 8023C4C4  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8023C4C8  7D 89 03 A6 */	mtctr r12
/* 8023C4CC  4E 80 04 21 */	bctrl 
/* 8023C4D0  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023C4D4  FC 20 F8 90 */	fmr f1, f31
/* 8023C4D8  48 01 92 F9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8023C4DC  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8023C4E0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8023C4E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023C4E8  7C 08 03 A6 */	mtlr r0
/* 8023C4EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8023C4F0  4E 80 00 20 */	blr 
