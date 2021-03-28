lbl_802E97B4:
/* 802E97B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E97B8  7C 08 02 A6 */	mflr r0
/* 802E97BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E97C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E97C4  7C 7F 1B 78 */	mr r31, r3
/* 802E97C8  4B FF F3 ED */	bl setPort__14J2DGrafContextFv
/* 802E97CC  38 7F 00 40 */	addi r3, r31, 0x40
/* 802E97D0  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 802E97D4  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 802E97D8  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 802E97DC  C0 9F 00 C4 */	lfs f4, 0xc4(r31)
/* 802E97E0  C0 BF 00 CC */	lfs f5, 0xcc(r31)
/* 802E97E4  C0 DF 00 D0 */	lfs f6, 0xd0(r31)
/* 802E97E8  48 05 D8 11 */	bl C_MTXOrtho
/* 802E97EC  38 7F 00 40 */	addi r3, r31, 0x40
/* 802E97F0  38 80 00 01 */	li r4, 1
/* 802E97F4  48 07 68 E1 */	bl GXSetProjection
/* 802E97F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E97FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E9800  7C 08 03 A6 */	mtlr r0
/* 802E9804  38 21 00 10 */	addi r1, r1, 0x10
/* 802E9808  4E 80 00 20 */	blr 
