lbl_80474EA8:
/* 80474EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80474EAC  7C 08 02 A6 */	mflr r0
/* 80474EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80474EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80474EB8  7C 7F 1B 78 */	mr r31, r3
/* 80474EBC  38 7F 05 74 */	addi r3, r31, 0x574
/* 80474EC0  4B C0 24 E5 */	bl ClrMoveBGOnly__9dBgS_AcchFv
/* 80474EC4  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80474EC8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80474ECC  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80474ED0  80 1F 07 C8 */	lwz r0, 0x7c8(r31)
/* 80474ED4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80474ED8  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 80474EDC  80 1F 07 E0 */	lwz r0, 0x7e0(r31)
/* 80474EE0  60 00 00 01 */	ori r0, r0, 1
/* 80474EE4  90 1F 07 E0 */	stw r0, 0x7e0(r31)
/* 80474EE8  80 1F 07 F4 */	lwz r0, 0x7f4(r31)
/* 80474EEC  60 00 00 01 */	ori r0, r0, 1
/* 80474EF0  90 1F 07 F4 */	stw r0, 0x7f4(r31)
/* 80474EF4  80 1F 07 F4 */	lwz r0, 0x7f4(r31)
/* 80474EF8  60 00 00 10 */	ori r0, r0, 0x10
/* 80474EFC  90 1F 07 F4 */	stw r0, 0x7f4(r31)
/* 80474F00  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80474F04  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80474F08  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80474F0C  38 00 00 00 */	li r0, 0
/* 80474F10  98 1F 0D B5 */	stb r0, 0xdb5(r31)
/* 80474F14  7F E3 FB 78 */	mr r3, r31
/* 80474F18  4B FF DF 45 */	bl calc_gravity__12daObjCarry_cFv
/* 80474F1C  D0 3F 05 30 */	stfs f1, 0x530(r31)
/* 80474F20  3C 60 80 48 */	lis r3, lit_6043@ha /* 0x8047A434@ha */
/* 80474F24  C0 03 A4 34 */	lfs f0, lit_6043@l(r3)  /* 0x8047A434@l */
/* 80474F28  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 80474F2C  7F E3 FB 78 */	mr r3, r31
/* 80474F30  4B FF A7 75 */	bl data__12daObjCarry_cFv
/* 80474F34  88 03 00 36 */	lbz r0, 0x36(r3)
/* 80474F38  98 1F 07 A0 */	stb r0, 0x7a0(r31)
/* 80474F3C  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80474F40  4B C0 F6 09 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80474F44  38 7F 0D 28 */	addi r3, r31, 0xd28
/* 80474F48  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80474F4C  4B CE 96 65 */	bl initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80474F50  88 1F 0D B0 */	lbz r0, 0xdb0(r31)
/* 80474F54  28 00 00 01 */	cmplwi r0, 1
/* 80474F58  40 82 00 20 */	bne lbl_80474F78
/* 80474F5C  38 00 00 00 */	li r0, 0
/* 80474F60  98 1F 0D B0 */	stb r0, 0xdb0(r31)
/* 80474F64  88 1F 04 9A */	lbz r0, 0x49a(r31)
/* 80474F68  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 80474F6C  98 1F 04 9A */	stb r0, 0x49a(r31)
/* 80474F70  38 00 00 01 */	li r0, 1
/* 80474F74  98 1F 0D 7A */	stb r0, 0xd7a(r31)
lbl_80474F78:
/* 80474F78  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 80474F7C  2C 00 00 03 */	cmpwi r0, 3
/* 80474F80  40 82 00 0C */	bne lbl_80474F8C
/* 80474F84  38 7F 05 88 */	addi r3, r31, 0x588
/* 80474F88  4B C0 40 19 */	bl ClrIronBall__16dBgS_PolyPassChkFv
lbl_80474F8C:
/* 80474F8C  38 00 00 09 */	li r0, 9
/* 80474F90  98 1F 0C F1 */	stb r0, 0xcf1(r31)
/* 80474F94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80474F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80474F9C  7C 08 03 A6 */	mtlr r0
/* 80474FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80474FA4  4E 80 00 20 */	blr 
