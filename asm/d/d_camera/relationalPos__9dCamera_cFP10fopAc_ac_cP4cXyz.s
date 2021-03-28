lbl_80164D6C:
/* 80164D6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80164D70  7C 08 02 A6 */	mflr r0
/* 80164D74  90 01 00 44 */	stw r0, 0x44(r1)
/* 80164D78  39 61 00 40 */	addi r11, r1, 0x40
/* 80164D7C  48 1F D4 5D */	bl _savegpr_28
/* 80164D80  7C 7C 1B 78 */	mr r28, r3
/* 80164D84  7C 9D 23 78 */	mr r29, r4
/* 80164D88  7C BE 2B 79 */	or. r30, r5, r5
/* 80164D8C  7C DF 33 78 */	mr r31, r6
/* 80164D90  40 82 00 24 */	bne lbl_80164DB4
/* 80164D94  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 80164D98  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 80164D9C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80164DA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80164DA4  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80164DA8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80164DAC  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80164DB0  48 00 00 58 */	b lbl_80164E08
lbl_80164DB4:
/* 80164DB4  38 61 00 08 */	addi r3, r1, 8
/* 80164DB8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80164DBC  48 10 C1 DD */	bl __ct__7cSAngleFs
/* 80164DC0  38 61 00 18 */	addi r3, r1, 0x18
/* 80164DC4  7F E4 FB 78 */	mr r4, r31
/* 80164DC8  38 A1 00 08 */	addi r5, r1, 8
/* 80164DCC  4B F2 35 B9 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 80164DD0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80164DD4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80164DD8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80164DDC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80164DE0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80164DE4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80164DE8  38 61 00 0C */	addi r3, r1, 0xc
/* 80164DEC  7F A4 EB 78 */	mr r4, r29
/* 80164DF0  7F C5 F3 78 */	mr r5, r30
/* 80164DF4  4B F3 29 29 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80164DF8  7F 83 E3 78 */	mr r3, r28
/* 80164DFC  38 81 00 0C */	addi r4, r1, 0xc
/* 80164E00  38 A1 00 24 */	addi r5, r1, 0x24
/* 80164E04  48 10 1C E1 */	bl __pl__4cXyzCFRC3Vec
lbl_80164E08:
/* 80164E08  39 61 00 40 */	addi r11, r1, 0x40
/* 80164E0C  48 1F D4 19 */	bl _restgpr_28
/* 80164E10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80164E14  7C 08 03 A6 */	mtlr r0
/* 80164E18  38 21 00 40 */	addi r1, r1, 0x40
/* 80164E1C  4E 80 00 20 */	blr 
