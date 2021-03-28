lbl_800D31B8:
/* 800D31B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D31BC  7C 08 02 A6 */	mflr r0
/* 800D31C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D31C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D31C8  93 C1 00 08 */	stw r30, 8(r1)
/* 800D31CC  7C 7E 1B 78 */	mr r30, r3
/* 800D31D0  4B FE 6D 81 */	bl checkGroundSpecialMode__9daAlink_cFv
/* 800D31D4  2C 03 00 00 */	cmpwi r3, 0
/* 800D31D8  41 82 00 0C */	beq lbl_800D31E4
/* 800D31DC  38 60 00 01 */	li r3, 1
/* 800D31E0  48 00 02 E0 */	b lbl_800D34C0
lbl_800D31E4:
/* 800D31E4  7F C3 F3 78 */	mr r3, r30
/* 800D31E8  38 80 00 01 */	li r4, 1
/* 800D31EC  4B FE 80 C5 */	bl setBodyAngleXReadyAnime__9daAlink_cFi
/* 800D31F0  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800D31F4  7F C3 F3 78 */	mr r3, r30
/* 800D31F8  4B FF EF 05 */	bl setComboReserb__9daAlink_cFv
/* 800D31FC  7F C3 F3 78 */	mr r3, r30
/* 800D3200  4B FF F4 85 */	bl checkCutTurnCharge__9daAlink_cFv
/* 800D3204  7F C3 F3 78 */	mr r3, r30
/* 800D3208  4B FF FA 4D */	bl checkCutAtnActorChange__9daAlink_cFv
/* 800D320C  38 7E 33 98 */	addi r3, r30, 0x3398
/* 800D3210  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D3214  3C 80 80 39 */	lis r4, m__18daAlinkHIO_move_c0@ha
/* 800D3218  38 84 D6 BC */	addi r4, r4, m__18daAlinkHIO_move_c0@l
/* 800D321C  C0 44 00 38 */	lfs f2, 0x38(r4)
/* 800D3220  48 19 D5 21 */	bl cLib_chaseF__FPfff
/* 800D3224  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800D3228  64 00 08 00 */	oris r0, r0, 0x800
/* 800D322C  90 1E 05 88 */	stw r0, 0x588(r30)
/* 800D3230  38 00 00 04 */	li r0, 4
/* 800D3234  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800D3238  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800D323C  2C 00 00 00 */	cmpwi r0, 0
/* 800D3240  41 82 00 64 */	beq lbl_800D32A4
/* 800D3244  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800D3248  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800D324C  41 82 00 58 */	beq lbl_800D32A4
/* 800D3250  7F C3 F3 78 */	mr r3, r30
/* 800D3254  4B FF F4 99 */	bl getCutDirection__9daAlink_cFv
/* 800D3258  2C 03 00 03 */	cmpwi r3, 3
/* 800D325C  40 82 00 20 */	bne lbl_800D327C
/* 800D3260  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 800D3264  28 00 00 04 */	cmplwi r0, 4
/* 800D3268  40 82 00 14 */	bne lbl_800D327C
/* 800D326C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D3270  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 800D3274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D3278  41 81 00 28 */	bgt lbl_800D32A0
lbl_800D327C:
/* 800D327C  2C 03 00 02 */	cmpwi r3, 2
/* 800D3280  40 82 00 24 */	bne lbl_800D32A4
/* 800D3284  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 800D3288  28 00 00 03 */	cmplwi r0, 3
/* 800D328C  40 82 00 18 */	bne lbl_800D32A4
/* 800D3290  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D3294  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 800D3298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D329C  40 81 00 08 */	ble lbl_800D32A4
lbl_800D32A0:
/* 800D32A0  B0 7E 30 0A */	sth r3, 0x300a(r30)
lbl_800D32A4:
/* 800D32A4  7F E3 FB 78 */	mr r3, r31
/* 800D32A8  48 08 B2 25 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D32AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D32B0  41 82 00 4C */	beq lbl_800D32FC
/* 800D32B4  7F C3 F3 78 */	mr r3, r30
/* 800D32B8  38 80 00 01 */	li r4, 1
/* 800D32BC  4B FF E1 75 */	bl resetCombo__9daAlink_cFi
/* 800D32C0  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800D32C4  28 00 00 24 */	cmplwi r0, 0x24
/* 800D32C8  41 82 00 0C */	beq lbl_800D32D4
/* 800D32CC  28 00 00 54 */	cmplwi r0, 0x54
/* 800D32D0  40 82 00 1C */	bne lbl_800D32EC
lbl_800D32D4:
/* 800D32D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D32D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D32DC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800D32E0  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 800D32E4  4B F7 4E 99 */	bl cutEnd__16dEvent_manager_cFi
/* 800D32E8  48 00 01 D4 */	b lbl_800D34BC
lbl_800D32EC:
/* 800D32EC  7F C3 F3 78 */	mr r3, r30
/* 800D32F0  38 80 00 00 */	li r4, 0
/* 800D32F4  4B FE 6D DD */	bl checkNextAction__9daAlink_cFi
/* 800D32F8  48 00 01 C4 */	b lbl_800D34BC
lbl_800D32FC:
/* 800D32FC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D3300  C0 1E 34 84 */	lfs f0, 0x3484(r30)
/* 800D3304  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D3308  41 81 00 10 */	bgt lbl_800D3318
/* 800D330C  A8 1E 30 0A */	lha r0, 0x300a(r30)
/* 800D3310  2C 00 00 04 */	cmpwi r0, 4
/* 800D3314  41 82 00 18 */	beq lbl_800D332C
lbl_800D3318:
/* 800D3318  7F C3 F3 78 */	mr r3, r30
/* 800D331C  38 80 00 03 */	li r4, 3
/* 800D3320  4B FF F4 41 */	bl checkCutCancelNextMode__9daAlink_cFi
/* 800D3324  2C 03 00 00 */	cmpwi r3, 0
/* 800D3328  40 82 01 94 */	bne lbl_800D34BC
lbl_800D332C:
/* 800D332C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D3330  C0 1E 34 84 */	lfs f0, 0x3484(r30)
/* 800D3334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D3338  40 81 00 10 */	ble lbl_800D3348
/* 800D333C  7F C3 F3 78 */	mr r3, r30
/* 800D3340  38 80 00 01 */	li r4, 1
/* 800D3344  4B FF E0 ED */	bl resetCombo__9daAlink_cFi
lbl_800D3348:
/* 800D3348  7F C3 F3 78 */	mr r3, r30
/* 800D334C  80 9E 31 98 */	lwz r4, 0x3198(r30)
/* 800D3350  4B FF E6 79 */	bl changeCutReverseProc__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800D3354  2C 03 00 00 */	cmpwi r3, 0
/* 800D3358  41 82 00 0C */	beq lbl_800D3364
/* 800D335C  38 60 00 01 */	li r3, 1
/* 800D3360  48 00 01 60 */	b lbl_800D34C0
lbl_800D3364:
/* 800D3364  7F C3 F3 78 */	mr r3, r30
/* 800D3368  A8 9E 30 10 */	lha r4, 0x3010(r30)
/* 800D336C  4B FE 03 C9 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 800D3370  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D3374  41 82 00 30 */	beq lbl_800D33A4
/* 800D3378  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800D337C  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800D3380  7F C3 F3 78 */	mr r3, r30
/* 800D3384  4B FE 02 AD */	bl getShapeAngleYAtnActor__9daAlink_cFv
/* 800D3388  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 800D338C  48 19 DA 99 */	bl cLib_distanceAngleS__Fss
/* 800D3390  2C 03 08 00 */	cmpwi r3, 0x800
/* 800D3394  40 80 00 28 */	bge lbl_800D33BC
/* 800D3398  38 00 00 01 */	li r0, 1
/* 800D339C  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800D33A0  48 00 00 1C */	b lbl_800D33BC
lbl_800D33A4:
/* 800D33A4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 800D33A8  A8 9E 30 0C */	lha r4, 0x300c(r30)
/* 800D33AC  38 A0 00 02 */	li r5, 2
/* 800D33B0  38 C0 20 00 */	li r6, 0x2000
/* 800D33B4  38 E0 08 00 */	li r7, 0x800
/* 800D33B8  48 19 D1 89 */	bl cLib_addCalcAngleS__FPsssss
lbl_800D33BC:
/* 800D33BC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800D33C0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800D33C4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D33C8  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800D33CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D33D0  4C 41 13 82 */	cror 2, 1, 2
/* 800D33D4  40 82 00 40 */	bne lbl_800D3414
/* 800D33D8  C0 1E 34 7C */	lfs f0, 0x347c(r30)
/* 800D33DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D33E0  40 80 00 34 */	bge lbl_800D3414
/* 800D33E4  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800D33E8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D33EC  40 82 00 1C */	bne lbl_800D3408
/* 800D33F0  7F C3 F3 78 */	mr r3, r30
/* 800D33F4  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020002@ha */
/* 800D33F8  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00020002@l */
/* 800D33FC  4B FE BC F1 */	bl seStartSwordCut__9daAlink_cFUl
/* 800D3400  C0 1E 34 80 */	lfs f0, 0x3480(r30)
/* 800D3404  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_800D3408:
/* 800D3408  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800D340C  60 00 00 02 */	ori r0, r0, 2
/* 800D3410  90 1E 05 80 */	stw r0, 0x580(r30)
lbl_800D3414:
/* 800D3414  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 800D3418  28 00 00 04 */	cmplwi r0, 4
/* 800D341C  40 82 00 40 */	bne lbl_800D345C
/* 800D3420  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D3424  C0 02 93 20 */	lfs f0, lit_7449(r2)
/* 800D3428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D342C  4C 41 13 82 */	cror 2, 1, 2
/* 800D3430  40 82 00 10 */	bne lbl_800D3440
/* 800D3434  38 00 00 00 */	li r0, 0
/* 800D3438  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800D343C  48 00 00 80 */	b lbl_800D34BC
lbl_800D3440:
/* 800D3440  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 800D3444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D3448  4C 41 13 82 */	cror 2, 1, 2
/* 800D344C  40 82 00 70 */	bne lbl_800D34BC
/* 800D3450  38 00 00 64 */	li r0, 0x64
/* 800D3454  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800D3458  48 00 00 64 */	b lbl_800D34BC
lbl_800D345C:
/* 800D345C  28 00 00 03 */	cmplwi r0, 3
/* 800D3460  40 82 00 40 */	bne lbl_800D34A0
/* 800D3464  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D3468  C0 02 93 28 */	lfs f0, lit_7451(r2)
/* 800D346C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D3470  4C 41 13 82 */	cror 2, 1, 2
/* 800D3474  40 82 00 10 */	bne lbl_800D3484
/* 800D3478  38 00 00 00 */	li r0, 0
/* 800D347C  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800D3480  48 00 00 3C */	b lbl_800D34BC
lbl_800D3484:
/* 800D3484  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 800D3488  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D348C  4C 41 13 82 */	cror 2, 1, 2
/* 800D3490  40 82 00 2C */	bne lbl_800D34BC
/* 800D3494  38 00 00 64 */	li r0, 0x64
/* 800D3498  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800D349C  48 00 00 20 */	b lbl_800D34BC
lbl_800D34A0:
/* 800D34A0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D34A4  C0 02 93 20 */	lfs f0, lit_7449(r2)
/* 800D34A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D34AC  4C 41 13 82 */	cror 2, 1, 2
/* 800D34B0  40 82 00 0C */	bne lbl_800D34BC
/* 800D34B4  38 00 00 00 */	li r0, 0
/* 800D34B8  98 1E 2F 92 */	stb r0, 0x2f92(r30)
lbl_800D34BC:
/* 800D34BC  38 60 00 01 */	li r3, 1
lbl_800D34C0:
/* 800D34C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D34C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D34C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D34CC  7C 08 03 A6 */	mtlr r0
/* 800D34D0  38 21 00 10 */	addi r1, r1, 0x10
/* 800D34D4  4E 80 00 20 */	blr 
