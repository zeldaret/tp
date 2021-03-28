lbl_80D5B918:
/* 80D5B918  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D5B91C  7C 08 02 A6 */	mflr r0
/* 80D5B920  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D5B924  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5B928  4B 60 68 B4 */	b _savegpr_29
/* 80D5B92C  7C 7F 1B 78 */	mr r31, r3
/* 80D5B930  3C 80 80 D6 */	lis r4, lit_3702@ha
/* 80D5B934  3B C4 BD 38 */	addi r30, r4, lit_3702@l
/* 80D5B938  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5B93C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5B940  40 82 00 1C */	bne lbl_80D5B95C
/* 80D5B944  28 1F 00 00 */	cmplwi r31, 0
/* 80D5B948  41 82 00 08 */	beq lbl_80D5B950
/* 80D5B94C  4B 2B D2 18 */	b __ct__10fopAc_ac_cFv
lbl_80D5B950:
/* 80D5B950  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D5B954  60 00 00 08 */	ori r0, r0, 8
/* 80D5B958  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D5B95C:
/* 80D5B95C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5B960  54 00 05 BE */	clrlwi r0, r0, 0x16
/* 80D5B964  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 80D5B968  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5B96C  54 00 B5 BE */	rlwinm r0, r0, 0x16, 0x16, 0x1f
/* 80D5B970  B0 1F 05 72 */	sth r0, 0x572(r31)
/* 80D5B974  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5B978  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 80D5B97C  98 1F 05 6B */	stb r0, 0x56b(r31)
/* 80D5B980  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80D5B984  98 1F 05 68 */	stb r0, 0x568(r31)
/* 80D5B988  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80D5B98C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D5B990  98 1F 05 69 */	stb r0, 0x569(r31)
/* 80D5B994  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5B998  54 00 17 FF */	rlwinm. r0, r0, 2, 0x1f, 0x1f
/* 80D5B99C  41 82 00 20 */	beq lbl_80D5B9BC
/* 80D5B9A0  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D5B9A4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D5B9A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D5B9AC  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80D5B9B0  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D5B9B4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D5B9B8  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
lbl_80D5B9BC:
/* 80D5B9BC  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80D5B9C0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80D5B9C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D5B9C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D5B9CC  D0 1F 05 74 */	stfs f0, 0x574(r31)
/* 80D5B9D0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D5B9D4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80D5B9D8  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D5B9DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D5B9E0  EC 02 00 2A */	fadds f0, f2, f0
/* 80D5B9E4  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 80D5B9E8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80D5B9EC  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 80D5B9F0  8B DF 05 6A */	lbz r30, 0x56a(r31)
/* 80D5B9F4  28 1E 00 FF */	cmplwi r30, 0xff
/* 80D5B9F8  41 82 00 68 */	beq lbl_80D5BA60
/* 80D5B9FC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D5BA00  7C 1D 07 74 */	extsb r29, r0
/* 80D5BA04  7F A3 EB 78 */	mr r3, r29
/* 80D5BA08  4B 2D 18 54 */	b dComIfGp_getRoomCamera__Fi
/* 80D5BA0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80D5BA10  1C 1E 00 18 */	mulli r0, r30, 0x18
/* 80D5BA14  7C 63 02 14 */	add r3, r3, r0
/* 80D5BA18  88 03 00 10 */	lbz r0, 0x10(r3)
/* 80D5BA1C  1F C0 00 14 */	mulli r30, r0, 0x14
/* 80D5BA20  7F A3 EB 78 */	mr r3, r29
/* 80D5BA24  4B 2D 18 88 */	b dComIfGp_getRoomArrow__Fi
/* 80D5BA28  80 03 00 04 */	lwz r0, 4(r3)
/* 80D5BA2C  7C 60 F2 14 */	add r3, r0, r30
/* 80D5BA30  C0 43 00 08 */	lfs f2, 8(r3)
/* 80D5BA34  C0 23 00 04 */	lfs f1, 4(r3)
/* 80D5BA38  C0 03 00 00 */	lfs f0, 0(r3)
/* 80D5BA3C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80D5BA40  D0 3F 05 3C */	stfs f1, 0x53c(r31)
/* 80D5BA44  D0 5F 05 40 */	stfs f2, 0x540(r31)
/* 80D5BA48  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80D5BA4C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D5BA50  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80D5BA54  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D5BA58  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80D5BA5C  D0 1F 05 58 */	stfs f0, 0x558(r31)
lbl_80D5BA60:
/* 80D5BA60  7F E3 FB 78 */	mr r3, r31
/* 80D5BA64  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D5BA68  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D5BA6C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D5BA70  4B 2B EC A0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D5BA74  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 80D5BA78  38 60 00 04 */	li r3, 4
/* 80D5BA7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5BA80  4B 60 67 A8 */	b _restgpr_29
/* 80D5BA84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D5BA88  7C 08 03 A6 */	mtlr r0
/* 80D5BA8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D5BA90  4E 80 00 20 */	blr 
