lbl_8063E938:
/* 8063E938  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 8063E93C  7C 08 02 A6 */	mflr r0
/* 8063E940  90 01 01 84 */	stw r0, 0x184(r1)
/* 8063E944  39 61 01 80 */	addi r11, r1, 0x180
/* 8063E948  4B D2 38 7D */	bl _savegpr_23
/* 8063E94C  7C 78 1B 78 */	mr r24, r3
/* 8063E950  3C 60 80 65 */	lis r3, lit_3757@ha /* 0x8064EB1C@ha */
/* 8063E954  3B E3 EB 1C */	addi r31, r3, lit_3757@l /* 0x8064EB1C@l */
/* 8063E958  38 78 09 C0 */	addi r3, r24, 0x9c0
/* 8063E95C  4B A4 4E D5 */	bl Move__10dCcD_GSttsFv
/* 8063E960  80 18 06 D4 */	lwz r0, 0x6d4(r24)
/* 8063E964  2C 00 00 17 */	cmpwi r0, 0x17
/* 8063E968  41 82 07 74 */	beq lbl_8063F0DC
/* 8063E96C  38 00 00 00 */	li r0, 0
/* 8063E970  90 18 0C 58 */	stw r0, 0xc58(r24)
/* 8063E974  88 18 07 02 */	lbz r0, 0x702(r24)
/* 8063E978  28 00 00 00 */	cmplwi r0, 0
/* 8063E97C  41 82 00 30 */	beq lbl_8063E9AC
/* 8063E980  80 18 0A 7C */	lwz r0, 0xa7c(r24)
/* 8063E984  60 00 00 04 */	ori r0, r0, 4
/* 8063E988  90 18 0A 7C */	stw r0, 0xa7c(r24)
/* 8063E98C  80 18 0B B4 */	lwz r0, 0xbb4(r24)
/* 8063E990  60 00 00 04 */	ori r0, r0, 4
/* 8063E994  90 18 0B B4 */	stw r0, 0xbb4(r24)
/* 8063E998  80 18 0A 7C */	lwz r0, 0xa7c(r24)
/* 8063E99C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8063E9A0  41 82 00 0C */	beq lbl_8063E9AC
/* 8063E9A4  38 18 05 F0 */	addi r0, r24, 0x5f0
/* 8063E9A8  90 18 0C 58 */	stw r0, 0xc58(r24)
lbl_8063E9AC:
/* 8063E9AC  38 00 00 00 */	li r0, 0
/* 8063E9B0  90 18 0C 50 */	stw r0, 0xc50(r24)
/* 8063E9B4  38 61 00 08 */	addi r3, r1, 8
/* 8063E9B8  4B A4 50 71 */	bl __ct__12dCcD_GObjInfFv
/* 8063E9BC  3B 61 01 0C */	addi r27, r1, 0x10c
/* 8063E9C0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8063E9C4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8063E9C8  90 01 01 28 */	stw r0, 0x128(r1)
/* 8063E9CC  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha /* 0x8064F598@ha */
/* 8063E9D0  38 03 F5 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8064F598@l */
/* 8063E9D4  90 01 01 24 */	stw r0, 0x124(r1)
/* 8063E9D8  3C 60 80 65 */	lis r3, __vt__8cM3dGSph@ha /* 0x8064F58C@ha */
/* 8063E9DC  38 03 F5 8C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8064F58C@l */
/* 8063E9E0  90 01 01 3C */	stw r0, 0x13c(r1)
/* 8063E9E4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8063E9E8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8063E9EC  90 61 01 28 */	stw r3, 0x128(r1)
/* 8063E9F0  3B 43 00 58 */	addi r26, r3, 0x58
/* 8063E9F4  93 41 01 3C */	stw r26, 0x13c(r1)
/* 8063E9F8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8063E9FC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8063EA00  90 61 00 44 */	stw r3, 0x44(r1)
/* 8063EA04  3B A3 00 2C */	addi r29, r3, 0x2c
/* 8063EA08  93 A1 01 28 */	stw r29, 0x128(r1)
/* 8063EA0C  3B 83 00 84 */	addi r28, r3, 0x84
/* 8063EA10  93 81 01 3C */	stw r28, 0x13c(r1)
/* 8063EA14  38 78 09 E0 */	addi r3, r24, 0x9e0
/* 8063EA18  4B A4 5A 49 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8063EA1C  28 03 00 00 */	cmplwi r3, 0
/* 8063EA20  41 82 00 20 */	beq lbl_8063EA40
/* 8063EA24  38 78 09 E0 */	addi r3, r24, 0x9e0
/* 8063EA28  4B A4 5A D1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8063EA2C  90 78 0C 50 */	stw r3, 0xc50(r24)
/* 8063EA30  38 61 00 08 */	addi r3, r1, 8
/* 8063EA34  38 98 09 E0 */	addi r4, r24, 0x9e0
/* 8063EA38  48 00 06 BD */	bl __as__8dCcD_SphFRC8dCcD_Sph
/* 8063EA3C  48 00 00 2C */	b lbl_8063EA68
lbl_8063EA40:
/* 8063EA40  38 78 0B 18 */	addi r3, r24, 0xb18
/* 8063EA44  4B A4 5A 1D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8063EA48  28 03 00 00 */	cmplwi r3, 0
/* 8063EA4C  41 82 00 1C */	beq lbl_8063EA68
/* 8063EA50  38 78 0B 18 */	addi r3, r24, 0xb18
/* 8063EA54  4B A4 5A A5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8063EA58  90 78 0C 50 */	stw r3, 0xc50(r24)
/* 8063EA5C  38 61 00 08 */	addi r3, r1, 8
/* 8063EA60  38 98 0B 18 */	addi r4, r24, 0xb18
/* 8063EA64  48 00 06 91 */	bl __as__8dCcD_SphFRC8dCcD_Sph
lbl_8063EA68:
/* 8063EA68  80 18 0C 50 */	lwz r0, 0xc50(r24)
/* 8063EA6C  28 00 00 00 */	cmplwi r0, 0
/* 8063EA70  41 82 06 08 */	beq lbl_8063F078
/* 8063EA74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8063EA78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8063EA7C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8063EA80  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8063EA84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8063EA88  41 82 00 1C */	beq lbl_8063EAA4
/* 8063EA8C  38 00 00 2A */	li r0, 0x2a
/* 8063EA90  90 18 0C 68 */	stw r0, 0xc68(r24)
/* 8063EA94  38 00 00 00 */	li r0, 0
/* 8063EA98  80 78 0C 50 */	lwz r3, 0xc50(r24)
/* 8063EA9C  98 03 00 14 */	stb r0, 0x14(r3)
/* 8063EAA0  48 00 00 0C */	b lbl_8063EAAC
lbl_8063EAA4:
/* 8063EAA4  38 00 00 00 */	li r0, 0
/* 8063EAA8  90 18 0C 68 */	stw r0, 0xc68(r24)
lbl_8063EAAC:
/* 8063EAAC  AA F8 05 62 */	lha r23, 0x562(r24)
/* 8063EAB0  3B 20 00 00 */	li r25, 0
/* 8063EAB4  88 18 07 02 */	lbz r0, 0x702(r24)
/* 8063EAB8  28 00 00 00 */	cmplwi r0, 0
/* 8063EABC  41 82 00 1C */	beq lbl_8063EAD8
/* 8063EAC0  38 00 01 18 */	li r0, 0x118
/* 8063EAC4  B0 18 05 62 */	sth r0, 0x562(r24)
/* 8063EAC8  7F 03 C3 78 */	mr r3, r24
/* 8063EACC  38 98 0C 50 */	addi r4, r24, 0xc50
/* 8063EAD0  4B A4 91 35 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8063EAD4  48 00 00 18 */	b lbl_8063EAEC
lbl_8063EAD8:
/* 8063EAD8  7F 03 C3 78 */	mr r3, r24
/* 8063EADC  38 98 0C 50 */	addi r4, r24, 0xc50
/* 8063EAE0  4B A4 91 25 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8063EAE4  A8 18 05 62 */	lha r0, 0x562(r24)
/* 8063EAE8  7F 20 B8 50 */	subf r25, r0, r23
lbl_8063EAEC:
/* 8063EAEC  B2 F8 05 62 */	sth r23, 0x562(r24)
/* 8063EAF0  80 78 0C 50 */	lwz r3, 0xc50(r24)
/* 8063EAF4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8063EAF8  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 8063EAFC  40 82 00 10 */	bne lbl_8063EB0C
/* 8063EB00  38 00 00 00 */	li r0, 0
/* 8063EB04  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 8063EB08  98 03 11 25 */	stb r0, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
lbl_8063EB0C:
/* 8063EB0C  80 78 0C 50 */	lwz r3, 0xc50(r24)
/* 8063EB10  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8063EB14  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8063EB18  41 82 00 10 */	beq lbl_8063EB28
/* 8063EB1C  38 00 00 14 */	li r0, 0x14
/* 8063EB20  B0 18 06 E4 */	sth r0, 0x6e4(r24)
/* 8063EB24  48 00 00 0C */	b lbl_8063EB30
lbl_8063EB28:
/* 8063EB28  38 00 00 0A */	li r0, 0xa
/* 8063EB2C  B0 18 06 E4 */	sth r0, 0x6e4(r24)
lbl_8063EB30:
/* 8063EB30  A0 18 0C 6C */	lhz r0, 0xc6c(r24)
/* 8063EB34  28 00 00 01 */	cmplwi r0, 1
/* 8063EB38  41 81 00 0C */	bgt lbl_8063EB44
/* 8063EB3C  38 00 00 0A */	li r0, 0xa
/* 8063EB40  B0 18 06 E4 */	sth r0, 0x6e4(r24)
lbl_8063EB44:
/* 8063EB44  7F 03 C3 78 */	mr r3, r24
/* 8063EB48  4B FF FB B1 */	bl checkBigDamage__10daB_ZANT_cFv
/* 8063EB4C  98 78 07 19 */	stb r3, 0x719(r24)
/* 8063EB50  88 18 06 FB */	lbz r0, 0x6fb(r24)
/* 8063EB54  2C 00 00 04 */	cmpwi r0, 4
/* 8063EB58  41 82 02 AC */	beq lbl_8063EE04
/* 8063EB5C  40 80 00 1C */	bge lbl_8063EB78
/* 8063EB60  2C 00 00 02 */	cmpwi r0, 2
/* 8063EB64  41 82 01 80 */	beq lbl_8063ECE4
/* 8063EB68  40 80 02 28 */	bge lbl_8063ED90
/* 8063EB6C  2C 00 00 01 */	cmpwi r0, 1
/* 8063EB70  40 80 00 14 */	bge lbl_8063EB84
/* 8063EB74  48 00 04 74 */	b lbl_8063EFE8
lbl_8063EB78:
/* 8063EB78  2C 00 00 06 */	cmpwi r0, 6
/* 8063EB7C  41 82 03 84 */	beq lbl_8063EF00
/* 8063EB80  48 00 04 68 */	b lbl_8063EFE8
lbl_8063EB84:
/* 8063EB84  88 18 07 0C */	lbz r0, 0x70c(r24)
/* 8063EB88  28 00 00 00 */	cmplwi r0, 0
/* 8063EB8C  40 82 00 18 */	bne lbl_8063EBA4
/* 8063EB90  7F 03 C3 78 */	mr r3, r24
/* 8063EB94  38 80 00 05 */	li r4, 5
/* 8063EB98  38 A0 00 0A */	li r5, 0xa
/* 8063EB9C  4B FF FB 29 */	bl setActionMode__10daB_ZANT_cFii
/* 8063EBA0  48 00 04 48 */	b lbl_8063EFE8
lbl_8063EBA4:
/* 8063EBA4  7F 03 C3 78 */	mr r3, r24
/* 8063EBA8  4B FF FB F5 */	bl checkDamageType__10daB_ZANT_cFv
/* 8063EBAC  2C 03 00 02 */	cmpwi r3, 2
/* 8063EBB0  41 82 01 0C */	beq lbl_8063ECBC
/* 8063EBB4  40 80 00 14 */	bge lbl_8063EBC8
/* 8063EBB8  2C 03 00 00 */	cmpwi r3, 0
/* 8063EBBC  41 82 00 18 */	beq lbl_8063EBD4
/* 8063EBC0  40 80 00 54 */	bge lbl_8063EC14
/* 8063EBC4  48 00 04 24 */	b lbl_8063EFE8
lbl_8063EBC8:
/* 8063EBC8  2C 03 00 04 */	cmpwi r3, 4
/* 8063EBCC  40 80 04 1C */	bge lbl_8063EFE8
/* 8063EBD0  48 00 01 00 */	b lbl_8063ECD0
lbl_8063EBD4:
/* 8063EBD4  7F 03 C3 78 */	mr r3, r24
/* 8063EBD8  38 81 00 08 */	addi r4, r1, 8
/* 8063EBDC  7F 25 CB 78 */	mr r5, r25
/* 8063EBE0  4B FF FC 31 */	bl setDamageSe__10daB_ZANT_cFP8dCcD_Sphi
/* 8063EBE4  80 18 06 D4 */	lwz r0, 0x6d4(r24)
/* 8063EBE8  2C 00 00 02 */	cmpwi r0, 2
/* 8063EBEC  41 82 00 0C */	beq lbl_8063EBF8
/* 8063EBF0  38 00 00 64 */	li r0, 0x64
/* 8063EBF4  90 18 06 F4 */	stw r0, 0x6f4(r24)
lbl_8063EBF8:
/* 8063EBF8  88 7E 05 68 */	lbz r3, 0x568(r30)
/* 8063EBFC  4B A4 87 B5 */	bl pl_cut_LRC__Fi
/* 8063EC00  7C 65 1B 78 */	mr r5, r3
/* 8063EC04  7F 03 C3 78 */	mr r3, r24
/* 8063EC08  38 80 00 02 */	li r4, 2
/* 8063EC0C  4B FF FA B9 */	bl setActionMode__10daB_ZANT_cFii
/* 8063EC10  48 00 03 D8 */	b lbl_8063EFE8
lbl_8063EC14:
/* 8063EC14  38 00 00 00 */	li r0, 0
/* 8063EC18  98 18 07 0C */	stb r0, 0x70c(r24)
/* 8063EC1C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8063EC20  D0 18 05 30 */	stfs f0, 0x530(r24)
/* 8063EC24  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8063EC28  4B C2 8D 2D */	bl cM_rndF__Ff
/* 8063EC2C  88 18 06 FE */	lbz r0, 0x6fe(r24)
/* 8063EC30  C8 5F 00 70 */	lfd f2, 0x70(r31)
/* 8063EC34  90 01 01 44 */	stw r0, 0x144(r1)
/* 8063EC38  3C 00 43 30 */	lis r0, 0x4330
/* 8063EC3C  90 01 01 40 */	stw r0, 0x140(r1)
/* 8063EC40  C8 01 01 40 */	lfd f0, 0x140(r1)
/* 8063EC44  EC 00 10 28 */	fsubs f0, f0, f2
/* 8063EC48  EC 20 08 2A */	fadds f1, f0, f1
/* 8063EC4C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8063EC50  EC 00 08 2A */	fadds f0, f0, f1
/* 8063EC54  FC 00 00 1E */	fctiwz f0, f0
/* 8063EC58  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 8063EC5C  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 8063EC60  98 18 06 FE */	stb r0, 0x6fe(r24)
/* 8063EC64  88 98 06 FE */	lbz r4, 0x6fe(r24)
/* 8063EC68  38 60 00 03 */	li r3, 3
/* 8063EC6C  7C 04 1B D6 */	divw r0, r4, r3
/* 8063EC70  7C 00 19 D6 */	mullw r0, r0, r3
/* 8063EC74  7C 00 20 50 */	subf r0, r0, r4
/* 8063EC78  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8063EC7C  3C 60 80 65 */	lis r3, data_8064F66C@ha /* 0x8064F66C@ha */
/* 8063EC80  38 03 F6 6C */	addi r0, r3, data_8064F66C@l /* 0x8064F66C@l */
/* 8063EC84  7C 60 22 14 */	add r3, r0, r4
/* 8063EC88  C0 03 00 00 */	lfs f0, 0(r3)
/* 8063EC8C  D0 18 06 A0 */	stfs f0, 0x6a0(r24)
/* 8063EC90  C0 03 00 04 */	lfs f0, 4(r3)
/* 8063EC94  D0 18 06 A4 */	stfs f0, 0x6a4(r24)
/* 8063EC98  C0 03 00 08 */	lfs f0, 8(r3)
/* 8063EC9C  D0 18 06 A8 */	stfs f0, 0x6a8(r24)
/* 8063ECA0  38 00 00 02 */	li r0, 2
/* 8063ECA4  98 18 07 11 */	stb r0, 0x711(r24)
/* 8063ECA8  7F 03 C3 78 */	mr r3, r24
/* 8063ECAC  38 80 00 01 */	li r4, 1
/* 8063ECB0  38 A0 00 01 */	li r5, 1
/* 8063ECB4  4B FF FA 11 */	bl setActionMode__10daB_ZANT_cFii
/* 8063ECB8  48 00 03 30 */	b lbl_8063EFE8
lbl_8063ECBC:
/* 8063ECBC  7F 03 C3 78 */	mr r3, r24
/* 8063ECC0  38 80 00 03 */	li r4, 3
/* 8063ECC4  38 A0 00 05 */	li r5, 5
/* 8063ECC8  4B FF F9 FD */	bl setActionMode__10daB_ZANT_cFii
/* 8063ECCC  48 00 03 1C */	b lbl_8063EFE8
lbl_8063ECD0:
/* 8063ECD0  7F 03 C3 78 */	mr r3, r24
/* 8063ECD4  38 80 00 03 */	li r4, 3
/* 8063ECD8  38 A0 00 00 */	li r5, 0
/* 8063ECDC  4B FF F9 E9 */	bl setActionMode__10daB_ZANT_cFii
/* 8063ECE0  48 00 03 08 */	b lbl_8063EFE8
lbl_8063ECE4:
/* 8063ECE4  7F 03 C3 78 */	mr r3, r24
/* 8063ECE8  4B FF FA B5 */	bl checkDamageType__10daB_ZANT_cFv
/* 8063ECEC  2C 03 00 02 */	cmpwi r3, 2
/* 8063ECF0  41 82 00 78 */	beq lbl_8063ED68
/* 8063ECF4  40 80 00 14 */	bge lbl_8063ED08
/* 8063ECF8  2C 03 00 00 */	cmpwi r3, 0
/* 8063ECFC  41 82 00 18 */	beq lbl_8063ED14
/* 8063ED00  40 80 00 54 */	bge lbl_8063ED54
/* 8063ED04  48 00 02 E4 */	b lbl_8063EFE8
lbl_8063ED08:
/* 8063ED08  2C 03 00 04 */	cmpwi r3, 4
/* 8063ED0C  40 80 02 DC */	bge lbl_8063EFE8
/* 8063ED10  48 00 00 6C */	b lbl_8063ED7C
lbl_8063ED14:
/* 8063ED14  7F 03 C3 78 */	mr r3, r24
/* 8063ED18  38 81 00 08 */	addi r4, r1, 8
/* 8063ED1C  7F 25 CB 78 */	mr r5, r25
/* 8063ED20  4B FF FA F1 */	bl setDamageSe__10daB_ZANT_cFP8dCcD_Sphi
/* 8063ED24  80 18 06 D4 */	lwz r0, 0x6d4(r24)
/* 8063ED28  2C 00 00 02 */	cmpwi r0, 2
/* 8063ED2C  41 82 00 0C */	beq lbl_8063ED38
/* 8063ED30  38 00 00 64 */	li r0, 0x64
/* 8063ED34  90 18 06 F4 */	stw r0, 0x6f4(r24)
lbl_8063ED38:
/* 8063ED38  88 7E 05 68 */	lbz r3, 0x568(r30)
/* 8063ED3C  4B A4 86 75 */	bl pl_cut_LRC__Fi
/* 8063ED40  7C 65 1B 78 */	mr r5, r3
/* 8063ED44  7F 03 C3 78 */	mr r3, r24
/* 8063ED48  38 80 00 02 */	li r4, 2
/* 8063ED4C  4B FF F9 79 */	bl setActionMode__10daB_ZANT_cFii
/* 8063ED50  48 00 02 98 */	b lbl_8063EFE8
lbl_8063ED54:
/* 8063ED54  7F 03 C3 78 */	mr r3, r24
/* 8063ED58  38 80 00 0A */	li r4, 0xa
/* 8063ED5C  38 A0 00 0B */	li r5, 0xb
/* 8063ED60  4B FF F9 65 */	bl setActionMode__10daB_ZANT_cFii
/* 8063ED64  48 00 02 84 */	b lbl_8063EFE8
lbl_8063ED68:
/* 8063ED68  7F 03 C3 78 */	mr r3, r24
/* 8063ED6C  38 80 00 03 */	li r4, 3
/* 8063ED70  38 A0 00 05 */	li r5, 5
/* 8063ED74  4B FF F9 51 */	bl setActionMode__10daB_ZANT_cFii
/* 8063ED78  48 00 02 70 */	b lbl_8063EFE8
lbl_8063ED7C:
/* 8063ED7C  7F 03 C3 78 */	mr r3, r24
/* 8063ED80  38 80 00 03 */	li r4, 3
/* 8063ED84  38 A0 00 00 */	li r5, 0
/* 8063ED88  4B FF F9 3D */	bl setActionMode__10daB_ZANT_cFii
/* 8063ED8C  48 00 02 5C */	b lbl_8063EFE8
lbl_8063ED90:
/* 8063ED90  7F 03 C3 78 */	mr r3, r24
/* 8063ED94  4B FF FA 09 */	bl checkDamageType__10daB_ZANT_cFv
/* 8063ED98  2C 03 00 04 */	cmpwi r3, 4
/* 8063ED9C  41 82 00 54 */	beq lbl_8063EDF0
/* 8063EDA0  40 80 02 48 */	bge lbl_8063EFE8
/* 8063EDA4  2C 03 00 00 */	cmpwi r3, 0
/* 8063EDA8  41 82 00 08 */	beq lbl_8063EDB0
/* 8063EDAC  48 00 02 3C */	b lbl_8063EFE8
lbl_8063EDB0:
/* 8063EDB0  7F 03 C3 78 */	mr r3, r24
/* 8063EDB4  38 81 00 08 */	addi r4, r1, 8
/* 8063EDB8  7F 25 CB 78 */	mr r5, r25
/* 8063EDBC  4B FF FA 55 */	bl setDamageSe__10daB_ZANT_cFP8dCcD_Sphi
/* 8063EDC0  80 18 06 D4 */	lwz r0, 0x6d4(r24)
/* 8063EDC4  2C 00 00 02 */	cmpwi r0, 2
/* 8063EDC8  41 82 00 0C */	beq lbl_8063EDD4
/* 8063EDCC  38 00 00 64 */	li r0, 0x64
/* 8063EDD0  90 18 06 F4 */	stw r0, 0x6f4(r24)
lbl_8063EDD4:
/* 8063EDD4  88 7E 05 68 */	lbz r3, 0x568(r30)
/* 8063EDD8  4B A4 85 D9 */	bl pl_cut_LRC__Fi
/* 8063EDDC  7C 65 1B 78 */	mr r5, r3
/* 8063EDE0  7F 03 C3 78 */	mr r3, r24
/* 8063EDE4  38 80 00 02 */	li r4, 2
/* 8063EDE8  4B FF F8 DD */	bl setActionMode__10daB_ZANT_cFii
/* 8063EDEC  48 00 01 FC */	b lbl_8063EFE8
lbl_8063EDF0:
/* 8063EDF0  7F 03 C3 78 */	mr r3, r24
/* 8063EDF4  38 80 00 08 */	li r4, 8
/* 8063EDF8  38 A0 00 00 */	li r5, 0
/* 8063EDFC  4B FF F8 C9 */	bl setActionMode__10daB_ZANT_cFii
/* 8063EE00  48 00 01 E8 */	b lbl_8063EFE8
lbl_8063EE04:
/* 8063EE04  88 18 07 07 */	lbz r0, 0x707(r24)
/* 8063EE08  28 00 00 00 */	cmplwi r0, 0
/* 8063EE0C  41 82 00 64 */	beq lbl_8063EE70
/* 8063EE10  80 18 06 D4 */	lwz r0, 0x6d4(r24)
/* 8063EE14  2C 00 00 10 */	cmpwi r0, 0x10
/* 8063EE18  41 82 00 44 */	beq lbl_8063EE5C
/* 8063EE1C  80 78 0C 50 */	lwz r3, 0xc50(r24)
/* 8063EE20  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8063EE24  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8063EE28  40 82 00 0C */	bne lbl_8063EE34
/* 8063EE2C  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8063EE30  41 82 00 18 */	beq lbl_8063EE48
lbl_8063EE34:
/* 8063EE34  7F 03 C3 78 */	mr r3, r24
/* 8063EE38  38 80 00 10 */	li r4, 0x10
/* 8063EE3C  38 A0 00 14 */	li r5, 0x14
/* 8063EE40  4B FF F8 85 */	bl setActionMode__10daB_ZANT_cFii
/* 8063EE44  48 00 01 A4 */	b lbl_8063EFE8
lbl_8063EE48:
/* 8063EE48  7F 03 C3 78 */	mr r3, r24
/* 8063EE4C  38 80 00 03 */	li r4, 3
/* 8063EE50  38 A0 00 00 */	li r5, 0
/* 8063EE54  4B FF F8 71 */	bl setActionMode__10daB_ZANT_cFii
/* 8063EE58  48 00 01 90 */	b lbl_8063EFE8
lbl_8063EE5C:
/* 8063EE5C  7F 03 C3 78 */	mr r3, r24
/* 8063EE60  38 80 00 10 */	li r4, 0x10
/* 8063EE64  38 A0 00 0A */	li r5, 0xa
/* 8063EE68  4B FF F8 5D */	bl setActionMode__10daB_ZANT_cFii
/* 8063EE6C  48 00 01 7C */	b lbl_8063EFE8
lbl_8063EE70:
/* 8063EE70  7F 03 C3 78 */	mr r3, r24
/* 8063EE74  4B FF F9 29 */	bl checkDamageType__10daB_ZANT_cFv
/* 8063EE78  2C 03 00 01 */	cmpwi r3, 1
/* 8063EE7C  41 82 00 44 */	beq lbl_8063EEC0
/* 8063EE80  40 80 00 10 */	bge lbl_8063EE90
/* 8063EE84  2C 03 00 00 */	cmpwi r3, 0
/* 8063EE88  40 80 00 14 */	bge lbl_8063EE9C
/* 8063EE8C  48 00 01 5C */	b lbl_8063EFE8
lbl_8063EE90:
/* 8063EE90  2C 03 00 04 */	cmpwi r3, 4
/* 8063EE94  40 80 01 54 */	bge lbl_8063EFE8
/* 8063EE98  48 00 00 4C */	b lbl_8063EEE4
lbl_8063EE9C:
/* 8063EE9C  7F 03 C3 78 */	mr r3, r24
/* 8063EEA0  38 81 00 08 */	addi r4, r1, 8
/* 8063EEA4  7F 25 CB 78 */	mr r5, r25
/* 8063EEA8  4B FF F9 69 */	bl setDamageSe__10daB_ZANT_cFP8dCcD_Sphi
/* 8063EEAC  7F 03 C3 78 */	mr r3, r24
/* 8063EEB0  38 80 00 11 */	li r4, 0x11
/* 8063EEB4  38 A0 00 00 */	li r5, 0
/* 8063EEB8  4B FF F8 0D */	bl setActionMode__10daB_ZANT_cFii
/* 8063EEBC  48 00 01 2C */	b lbl_8063EFE8
lbl_8063EEC0:
/* 8063EEC0  7F 03 C3 78 */	mr r3, r24
/* 8063EEC4  48 00 85 21 */	bl setNearPillarPos__10daB_ZANT_cFv
/* 8063EEC8  38 00 00 00 */	li r0, 0
/* 8063EECC  98 18 07 11 */	stb r0, 0x711(r24)
/* 8063EED0  7F 03 C3 78 */	mr r3, r24
/* 8063EED4  38 80 00 01 */	li r4, 1
/* 8063EED8  38 A0 00 01 */	li r5, 1
/* 8063EEDC  4B FF F7 E9 */	bl setActionMode__10daB_ZANT_cFii
/* 8063EEE0  48 00 01 08 */	b lbl_8063EFE8
lbl_8063EEE4:
/* 8063EEE4  38 00 00 00 */	li r0, 0
/* 8063EEE8  90 18 06 F0 */	stw r0, 0x6f0(r24)
/* 8063EEEC  7F 03 C3 78 */	mr r3, r24
/* 8063EEF0  38 80 00 11 */	li r4, 0x11
/* 8063EEF4  38 A0 00 00 */	li r5, 0
/* 8063EEF8  4B FF F7 CD */	bl setActionMode__10daB_ZANT_cFii
/* 8063EEFC  48 00 00 EC */	b lbl_8063EFE8
lbl_8063EF00:
/* 8063EF00  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8063EF04  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8063EF08  40 82 00 E0 */	bne lbl_8063EFE8
/* 8063EF0C  7F 03 C3 78 */	mr r3, r24
/* 8063EF10  4B FF F8 8D */	bl checkDamageType__10daB_ZANT_cFv
/* 8063EF14  2C 03 00 02 */	cmpwi r3, 2
/* 8063EF18  41 82 00 AC */	beq lbl_8063EFC4
/* 8063EF1C  40 80 00 14 */	bge lbl_8063EF30
/* 8063EF20  2C 03 00 00 */	cmpwi r3, 0
/* 8063EF24  41 82 00 1C */	beq lbl_8063EF40
/* 8063EF28  40 80 00 64 */	bge lbl_8063EF8C
/* 8063EF2C  48 00 00 BC */	b lbl_8063EFE8
lbl_8063EF30:
/* 8063EF30  2C 03 00 04 */	cmpwi r3, 4
/* 8063EF34  41 82 00 B4 */	beq lbl_8063EFE8
/* 8063EF38  40 80 00 B0 */	bge lbl_8063EFE8
/* 8063EF3C  48 00 00 9C */	b lbl_8063EFD8
lbl_8063EF40:
/* 8063EF40  7F 03 C3 78 */	mr r3, r24
/* 8063EF44  38 81 00 08 */	addi r4, r1, 8
/* 8063EF48  7F 25 CB 78 */	mr r5, r25
/* 8063EF4C  4B FF F8 C5 */	bl setDamageSe__10daB_ZANT_cFP8dCcD_Sphi
/* 8063EF50  80 18 06 D4 */	lwz r0, 0x6d4(r24)
/* 8063EF54  2C 00 00 13 */	cmpwi r0, 0x13
/* 8063EF58  40 82 00 18 */	bne lbl_8063EF70
/* 8063EF5C  80 18 06 DC */	lwz r0, 0x6dc(r24)
/* 8063EF60  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063EF64  40 82 00 0C */	bne lbl_8063EF70
/* 8063EF68  38 00 00 14 */	li r0, 0x14
/* 8063EF6C  90 18 06 D4 */	stw r0, 0x6d4(r24)
lbl_8063EF70:
/* 8063EF70  88 7E 05 68 */	lbz r3, 0x568(r30)
/* 8063EF74  4B A4 84 3D */	bl pl_cut_LRC__Fi
/* 8063EF78  7C 65 1B 78 */	mr r5, r3
/* 8063EF7C  7F 03 C3 78 */	mr r3, r24
/* 8063EF80  38 80 00 15 */	li r4, 0x15
/* 8063EF84  4B FF F7 41 */	bl setActionMode__10daB_ZANT_cFii
/* 8063EF88  48 00 00 60 */	b lbl_8063EFE8
lbl_8063EF8C:
/* 8063EF8C  80 18 36 24 */	lwz r0, 0x3624(r24)
/* 8063EF90  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8063EF94  90 18 36 24 */	stw r0, 0x3624(r24)
/* 8063EF98  80 18 37 5C */	lwz r0, 0x375c(r24)
/* 8063EF9C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8063EFA0  90 18 37 5C */	stw r0, 0x375c(r24)
/* 8063EFA4  7F 03 C3 78 */	mr r3, r24
/* 8063EFA8  38 80 00 00 */	li r4, 0
/* 8063EFAC  48 00 0F C1 */	bl setTgHitBit__10daB_ZANT_cFi
/* 8063EFB0  7F 03 C3 78 */	mr r3, r24
/* 8063EFB4  38 80 00 01 */	li r4, 1
/* 8063EFB8  38 A0 00 00 */	li r5, 0
/* 8063EFBC  48 00 97 BD */	bl setLastWarp__10daB_ZANT_cFii
/* 8063EFC0  48 00 00 28 */	b lbl_8063EFE8
lbl_8063EFC4:
/* 8063EFC4  7F 03 C3 78 */	mr r3, r24
/* 8063EFC8  38 80 00 15 */	li r4, 0x15
/* 8063EFCC  38 A0 00 14 */	li r5, 0x14
/* 8063EFD0  4B FF F6 F5 */	bl setActionMode__10daB_ZANT_cFii
/* 8063EFD4  48 00 00 14 */	b lbl_8063EFE8
lbl_8063EFD8:
/* 8063EFD8  7F 03 C3 78 */	mr r3, r24
/* 8063EFDC  38 80 00 15 */	li r4, 0x15
/* 8063EFE0  38 A0 00 0A */	li r5, 0xa
/* 8063EFE4  4B FF F6 E1 */	bl setActionMode__10daB_ZANT_cFii
lbl_8063EFE8:
/* 8063EFE8  38 78 09 E0 */	addi r3, r24, 0x9e0
/* 8063EFEC  81 98 0A 1C */	lwz r12, 0xa1c(r24)
/* 8063EFF0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8063EFF4  7D 89 03 A6 */	mtctr r12
/* 8063EFF8  4E 80 04 21 */	bctrl 
/* 8063EFFC  38 78 0B 18 */	addi r3, r24, 0xb18
/* 8063F000  81 98 0B 54 */	lwz r12, 0xb54(r24)
/* 8063F004  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8063F008  7D 89 03 A6 */	mtctr r12
/* 8063F00C  4E 80 04 21 */	bctrl 
/* 8063F010  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8063F014  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8063F018  90 01 00 44 */	stw r0, 0x44(r1)
/* 8063F01C  93 A1 01 28 */	stw r29, 0x128(r1)
/* 8063F020  93 81 01 3C */	stw r28, 0x13c(r1)
/* 8063F024  28 1B 00 00 */	cmplwi r27, 0
/* 8063F028  41 82 00 40 */	beq lbl_8063F068
/* 8063F02C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8063F030  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8063F034  90 01 01 28 */	stw r0, 0x128(r1)
/* 8063F038  93 41 01 3C */	stw r26, 0x13c(r1)
/* 8063F03C  3C 60 80 65 */	lis r3, __vt__8cM3dGSph@ha /* 0x8064F58C@ha */
/* 8063F040  38 03 F5 8C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8064F58C@l */
/* 8063F044  90 01 01 3C */	stw r0, 0x13c(r1)
/* 8063F048  41 82 00 20 */	beq lbl_8063F068
/* 8063F04C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8063F050  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8063F054  90 01 01 28 */	stw r0, 0x128(r1)
/* 8063F058  41 82 00 10 */	beq lbl_8063F068
/* 8063F05C  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha /* 0x8064F598@ha */
/* 8063F060  38 03 F5 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8064F598@l */
/* 8063F064  90 01 01 24 */	stw r0, 0x124(r1)
lbl_8063F068:
/* 8063F068  38 61 00 08 */	addi r3, r1, 8
/* 8063F06C  38 80 00 00 */	li r4, 0
/* 8063F070  4B A4 50 75 */	bl __dt__12dCcD_GObjInfFv
/* 8063F074  48 00 00 68 */	b lbl_8063F0DC
lbl_8063F078:
/* 8063F078  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8063F07C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8063F080  90 01 00 44 */	stw r0, 0x44(r1)
/* 8063F084  93 A1 01 28 */	stw r29, 0x128(r1)
/* 8063F088  93 81 01 3C */	stw r28, 0x13c(r1)
/* 8063F08C  28 1B 00 00 */	cmplwi r27, 0
/* 8063F090  41 82 00 40 */	beq lbl_8063F0D0
/* 8063F094  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8063F098  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8063F09C  90 01 01 28 */	stw r0, 0x128(r1)
/* 8063F0A0  93 41 01 3C */	stw r26, 0x13c(r1)
/* 8063F0A4  3C 60 80 65 */	lis r3, __vt__8cM3dGSph@ha /* 0x8064F58C@ha */
/* 8063F0A8  38 03 F5 8C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8064F58C@l */
/* 8063F0AC  90 01 01 3C */	stw r0, 0x13c(r1)
/* 8063F0B0  41 82 00 20 */	beq lbl_8063F0D0
/* 8063F0B4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8063F0B8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8063F0BC  90 01 01 28 */	stw r0, 0x128(r1)
/* 8063F0C0  41 82 00 10 */	beq lbl_8063F0D0
/* 8063F0C4  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha /* 0x8064F598@ha */
/* 8063F0C8  38 03 F5 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8064F598@l */
/* 8063F0CC  90 01 01 24 */	stw r0, 0x124(r1)
lbl_8063F0D0:
/* 8063F0D0  38 61 00 08 */	addi r3, r1, 8
/* 8063F0D4  38 80 00 00 */	li r4, 0
/* 8063F0D8  4B A4 50 0D */	bl __dt__12dCcD_GObjInfFv
lbl_8063F0DC:
/* 8063F0DC  39 61 01 80 */	addi r11, r1, 0x180
/* 8063F0E0  4B D2 31 31 */	bl _restgpr_23
/* 8063F0E4  80 01 01 84 */	lwz r0, 0x184(r1)
/* 8063F0E8  7C 08 03 A6 */	mtlr r0
/* 8063F0EC  38 21 01 80 */	addi r1, r1, 0x180
/* 8063F0F0  4E 80 00 20 */	blr 
