lbl_807F31C0:
/* 807F31C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807F31C4  7C 08 02 A6 */	mflr r0
/* 807F31C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 807F31CC  39 61 00 40 */	addi r11, r1, 0x40
/* 807F31D0  4B B6 EF FD */	bl _savegpr_25
/* 807F31D4  7C 7D 1B 78 */	mr r29, r3
/* 807F31D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F31DC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F31E0  83 FB 5D AC */	lwz r31, 0x5dac(r27)
/* 807F31E4  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 807F31E8  2C 00 00 00 */	cmpwi r0, 0
/* 807F31EC  40 82 02 28 */	bne lbl_807F3414
/* 807F31F0  38 7D 08 80 */	addi r3, r29, 0x880
/* 807F31F4  4B 89 06 3D */	bl Move__10dCcD_GSttsFv
/* 807F31F8  80 1D 0A 34 */	lwz r0, 0xa34(r29)
/* 807F31FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F3200  41 82 00 74 */	beq lbl_807F3274
/* 807F3204  38 00 00 06 */	li r0, 6
/* 807F3208  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 807F320C  38 00 00 07 */	li r0, 7
/* 807F3210  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807F3214  38 00 00 00 */	li r0, 0
/* 807F3218  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F321C  38 60 00 0A */	li r3, 0xa
/* 807F3220  B0 7D 06 9C */	sth r3, 0x69c(r29)
/* 807F3224  38 00 00 64 */	li r0, 0x64
/* 807F3228  B0 1D 06 9E */	sth r0, 0x69e(r29)
/* 807F322C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807F3230  B0 1D 06 84 */	sth r0, 0x684(r29)
/* 807F3234  98 7D 12 34 */	stb r3, 0x1234(r29)
/* 807F3238  3C 60 80 7F */	lis r3, lit_3789@ha /* 0x807F7A04@ha */
/* 807F323C  C0 23 7A 04 */	lfs f1, lit_3789@l(r3)  /* 0x807F7A04@l */
/* 807F3240  D0 21 00 08 */	stfs f1, 8(r1)
/* 807F3244  3C 60 80 7F */	lis r3, lit_3790@ha /* 0x807F7A08@ha */
/* 807F3248  C0 03 7A 08 */	lfs f0, lit_3790@l(r3)  /* 0x807F7A08@l */
/* 807F324C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807F3250  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807F3254  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F3258  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F325C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807F3260  38 80 00 04 */	li r4, 4
/* 807F3264  38 A0 00 1F */	li r5, 0x1f
/* 807F3268  38 C1 00 08 */	addi r6, r1, 8
/* 807F326C  4B 87 C7 B9 */	bl StartShock__12dVibration_cFii4cXyz
/* 807F3270  48 00 01 A4 */	b lbl_807F3414
lbl_807F3274:
/* 807F3274  3B C0 00 00 */	li r30, 0
/* 807F3278  3B 20 00 00 */	li r25, 0
/* 807F327C  3B 80 00 00 */	li r28, 0
lbl_807F3280:
/* 807F3280  3B 5C 0B 14 */	addi r26, r28, 0xb14
/* 807F3284  7F 5D D2 14 */	add r26, r29, r26
/* 807F3288  7F 43 D3 78 */	mr r3, r26
/* 807F328C  4B 89 11 D5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807F3290  28 03 00 00 */	cmplwi r3, 0
/* 807F3294  41 82 00 B4 */	beq lbl_807F3348
/* 807F3298  38 00 00 0A */	li r0, 0xa
/* 807F329C  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 807F32A0  7F 43 D3 78 */	mr r3, r26
/* 807F32A4  4B 89 12 55 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807F32A8  90 7D 0F F4 */	stw r3, 0xff4(r29)
/* 807F32AC  80 7D 0F F4 */	lwz r3, 0xff4(r29)
/* 807F32B0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 807F32B4  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 807F32B8  41 82 00 0C */	beq lbl_807F32C4
/* 807F32BC  3B C0 00 01 */	li r30, 1
/* 807F32C0  48 00 00 98 */	b lbl_807F3358
lbl_807F32C4:
/* 807F32C4  54 60 06 75 */	rlwinm. r0, r3, 0, 0x19, 0x1a
/* 807F32C8  40 82 00 10 */	bne lbl_807F32D8
/* 807F32CC  A8 1D 06 6E */	lha r0, 0x66e(r29)
/* 807F32D0  2C 00 00 06 */	cmpwi r0, 6
/* 807F32D4  40 82 00 2C */	bne lbl_807F3300
lbl_807F32D8:
/* 807F32D8  38 7D 0F F4 */	addi r3, r29, 0xff4
/* 807F32DC  4B 89 47 7D */	bl at_power_check__FP11dCcU_AtInfo
/* 807F32E0  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 807F32E4  88 03 05 68 */	lbz r0, 0x568(r3)
/* 807F32E8  28 00 00 00 */	cmplwi r0, 0
/* 807F32EC  41 82 00 0C */	beq lbl_807F32F8
/* 807F32F0  3B C0 00 01 */	li r30, 1
/* 807F32F4  48 00 00 64 */	b lbl_807F3358
lbl_807F32F8:
/* 807F32F8  3B C0 00 02 */	li r30, 2
/* 807F32FC  48 00 00 5C */	b lbl_807F3358
lbl_807F3300:
/* 807F3300  38 00 00 07 */	li r0, 7
/* 807F3304  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807F3308  38 00 00 00 */	li r0, 0
/* 807F330C  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F3310  38 00 00 0A */	li r0, 0xa
/* 807F3314  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 807F3318  38 00 00 64 */	li r0, 0x64
/* 807F331C  B0 1D 06 9E */	sth r0, 0x69e(r29)
/* 807F3320  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807F3324  B0 1D 06 84 */	sth r0, 0x684(r29)
/* 807F3328  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F332C  80 9D 0F F4 */	lwz r4, 0xff4(r29)
/* 807F3330  38 A0 00 2D */	li r5, 0x2d
/* 807F3334  38 C0 00 00 */	li r6, 0
/* 807F3338  4B 89 41 DD */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 807F333C  38 00 00 0A */	li r0, 0xa
/* 807F3340  98 1D 12 34 */	stb r0, 0x1234(r29)
/* 807F3344  48 00 00 14 */	b lbl_807F3358
lbl_807F3348:
/* 807F3348  3B 39 00 01 */	addi r25, r25, 1
/* 807F334C  2C 19 00 04 */	cmpwi r25, 4
/* 807F3350  3B 9C 01 38 */	addi r28, r28, 0x138
/* 807F3354  41 80 FF 2C */	blt lbl_807F3280
lbl_807F3358:
/* 807F3358  7F C0 07 75 */	extsb. r0, r30
/* 807F335C  40 82 00 90 */	bne lbl_807F33EC
/* 807F3360  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 807F3364  4B 89 10 FD */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807F3368  28 03 00 00 */	cmplwi r3, 0
/* 807F336C  41 82 00 80 */	beq lbl_807F33EC
/* 807F3370  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 807F3374  4B 89 11 85 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807F3378  90 7D 0F F4 */	stw r3, 0xff4(r29)
/* 807F337C  80 7D 0F F4 */	lwz r3, 0xff4(r29)
/* 807F3380  4B A7 06 C9 */	bl GetAc__8cCcD_ObjFv
/* 807F3384  80 7D 0F F4 */	lwz r3, 0xff4(r29)
/* 807F3388  80 83 00 10 */	lwz r4, 0x10(r3)
/* 807F338C  3C 60 08 01 */	lis r3, 0x0801 /* 0x08010060@ha */
/* 807F3390  38 03 00 60 */	addi r0, r3, 0x0060 /* 0x08010060@l */
/* 807F3394  7C 80 00 39 */	and. r0, r4, r0
/* 807F3398  41 82 00 0C */	beq lbl_807F33A4
/* 807F339C  3B C0 00 02 */	li r30, 2
/* 807F33A0  48 00 00 4C */	b lbl_807F33EC
lbl_807F33A4:
/* 807F33A4  38 00 00 06 */	li r0, 6
/* 807F33A8  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 807F33AC  38 00 00 07 */	li r0, 7
/* 807F33B0  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807F33B4  38 00 00 00 */	li r0, 0
/* 807F33B8  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F33BC  38 60 00 0A */	li r3, 0xa
/* 807F33C0  B0 7D 06 9C */	sth r3, 0x69c(r29)
/* 807F33C4  38 00 00 64 */	li r0, 0x64
/* 807F33C8  B0 1D 06 9E */	sth r0, 0x69e(r29)
/* 807F33CC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807F33D0  B0 1D 06 84 */	sth r0, 0x684(r29)
/* 807F33D4  98 7D 12 34 */	stb r3, 0x1234(r29)
/* 807F33D8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F33DC  80 9D 0F F4 */	lwz r4, 0xff4(r29)
/* 807F33E0  38 A0 00 2D */	li r5, 0x2d
/* 807F33E4  38 C0 00 00 */	li r6, 0
/* 807F33E8  4B 89 41 2D */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
lbl_807F33EC:
/* 807F33EC  7F C0 07 75 */	extsb. r0, r30
/* 807F33F0  41 82 00 24 */	beq lbl_807F3414
/* 807F33F4  7F A3 EB 78 */	mr r3, r29
/* 807F33F8  4B FF F8 81 */	bl yd_disappear__FP10e_yd_class
/* 807F33FC  7F C0 07 74 */	extsb r0, r30
/* 807F3400  2C 00 00 01 */	cmpwi r0, 1
/* 807F3404  40 82 00 10 */	bne lbl_807F3414
/* 807F3408  38 00 00 04 */	li r0, 4
/* 807F340C  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 807F3410  98 03 11 25 */	stb r0, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
lbl_807F3414:
/* 807F3414  39 61 00 40 */	addi r11, r1, 0x40
/* 807F3418  4B B6 EE 01 */	bl _restgpr_25
/* 807F341C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807F3420  7C 08 03 A6 */	mtlr r0
/* 807F3424  38 21 00 40 */	addi r1, r1, 0x40
/* 807F3428  4E 80 00 20 */	blr 
