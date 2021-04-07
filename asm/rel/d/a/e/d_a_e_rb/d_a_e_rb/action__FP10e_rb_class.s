lbl_807631E0:
/* 807631E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807631E4  7C 08 02 A6 */	mflr r0
/* 807631E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 807631EC  39 61 00 40 */	addi r11, r1, 0x40
/* 807631F0  4B BF EF E5 */	bl _savegpr_27
/* 807631F4  7C 7B 1B 78 */	mr r27, r3
/* 807631F8  3C 80 80 76 */	lis r4, lit_3788@ha /* 0x80764D0C@ha */
/* 807631FC  3B E4 4D 0C */	addi r31, r4, lit_3788@l /* 0x80764D0C@l */
/* 80763200  4B FF F3 55 */	bl damage_check__FP10e_rb_class
/* 80763204  3B C0 00 00 */	li r30, 0
/* 80763208  3B A0 00 00 */	li r29, 0
/* 8076320C  3B 80 00 01 */	li r28, 1
/* 80763210  80 1B 08 0C */	lwz r0, 0x80c(r27)
/* 80763214  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80763218  90 1B 08 0C */	stw r0, 0x80c(r27)
/* 8076321C  A8 1B 0A 42 */	lha r0, 0xa42(r27)
/* 80763220  28 00 00 0A */	cmplwi r0, 0xa
/* 80763224  41 81 00 C0 */	bgt lbl_807632E4
/* 80763228  3C 60 80 76 */	lis r3, lit_4166@ha /* 0x80764E14@ha */
/* 8076322C  38 63 4E 14 */	addi r3, r3, lit_4166@l /* 0x80764E14@l */
/* 80763230  54 00 10 3A */	slwi r0, r0, 2
/* 80763234  7C 03 00 2E */	lwzx r0, r3, r0
/* 80763238  7C 09 03 A6 */	mtctr r0
/* 8076323C  4E 80 04 20 */	bctr 
lbl_80763240:
/* 80763240  7F 63 DB 78 */	mr r3, r27
/* 80763244  4B FF F5 21 */	bl e_rb_stay__FP10e_rb_class
/* 80763248  48 00 00 9C */	b lbl_807632E4
lbl_8076324C:
/* 8076324C  7F 63 DB 78 */	mr r3, r27
/* 80763250  4B FF F5 95 */	bl e_rb_appear__FP10e_rb_class
/* 80763254  7C 7D 1B 78 */	mr r29, r3
/* 80763258  80 1B 08 0C */	lwz r0, 0x80c(r27)
/* 8076325C  60 00 00 01 */	ori r0, r0, 1
/* 80763260  90 1B 08 0C */	stw r0, 0x80c(r27)
/* 80763264  48 00 00 80 */	b lbl_807632E4
lbl_80763268:
/* 80763268  7F 63 DB 78 */	mr r3, r27
/* 8076326C  4B FF F7 6D */	bl e_rb_move__FP10e_rb_class
/* 80763270  3B C0 00 01 */	li r30, 1
/* 80763274  3B A0 00 01 */	li r29, 1
/* 80763278  80 1B 08 0C */	lwz r0, 0x80c(r27)
/* 8076327C  60 00 00 01 */	ori r0, r0, 1
/* 80763280  90 1B 08 0C */	stw r0, 0x80c(r27)
/* 80763284  48 00 00 60 */	b lbl_807632E4
lbl_80763288:
/* 80763288  7F 63 DB 78 */	mr r3, r27
/* 8076328C  4B FF F9 C1 */	bl e_rb_attack__FP10e_rb_class
/* 80763290  3B C0 00 01 */	li r30, 1
/* 80763294  3B A0 00 01 */	li r29, 1
/* 80763298  80 1B 08 0C */	lwz r0, 0x80c(r27)
/* 8076329C  60 00 00 01 */	ori r0, r0, 1
/* 807632A0  90 1B 08 0C */	stw r0, 0x80c(r27)
/* 807632A4  48 00 00 40 */	b lbl_807632E4
lbl_807632A8:
/* 807632A8  7F 63 DB 78 */	mr r3, r27
/* 807632AC  4B FF FB E5 */	bl e_rb_disappear__FP10e_rb_class
/* 807632B0  7C 7E 1B 78 */	mr r30, r3
/* 807632B4  3B A0 00 02 */	li r29, 2
/* 807632B8  80 1B 08 0C */	lwz r0, 0x80c(r27)
/* 807632BC  60 00 00 01 */	ori r0, r0, 1
/* 807632C0  90 1B 08 0C */	stw r0, 0x80c(r27)
/* 807632C4  48 00 00 20 */	b lbl_807632E4
lbl_807632C8:
/* 807632C8  7F 63 DB 78 */	mr r3, r27
/* 807632CC  4B FF FD 09 */	bl e_rb_damage__FP10e_rb_class
/* 807632D0  3B A0 00 01 */	li r29, 1
/* 807632D4  3B 80 00 00 */	li r28, 0
/* 807632D8  80 1B 08 0C */	lwz r0, 0x80c(r27)
/* 807632DC  60 00 00 01 */	ori r0, r0, 1
/* 807632E0  90 1B 08 0C */	stw r0, 0x80c(r27)
lbl_807632E4:
/* 807632E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807632E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807632EC  80 63 00 00 */	lwz r3, 0(r3)
/* 807632F0  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 807632F4  4B 8A 90 E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 807632F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807632FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80763300  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80763304  A8 1B 0A 42 */	lha r0, 0xa42(r27)
/* 80763308  2C 00 00 0A */	cmpwi r0, 0xa
/* 8076330C  40 82 00 10 */	bne lbl_8076331C
/* 80763310  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80763314  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80763318  48 00 00 28 */	b lbl_80763340
lbl_8076331C:
/* 8076331C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80763320  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80763324  A8 1B 0A 54 */	lha r0, 0xa54(r27)
/* 80763328  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8076332C  7C 63 02 14 */	add r3, r3, r0
/* 80763330  C0 23 00 04 */	lfs f1, 4(r3)
/* 80763334  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80763338  EC 00 00 72 */	fmuls f0, f0, f1
/* 8076333C  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80763340:
/* 80763340  38 61 00 14 */	addi r3, r1, 0x14
/* 80763344  38 81 00 08 */	addi r4, r1, 8
/* 80763348  4B B0 DB A5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8076334C  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 80763350  C0 01 00 08 */	lfs f0, 8(r1)
/* 80763354  EC 01 00 2A */	fadds f0, f1, f0
/* 80763358  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 8076335C  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 80763360  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80763364  EC 01 00 2A */	fadds f0, f1, f0
/* 80763368  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 8076336C  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80763370  C0 1B 04 FC */	lfs f0, 0x4fc(r27)
/* 80763374  EC 01 00 2A */	fadds f0, f1, f0
/* 80763378  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 8076337C  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80763380  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80763384  EC 01 00 28 */	fsubs f0, f1, f0
/* 80763388  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8076338C  C0 3B 0A 30 */	lfs f1, 0xa30(r27)
/* 80763390  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80763394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80763398  40 81 00 58 */	ble lbl_807633F0
/* 8076339C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807633A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807633A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807633A8  FC 00 08 50 */	fneg f0, f1
/* 807633AC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807633B0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807633B4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807633B8  80 63 00 00 */	lwz r3, 0(r3)
/* 807633BC  A8 9B 0A 50 */	lha r4, 0xa50(r27)
/* 807633C0  4B 8A 90 1D */	bl mDoMtx_YrotS__FPA4_fs
/* 807633C4  38 61 00 14 */	addi r3, r1, 0x14
/* 807633C8  38 81 00 08 */	addi r4, r1, 8
/* 807633CC  4B B0 DB 21 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807633D0  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 807633D4  38 81 00 08 */	addi r4, r1, 8
/* 807633D8  7C 65 1B 78 */	mr r5, r3
/* 807633DC  4B BE 3C B5 */	bl PSVECAdd
/* 807633E0  38 7B 0A 30 */	addi r3, r27, 0xa30
/* 807633E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807633E8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807633EC  4B B0 C6 95 */	bl cLib_addCalc0__FPfff
lbl_807633F0:
/* 807633F0  34 7B 07 D0 */	addic. r3, r27, 0x7d0
/* 807633F4  41 82 00 34 */	beq lbl_80763428
/* 807633F8  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 807633FC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80763400  EC 01 00 2A */	fadds f0, f1, f0
/* 80763404  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80763408  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 8076340C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80763410  EC 01 00 2A */	fadds f0, f1, f0
/* 80763414  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80763418  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 8076341C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80763420  EC 01 00 2A */	fadds f0, f1, f0
/* 80763424  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
lbl_80763428:
/* 80763428  38 7B 05 F8 */	addi r3, r27, 0x5f8
/* 8076342C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80763430  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80763434  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80763438  4B 91 36 75 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8076343C  7F C0 07 75 */	extsb. r0, r30
/* 80763440  41 82 00 10 */	beq lbl_80763450
/* 80763444  38 00 00 04 */	li r0, 4
/* 80763448  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 8076344C  48 00 00 18 */	b lbl_80763464
lbl_80763450:
/* 80763450  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 80763454  54 00 00 3E */	slwi r0, r0, 0
/* 80763458  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 8076345C  38 00 00 00 */	li r0, 0
/* 80763460  90 1B 05 5C */	stw r0, 0x55c(r27)
lbl_80763464:
/* 80763464  7F A0 07 74 */	extsb r0, r29
/* 80763468  2C 00 00 02 */	cmpwi r0, 2
/* 8076346C  40 82 00 44 */	bne lbl_807634B0
/* 80763470  A8 1B 0A 40 */	lha r0, 0xa40(r27)
/* 80763474  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 80763478  40 82 00 84 */	bne lbl_807634FC
/* 8076347C  38 7B 0A 5C */	addi r3, r27, 0xa5c
/* 80763480  38 9B 0A 60 */	addi r4, r27, 0xa60
/* 80763484  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80763488  38 C0 00 00 */	li r6, 0
/* 8076348C  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80763490  3C E0 80 76 */	lis r7, l_HIO@ha /* 0x80764F90@ha */
/* 80763494  38 E7 4F 90 */	addi r7, r7, l_HIO@l /* 0x80764F90@l */
/* 80763498  C0 07 00 08 */	lfs f0, 8(r7)
/* 8076349C  EC 21 00 32 */	fmuls f1, f1, f0
/* 807634A0  38 FB 01 0C */	addi r7, r27, 0x10c
/* 807634A4  39 00 00 01 */	li r8, 1
/* 807634A8  4B 8B 9B 79 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 807634AC  48 00 00 50 */	b lbl_807634FC
lbl_807634B0:
/* 807634B0  7F A0 07 75 */	extsb. r0, r29
/* 807634B4  41 82 00 48 */	beq lbl_807634FC
/* 807634B8  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 807634BC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807634C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807634C4  40 81 00 38 */	ble lbl_807634FC
/* 807634C8  A8 1B 0A 40 */	lha r0, 0xa40(r27)
/* 807634CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807634D0  40 82 00 2C */	bne lbl_807634FC
/* 807634D4  38 7B 0A 5C */	addi r3, r27, 0xa5c
/* 807634D8  38 9B 0A 60 */	addi r4, r27, 0xa60
/* 807634DC  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 807634E0  38 C0 00 00 */	li r6, 0
/* 807634E4  3C E0 80 76 */	lis r7, l_HIO@ha /* 0x80764F90@ha */
/* 807634E8  38 E7 4F 90 */	addi r7, r7, l_HIO@l /* 0x80764F90@l */
/* 807634EC  C0 27 00 08 */	lfs f1, 8(r7)
/* 807634F0  38 FB 01 0C */	addi r7, r27, 0x10c
/* 807634F4  39 00 00 00 */	li r8, 0
/* 807634F8  4B 8B 9B 29 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_807634FC:
/* 807634FC  7F 80 07 75 */	extsb. r0, r28
/* 80763500  41 82 00 3C */	beq lbl_8076353C
/* 80763504  A8 7B 0A 52 */	lha r3, 0xa52(r27)
/* 80763508  A8 1B 0A 56 */	lha r0, 0xa56(r27)
/* 8076350C  7C 03 02 14 */	add r0, r3, r0
/* 80763510  B0 1B 0A 52 */	sth r0, 0xa52(r27)
/* 80763514  38 7B 0A 56 */	addi r3, r27, 0xa56
/* 80763518  38 80 00 00 */	li r4, 0
/* 8076351C  38 A0 00 01 */	li r5, 1
/* 80763520  38 C0 00 32 */	li r6, 0x32
/* 80763524  4B B0 D0 E5 */	bl cLib_addCalcAngleS2__FPssss
/* 80763528  38 7B 0A 54 */	addi r3, r27, 0xa54
/* 8076352C  38 80 00 00 */	li r4, 0
/* 80763530  38 A0 00 08 */	li r5, 8
/* 80763534  38 C0 00 32 */	li r6, 0x32
/* 80763538  4B B0 D0 D1 */	bl cLib_addCalcAngleS2__FPssss
lbl_8076353C:
/* 8076353C  39 61 00 40 */	addi r11, r1, 0x40
/* 80763540  4B BF EC E1 */	bl _restgpr_27
/* 80763544  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80763548  7C 08 03 A6 */	mtlr r0
/* 8076354C  38 21 00 40 */	addi r1, r1, 0x40
/* 80763550  4E 80 00 20 */	blr 
