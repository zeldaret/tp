lbl_80152014:
/* 80152014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80152018  7C 08 02 A6 */	mflr r0
/* 8015201C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80152020  39 61 00 20 */	addi r11, r1, 0x20
/* 80152024  48 21 01 B5 */	bl _savegpr_28
/* 80152028  7C 7F 1B 78 */	mr r31, r3
/* 8015202C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80152030  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80152034  7D 89 03 A6 */	mtctr r12
/* 80152038  4E 80 04 21 */	bctrl 
/* 8015203C  7F E3 FB 78 */	mr r3, r31
/* 80152040  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80152044  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80152048  7D 89 03 A6 */	mtctr r12
/* 8015204C  4E 80 04 21 */	bctrl 
/* 80152050  2C 03 00 00 */	cmpwi r3, 0
/* 80152054  41 82 01 14 */	beq lbl_80152168
/* 80152058  7F E3 FB 78 */	mr r3, r31
/* 8015205C  38 9F 07 A8 */	addi r4, r31, 0x7a8
/* 80152060  4B EC 86 6D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80152064  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80152068  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8015206C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80152070  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80152074  4B F2 4A 39 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80152078  80 1F 06 AC */	lwz r0, 0x6ac(r31)
/* 8015207C  90 1F 0A 44 */	stw r0, 0xa44(r31)
/* 80152080  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80152084  90 1F 0A 48 */	stw r0, 0xa48(r31)
/* 80152088  80 1F 06 B4 */	lwz r0, 0x6b4(r31)
/* 8015208C  90 1F 0A 4C */	stw r0, 0xa4c(r31)
/* 80152090  88 1F 06 B8 */	lbz r0, 0x6b8(r31)
/* 80152094  98 1F 0A 50 */	stb r0, 0xa50(r31)
/* 80152098  A0 1F 06 C0 */	lhz r0, 0x6c0(r31)
/* 8015209C  B0 1F 0A 58 */	sth r0, 0xa58(r31)
/* 801520A0  A0 1F 06 C2 */	lhz r0, 0x6c2(r31)
/* 801520A4  B0 1F 0A 5A */	sth r0, 0xa5a(r31)
/* 801520A8  80 1F 06 C4 */	lwz r0, 0x6c4(r31)
/* 801520AC  90 1F 0A 5C */	stw r0, 0xa5c(r31)
/* 801520B0  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 801520B4  90 1F 0A 60 */	stw r0, 0xa60(r31)
/* 801520B8  C0 1F 06 D0 */	lfs f0, 0x6d0(r31)
/* 801520BC  D0 1F 0A 68 */	stfs f0, 0xa68(r31)
/* 801520C0  C0 1F 06 D4 */	lfs f0, 0x6d4(r31)
/* 801520C4  D0 1F 0A 6C */	stfs f0, 0xa6c(r31)
/* 801520C8  C0 1F 06 D8 */	lfs f0, 0x6d8(r31)
/* 801520CC  D0 1F 0A 70 */	stfs f0, 0xa70(r31)
/* 801520D0  80 1F 06 DC */	lwz r0, 0x6dc(r31)
/* 801520D4  90 1F 0A 74 */	stw r0, 0xa74(r31)
/* 801520D8  C0 1F 06 E0 */	lfs f0, 0x6e0(r31)
/* 801520DC  D0 1F 0A 78 */	stfs f0, 0xa78(r31)
/* 801520E0  80 1F 06 E4 */	lwz r0, 0x6e4(r31)
/* 801520E4  90 1F 0A 7C */	stw r0, 0xa7c(r31)
/* 801520E8  C0 1F 06 68 */	lfs f0, 0x668(r31)
/* 801520EC  D0 1F 09 80 */	stfs f0, 0x980(r31)
/* 801520F0  C0 22 9A 40 */	lfs f1, lit_5667(r2)
/* 801520F4  C0 1F 09 80 */	lfs f0, 0x980(r31)
/* 801520F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801520FC  41 82 00 6C */	beq lbl_80152168
/* 80152100  38 7F 0A 58 */	addi r3, r31, 0xa58
/* 80152104  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80152108  48 00 34 65 */	bl daNpcF_getGroundAngle__FP13cBgS_PolyInfos
/* 8015210C  B0 7F 09 98 */	sth r3, 0x998(r31)
/* 80152110  7F E3 FB 78 */	mr r3, r31
/* 80152114  48 00 0C 71 */	bl setEnvTevColor__8daNpcF_cFv
/* 80152118  7F E3 FB 78 */	mr r3, r31
/* 8015211C  48 00 0C C5 */	bl setRoomNo__8daNpcF_cFv
/* 80152120  38 7F 06 C0 */	addi r3, r31, 0x6c0
/* 80152124  48 05 93 9D */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 80152128  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8015212C  90 1F 09 B0 */	stw r0, 0x9b0(r31)
/* 80152130  88 7F 07 CA */	lbz r3, 0x7ca(r31)
/* 80152134  4B ED AF 39 */	bl dComIfGp_getReverb__Fi
/* 80152138  98 7F 09 E8 */	stb r3, 0x9e8(r31)
/* 8015213C  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80152140  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80152144  41 82 00 24 */	beq lbl_80152168
/* 80152148  C0 3F 07 9C */	lfs f1, 0x79c(r31)
/* 8015214C  C0 1F 09 80 */	lfs f0, 0x980(r31)
/* 80152150  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80152154  40 81 00 14 */	ble lbl_80152168
/* 80152158  38 7F 07 50 */	addi r3, r31, 0x750
/* 8015215C  48 05 93 65 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 80152160  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80152164  90 1F 09 B0 */	stw r0, 0x9b0(r31)
lbl_80152168:
/* 80152168  7F E3 FB 78 */	mr r3, r31
/* 8015216C  48 00 0D D5 */	bl playAllAnm__8daNpcF_cFv
/* 80152170  7F E3 FB 78 */	mr r3, r31
/* 80152174  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80152178  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8015217C  7D 89 03 A6 */	mtctr r12
/* 80152180  4E 80 04 21 */	bctrl 
/* 80152184  7F E3 FB 78 */	mr r3, r31
/* 80152188  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8015218C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80152190  7D 89 03 A6 */	mtctr r12
/* 80152194  4E 80 04 21 */	bctrl 
/* 80152198  38 7F 09 78 */	addi r3, r31, 0x978
/* 8015219C  C0 22 99 D8 */	lfs f1, lit_4116(r2)
/* 801521A0  C0 42 99 DC */	lfs f2, lit_4140(r2)
/* 801521A4  48 11 E5 9D */	bl cLib_chaseF__FPfff
/* 801521A8  7F E3 FB 78 */	mr r3, r31
/* 801521AC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 801521B0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801521B4  7D 89 03 A6 */	mtctr r12
/* 801521B8  4E 80 04 21 */	bctrl 
/* 801521BC  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 801521C0  28 00 00 00 */	cmplwi r0, 0
/* 801521C4  41 82 00 24 */	beq lbl_801521E8
/* 801521C8  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 801521CC  64 00 00 40 */	oris r0, r0, 0x40
/* 801521D0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 801521D4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 801521D8  64 00 00 80 */	oris r0, r0, 0x80
/* 801521DC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 801521E0  7F E3 FB 78 */	mr r3, r31
/* 801521E4  48 00 29 F5 */	bl setHitodamaPrtcl__8daNpcF_cFv
lbl_801521E8:
/* 801521E8  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 801521EC  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 801521F0  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 801521F4  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 801521F8  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 801521FC  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 80152200  3B A0 00 00 */	li r29, 0
/* 80152204  93 BF 09 30 */	stw r29, 0x930(r31)
/* 80152208  9B BF 09 E9 */	stb r29, 0x9e9(r31)
/* 8015220C  9B BF 09 ED */	stb r29, 0x9ed(r31)
/* 80152210  9B BF 09 EB */	stb r29, 0x9eb(r31)
/* 80152214  9B BF 09 EF */	stb r29, 0x9ef(r31)
/* 80152218  9B BF 09 F3 */	stb r29, 0x9f3(r31)
/* 8015221C  3B 80 00 00 */	li r28, 0
/* 80152220  3B C0 00 00 */	li r30, 0
lbl_80152224:
/* 80152224  80 1F 09 38 */	lwz r0, 0x938(r31)
/* 80152228  2C 00 00 00 */	cmpwi r0, 0
/* 8015222C  41 82 00 10 */	beq lbl_8015223C
/* 80152230  80 1F 09 34 */	lwz r0, 0x934(r31)
/* 80152234  7C 00 E0 00 */	cmpw r0, r28
/* 80152238  41 82 00 30 */	beq lbl_80152268
lbl_8015223C:
/* 8015223C  7C 7F EA 14 */	add r3, r31, r29
/* 80152240  80 03 09 3C */	lwz r0, 0x93c(r3)
/* 80152244  2C 00 00 00 */	cmpwi r0, 0
/* 80152248  41 82 00 20 */	beq lbl_80152268
/* 8015224C  38 63 09 3C */	addi r3, r3, 0x93c
/* 80152250  4B FF B0 F9 */	bl func_8014D348
/* 80152254  2C 03 00 00 */	cmpwi r3, 0
/* 80152258  40 82 00 10 */	bne lbl_80152268
/* 8015225C  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80152260  7C 7F 1A 14 */	add r3, r31, r3
/* 80152264  4B FF E4 7D */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80152268:
/* 80152268  3B 9C 00 01 */	addi r28, r28, 1
/* 8015226C  2C 1C 00 05 */	cmpwi r28, 5
/* 80152270  3B DE 00 08 */	addi r30, r30, 8
/* 80152274  3B BD 00 04 */	addi r29, r29, 4
/* 80152278  41 80 FF AC */	blt lbl_80152224
/* 8015227C  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80152280  2C 00 00 00 */	cmpwi r0, 0
/* 80152284  41 82 00 0C */	beq lbl_80152290
/* 80152288  38 7F 09 54 */	addi r3, r31, 0x954
/* 8015228C  4B FF B0 BD */	bl func_8014D348
lbl_80152290:
/* 80152290  38 60 00 01 */	li r3, 1
/* 80152294  39 61 00 20 */	addi r11, r1, 0x20
/* 80152298  48 20 FF 8D */	bl _restgpr_28
/* 8015229C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801522A0  7C 08 03 A6 */	mtlr r0
/* 801522A4  38 21 00 20 */	addi r1, r1, 0x20
/* 801522A8  4E 80 00 20 */	blr 
