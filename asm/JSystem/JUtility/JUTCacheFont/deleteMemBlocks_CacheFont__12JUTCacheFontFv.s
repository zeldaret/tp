lbl_802DD29C:
/* 802DD29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DD2A0  7C 08 02 A6 */	mflr r0
/* 802DD2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DD2A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DD2AC  7C 7F 1B 78 */	mr r31, r3
/* 802DD2B0  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 802DD2B4  28 00 00 00 */	cmplwi r0, 0
/* 802DD2B8  41 82 00 0C */	beq lbl_802DD2C4
/* 802DD2BC  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 802DD2C0  4B FF 1A A1 */	bl __dla__FPv
lbl_802DD2C4:
/* 802DD2C4  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 802DD2C8  28 03 00 00 */	cmplwi r3, 0
/* 802DD2CC  41 82 00 18 */	beq lbl_802DD2E4
/* 802DD2D0  38 80 00 01 */	li r4, 1
/* 802DD2D4  81 83 00 00 */	lwz r12, 0(r3)
/* 802DD2D8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802DD2DC  7D 89 03 A6 */	mtctr r12
/* 802DD2E0  4E 80 04 21 */	bctrl 
lbl_802DD2E4:
/* 802DD2E4  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 802DD2E8  4B FF 1A 55 */	bl __dl__FPv
/* 802DD2EC  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802DD2F0  4B FF 1A 4D */	bl __dl__FPv
/* 802DD2F4  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 802DD2F8  4B FF 1A 45 */	bl __dl__FPv
/* 802DD2FC  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 802DD300  4B FF 1A 3D */	bl __dl__FPv
/* 802DD304  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802DD308  4B FF 1A 35 */	bl __dl__FPv
/* 802DD30C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DD310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DD314  7C 08 03 A6 */	mtlr r0
/* 802DD318  38 21 00 10 */	addi r1, r1, 0x10
/* 802DD31C  4E 80 00 20 */	blr 
