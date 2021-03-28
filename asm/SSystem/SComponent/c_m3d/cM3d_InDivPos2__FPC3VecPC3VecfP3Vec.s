lbl_802685B0:
/* 802685B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802685B4  7C 08 02 A6 */	mflr r0
/* 802685B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802685BC  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 802685C0  93 E1 00 24 */	stw r31, 0x24(r1)
/* 802685C4  93 C1 00 20 */	stw r30, 0x20(r1)
/* 802685C8  7C 7E 1B 78 */	mr r30, r3
/* 802685CC  FF E0 08 90 */	fmr f31, f1
/* 802685D0  7C BF 2B 78 */	mr r31, r5
/* 802685D4  7C 83 23 78 */	mr r3, r4
/* 802685D8  7F C4 F3 78 */	mr r4, r30
/* 802685DC  38 A1 00 08 */	addi r5, r1, 8
/* 802685E0  48 0D EA D5 */	bl PSVECSubtract
/* 802685E4  7F C3 F3 78 */	mr r3, r30
/* 802685E8  38 81 00 08 */	addi r4, r1, 8
/* 802685EC  FC 20 F8 90 */	fmr f1, f31
/* 802685F0  7F E5 FB 78 */	mr r5, r31
/* 802685F4  4B FF FF 6D */	bl cM3d_InDivPos1__FPC3VecPC3VecfP3Vec
/* 802685F8  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 802685FC  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80268600  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80268604  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80268608  7C 08 03 A6 */	mtlr r0
/* 8026860C  38 21 00 30 */	addi r1, r1, 0x30
/* 80268610  4E 80 00 20 */	blr 
