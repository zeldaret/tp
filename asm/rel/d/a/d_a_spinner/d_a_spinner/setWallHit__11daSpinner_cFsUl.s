lbl_804D3174:
/* 804D3174  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804D3178  7C 08 02 A6 */	mflr r0
/* 804D317C  90 01 00 74 */	stw r0, 0x74(r1)
/* 804D3180  39 61 00 70 */	addi r11, r1, 0x70
/* 804D3184  4B E8 F0 4D */	bl _savegpr_26
/* 804D3188  7C 7B 1B 78 */	mr r27, r3
/* 804D318C  7C 9A 23 78 */	mr r26, r4
/* 804D3190  7C BC 2B 78 */	mr r28, r5
/* 804D3194  3C 80 80 4D */	lis r4, lit_3768@ha /* 0x804D4D90@ha */
/* 804D3198  3B E4 4D 90 */	addi r31, r4, lit_3768@l /* 0x804D4D90@l */
/* 804D319C  B3 43 0A 80 */	sth r26, 0xa80(r3)
/* 804D31A0  4B FF FE F1 */	bl setReflectAngle__11daSpinner_cFv
/* 804D31A4  C0 7B 04 D8 */	lfs f3, 0x4d8(r27)
/* 804D31A8  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 804D31AC  C0 1B 05 BC */	lfs f0, 0x5bc(r27)
/* 804D31B0  EC 41 00 2A */	fadds f2, f1, f0
/* 804D31B4  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 804D31B8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 804D31BC  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 804D31C0  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 804D31C4  C0 9B 05 C0 */	lfs f4, 0x5c0(r27)
/* 804D31C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804D31CC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804D31D0  57 40 04 38 */	rlwinm r0, r26, 0, 0x10, 0x1c
/* 804D31D4  7C 64 02 14 */	add r3, r4, r0
/* 804D31D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 804D31DC  EC 04 00 32 */	fmuls f0, f4, f0
/* 804D31E0  EC 63 00 28 */	fsubs f3, f3, f0
/* 804D31E4  7C 04 04 2E */	lfsx f0, r4, r0
/* 804D31E8  EC 04 00 32 */	fmuls f0, f4, f0
/* 804D31EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D31F0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804D31F4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 804D31F8  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 804D31FC  38 7B 08 24 */	addi r3, r27, 0x824
/* 804D3200  38 81 00 38 */	addi r4, r1, 0x38
/* 804D3204  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804D3208  7F 66 DB 78 */	mr r6, r27
/* 804D320C  4B BA 4B 59 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804D3210  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D3214  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D3218  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 804D321C  7F C3 F3 78 */	mr r3, r30
/* 804D3220  38 9B 08 24 */	addi r4, r27, 0x824
/* 804D3224  4B BA 11 91 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804D3228  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D322C  41 82 01 70 */	beq lbl_804D339C
/* 804D3230  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha /* 0x804D4F3C@ha */
/* 804D3234  38 03 4F 3C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804D4F3C@l */
/* 804D3238  90 01 00 54 */	stw r0, 0x54(r1)
/* 804D323C  7F C3 F3 78 */	mr r3, r30
/* 804D3240  38 9B 08 38 */	addi r4, r27, 0x838
/* 804D3244  38 A1 00 44 */	addi r5, r1, 0x44
/* 804D3248  4B BA 14 FD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804D324C  3B BB 08 54 */	addi r29, r27, 0x854
/* 804D3250  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804D3254  FC 20 00 50 */	fneg f1, f0
/* 804D3258  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804D325C  FC 40 00 50 */	fneg f2, f0
/* 804D3260  4B D9 44 15 */	bl cM_atan2s__Fff
/* 804D3264  7C 7A 1B 78 */	mr r26, r3
/* 804D3268  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804D326C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804D3270  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804D3274  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D3278  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804D327C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D3280  38 61 00 14 */	addi r3, r1, 0x14
/* 804D3284  4B E7 3E B5 */	bl PSVECSquareMag
/* 804D3288  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804D328C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D3290  40 81 00 58 */	ble lbl_804D32E8
/* 804D3294  FC 00 08 34 */	frsqrte f0, f1
/* 804D3298  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 804D329C  FC 44 00 32 */	fmul f2, f4, f0
/* 804D32A0  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 804D32A4  FC 00 00 32 */	fmul f0, f0, f0
/* 804D32A8  FC 01 00 32 */	fmul f0, f1, f0
/* 804D32AC  FC 03 00 28 */	fsub f0, f3, f0
/* 804D32B0  FC 02 00 32 */	fmul f0, f2, f0
/* 804D32B4  FC 44 00 32 */	fmul f2, f4, f0
/* 804D32B8  FC 00 00 32 */	fmul f0, f0, f0
/* 804D32BC  FC 01 00 32 */	fmul f0, f1, f0
/* 804D32C0  FC 03 00 28 */	fsub f0, f3, f0
/* 804D32C4  FC 02 00 32 */	fmul f0, f2, f0
/* 804D32C8  FC 44 00 32 */	fmul f2, f4, f0
/* 804D32CC  FC 00 00 32 */	fmul f0, f0, f0
/* 804D32D0  FC 01 00 32 */	fmul f0, f1, f0
/* 804D32D4  FC 03 00 28 */	fsub f0, f3, f0
/* 804D32D8  FC 02 00 32 */	fmul f0, f2, f0
/* 804D32DC  FC 41 00 32 */	fmul f2, f1, f0
/* 804D32E0  FC 40 10 18 */	frsp f2, f2
/* 804D32E4  48 00 00 90 */	b lbl_804D3374
lbl_804D32E8:
/* 804D32E8  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 804D32EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D32F0  40 80 00 10 */	bge lbl_804D3300
/* 804D32F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804D32F8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804D32FC  48 00 00 78 */	b lbl_804D3374
lbl_804D3300:
/* 804D3300  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D3304  80 81 00 08 */	lwz r4, 8(r1)
/* 804D3308  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804D330C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804D3310  7C 03 00 00 */	cmpw r3, r0
/* 804D3314  41 82 00 14 */	beq lbl_804D3328
/* 804D3318  40 80 00 40 */	bge lbl_804D3358
/* 804D331C  2C 03 00 00 */	cmpwi r3, 0
/* 804D3320  41 82 00 20 */	beq lbl_804D3340
/* 804D3324  48 00 00 34 */	b lbl_804D3358
lbl_804D3328:
/* 804D3328  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D332C  41 82 00 0C */	beq lbl_804D3338
/* 804D3330  38 00 00 01 */	li r0, 1
/* 804D3334  48 00 00 28 */	b lbl_804D335C
lbl_804D3338:
/* 804D3338  38 00 00 02 */	li r0, 2
/* 804D333C  48 00 00 20 */	b lbl_804D335C
lbl_804D3340:
/* 804D3340  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D3344  41 82 00 0C */	beq lbl_804D3350
/* 804D3348  38 00 00 05 */	li r0, 5
/* 804D334C  48 00 00 10 */	b lbl_804D335C
lbl_804D3350:
/* 804D3350  38 00 00 03 */	li r0, 3
/* 804D3354  48 00 00 08 */	b lbl_804D335C
lbl_804D3358:
/* 804D3358  38 00 00 04 */	li r0, 4
lbl_804D335C:
/* 804D335C  2C 00 00 01 */	cmpwi r0, 1
/* 804D3360  40 82 00 10 */	bne lbl_804D3370
/* 804D3364  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804D3368  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804D336C  48 00 00 08 */	b lbl_804D3374
lbl_804D3370:
/* 804D3370  FC 40 08 90 */	fmr f2, f1
lbl_804D3374:
/* 804D3374  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 804D3378  4B D9 42 FD */	bl cM_atan2s__Fff
/* 804D337C  B0 61 00 0C */	sth r3, 0xc(r1)
/* 804D3380  B3 41 00 0E */	sth r26, 0xe(r1)
/* 804D3384  38 00 00 00 */	li r0, 0
/* 804D3388  B0 01 00 10 */	sth r0, 0x10(r1)
/* 804D338C  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha /* 0x804D4F3C@ha */
/* 804D3390  38 03 4F 3C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804D4F3C@l */
/* 804D3394  90 01 00 54 */	stw r0, 0x54(r1)
/* 804D3398  48 00 00 20 */	b lbl_804D33B8
lbl_804D339C:
/* 804D339C  3B A1 00 2C */	addi r29, r1, 0x2c
/* 804D33A0  38 80 00 00 */	li r4, 0
/* 804D33A4  B0 81 00 0C */	sth r4, 0xc(r1)
/* 804D33A8  3C 7A 00 01 */	addis r3, r26, 1
/* 804D33AC  38 03 80 00 */	addi r0, r3, -32768
/* 804D33B0  B0 01 00 0E */	sth r0, 0xe(r1)
/* 804D33B4  B0 81 00 10 */	sth r4, 0x10(r1)
lbl_804D33B8:
/* 804D33B8  88 1B 0A 78 */	lbz r0, 0xa78(r27)
/* 804D33BC  28 00 00 00 */	cmplwi r0, 0
/* 804D33C0  40 82 00 90 */	bne lbl_804D3450
/* 804D33C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D33C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D33CC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804D33D0  38 63 2C A8 */	addi r3, r3, 0x2ca8
/* 804D33D4  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040013@ha */
/* 804D33D8  38 84 00 13 */	addi r4, r4, 0x0013 /* 0x00040013@l */
/* 804D33DC  7F 85 E3 78 */	mr r5, r28
/* 804D33E0  38 DB 08 CC */	addi r6, r27, 0x8cc
/* 804D33E4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 804D33E8  4B DF 14 2D */	bl startHitItemSE__14Z2CreatureLinkFUlUlP14Z2SoundObjBasef
/* 804D33EC  38 00 00 0A */	li r0, 0xa
/* 804D33F0  98 1B 0A 78 */	stb r0, 0xa78(r27)
/* 804D33F4  88 1B 0A 79 */	lbz r0, 0xa79(r27)
/* 804D33F8  28 00 00 00 */	cmplwi r0, 0
/* 804D33FC  40 82 00 54 */	bne lbl_804D3450
/* 804D3400  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804D3404  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804D3408  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804D340C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804D3410  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804D3414  38 7E 4C 9C */	addi r3, r30, 0x4c9c
/* 804D3418  38 80 00 01 */	li r4, 1
/* 804D341C  38 A0 00 01 */	li r5, 1
/* 804D3420  38 C1 00 20 */	addi r6, r1, 0x20
/* 804D3424  4B B9 C6 01 */	bl StartShock__12dVibration_cFii4cXyz
/* 804D3428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D342C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D3430  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804D3434  38 80 00 09 */	li r4, 9
/* 804D3438  38 A0 00 00 */	li r5, 0
/* 804D343C  7F A6 EB 78 */	mr r6, r29
/* 804D3440  38 E1 00 0C */	addi r7, r1, 0xc
/* 804D3444  39 00 00 00 */	li r8, 0
/* 804D3448  39 20 00 00 */	li r9, 0
/* 804D344C  4B B7 8D CD */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_804D3450:
/* 804D3450  39 61 00 70 */	addi r11, r1, 0x70
/* 804D3454  4B E8 ED C9 */	bl _restgpr_26
/* 804D3458  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804D345C  7C 08 03 A6 */	mtlr r0
/* 804D3460  38 21 00 70 */	addi r1, r1, 0x70
/* 804D3464  4E 80 00 20 */	blr 
