lbl_8083D774:
/* 8083D774  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8083D778  7C 08 02 A6 */	mflr r0
/* 8083D77C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8083D780  39 61 00 20 */	addi r11, r1, 0x20
/* 8083D784  4B B2 4A 55 */	bl _savegpr_28
/* 8083D788  7C 7D 1B 78 */	mr r29, r3
/* 8083D78C  7C 9E 23 78 */	mr r30, r4
/* 8083D790  3C 60 80 84 */	lis r3, lit_7274@ha /* 0x808456DC@ha */
/* 8083D794  C0 03 56 DC */	lfs f0, lit_7274@l(r3)  /* 0x808456DC@l */
/* 8083D798  C0 3D 07 54 */	lfs f1, 0x754(r29)
/* 8083D79C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8083D7A0  41 82 00 EC */	beq lbl_8083D88C
/* 8083D7A4  80 1D 17 44 */	lwz r0, 0x1744(r29)
/* 8083D7A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8083D7AC  40 82 00 30 */	bne lbl_8083D7DC
/* 8083D7B0  88 1D 16 B4 */	lbz r0, 0x16b4(r29)
/* 8083D7B4  28 00 00 06 */	cmplwi r0, 6
/* 8083D7B8  41 82 00 24 */	beq lbl_8083D7DC
/* 8083D7BC  28 00 00 04 */	cmplwi r0, 4
/* 8083D7C0  41 82 00 1C */	beq lbl_8083D7DC
/* 8083D7C4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8083D7C8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8083D7CC  3C 60 80 84 */	lis r3, lit_5180@ha /* 0x80845654@ha */
/* 8083D7D0  C0 03 56 54 */	lfs f0, lit_5180@l(r3)  /* 0x80845654@l */
/* 8083D7D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083D7D8  40 80 00 B4 */	bge lbl_8083D88C
lbl_8083D7DC:
/* 8083D7DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083D7E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083D7E4  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 8083D7E8  7F 83 E3 78 */	mr r3, r28
/* 8083D7EC  38 9D 07 AC */	addi r4, r29, 0x7ac
/* 8083D7F0  4B 83 79 11 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 8083D7F4  7C 7F 1B 78 */	mr r31, r3
/* 8083D7F8  7F 83 E3 78 */	mr r3, r28
/* 8083D7FC  38 9D 07 AC */	addi r4, r29, 0x7ac
/* 8083D800  4B 83 73 E9 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 8083D804  98 7D 04 8D */	stb r3, 0x48d(r29)
/* 8083D808  80 7D 06 E8 */	lwz r3, 0x6e8(r29)
/* 8083D80C  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 8083D810  41 82 00 24 */	beq lbl_8083D834
/* 8083D814  C0 3D 08 88 */	lfs f1, 0x888(r29)
/* 8083D818  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8083D81C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083D820  40 81 00 14 */	ble lbl_8083D834
/* 8083D824  38 7D 08 3C */	addi r3, r29, 0x83c
/* 8083D828  4B 96 DC 99 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 8083D82C  98 7D 16 B9 */	stb r3, 0x16b9(r29)
/* 8083D830  48 00 00 24 */	b lbl_8083D854
lbl_8083D834:
/* 8083D834  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8083D838  41 82 00 14 */	beq lbl_8083D84C
/* 8083D83C  38 7D 07 AC */	addi r3, r29, 0x7ac
/* 8083D840  4B 96 DC 81 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 8083D844  98 7D 16 B9 */	stb r3, 0x16b9(r29)
/* 8083D848  48 00 00 0C */	b lbl_8083D854
lbl_8083D84C:
/* 8083D84C  38 00 00 00 */	li r0, 0
/* 8083D850  98 1D 16 B9 */	stb r0, 0x16b9(r29)
lbl_8083D854:
/* 8083D854  80 1D 06 E8 */	lwz r0, 0x6e8(r29)
/* 8083D858  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8083D85C  41 82 00 20 */	beq lbl_8083D87C
/* 8083D860  88 1D 16 B4 */	lbz r0, 0x16b4(r29)
/* 8083D864  28 00 00 06 */	cmplwi r0, 6
/* 8083D868  41 82 00 14 */	beq lbl_8083D87C
/* 8083D86C  28 00 00 04 */	cmplwi r0, 4
/* 8083D870  41 82 00 0C */	beq lbl_8083D87C
/* 8083D874  7F A3 EB 78 */	mr r3, r29
/* 8083D878  48 00 38 F5 */	bl savePos__9daHorse_cFv
lbl_8083D87C:
/* 8083D87C  80 1D 17 44 */	lwz r0, 0x1744(r29)
/* 8083D880  60 00 40 00 */	ori r0, r0, 0x4000
/* 8083D884  90 1D 17 44 */	stw r0, 0x1744(r29)
/* 8083D888  48 00 00 2C */	b lbl_8083D8B4
lbl_8083D88C:
/* 8083D88C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8083D890  7C 00 07 74 */	extsb r0, r0
/* 8083D894  7C 1F 03 78 */	mr r31, r0
/* 8083D898  38 00 00 00 */	li r0, 0
/* 8083D89C  98 1D 16 B9 */	stb r0, 0x16b9(r29)
/* 8083D8A0  7F A3 EB 78 */	mr r3, r29
/* 8083D8A4  48 00 38 C9 */	bl savePos__9daHorse_cFv
/* 8083D8A8  80 1D 17 44 */	lwz r0, 0x1744(r29)
/* 8083D8AC  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8083D8B0  90 1D 17 44 */	stw r0, 0x1744(r29)
lbl_8083D8B4:
/* 8083D8B4  2C 1E 00 00 */	cmpwi r30, 0
/* 8083D8B8  40 82 00 14 */	bne lbl_8083D8CC
/* 8083D8BC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8083D8C0  7C 00 07 74 */	extsb r0, r0
/* 8083D8C4  7C 1F 00 00 */	cmpw r31, r0
/* 8083D8C8  41 82 00 38 */	beq lbl_8083D900
lbl_8083D8CC:
/* 8083D8CC  9B FD 04 8C */	stb r31, 0x48c(r29)
/* 8083D8D0  88 1D 04 8C */	lbz r0, 0x48c(r29)
/* 8083D8D4  7C 00 07 74 */	extsb r0, r0
/* 8083D8D8  2C 00 FF FF */	cmpwi r0, -1
/* 8083D8DC  40 82 00 10 */	bne lbl_8083D8EC
/* 8083D8E0  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8083D8E4  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8083D8E8  98 1D 04 8C */	stb r0, 0x48c(r29)
lbl_8083D8EC:
/* 8083D8EC  7F E3 FB 78 */	mr r3, r31
/* 8083D8F0  4B 7E F7 7D */	bl dComIfGp_getReverb__Fi
/* 8083D8F4  98 7D 16 B5 */	stb r3, 0x16b5(r29)
/* 8083D8F8  9B FD 08 B6 */	stb r31, 0x8b6(r29)
/* 8083D8FC  9B FD 04 E2 */	stb r31, 0x4e2(r29)
lbl_8083D900:
/* 8083D900  39 61 00 20 */	addi r11, r1, 0x20
/* 8083D904  4B B2 49 21 */	bl _restgpr_28
/* 8083D908  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8083D90C  7C 08 03 A6 */	mtlr r0
/* 8083D910  38 21 00 20 */	addi r1, r1, 0x20
/* 8083D914  4E 80 00 20 */	blr 
