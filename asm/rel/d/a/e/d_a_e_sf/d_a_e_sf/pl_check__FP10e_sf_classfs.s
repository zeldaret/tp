lbl_80785880:
/* 80785880  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80785884  7C 08 02 A6 */	mflr r0
/* 80785888  90 01 00 24 */	stw r0, 0x24(r1)
/* 8078588C  39 61 00 20 */	addi r11, r1, 0x20
/* 80785890  4B BD C9 4C */	b _savegpr_29
/* 80785894  7C 7D 1B 78 */	mr r29, r3
/* 80785898  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8078589C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807858A0  80 C5 5D AC */	lwz r6, 0x5dac(r5)
/* 807858A4  C0 03 06 8C */	lfs f0, 0x68c(r3)
/* 807858A8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807858AC  40 80 00 48 */	bge lbl_807858F4
/* 807858B0  A8 BD 06 90 */	lha r5, 0x690(r29)
/* 807858B4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807858B8  7C 05 00 50 */	subf r0, r5, r0
/* 807858BC  7C 05 07 34 */	extsh r5, r0
/* 807858C0  7C 80 07 34 */	extsh r0, r4
/* 807858C4  7C 05 00 00 */	cmpw r5, r0
/* 807858C8  40 80 00 2C */	bge lbl_807858F4
/* 807858CC  7C 04 00 D0 */	neg r0, r4
/* 807858D0  7C 00 07 34 */	extsh r0, r0
/* 807858D4  7C 05 00 00 */	cmpw r5, r0
/* 807858D8  40 81 00 1C */	ble lbl_807858F4
/* 807858DC  7C C4 33 78 */	mr r4, r6
/* 807858E0  4B FF FD 75 */	bl other_bg_check__FP10e_sf_classP10fopAc_ac_c
/* 807858E4  2C 03 00 00 */	cmpwi r3, 0
/* 807858E8  40 82 00 0C */	bne lbl_807858F4
/* 807858EC  38 60 00 01 */	li r3, 1
/* 807858F0  48 00 00 3C */	b lbl_8078592C
lbl_807858F4:
/* 807858F4  3B C0 00 00 */	li r30, 0
/* 807858F8  3B E0 00 00 */	li r31, 0
lbl_807858FC:
/* 807858FC  38 7F 09 70 */	addi r3, r31, 0x970
/* 80785900  7C 7D 1A 14 */	add r3, r29, r3
/* 80785904  4B 8F ED 54 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80785908  28 03 00 00 */	cmplwi r3, 0
/* 8078590C  41 82 00 0C */	beq lbl_80785918
/* 80785910  38 60 00 02 */	li r3, 2
/* 80785914  48 00 00 18 */	b lbl_8078592C
lbl_80785918:
/* 80785918  3B DE 00 01 */	addi r30, r30, 1
/* 8078591C  2C 1E 00 02 */	cmpwi r30, 2
/* 80785920  3B FF 01 38 */	addi r31, r31, 0x138
/* 80785924  40 81 FF D8 */	ble lbl_807858FC
/* 80785928  38 60 00 00 */	li r3, 0
lbl_8078592C:
/* 8078592C  39 61 00 20 */	addi r11, r1, 0x20
/* 80785930  4B BD C8 F8 */	b _restgpr_29
/* 80785934  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80785938  7C 08 03 A6 */	mtlr r0
/* 8078593C  38 21 00 20 */	addi r1, r1, 0x20
/* 80785940  4E 80 00 20 */	blr 
