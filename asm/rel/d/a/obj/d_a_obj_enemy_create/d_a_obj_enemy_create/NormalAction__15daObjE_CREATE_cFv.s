lbl_80BE31BC:
/* 80BE31BC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80BE31C0  7C 08 02 A6 */	mflr r0
/* 80BE31C4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BE31C8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80BE31CC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80BE31D0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80BE31D4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80BE31D8  39 61 00 60 */	addi r11, r1, 0x60
/* 80BE31DC  4B 77 EF F1 */	bl _savegpr_25
/* 80BE31E0  7C 7F 1B 78 */	mr r31, r3
/* 80BE31E4  3C 60 80 BE */	lis r3, lit_3720@ha /* 0x80BE3888@ha */
/* 80BE31E8  3B 83 38 88 */	addi r28, r3, lit_3720@l /* 0x80BE3888@l */
/* 80BE31EC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80BE31F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BE31F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BE31F8  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80BE31FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BE3200  88 1F 05 80 */	lbz r0, 0x580(r31)
/* 80BE3204  2C 00 00 02 */	cmpwi r0, 2
/* 80BE3208  41 82 01 74 */	beq lbl_80BE337C
/* 80BE320C  40 80 02 28 */	bge lbl_80BE3434
/* 80BE3210  2C 00 00 00 */	cmpwi r0, 0
/* 80BE3214  41 82 00 10 */	beq lbl_80BE3224
/* 80BE3218  40 80 01 28 */	bge lbl_80BE3340
/* 80BE321C  48 00 02 18 */	b lbl_80BE3434
/* 80BE3220  48 00 02 14 */	b lbl_80BE3434
lbl_80BE3224:
/* 80BE3224  88 9F 05 6A */	lbz r4, 0x56a(r31)
/* 80BE3228  28 04 00 FF */	cmplwi r4, 0xff
/* 80BE322C  41 82 02 08 */	beq lbl_80BE3434
/* 80BE3230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE3234  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE3238  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BE323C  7C 05 07 74 */	extsb r5, r0
/* 80BE3240  4B 45 21 21 */	bl isSwitch__10dSv_info_cCFii
/* 80BE3244  2C 03 00 00 */	cmpwi r3, 0
/* 80BE3248  41 82 01 EC */	beq lbl_80BE3434
/* 80BE324C  8B 7F 05 69 */	lbz r27, 0x569(r31)
/* 80BE3250  3B 40 00 00 */	li r26, 0
/* 80BE3254  3B C0 00 00 */	li r30, 0
/* 80BE3258  CB DC 00 10 */	lfd f30, 0x10(r28)
/* 80BE325C  3F A0 43 30 */	lis r29, 0x4330
/* 80BE3260  C3 FC 00 08 */	lfs f31, 8(r28)
/* 80BE3264  6F 7C 80 00 */	xoris r28, r27, 0x8000
/* 80BE3268  48 00 00 B8 */	b lbl_80BE3320
lbl_80BE326C:
/* 80BE326C  38 61 00 14 */	addi r3, r1, 0x14
/* 80BE3270  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BE3274  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80BE3278  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE327C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE3280  93 A1 00 20 */	stw r29, 0x20(r1)
/* 80BE3284  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BE3288  EC 40 F0 28 */	fsubs f2, f0, f30
/* 80BE328C  93 81 00 2C */	stw r28, 0x2c(r1)
/* 80BE3290  93 A1 00 28 */	stw r29, 0x28(r1)
/* 80BE3294  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BE3298  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80BE329C  EC 3F 00 24 */	fdivs f1, f31, f0
/* 80BE32A0  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 80BE32A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BE32A8  93 A1 00 30 */	stw r29, 0x30(r1)
/* 80BE32AC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80BE32B0  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80BE32B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BE32B8  EC 02 00 2A */	fadds f0, f2, f0
/* 80BE32BC  FC 00 00 1E */	fctiwz f0, f0
/* 80BE32C0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80BE32C4  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 80BE32C8  7C 66 1B 78 */	mr r6, r3
/* 80BE32CC  4B 68 DA F5 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80BE32D0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BE32D4  7C 07 07 74 */	extsb r7, r0
/* 80BE32D8  38 00 00 00 */	li r0, 0
/* 80BE32DC  90 01 00 08 */	stw r0, 8(r1)
/* 80BE32E0  A8 7F 05 74 */	lha r3, 0x574(r31)
/* 80BE32E4  28 1F 00 00 */	cmplwi r31, 0
/* 80BE32E8  41 82 00 0C */	beq lbl_80BE32F4
/* 80BE32EC  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BE32F0  48 00 00 08 */	b lbl_80BE32F8
lbl_80BE32F4:
/* 80BE32F4  38 80 FF FF */	li r4, -1
lbl_80BE32F8:
/* 80BE32F8  80 BF 05 78 */	lwz r5, 0x578(r31)
/* 80BE32FC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80BE3300  39 1F 05 6E */	addi r8, r31, 0x56e
/* 80BE3304  39 20 00 00 */	li r9, 0
/* 80BE3308  39 40 FF FF */	li r10, -1
/* 80BE330C  4B 43 6B E5 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80BE3310  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 80BE3314  7C 64 F1 2E */	stwx r3, r4, r30
/* 80BE3318  3B 5A 00 01 */	addi r26, r26, 1
/* 80BE331C  3B DE 00 04 */	addi r30, r30, 4
lbl_80BE3320:
/* 80BE3320  7C 1A D8 00 */	cmpw r26, r27
/* 80BE3324  41 80 FF 48 */	blt lbl_80BE326C
/* 80BE3328  88 7F 05 80 */	lbz r3, 0x580(r31)
/* 80BE332C  38 03 00 01 */	addi r0, r3, 1
/* 80BE3330  98 1F 05 80 */	stb r0, 0x580(r31)
/* 80BE3334  38 00 00 32 */	li r0, 0x32
/* 80BE3338  B0 1F 05 82 */	sth r0, 0x582(r31)
/* 80BE333C  48 00 00 F8 */	b lbl_80BE3434
lbl_80BE3340:
/* 80BE3340  A8 7F 05 82 */	lha r3, 0x582(r31)
/* 80BE3344  38 03 FF FF */	addi r0, r3, -1
/* 80BE3348  B0 1F 05 82 */	sth r0, 0x582(r31)
/* 80BE334C  A8 1F 05 82 */	lha r0, 0x582(r31)
/* 80BE3350  2C 00 00 00 */	cmpwi r0, 0
/* 80BE3354  41 81 00 0C */	bgt lbl_80BE3360
/* 80BE3358  38 00 00 00 */	li r0, 0
/* 80BE335C  B0 1F 05 82 */	sth r0, 0x582(r31)
lbl_80BE3360:
/* 80BE3360  A8 1F 05 82 */	lha r0, 0x582(r31)
/* 80BE3364  2C 00 00 00 */	cmpwi r0, 0
/* 80BE3368  40 82 00 CC */	bne lbl_80BE3434
/* 80BE336C  88 7F 05 80 */	lbz r3, 0x580(r31)
/* 80BE3370  38 03 00 01 */	addi r0, r3, 1
/* 80BE3374  98 1F 05 80 */	stb r0, 0x580(r31)
/* 80BE3378  48 00 00 BC */	b lbl_80BE3434
lbl_80BE337C:
/* 80BE337C  8B 7F 05 69 */	lbz r27, 0x569(r31)
/* 80BE3380  3B 40 00 00 */	li r26, 0
/* 80BE3384  3B 20 00 00 */	li r25, 0
/* 80BE3388  3B C0 00 00 */	li r30, 0
/* 80BE338C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80BE3390  3B 83 35 90 */	addi r28, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80BE3394  3B A0 FF FF */	li r29, -1
/* 80BE3398  48 00 00 38 */	b lbl_80BE33D0
lbl_80BE339C:
/* 80BE339C  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80BE33A0  7C 03 F0 2E */	lwzx r0, r3, r30
/* 80BE33A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BE33A8  7F 83 E3 78 */	mr r3, r28
/* 80BE33AC  38 81 00 10 */	addi r4, r1, 0x10
/* 80BE33B0  4B 43 64 49 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80BE33B4  28 03 00 00 */	cmplwi r3, 0
/* 80BE33B8  40 82 00 10 */	bne lbl_80BE33C8
/* 80BE33BC  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80BE33C0  7F A3 F1 2E */	stwx r29, r3, r30
/* 80BE33C4  3B 5A 00 01 */	addi r26, r26, 1
lbl_80BE33C8:
/* 80BE33C8  3B 39 00 01 */	addi r25, r25, 1
/* 80BE33CC  3B DE 00 04 */	addi r30, r30, 4
lbl_80BE33D0:
/* 80BE33D0  7C 19 D8 00 */	cmpw r25, r27
/* 80BE33D4  41 80 FF C8 */	blt lbl_80BE339C
/* 80BE33D8  7C 1A D8 00 */	cmpw r26, r27
/* 80BE33DC  40 82 00 58 */	bne lbl_80BE3434
/* 80BE33E0  88 7F 05 80 */	lbz r3, 0x580(r31)
/* 80BE33E4  38 03 00 01 */	addi r0, r3, 1
/* 80BE33E8  98 1F 05 80 */	stb r0, 0x580(r31)
/* 80BE33EC  88 9F 05 6B */	lbz r4, 0x56b(r31)
/* 80BE33F0  28 04 00 FF */	cmplwi r4, 0xff
/* 80BE33F4  41 82 00 38 */	beq lbl_80BE342C
/* 80BE33F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE33FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE3400  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BE3404  7C 05 07 74 */	extsb r5, r0
/* 80BE3408  4B 45 1F 59 */	bl isSwitch__10dSv_info_cCFii
/* 80BE340C  2C 03 00 00 */	cmpwi r3, 0
/* 80BE3410  40 82 00 1C */	bne lbl_80BE342C
/* 80BE3414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE3418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE341C  88 9F 05 6B */	lbz r4, 0x56b(r31)
/* 80BE3420  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BE3424  7C 05 07 74 */	extsb r5, r0
/* 80BE3428  4B 45 1D D9 */	bl onSwitch__10dSv_info_cFii
lbl_80BE342C:
/* 80BE342C  38 00 00 64 */	li r0, 0x64
/* 80BE3430  B0 1F 05 82 */	sth r0, 0x582(r31)
lbl_80BE3434:
/* 80BE3434  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80BE3438  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80BE343C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80BE3440  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80BE3444  39 61 00 60 */	addi r11, r1, 0x60
/* 80BE3448  4B 77 ED D1 */	bl _restgpr_25
/* 80BE344C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BE3450  7C 08 03 A6 */	mtlr r0
/* 80BE3454  38 21 00 80 */	addi r1, r1, 0x80
/* 80BE3458  4E 80 00 20 */	blr 
