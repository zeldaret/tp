lbl_800CBA38:
/* 800CBA38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CBA3C  7C 08 02 A6 */	mflr r0
/* 800CBA40  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CBA44  39 61 00 20 */	addi r11, r1, 0x20
/* 800CBA48  48 29 67 95 */	bl _savegpr_29
/* 800CBA4C  7C 7E 1B 78 */	mr r30, r3
/* 800CBA50  3B E0 00 00 */	li r31, 0
/* 800CBA54  A8 63 2F F8 */	lha r3, 0x2ff8(r3)
/* 800CBA58  A8 1E 2F FA */	lha r0, 0x2ffa(r30)
/* 800CBA5C  7C 03 00 00 */	cmpw r3, r0
/* 800CBA60  41 82 00 64 */	beq lbl_800CBAC4
/* 800CBA64  A8 1E 2F F6 */	lha r0, 0x2ff6(r30)
/* 800CBA68  7C 03 00 50 */	subf r0, r3, r0
/* 800CBA6C  7C 1D 07 34 */	extsh r29, r0
/* 800CBA70  7F A3 EB 78 */	mr r3, r29
/* 800CBA74  48 29 96 5D */	bl abs
/* 800CBA78  2C 03 40 00 */	cmpwi r3, 0x4000
/* 800CBA7C  40 80 00 64 */	bge lbl_800CBAE0
/* 800CBA80  7F A0 07 35 */	extsh. r0, r29
/* 800CBA84  41 80 00 14 */	blt lbl_800CBA98
/* 800CBA88  A8 7E 2F F8 */	lha r3, 0x2ff8(r30)
/* 800CBA8C  38 03 C0 00 */	addi r0, r3, -16384
/* 800CBA90  B0 1E 2F F8 */	sth r0, 0x2ff8(r30)
/* 800CBA94  48 00 00 10 */	b lbl_800CBAA4
lbl_800CBA98:
/* 800CBA98  A8 7E 2F F8 */	lha r3, 0x2ff8(r30)
/* 800CBA9C  38 03 40 00 */	addi r0, r3, 0x4000
/* 800CBAA0  B0 1E 2F F8 */	sth r0, 0x2ff8(r30)
lbl_800CBAA4:
/* 800CBAA4  A8 7E 2F F8 */	lha r3, 0x2ff8(r30)
/* 800CBAA8  A8 9E 2F FA */	lha r4, 0x2ffa(r30)
/* 800CBAAC  48 1A 53 79 */	bl cLib_distanceAngleS__Fss
/* 800CBAB0  2C 03 01 00 */	cmpwi r3, 0x100
/* 800CBAB4  40 80 00 2C */	bge lbl_800CBAE0
/* 800CBAB8  A8 1E 2F FA */	lha r0, 0x2ffa(r30)
/* 800CBABC  B0 1E 2F F8 */	sth r0, 0x2ff8(r30)
/* 800CBAC0  48 00 00 20 */	b lbl_800CBAE0
lbl_800CBAC4:
/* 800CBAC4  A8 9E 2F F6 */	lha r4, 0x2ff6(r30)
/* 800CBAC8  48 1A 53 5D */	bl cLib_distanceAngleS__Fss
/* 800CBACC  2C 03 16 00 */	cmpwi r3, 0x1600
/* 800CBAD0  40 80 00 10 */	bge lbl_800CBAE0
/* 800CBAD4  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800CBAD8  60 00 08 00 */	ori r0, r0, 0x800
/* 800CBADC  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_800CBAE0:
/* 800CBAE0  38 7E 2F F6 */	addi r3, r30, 0x2ff6
/* 800CBAE4  A8 9E 2F F8 */	lha r4, 0x2ff8(r30)
/* 800CBAE8  38 A0 00 04 */	li r5, 4
/* 800CBAEC  38 C0 18 00 */	li r6, 0x1800
/* 800CBAF0  38 E0 02 00 */	li r7, 0x200
/* 800CBAF4  48 1A 4A 4D */	bl cLib_addCalcAngleS__FPsssss
/* 800CBAF8  7C 60 07 35 */	extsh. r0, r3
/* 800CBAFC  40 82 00 4C */	bne lbl_800CBB48
/* 800CBB00  38 7E 2F F4 */	addi r3, r30, 0x2ff4
/* 800CBB04  38 80 40 00 */	li r4, 0x4000
/* 800CBB08  38 A0 06 50 */	li r5, 0x650
/* 800CBB0C  48 1A 4B C5 */	bl cLib_chaseS__FPsss
/* 800CBB10  2C 03 00 00 */	cmpwi r3, 0
/* 800CBB14  41 82 00 18 */	beq lbl_800CBB2C
/* 800CBB18  38 60 00 04 */	li r3, 4
/* 800CBB1C  48 0E 11 D9 */	bl dKy_shadow_mode_reset__FUc
/* 800CBB20  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800CBB24  D0 1E 04 50 */	stfs f0, 0x450(r30)
/* 800CBB28  48 00 00 0C */	b lbl_800CBB34
lbl_800CBB2C:
/* 800CBB2C  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 800CBB30  D0 1E 04 50 */	stfs f0, 0x450(r30)
lbl_800CBB34:
/* 800CBB34  A8 1E 2F F4 */	lha r0, 0x2ff4(r30)
/* 800CBB38  2C 00 30 00 */	cmpwi r0, 0x3000
/* 800CBB3C  40 81 00 5C */	ble lbl_800CBB98
/* 800CBB40  3B E0 00 01 */	li r31, 1
/* 800CBB44  48 00 00 54 */	b lbl_800CBB98
lbl_800CBB48:
/* 800CBB48  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800CBB4C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800CBB50  40 82 00 18 */	bne lbl_800CBB68
/* 800CBB54  38 7E 2F F4 */	addi r3, r30, 0x2ff4
/* 800CBB58  38 80 26 00 */	li r4, 0x2600
/* 800CBB5C  38 A0 08 00 */	li r5, 0x800
/* 800CBB60  48 1A 4B 71 */	bl cLib_chaseS__FPsss
/* 800CBB64  48 00 00 24 */	b lbl_800CBB88
lbl_800CBB68:
/* 800CBB68  38 7E 2F FC */	addi r3, r30, 0x2ffc
/* 800CBB6C  38 80 08 00 */	li r4, 0x800
/* 800CBB70  38 A0 01 00 */	li r5, 0x100
/* 800CBB74  48 1A 4B 5D */	bl cLib_chaseS__FPsss
/* 800CBB78  38 7E 2F F4 */	addi r3, r30, 0x2ff4
/* 800CBB7C  38 80 00 00 */	li r4, 0
/* 800CBB80  A8 BE 2F FC */	lha r5, 0x2ffc(r30)
/* 800CBB84  48 1A 4B 4D */	bl cLib_chaseS__FPsss
lbl_800CBB88:
/* 800CBB88  38 7E 04 50 */	addi r3, r30, 0x450
/* 800CBB8C  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 800CBB90  C0 42 93 A0 */	lfs f2, lit_9054(r2)
/* 800CBB94  48 1A 4B AD */	bl cLib_chaseF__FPfff
lbl_800CBB98:
/* 800CBB98  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800CBB9C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800CBBA0  38 83 00 04 */	addi r4, r3, 4
/* 800CBBA4  A8 1E 2F F4 */	lha r0, 0x2ff4(r30)
/* 800CBBA8  54 05 04 38 */	rlwinm r5, r0, 0, 0x10, 0x1c
/* 800CBBAC  7C 04 2C 2E */	lfsx f0, r4, r5
/* 800CBBB0  C0 42 99 38 */	lfs f2, lit_75939(r2)
/* 800CBBB4  EC 82 00 32 */	fmuls f4, f2, f0
/* 800CBBB8  A8 1E 2F F6 */	lha r0, 0x2ff6(r30)
/* 800CBBBC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800CBBC0  7C 04 04 2E */	lfsx f0, r4, r0
/* 800CBBC4  C0 3E 38 3C */	lfs f1, 0x383c(r30)
/* 800CBBC8  EC 04 00 32 */	fmuls f0, f4, f0
/* 800CBBCC  EC 61 00 2A */	fadds f3, f1, f0
/* 800CBBD0  7C 03 2C 2E */	lfsx f0, r3, r5
/* 800CBBD4  C0 3E 34 54 */	lfs f1, 0x3454(r30)
/* 800CBBD8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800CBBDC  EC 41 00 2A */	fadds f2, f1, f0
/* 800CBBE0  7C 03 04 2E */	lfsx f0, r3, r0
/* 800CBBE4  C0 3E 38 34 */	lfs f1, 0x3834(r30)
/* 800CBBE8  EC 04 00 32 */	fmuls f0, f4, f0
/* 800CBBEC  EC 01 00 2A */	fadds f0, f1, f0
/* 800CBBF0  D0 1E 04 44 */	stfs f0, 0x444(r30)
/* 800CBBF4  D0 5E 04 48 */	stfs f2, 0x448(r30)
/* 800CBBF8  D0 7E 04 4C */	stfs f3, 0x44c(r30)
/* 800CBBFC  7F E3 FB 78 */	mr r3, r31
/* 800CBC00  39 61 00 20 */	addi r11, r1, 0x20
/* 800CBC04  48 29 66 25 */	bl _restgpr_29
/* 800CBC08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CBC0C  7C 08 03 A6 */	mtlr r0
/* 800CBC10  38 21 00 20 */	addi r1, r1, 0x20
/* 800CBC14  4E 80 00 20 */	blr 
