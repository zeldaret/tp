lbl_8068E644:
/* 8068E644  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8068E648  7C 08 02 A6 */	mflr r0
/* 8068E64C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8068E650  39 61 00 20 */	addi r11, r1, 0x20
/* 8068E654  4B CD 3B 89 */	bl _savegpr_29
/* 8068E658  7C 7D 1B 78 */	mr r29, r3
/* 8068E65C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068E660  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068E664  80 C5 5D AC */	lwz r6, 0x5dac(r5)
/* 8068E668  C0 03 06 80 */	lfs f0, 0x680(r3)
/* 8068E66C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8068E670  40 80 00 48 */	bge lbl_8068E6B8
/* 8068E674  A8 BD 06 84 */	lha r5, 0x684(r29)
/* 8068E678  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8068E67C  7C 05 00 50 */	subf r0, r5, r0
/* 8068E680  7C 05 07 34 */	extsh r5, r0
/* 8068E684  7C 80 07 34 */	extsh r0, r4
/* 8068E688  7C 05 00 00 */	cmpw r5, r0
/* 8068E68C  40 80 00 2C */	bge lbl_8068E6B8
/* 8068E690  7C 04 00 D0 */	neg r0, r4
/* 8068E694  7C 00 07 34 */	extsh r0, r0
/* 8068E698  7C 05 00 00 */	cmpw r5, r0
/* 8068E69C  40 81 00 1C */	ble lbl_8068E6B8
/* 8068E6A0  7C C4 33 78 */	mr r4, r6
/* 8068E6A4  4B 98 E7 59 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8068E6A8  2C 03 00 00 */	cmpwi r3, 0
/* 8068E6AC  40 82 00 0C */	bne lbl_8068E6B8
/* 8068E6B0  38 60 00 01 */	li r3, 1
/* 8068E6B4  48 00 00 3C */	b lbl_8068E6F0
lbl_8068E6B8:
/* 8068E6B8  3B C0 00 00 */	li r30, 0
/* 8068E6BC  3B E0 00 00 */	li r31, 0
lbl_8068E6C0:
/* 8068E6C0  38 7F 09 2C */	addi r3, r31, 0x92c
/* 8068E6C4  7C 7D 1A 14 */	add r3, r29, r3
/* 8068E6C8  4B 9F 5F 91 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 8068E6CC  28 03 00 00 */	cmplwi r3, 0
/* 8068E6D0  41 82 00 0C */	beq lbl_8068E6DC
/* 8068E6D4  38 60 00 02 */	li r3, 2
/* 8068E6D8  48 00 00 18 */	b lbl_8068E6F0
lbl_8068E6DC:
/* 8068E6DC  3B DE 00 01 */	addi r30, r30, 1
/* 8068E6E0  2C 1E 00 02 */	cmpwi r30, 2
/* 8068E6E4  3B FF 01 38 */	addi r31, r31, 0x138
/* 8068E6E8  41 80 FF D8 */	blt lbl_8068E6C0
/* 8068E6EC  38 60 00 00 */	li r3, 0
lbl_8068E6F0:
/* 8068E6F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8068E6F4  4B CD 3B 35 */	bl _restgpr_29
/* 8068E6F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8068E6FC  7C 08 03 A6 */	mtlr r0
/* 8068E700  38 21 00 20 */	addi r1, r1, 0x20
/* 8068E704  4E 80 00 20 */	blr 
