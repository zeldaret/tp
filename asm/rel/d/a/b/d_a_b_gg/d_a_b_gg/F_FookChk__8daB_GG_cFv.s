lbl_805E31E4:
/* 805E31E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805E31E8  7C 08 02 A6 */	mflr r0
/* 805E31EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805E31F0  39 61 00 30 */	addi r11, r1, 0x30
/* 805E31F4  4B D7 EF E4 */	b _savegpr_28
/* 805E31F8  7C 7D 1B 78 */	mr r29, r3
/* 805E31FC  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805E3200  3B C3 D0 60 */	addi r30, r3, lit_3911@l
/* 805E3204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E3208  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 805E320C  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 805E3210  7F 83 E3 78 */	mr r3, r28
/* 805E3214  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805E3218  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 805E321C  7D 89 03 A6 */	mtctr r12
/* 805E3220  4E 80 04 21 */	bctrl 
/* 805E3224  7C 64 1B 79 */	or. r4, r3, r3
/* 805E3228  41 82 02 08 */	beq lbl_805E3430
/* 805E322C  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 805E3230  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E3234  A8 03 D7 30 */	lha r0, data_805ED730@l(r3)
/* 805E3238  7C 65 00 50 */	subf r3, r5, r0
/* 805E323C  3C 63 00 01 */	addis r3, r3, 1
/* 805E3240  38 03 80 00 */	addi r0, r3, -32768
/* 805E3244  7C 1C 07 34 */	extsh r28, r0
/* 805E3248  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805E324C  4B D6 41 50 */	b PSVECSquareDistance
/* 805E3250  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E3254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E3258  40 81 00 58 */	ble lbl_805E32B0
/* 805E325C  FC 00 08 34 */	frsqrte f0, f1
/* 805E3260  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 805E3264  FC 44 00 32 */	fmul f2, f4, f0
/* 805E3268  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 805E326C  FC 00 00 32 */	fmul f0, f0, f0
/* 805E3270  FC 01 00 32 */	fmul f0, f1, f0
/* 805E3274  FC 03 00 28 */	fsub f0, f3, f0
/* 805E3278  FC 02 00 32 */	fmul f0, f2, f0
/* 805E327C  FC 44 00 32 */	fmul f2, f4, f0
/* 805E3280  FC 00 00 32 */	fmul f0, f0, f0
/* 805E3284  FC 01 00 32 */	fmul f0, f1, f0
/* 805E3288  FC 03 00 28 */	fsub f0, f3, f0
/* 805E328C  FC 02 00 32 */	fmul f0, f2, f0
/* 805E3290  FC 44 00 32 */	fmul f2, f4, f0
/* 805E3294  FC 00 00 32 */	fmul f0, f0, f0
/* 805E3298  FC 01 00 32 */	fmul f0, f1, f0
/* 805E329C  FC 03 00 28 */	fsub f0, f3, f0
/* 805E32A0  FC 02 00 32 */	fmul f0, f2, f0
/* 805E32A4  FC 21 00 32 */	fmul f1, f1, f0
/* 805E32A8  FC 20 08 18 */	frsp f1, f1
/* 805E32AC  48 00 00 88 */	b lbl_805E3334
lbl_805E32B0:
/* 805E32B0  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 805E32B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E32B8  40 80 00 10 */	bge lbl_805E32C8
/* 805E32BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E32C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805E32C4  48 00 00 70 */	b lbl_805E3334
lbl_805E32C8:
/* 805E32C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 805E32CC  80 81 00 08 */	lwz r4, 8(r1)
/* 805E32D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E32D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E32D8  7C 03 00 00 */	cmpw r3, r0
/* 805E32DC  41 82 00 14 */	beq lbl_805E32F0
/* 805E32E0  40 80 00 40 */	bge lbl_805E3320
/* 805E32E4  2C 03 00 00 */	cmpwi r3, 0
/* 805E32E8  41 82 00 20 */	beq lbl_805E3308
/* 805E32EC  48 00 00 34 */	b lbl_805E3320
lbl_805E32F0:
/* 805E32F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E32F4  41 82 00 0C */	beq lbl_805E3300
/* 805E32F8  38 00 00 01 */	li r0, 1
/* 805E32FC  48 00 00 28 */	b lbl_805E3324
lbl_805E3300:
/* 805E3300  38 00 00 02 */	li r0, 2
/* 805E3304  48 00 00 20 */	b lbl_805E3324
lbl_805E3308:
/* 805E3308  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E330C  41 82 00 0C */	beq lbl_805E3318
/* 805E3310  38 00 00 05 */	li r0, 5
/* 805E3314  48 00 00 10 */	b lbl_805E3324
lbl_805E3318:
/* 805E3318  38 00 00 03 */	li r0, 3
/* 805E331C  48 00 00 08 */	b lbl_805E3324
lbl_805E3320:
/* 805E3320  38 00 00 04 */	li r0, 4
lbl_805E3324:
/* 805E3324  2C 00 00 01 */	cmpwi r0, 1
/* 805E3328  40 82 00 0C */	bne lbl_805E3334
/* 805E332C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E3330  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805E3334:
/* 805E3334  C0 1E 02 90 */	lfs f0, 0x290(r30)
/* 805E3338  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E333C  40 80 00 F4 */	bge lbl_805E3430
/* 805E3340  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E3344  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805E3348  81 8C 02 50 */	lwz r12, 0x250(r12)
/* 805E334C  7D 89 03 A6 */	mtctr r12
/* 805E3350  4E 80 04 21 */	bctrl 
/* 805E3354  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E3358  41 82 00 D8 */	beq lbl_805E3430
/* 805E335C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E3360  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805E3364  81 8C 02 4C */	lwz r12, 0x24c(r12)
/* 805E3368  7D 89 03 A6 */	mtctr r12
/* 805E336C  4E 80 04 21 */	bctrl 
/* 805E3370  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E3374  40 82 00 BC */	bne lbl_805E3430
/* 805E3378  2C 1C 05 00 */	cmpwi r28, 0x500
/* 805E337C  40 80 00 B4 */	bge lbl_805E3430
/* 805E3380  2C 1C FB 00 */	cmpwi r28, -1280
/* 805E3384  40 81 00 AC */	ble lbl_805E3430
/* 805E3388  38 00 00 02 */	li r0, 2
/* 805E338C  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E3390  38 00 00 1E */	li r0, 0x1e
/* 805E3394  B0 1D 05 DA */	sth r0, 0x5da(r29)
/* 805E3398  38 00 00 32 */	li r0, 0x32
/* 805E339C  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 805E33A0  C0 1E 02 94 */	lfs f0, 0x294(r30)
/* 805E33A4  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E33A8  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 805E33AC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E33B0  C0 1E 02 98 */	lfs f0, 0x298(r30)
/* 805E33B4  D0 1D 06 40 */	stfs f0, 0x640(r29)
/* 805E33B8  C0 1E 02 9C */	lfs f0, 0x29c(r30)
/* 805E33BC  D0 1D 06 44 */	stfs f0, 0x644(r29)
/* 805E33C0  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 805E33C4  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E33C8  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 805E33CC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E33D0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805E33D4  4B C8 45 80 */	b cM_rndF__Ff
/* 805E33D8  FC 00 08 1E */	fctiwz f0, f1
/* 805E33DC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805E33E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E33E4  2C 00 00 32 */	cmpwi r0, 0x32
/* 805E33E8  40 81 00 24 */	ble lbl_805E340C
/* 805E33EC  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E33F0  38 63 D7 30 */	addi r3, r3, data_805ED730@l
/* 805E33F4  A8 63 00 00 */	lha r3, 0(r3)
/* 805E33F8  38 03 40 00 */	addi r0, r3, 0x4000
/* 805E33FC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805E3400  38 00 00 01 */	li r0, 1
/* 805E3404  98 1D 05 B7 */	stb r0, 0x5b7(r29)
/* 805E3408  48 00 00 20 */	b lbl_805E3428
lbl_805E340C:
/* 805E340C  3C 60 80 5F */	lis r3, data_805ED730@ha
/* 805E3410  38 63 D7 30 */	addi r3, r3, data_805ED730@l
/* 805E3414  A8 63 00 00 */	lha r3, 0(r3)
/* 805E3418  38 03 C0 00 */	addi r0, r3, -16384
/* 805E341C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805E3420  38 00 00 00 */	li r0, 0
/* 805E3424  98 1D 05 B7 */	stb r0, 0x5b7(r29)
lbl_805E3428:
/* 805E3428  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805E342C  B0 1D 05 BA */	sth r0, 0x5ba(r29)
lbl_805E3430:
/* 805E3430  39 61 00 30 */	addi r11, r1, 0x30
/* 805E3434  4B D7 ED F0 */	b _restgpr_28
/* 805E3438  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805E343C  7C 08 03 A6 */	mtlr r0
/* 805E3440  38 21 00 30 */	addi r1, r1, 0x30
/* 805E3444  4E 80 00 20 */	blr 
