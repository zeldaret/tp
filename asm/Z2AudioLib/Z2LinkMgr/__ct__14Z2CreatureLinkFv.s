lbl_802C333C:
/* 802C333C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C3340  7C 08 02 A6 */	mflr r0
/* 802C3344  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3348  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C334C  7C 7F 1B 78 */	mr r31, r3
/* 802C3350  4B FF D0 79 */	bl __ct__10Z2CreatureFv
/* 802C3354  38 7F 00 90 */	addi r3, r31, 0x90
/* 802C3358  48 00 15 91 */	bl __ct__18Z2LinkSoundStarterFv
/* 802C335C  3C 60 80 3D */	lis r3, __vt__14Z2CreatureLink@ha
/* 802C3360  38 63 B9 80 */	addi r3, r3, __vt__14Z2CreatureLink@l
/* 802C3364  90 7F 00 00 */	stw r3, 0(r31)
/* 802C3368  38 03 00 30 */	addi r0, r3, 0x30
/* 802C336C  90 1F 00 90 */	stw r0, 0x90(r31)
/* 802C3370  38 7F 00 94 */	addi r3, r31, 0x94
/* 802C3374  4B FF B4 D1 */	bl __ct__16Z2SoundObjSimpleFv
/* 802C3378  38 60 00 00 */	li r3, 0
/* 802C337C  98 7F 00 C0 */	stb r3, 0xc0(r31)
/* 802C3380  93 ED 8D E0 */	stw r31, mLinkPtr__14Z2CreatureLink(r13)
/* 802C3384  38 00 00 FF */	li r0, 0xff
/* 802C3388  98 1F 00 C1 */	stb r0, 0xc1(r31)
/* 802C338C  88 1F 00 CB */	lbz r0, 0xcb(r31)
/* 802C3390  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802C3394  98 1F 00 CB */	stb r0, 0xcb(r31)
/* 802C3398  88 1F 00 CB */	lbz r0, 0xcb(r31)
/* 802C339C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802C33A0  98 1F 00 CB */	stb r0, 0xcb(r31)
/* 802C33A4  98 7F 00 C2 */	stb r3, 0xc2(r31)
/* 802C33A8  88 1F 00 CB */	lbz r0, 0xcb(r31)
/* 802C33AC  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 802C33B0  98 1F 00 CB */	stb r0, 0xcb(r31)
/* 802C33B4  7F E3 FB 78 */	mr r3, r31
/* 802C33B8  7F E4 FB 78 */	mr r4, r31
/* 802C33BC  28 1F 00 00 */	cmplwi r31, 0
/* 802C33C0  41 82 00 08 */	beq lbl_802C33C8
/* 802C33C4  38 9F 00 90 */	addi r4, r31, 0x90
lbl_802C33C8:
/* 802C33C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802C33CC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802C33D0  7D 89 03 A6 */	mtctr r12
/* 802C33D4  4E 80 04 21 */	bctrl 
/* 802C33D8  7F E0 FB 78 */	mr r0, r31
/* 802C33DC  28 1F 00 00 */	cmplwi r31, 0
/* 802C33E0  41 82 00 08 */	beq lbl_802C33E8
/* 802C33E4  38 1F 00 90 */	addi r0, r31, 0x90
lbl_802C33E8:
/* 802C33E8  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 802C33EC  38 60 00 00 */	li r3, 0
/* 802C33F0  98 7F 00 C3 */	stb r3, 0xc3(r31)
/* 802C33F4  98 7F 00 C4 */	stb r3, 0xc4(r31)
/* 802C33F8  98 7F 00 C5 */	stb r3, 0xc5(r31)
/* 802C33FC  98 7F 00 C6 */	stb r3, 0xc6(r31)
/* 802C3400  98 7F 00 C7 */	stb r3, 0xc7(r31)
/* 802C3404  88 1F 00 CB */	lbz r0, 0xcb(r31)
/* 802C3408  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 802C340C  98 1F 00 CB */	stb r0, 0xcb(r31)
/* 802C3410  88 1F 00 CB */	lbz r0, 0xcb(r31)
/* 802C3414  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802C3418  98 1F 00 CB */	stb r0, 0xcb(r31)
/* 802C341C  88 1F 00 CB */	lbz r0, 0xcb(r31)
/* 802C3420  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 802C3424  98 1F 00 CB */	stb r0, 0xcb(r31)
/* 802C3428  88 1F 00 CB */	lbz r0, 0xcb(r31)
/* 802C342C  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 802C3430  98 1F 00 CB */	stb r0, 0xcb(r31)
/* 802C3434  88 1F 00 CB */	lbz r0, 0xcb(r31)
/* 802C3438  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 802C343C  98 1F 00 CB */	stb r0, 0xcb(r31)
/* 802C3440  88 1F 00 CC */	lbz r0, 0xcc(r31)
/* 802C3444  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802C3448  98 1F 00 CC */	stb r0, 0xcc(r31)
/* 802C344C  7F E3 FB 78 */	mr r3, r31
/* 802C3450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C3454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C3458  7C 08 03 A6 */	mtlr r0
/* 802C345C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C3460  4E 80 00 20 */	blr 
