lbl_801E7D18:
/* 801E7D18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E7D1C  7C 08 02 A6 */	mflr r0
/* 801E7D20  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E7D24  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801E7D28  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801E7D2C  7C 7F 1B 78 */	mr r31, r3
/* 801E7D30  FF E0 08 90 */	fmr f31, f1
/* 801E7D34  80 63 00 44 */	lwz r3, 0x44(r3)
/* 801E7D38  4B FA D5 69 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801E7D3C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801E7D40  FC 20 F8 90 */	fmr f1, f31
/* 801E7D44  4B FA D4 85 */	bl setScale__16dSelect_cursor_cFf
/* 801E7D48  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801E7D4C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801E7D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E7D54  7C 08 03 A6 */	mtlr r0
/* 801E7D58  38 21 00 20 */	addi r1, r1, 0x20
/* 801E7D5C  4E 80 00 20 */	blr 
