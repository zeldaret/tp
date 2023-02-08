lbl_8064F938:
/* 8064F938  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8064F93C  7C 08 02 A6 */	mflr r0
/* 8064F940  90 01 00 64 */	stw r0, 0x64(r1)
/* 8064F944  39 61 00 60 */	addi r11, r1, 0x60
/* 8064F948  4B D1 28 89 */	bl _savegpr_26
/* 8064F94C  7C 7A 1B 78 */	mr r26, r3
/* 8064F950  3C 60 80 65 */	lis r3, lit_3721@ha /* 0x8065049C@ha */
/* 8064F954  3B 83 04 9C */	addi r28, r3, lit_3721@l /* 0x8065049C@l */
/* 8064F958  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007040B@ha */
/* 8064F95C  38 03 04 0B */	addi r0, r3, 0x040B /* 0x0007040B@l */
/* 8064F960  90 01 00 20 */	stw r0, 0x20(r1)
/* 8064F964  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8064F968  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8064F96C  80 63 00 00 */	lwz r3, 0(r3)
/* 8064F970  38 81 00 20 */	addi r4, r1, 0x20
/* 8064F974  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 8064F978  38 C0 00 00 */	li r6, 0
/* 8064F97C  38 E0 00 00 */	li r7, 0
/* 8064F980  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8064F984  FC 40 08 90 */	fmr f2, f1
/* 8064F988  C0 7C 00 0C */	lfs f3, 0xc(r28)
/* 8064F98C  FC 80 18 90 */	fmr f4, f3
/* 8064F990  39 00 00 00 */	li r8, 0
/* 8064F994  4B C5 BF F1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8064F998  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8064F99C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8064F9A0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8064F9A4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8064F9A8  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 8064F9AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8064F9B0  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 8064F9B4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8064F9B8  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 8064F9BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8064F9C0  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8064F9C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8064F9C8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8064F9CC  3B 60 00 00 */	li r27, 0
/* 8064F9D0  3B E0 00 00 */	li r31, 0
/* 8064F9D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064F9D8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064F9DC  3C 60 80 65 */	lis r3, magic_effect_id_3729@ha /* 0x806505DC@ha */
/* 8064F9E0  3B C3 05 DC */	addi r30, r3, magic_effect_id_3729@l /* 0x806505DC@l */
lbl_8064F9E4:
/* 8064F9E4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8064F9E8  38 80 00 00 */	li r4, 0
/* 8064F9EC  90 81 00 08 */	stw r4, 8(r1)
/* 8064F9F0  38 00 FF FF */	li r0, -1
/* 8064F9F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8064F9F8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8064F9FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8064FA00  90 81 00 18 */	stw r4, 0x18(r1)
/* 8064FA04  38 80 00 00 */	li r4, 0
/* 8064FA08  7C BE FA 2E */	lhzx r5, r30, r31
/* 8064FA0C  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 8064FA10  38 FA 01 0C */	addi r7, r26, 0x10c
/* 8064FA14  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 8064FA18  39 21 00 30 */	addi r9, r1, 0x30
/* 8064FA1C  39 40 00 FF */	li r10, 0xff
/* 8064FA20  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8064FA24  4B 9F D0 6D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8064FA28  3B 7B 00 01 */	addi r27, r27, 1
/* 8064FA2C  2C 1B 00 04 */	cmpwi r27, 4
/* 8064FA30  3B FF 00 02 */	addi r31, r31, 2
/* 8064FA34  41 80 FF B0 */	blt lbl_8064F9E4
/* 8064FA38  39 61 00 60 */	addi r11, r1, 0x60
/* 8064FA3C  4B D1 27 E1 */	bl _restgpr_26
/* 8064FA40  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8064FA44  7C 08 03 A6 */	mtlr r0
/* 8064FA48  38 21 00 60 */	addi r1, r1, 0x60
/* 8064FA4C  4E 80 00 20 */	blr 
