lbl_80474D64:
/* 80474D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80474D68  7C 08 02 A6 */	mflr r0
/* 80474D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80474D70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80474D74  7C 7F 1B 78 */	mr r31, r3
/* 80474D78  38 7F 05 74 */	addi r3, r31, 0x574
/* 80474D7C  4B C0 26 29 */	bl ClrMoveBGOnly__9dBgS_AcchFv
/* 80474D80  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80474D84  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80474D88  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80474D8C  80 1F 07 C8 */	lwz r0, 0x7c8(r31)
/* 80474D90  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80474D94  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 80474D98  80 1F 07 F4 */	lwz r0, 0x7f4(r31)
/* 80474D9C  60 00 00 10 */	ori r0, r0, 0x10
/* 80474DA0  90 1F 07 F4 */	stw r0, 0x7f4(r31)
/* 80474DA4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80474DA8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80474DAC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80474DB0  7F E3 FB 78 */	mr r3, r31
/* 80474DB4  4B FF A8 F1 */	bl data__12daObjCarry_cFv
/* 80474DB8  88 03 00 36 */	lbz r0, 0x36(r3)
/* 80474DBC  98 1F 07 A0 */	stb r0, 0x7a0(r31)
/* 80474DC0  3C 60 80 48 */	lis r3, lit_6496@ha /* 0x8047A44C@ha */
/* 80474DC4  C0 03 A4 4C */	lfs f0, lit_6496@l(r3)  /* 0x8047A44C@l */
/* 80474DC8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80474DCC  3C 60 80 48 */	lis r3, lit_6757@ha /* 0x8047A484@ha */
/* 80474DD0  C0 03 A4 84 */	lfs f0, lit_6757@l(r3)  /* 0x8047A484@l */
/* 80474DD4  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 80474DD8  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 80474DDC  2C 00 00 03 */	cmpwi r0, 3
/* 80474DE0  40 82 00 0C */	bne lbl_80474DEC
/* 80474DE4  38 7F 05 88 */	addi r3, r31, 0x588
/* 80474DE8  4B C0 41 B9 */	bl ClrIronBall__16dBgS_PolyPassChkFv
lbl_80474DEC:
/* 80474DEC  38 00 00 06 */	li r0, 6
/* 80474DF0  98 1F 0C F1 */	stb r0, 0xcf1(r31)
/* 80474DF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80474DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80474DFC  7C 08 03 A6 */	mtlr r0
/* 80474E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80474E04  4E 80 00 20 */	blr 
