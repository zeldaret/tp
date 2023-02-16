lbl_802C3638:
/* 802C3638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C363C  7C 08 02 A6 */	mflr r0
/* 802C3640  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3644  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C3648  93 C1 00 08 */	stw r30, 8(r1)
/* 802C364C  7C 7E 1B 78 */	mr r30, r3
/* 802C3650  7C 9F 23 78 */	mr r31, r4
/* 802C3654  38 E0 00 06 */	li r7, 6
/* 802C3658  39 00 00 01 */	li r8, 1
/* 802C365C  39 20 00 02 */	li r9, 2
/* 802C3660  4B FF CF 51 */	bl init__10Z2CreatureFP3VecP3VecP3VecUcUcUc
/* 802C3664  80 1E 00 04 */	lwz r0, 4(r30)
/* 802C3668  80 6D 85 C4 */	lwz r3, __OSReport_disable-0x54(r13)
/* 802C366C  80 63 01 D0 */	lwz r3, 0x1d0(r3)
/* 802C3670  90 03 00 14 */	stw r0, 0x14(r3)
/* 802C3674  38 00 00 FF */	li r0, 0xff
/* 802C3678  98 1E 00 C1 */	stb r0, 0xc1(r30)
/* 802C367C  38 60 00 00 */	li r3, 0
/* 802C3680  88 1E 00 CB */	lbz r0, 0xcb(r30)
/* 802C3684  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802C3688  98 1E 00 CB */	stb r0, 0xcb(r30)
/* 802C368C  88 1E 00 CB */	lbz r0, 0xcb(r30)
/* 802C3690  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802C3694  98 1E 00 CB */	stb r0, 0xcb(r30)
/* 802C3698  98 7E 00 C2 */	stb r3, 0xc2(r30)
/* 802C369C  88 1E 00 CB */	lbz r0, 0xcb(r30)
/* 802C36A0  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 802C36A4  98 1E 00 CB */	stb r0, 0xcb(r30)
/* 802C36A8  98 7E 00 C5 */	stb r3, 0xc5(r30)
/* 802C36AC  88 1E 00 CB */	lbz r0, 0xcb(r30)
/* 802C36B0  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 802C36B4  98 1E 00 CB */	stb r0, 0xcb(r30)
/* 802C36B8  88 1E 00 CB */	lbz r0, 0xcb(r30)
/* 802C36BC  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 802C36C0  98 1E 00 CB */	stb r0, 0xcb(r30)
/* 802C36C4  88 1E 00 CC */	lbz r0, 0xcc(r30)
/* 802C36C8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802C36CC  98 1E 00 CC */	stb r0, 0xcc(r30)
/* 802C36D0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802C36D4  D0 1E 00 B4 */	stfs f0, 0xb4(r30)
/* 802C36D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802C36DC  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
/* 802C36E0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802C36E4  D0 1E 00 BC */	stfs f0, 0xbc(r30)
/* 802C36E8  98 7E 00 C8 */	stb r3, 0xc8(r30)
/* 802C36EC  98 7E 00 C9 */	stb r3, 0xc9(r30)
/* 802C36F0  38 00 FF FF */	li r0, -1
/* 802C36F4  98 1E 00 CA */	stb r0, 0xca(r30)
/* 802C36F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C36FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C3700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C3704  7C 08 03 A6 */	mtlr r0
/* 802C3708  38 21 00 10 */	addi r1, r1, 0x10
/* 802C370C  4E 80 00 20 */	blr 
