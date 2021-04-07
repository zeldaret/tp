lbl_807C7C74:
/* 807C7C74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807C7C78  7C 08 02 A6 */	mflr r0
/* 807C7C7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807C7C80  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 807C7C84  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 807C7C88  39 61 00 20 */	addi r11, r1, 0x20
/* 807C7C8C  4B B9 A5 4D */	bl _savegpr_28
/* 807C7C90  7C 7E 1B 78 */	mr r30, r3
/* 807C7C94  3C 80 80 7D */	lis r4, lit_3907@ha /* 0x807CECA8@ha */
/* 807C7C98  3B E4 EC A8 */	addi r31, r4, lit_3907@l /* 0x807CECA8@l */
/* 807C7C9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C7CA0  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C7CA4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807C7CA8  4B 85 2C BD */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C7CAC  FF E0 08 90 */	fmr f31, f1
/* 807C7CB0  7F C3 F3 78 */	mr r3, r30
/* 807C7CB4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 807C7CB8  4B 85 2A 59 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C7CBC  7C 7D 1B 78 */	mr r29, r3
/* 807C7CC0  80 1E 13 20 */	lwz r0, 0x1320(r30)
/* 807C7CC4  2C 00 00 01 */	cmpwi r0, 1
/* 807C7CC8  41 82 00 34 */	beq lbl_807C7CFC
/* 807C7CCC  40 80 01 A8 */	bge lbl_807C7E74
/* 807C7CD0  2C 00 00 00 */	cmpwi r0, 0
/* 807C7CD4  40 80 00 08 */	bge lbl_807C7CDC
/* 807C7CD8  48 00 01 9C */	b lbl_807C7E74
lbl_807C7CDC:
/* 807C7CDC  7F C3 F3 78 */	mr r3, r30
/* 807C7CE0  38 80 00 2C */	li r4, 0x2c
/* 807C7CE4  38 A0 00 02 */	li r5, 2
/* 807C7CE8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807C7CEC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C7CF0  4B FF BB 29 */	bl setBck__8daE_VA_cFiUcff
/* 807C7CF4  38 00 00 01 */	li r0, 1
/* 807C7CF8  90 1E 13 20 */	stw r0, 0x1320(r30)
lbl_807C7CFC:
/* 807C7CFC  7F BC 07 34 */	extsh r28, r29
/* 807C7D00  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807C7D04  7C 1C 00 50 */	subf r0, r28, r0
/* 807C7D08  7C 03 07 34 */	extsh r3, r0
/* 807C7D0C  4B B9 D3 C5 */	bl abs
/* 807C7D10  2C 03 60 00 */	cmpwi r3, 0x6000
/* 807C7D14  40 81 00 14 */	ble lbl_807C7D28
/* 807C7D18  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807C7D1C  38 03 04 00 */	addi r0, r3, 0x400
/* 807C7D20  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807C7D24  48 00 00 1C */	b lbl_807C7D40
lbl_807C7D28:
/* 807C7D28  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807C7D2C  7F A4 EB 78 */	mr r4, r29
/* 807C7D30  38 A0 00 08 */	li r5, 8
/* 807C7D34  38 C0 04 00 */	li r6, 0x400
/* 807C7D38  38 E0 00 40 */	li r7, 0x40
/* 807C7D3C  4B AA 88 05 */	bl cLib_addCalcAngleS__FPsssss
lbl_807C7D40:
/* 807C7D40  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807C7D44  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807C7D48  3C 60 80 7D */	lis r3, l_HIO@ha /* 0x807CF4C4@ha */
/* 807C7D4C  3B A3 F4 C4 */	addi r29, r3, l_HIO@l /* 0x807CF4C4@l */
/* 807C7D50  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 807C7D54  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 807C7D58  40 81 00 18 */	ble lbl_807C7D70
/* 807C7D5C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807C7D60  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 807C7D64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C7D68  4B AA 89 D9 */	bl cLib_chaseF__FPfff
/* 807C7D6C  48 00 00 58 */	b lbl_807C7DC4
lbl_807C7D70:
/* 807C7D70  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 807C7D74  EC 01 00 28 */	fsubs f0, f1, f0
/* 807C7D78  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807C7D7C  40 80 00 38 */	bge lbl_807C7DB4
/* 807C7D80  80 1E 13 40 */	lwz r0, 0x1340(r30)
/* 807C7D84  2C 00 00 00 */	cmpwi r0, 0
/* 807C7D88  40 82 00 18 */	bne lbl_807C7DA0
/* 807C7D8C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807C7D90  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C7D94  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C7D98  4B AA 89 A9 */	bl cLib_chaseF__FPfff
/* 807C7D9C  48 00 00 28 */	b lbl_807C7DC4
lbl_807C7DA0:
/* 807C7DA0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807C7DA4  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 807C7DA8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C7DAC  4B AA 89 95 */	bl cLib_chaseF__FPfff
/* 807C7DB0  48 00 00 14 */	b lbl_807C7DC4
lbl_807C7DB4:
/* 807C7DB4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807C7DB8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C7DBC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C7DC0  4B AA 89 81 */	bl cLib_chaseF__FPfff
lbl_807C7DC4:
/* 807C7DC4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807C7DC8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807C7DCC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C7DD0  40 82 00 4C */	bne lbl_807C7E1C
/* 807C7DD4  80 1E 13 40 */	lwz r0, 0x1340(r30)
/* 807C7DD8  2C 00 00 00 */	cmpwi r0, 0
/* 807C7DDC  40 82 00 40 */	bne lbl_807C7E1C
/* 807C7DE0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807C7DE4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807C7DE8  4C 40 13 82 */	cror 2, 0, 2
/* 807C7DEC  40 82 00 30 */	bne lbl_807C7E1C
/* 807C7DF0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807C7DF4  7C 1C 00 50 */	subf r0, r28, r0
/* 807C7DF8  7C 03 07 34 */	extsh r3, r0
/* 807C7DFC  4B B9 D2 D5 */	bl abs
/* 807C7E00  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807C7E04  40 80 00 18 */	bge lbl_807C7E1C
/* 807C7E08  7F C3 F3 78 */	mr r3, r30
/* 807C7E0C  38 80 00 06 */	li r4, 6
/* 807C7E10  38 A0 00 00 */	li r5, 0
/* 807C7E14  4B FF BB 05 */	bl setActionMode__8daE_VA_cFii
/* 807C7E18  48 00 00 9C */	b lbl_807C7EB4
lbl_807C7E1C:
/* 807C7E1C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807C7E20  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C7E24  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C7E28  41 82 00 34 */	beq lbl_807C7E5C
/* 807C7E2C  7F C3 F3 78 */	mr r3, r30
/* 807C7E30  38 80 00 2D */	li r4, 0x2d
/* 807C7E34  4B FF BA 89 */	bl checkBck__8daE_VA_cFi
/* 807C7E38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C7E3C  40 82 00 38 */	bne lbl_807C7E74
/* 807C7E40  7F C3 F3 78 */	mr r3, r30
/* 807C7E44  38 80 00 2D */	li r4, 0x2d
/* 807C7E48  38 A0 00 02 */	li r5, 2
/* 807C7E4C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807C7E50  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C7E54  4B FF B9 C5 */	bl setBck__8daE_VA_cFiUcff
/* 807C7E58  48 00 00 1C */	b lbl_807C7E74
lbl_807C7E5C:
/* 807C7E5C  7F C3 F3 78 */	mr r3, r30
/* 807C7E60  38 80 00 2C */	li r4, 0x2c
/* 807C7E64  38 A0 00 02 */	li r5, 2
/* 807C7E68  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 807C7E6C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807C7E70  4B FF B9 A9 */	bl setBck__8daE_VA_cFiUcff
lbl_807C7E74:
/* 807C7E74  4B 99 75 B1 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 807C7E78  2C 03 00 00 */	cmpwi r3, 0
/* 807C7E7C  40 82 00 38 */	bne lbl_807C7EB4
/* 807C7E80  80 1E 13 58 */	lwz r0, 0x1358(r30)
/* 807C7E84  2C 00 00 00 */	cmpwi r0, 0
/* 807C7E88  40 82 00 2C */	bne lbl_807C7EB4
/* 807C7E8C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807C7E90  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807C7E94  80 63 00 00 */	lwz r3, 0(r3)
/* 807C7E98  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C7E9C  38 80 00 01 */	li r4, 1
/* 807C7EA0  4B AE 9F 55 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 807C7EA4  7F C3 F3 78 */	mr r3, r30
/* 807C7EA8  38 80 00 13 */	li r4, 0x13
/* 807C7EAC  38 A0 00 00 */	li r5, 0
/* 807C7EB0  4B FF BA 69 */	bl setActionMode__8daE_VA_cFii
lbl_807C7EB4:
/* 807C7EB4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807C7EB8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807C7EBC  39 61 00 20 */	addi r11, r1, 0x20
/* 807C7EC0  4B B9 A3 65 */	bl _restgpr_28
/* 807C7EC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807C7EC8  7C 08 03 A6 */	mtlr r0
/* 807C7ECC  38 21 00 30 */	addi r1, r1, 0x30
/* 807C7ED0  4E 80 00 20 */	blr 
