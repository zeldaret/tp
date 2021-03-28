lbl_8015BA9C:
/* 8015BA9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015BAA0  7C 08 02 A6 */	mflr r0
/* 8015BAA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015BAA8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8015BAAC  7C 7F 1B 78 */	mr r31, r3
/* 8015BAB0  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 8015BAB4  D0 03 09 50 */	stfs f0, 0x950(r3)
/* 8015BAB8  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 8015BABC  D0 03 09 54 */	stfs f0, 0x954(r3)
/* 8015BAC0  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 8015BAC4  D0 03 09 58 */	stfs f0, 0x958(r3)
/* 8015BAC8  48 00 1E 95 */	bl CountTimer__8daItem_cFv
/* 8015BACC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8015BAD0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8015BAD4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8015BAD8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8015BADC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8015BAE0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8015BAE4  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha
/* 8015BAE8  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l
/* 8015BAEC  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015BAF0  54 00 10 3A */	slwi r0, r0, 2
/* 8015BAF4  7C 63 02 14 */	add r3, r3, r0
/* 8015BAF8  88 03 00 01 */	lbz r0, 1(r3)
/* 8015BAFC  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 8015BB00  C8 22 9B 88 */	lfd f1, lit_4072(r2)
/* 8015BB04  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8015BB08  3C 00 43 30 */	lis r0, 0x4330
/* 8015BB0C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8015BB10  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8015BB14  EC 20 08 28 */	fsubs f1, f0, f1
/* 8015BB18  C0 02 9B 70 */	lfs f0, lit_3923(r2)
/* 8015BB1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8015BB20  EC 02 00 2A */	fadds f0, f2, f0
/* 8015BB24  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8015BB28  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8015BB2C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8015BB30  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8015BB34  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8015BB38  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8015BB3C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8015BB40  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 8015BB44  4B F2 89 1D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8015BB48  28 03 00 00 */	cmplwi r3, 0
/* 8015BB4C  41 82 00 38 */	beq lbl_8015BB84
/* 8015BB50  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 8015BB54  4B F2 89 A5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8015BB58  28 03 00 00 */	cmplwi r3, 0
/* 8015BB5C  41 82 00 28 */	beq lbl_8015BB84
/* 8015BB60  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8015BB64  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8015BB68  41 82 00 1C */	beq lbl_8015BB84
/* 8015BB6C  38 7F 09 78 */	addi r3, r31, 0x978
/* 8015BB70  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040009@ha */
/* 8015BB74  38 84 00 09 */	addi r4, r4, 0x0009 /* 0x00040009@l */
/* 8015BB78  38 A0 00 00 */	li r5, 0
/* 8015BB7C  38 C0 00 00 */	li r6, 0
/* 8015BB80  48 16 29 25 */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
lbl_8015BB84:
/* 8015BB84  88 1F 09 4A */	lbz r0, 0x94a(r31)
/* 8015BB88  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8015BB8C  3C 60 80 3C */	lis r3, mFuncPtr__8daItem_c@ha
/* 8015BB90  38 03 9E 98 */	addi r0, r3, mFuncPtr__8daItem_c@l
/* 8015BB94  7C 60 22 14 */	add r3, r0, r4
/* 8015BB98  48 20 64 81 */	bl __ptmf_test
/* 8015BB9C  2C 03 00 00 */	cmpwi r3, 0
/* 8015BBA0  41 82 00 24 */	beq lbl_8015BBC4
/* 8015BBA4  7F E3 FB 78 */	mr r3, r31
/* 8015BBA8  88 1F 09 4A */	lbz r0, 0x94a(r31)
/* 8015BBAC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8015BBB0  3C 80 80 3C */	lis r4, mFuncPtr__8daItem_c@ha
/* 8015BBB4  38 04 9E 98 */	addi r0, r4, mFuncPtr__8daItem_c@l
/* 8015BBB8  7D 80 2A 14 */	add r12, r0, r5
/* 8015BBBC  48 20 64 C9 */	bl __ptmf_scall
/* 8015BBC0  60 00 00 00 */	nop 
lbl_8015BBC4:
/* 8015BBC4  88 1F 09 5F */	lbz r0, 0x95f(r31)
/* 8015BBC8  28 00 00 00 */	cmplwi r0, 0
/* 8015BBCC  41 82 00 38 */	beq lbl_8015BC04
/* 8015BBD0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8015BBD4  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8015BBD8  40 82 00 2C */	bne lbl_8015BC04
/* 8015BBDC  7F E3 FB 78 */	mr r3, r31
/* 8015BBE0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8015BBE4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8015BBE8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8015BBEC  4B EB EB F5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8015BBF0  C0 02 9B 90 */	lfs f0, lit_4320(r2)
/* 8015BBF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015BBF8  40 80 00 0C */	bge lbl_8015BC04
/* 8015BBFC  7F E3 FB 78 */	mr r3, r31
/* 8015BC00  48 00 12 ED */	bl itemGetNextExecute__8daItem_cFv
lbl_8015BC04:
/* 8015BC04  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8015BC08  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8015BC0C  41 82 00 B0 */	beq lbl_8015BCBC
/* 8015BC10  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8015BC14  D0 01 00 08 */	stfs f0, 8(r1)
/* 8015BC18  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8015BC1C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8015BC20  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8015BC24  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8015BC28  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8015BC2C  28 03 00 00 */	cmplwi r3, 0
/* 8015BC30  41 82 00 24 */	beq lbl_8015BC54
/* 8015BC34  80 63 00 04 */	lwz r3, 4(r3)
/* 8015BC38  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8015BC3C  80 63 00 00 */	lwz r3, 0(r3)
/* 8015BC40  C0 22 9B 70 */	lfs f1, lit_3923(r2)
/* 8015BC44  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 8015BC48  EC 01 00 32 */	fmuls f0, f1, f0
/* 8015BC4C  EC 02 00 2A */	fadds f0, f2, f0
/* 8015BC50  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_8015BC54:
/* 8015BC54  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8015BC58  4B EB 11 0D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8015BC5C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8015BC60  4B EB 12 E5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8015BC64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8015BC68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8015BC6C  7C 64 1B 78 */	mr r4, r3
/* 8015BC70  48 1E A9 41 */	bl PSMTXInverse
/* 8015BC74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8015BC78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8015BC7C  38 81 00 08 */	addi r4, r1, 8
/* 8015BC80  7C 85 23 78 */	mr r5, r4
/* 8015BC84  48 1E B0 E9 */	bl PSMTXMultVec
/* 8015BC88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015BC8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015BC90  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8015BC94  28 1F 00 00 */	cmplwi r31, 0
/* 8015BC98  41 82 00 0C */	beq lbl_8015BCA4
/* 8015BC9C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8015BCA0  48 00 00 08 */	b lbl_8015BCA8
lbl_8015BCA4:
/* 8015BCA4  38 80 FF FF */	li r4, -1
lbl_8015BCA8:
/* 8015BCA8  38 A1 00 08 */	addi r5, r1, 8
/* 8015BCAC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8015BCB0  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 8015BCB4  7D 89 03 A6 */	mtctr r12
/* 8015BCB8  4E 80 04 21 */	bctrl 
lbl_8015BCBC:
/* 8015BCBC  7F E3 FB 78 */	mr r3, r31
/* 8015BCC0  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015BCC4  FC 40 08 90 */	fmr f2, f1
/* 8015BCC8  FC 60 08 90 */	fmr f3, f1
/* 8015BCCC  FC 80 08 90 */	fmr f4, f1
/* 8015BCD0  FC A0 08 90 */	fmr f5, f1
/* 8015BCD4  FC C0 08 90 */	fmr f6, f1
/* 8015BCD8  4B FE 93 65 */	bl animPlay__12daItemBase_cFffffff
/* 8015BCDC  7F E3 FB 78 */	mr r3, r31
/* 8015BCE0  4B FF F4 29 */	bl setBaseMtx__8daItem_cFv
/* 8015BCE4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8015BCE8  7C 03 07 74 */	extsb r3, r0
/* 8015BCEC  4B ED 13 81 */	bl dComIfGp_getReverb__Fi
/* 8015BCF0  7C 65 1B 78 */	mr r5, r3
/* 8015BCF4  38 7F 09 78 */	addi r3, r31, 0x978
/* 8015BCF8  38 80 00 00 */	li r4, 0
/* 8015BCFC  81 9F 09 88 */	lwz r12, 0x988(r31)
/* 8015BD00  81 8C 00 08 */	lwz r12, 8(r12)
/* 8015BD04  7D 89 03 A6 */	mtctr r12
/* 8015BD08  4E 80 04 21 */	bctrl 
/* 8015BD0C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8015BD10  D0 1F 09 6C */	stfs f0, 0x96c(r31)
/* 8015BD14  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8015BD18  D0 1F 09 70 */	stfs f0, 0x970(r31)
/* 8015BD1C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8015BD20  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 8015BD24  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8015BD28  54 00 67 FE */	rlwinm r0, r0, 0xc, 0x1f, 0x1f
/* 8015BD2C  98 1F 09 5F */	stb r0, 0x95f(r31)
/* 8015BD30  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015BD34  28 00 00 06 */	cmplwi r0, 6
/* 8015BD38  41 82 00 0C */	beq lbl_8015BD44
/* 8015BD3C  28 00 00 07 */	cmplwi r0, 7
/* 8015BD40  40 82 00 2C */	bne lbl_8015BD6C
lbl_8015BD44:
/* 8015BD44  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8015BD48  D0 1F 09 AC */	stfs f0, 0x9ac(r31)
/* 8015BD4C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8015BD50  D0 1F 09 B0 */	stfs f0, 0x9b0(r31)
/* 8015BD54  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8015BD58  D0 1F 09 B4 */	stfs f0, 0x9b4(r31)
/* 8015BD5C  C0 3F 09 B0 */	lfs f1, 0x9b0(r31)
/* 8015BD60  C0 02 9B 94 */	lfs f0, lit_4321(r2)
/* 8015BD64  EC 01 00 2A */	fadds f0, f1, f0
/* 8015BD68  D0 1F 09 B0 */	stfs f0, 0x9b0(r31)
lbl_8015BD6C:
/* 8015BD6C  38 60 00 01 */	li r3, 1
/* 8015BD70  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8015BD74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015BD78  7C 08 03 A6 */	mtlr r0
/* 8015BD7C  38 21 00 30 */	addi r1, r1, 0x30
/* 8015BD80  4E 80 00 20 */	blr 
