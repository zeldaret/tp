lbl_807B1B78:
/* 807B1B78  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807B1B7C  7C 08 02 A6 */	mflr r0
/* 807B1B80  90 01 00 64 */	stw r0, 0x64(r1)
/* 807B1B84  39 61 00 60 */	addi r11, r1, 0x60
/* 807B1B88  4B BB 06 4D */	bl _savegpr_27
/* 807B1B8C  7C 7E 1B 78 */	mr r30, r3
/* 807B1B90  3C 80 80 7B */	lis r4, lit_3906@ha /* 0x807B449C@ha */
/* 807B1B94  3B E4 44 9C */	addi r31, r4, lit_3906@l /* 0x807B449C@l */
/* 807B1B98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B1B9C  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B1BA0  83 BC 5D AC */	lwz r29, 0x5dac(r28)
/* 807B1BA4  38 00 00 00 */	li r0, 0
/* 807B1BA8  98 03 06 E4 */	stb r0, 0x6e4(r3)
/* 807B1BAC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 807B1BB0  4B 86 8C 31 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807B1BB4  D0 3E 06 8C */	stfs f1, 0x68c(r30)
/* 807B1BB8  7F C3 F3 78 */	mr r3, r30
/* 807B1BBC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 807B1BC0  4B 86 8B 51 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807B1BC4  B0 7E 06 90 */	sth r3, 0x690(r30)
/* 807B1BC8  7F C3 F3 78 */	mr r3, r30
/* 807B1BCC  4B FF FD E1 */	bl damage_check__FP10e_th_class
/* 807B1BD0  3B 80 00 00 */	li r28, 0
/* 807B1BD4  3B 60 00 01 */	li r27, 1
/* 807B1BD8  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 807B1BDC  28 00 00 19 */	cmplwi r0, 0x19
/* 807B1BE0  41 81 00 8C */	bgt lbl_807B1C6C
/* 807B1BE4  3C 60 80 7B */	lis r3, lit_4682@ha /* 0x807B46B4@ha */
/* 807B1BE8  38 63 46 B4 */	addi r3, r3, lit_4682@l /* 0x807B46B4@l */
/* 807B1BEC  54 00 10 3A */	slwi r0, r0, 2
/* 807B1BF0  7C 03 00 2E */	lwzx r0, r3, r0
/* 807B1BF4  7C 09 03 A6 */	mtctr r0
/* 807B1BF8  4E 80 04 20 */	bctr 
lbl_807B1BFC:
/* 807B1BFC  7F C3 F3 78 */	mr r3, r30
/* 807B1C00  4B FF F1 7D */	bl e_th_wait__FP10e_th_class
/* 807B1C04  48 00 00 68 */	b lbl_807B1C6C
lbl_807B1C08:
/* 807B1C08  7F C3 F3 78 */	mr r3, r30
/* 807B1C0C  4B FF F2 F1 */	bl e_th_spin__FP10e_th_class
/* 807B1C10  3B 80 04 00 */	li r28, 0x400
/* 807B1C14  48 00 00 58 */	b lbl_807B1C6C
lbl_807B1C18:
/* 807B1C18  7F C3 F3 78 */	mr r3, r30
/* 807B1C1C  4B FF F3 05 */	bl e_th_spin_B__FP10e_th_class
/* 807B1C20  3B 80 03 00 */	li r28, 0x300
/* 807B1C24  48 00 00 48 */	b lbl_807B1C6C
lbl_807B1C28:
/* 807B1C28  7F C3 F3 78 */	mr r3, r30
/* 807B1C2C  4B FF F6 85 */	bl e_th_shot__FP10e_th_class
/* 807B1C30  7C 7C 1B 78 */	mr r28, r3
/* 807B1C34  48 00 00 38 */	b lbl_807B1C6C
lbl_807B1C38:
/* 807B1C38  7F C3 F3 78 */	mr r3, r30
/* 807B1C3C  4B FF F7 E1 */	bl e_th_return__FP10e_th_class
/* 807B1C40  48 00 00 2C */	b lbl_807B1C6C
lbl_807B1C44:
/* 807B1C44  7F C3 F3 78 */	mr r3, r30
/* 807B1C48  4B FF FA 29 */	bl e_th_damage__FP10e_th_class
/* 807B1C4C  48 00 00 20 */	b lbl_807B1C6C
lbl_807B1C50:
/* 807B1C50  7F C3 F3 78 */	mr r3, r30
/* 807B1C54  4B FF FB 19 */	bl e_th_start__FP10e_th_class
/* 807B1C58  3B 60 00 00 */	li r27, 0
/* 807B1C5C  48 00 00 10 */	b lbl_807B1C6C
lbl_807B1C60:
/* 807B1C60  7F C3 F3 78 */	mr r3, r30
/* 807B1C64  4B FF FC 5D */	bl e_th_end__FP10e_th_class
/* 807B1C68  3B 60 00 00 */	li r27, 0
lbl_807B1C6C:
/* 807B1C6C  7F 80 07 35 */	extsh. r0, r28
/* 807B1C70  41 82 00 18 */	beq lbl_807B1C88
/* 807B1C74  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807B1C78  A8 9E 06 90 */	lha r4, 0x690(r30)
/* 807B1C7C  38 A0 00 04 */	li r5, 4
/* 807B1C80  7F 86 E3 78 */	mr r6, r28
/* 807B1C84  4B AB E9 85 */	bl cLib_addCalcAngleS2__FPssss
lbl_807B1C88:
/* 807B1C88  7F 60 07 75 */	extsb. r0, r27
/* 807B1C8C  41 82 00 10 */	beq lbl_807B1C9C
/* 807B1C90  38 00 00 04 */	li r0, 4
/* 807B1C94  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807B1C98  48 00 00 18 */	b lbl_807B1CB0
lbl_807B1C9C:
/* 807B1C9C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 807B1CA0  54 00 00 3E */	slwi r0, r0, 0
/* 807B1CA4  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 807B1CA8  38 00 00 00 */	li r0, 0
/* 807B1CAC  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_807B1CB0:
/* 807B1CB0  88 7E 06 E4 */	lbz r3, 0x6e4(r30)
/* 807B1CB4  7C 60 07 75 */	extsb. r0, r3
/* 807B1CB8  41 82 01 90 */	beq lbl_807B1E48
/* 807B1CBC  A8 1E 0D 2C */	lha r0, 0xd2c(r30)
/* 807B1CC0  2C 00 00 00 */	cmpwi r0, 0
/* 807B1CC4  40 82 01 84 */	bne lbl_807B1E48
/* 807B1CC8  3B 60 00 00 */	li r27, 0
/* 807B1CCC  7C 60 07 74 */	extsb r0, r3
/* 807B1CD0  2C 00 00 03 */	cmpwi r0, 3
/* 807B1CD4  40 82 00 0C */	bne lbl_807B1CE0
/* 807B1CD8  3B 80 27 10 */	li r28, 0x2710
/* 807B1CDC  48 00 01 0C */	b lbl_807B1DE8
lbl_807B1CE0:
/* 807B1CE0  2C 00 00 01 */	cmpwi r0, 1
/* 807B1CE4  40 82 00 3C */	bne lbl_807B1D20
/* 807B1CE8  38 61 00 18 */	addi r3, r1, 0x18
/* 807B1CEC  38 9D 05 38 */	addi r4, r29, 0x538
/* 807B1CF0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807B1CF4  4B AB 4E 41 */	bl __mi__4cXyzCFRC3Vec
/* 807B1CF8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807B1CFC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807B1D00  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 807B1D04  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807B1D08  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807B1D0C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807B1D10  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807B1D14  EC 01 00 2A */	fadds f0, f1, f0
/* 807B1D18  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807B1D1C  48 00 00 5C */	b lbl_807B1D78
lbl_807B1D20:
/* 807B1D20  2C 00 00 02 */	cmpwi r0, 2
/* 807B1D24  40 82 00 54 */	bne lbl_807B1D78
/* 807B1D28  80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 807B1D2C  90 01 00 08 */	stw r0, 8(r1)
/* 807B1D30  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807B1D34  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807B1D38  38 81 00 08 */	addi r4, r1, 8
/* 807B1D3C  4B 86 7A BD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807B1D40  7C 64 1B 78 */	mr r4, r3
/* 807B1D44  38 61 00 0C */	addi r3, r1, 0xc
/* 807B1D48  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 807B1D4C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807B1D50  4B AB 4D E5 */	bl __mi__4cXyzCFRC3Vec
/* 807B1D54  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807B1D58  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807B1D5C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 807B1D60  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807B1D64  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807B1D68  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807B1D6C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807B1D70  EC 01 00 2A */	fadds f0, f1, f0
/* 807B1D74  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_807B1D78:
/* 807B1D78  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 807B1D7C  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 807B1D80  4B AB 58 F5 */	bl cM_atan2s__Fff
/* 807B1D84  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807B1D88  7C 00 18 50 */	subf r0, r0, r3
/* 807B1D8C  7C 1B 07 34 */	extsh r27, r0
/* 807B1D90  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807B1D94  EC 20 00 32 */	fmuls f1, f0, f0
/* 807B1D98  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807B1D9C  EC 00 00 32 */	fmuls f0, f0, f0
/* 807B1DA0  EC 41 00 2A */	fadds f2, f1, f0
/* 807B1DA4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B1DA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807B1DAC  40 81 00 0C */	ble lbl_807B1DB8
/* 807B1DB0  FC 00 10 34 */	frsqrte f0, f2
/* 807B1DB4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807B1DB8:
/* 807B1DB8  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807B1DBC  4B AB 58 B9 */	bl cM_atan2s__Fff
/* 807B1DC0  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 807B1DC4  7C 00 18 50 */	subf r0, r0, r3
/* 807B1DC8  7C 1C 07 34 */	extsh r28, r0
/* 807B1DCC  2C 1B 1F 40 */	cmpwi r27, 0x1f40
/* 807B1DD0  40 81 00 0C */	ble lbl_807B1DDC
/* 807B1DD4  3B 60 1F 40 */	li r27, 0x1f40
/* 807B1DD8  48 00 00 10 */	b lbl_807B1DE8
lbl_807B1DDC:
/* 807B1DDC  2C 1B E0 C0 */	cmpwi r27, -8000
/* 807B1DE0  40 80 00 08 */	bge lbl_807B1DE8
/* 807B1DE4  3B 60 E0 C0 */	li r27, -8000
lbl_807B1DE8:
/* 807B1DE8  38 7E 06 E6 */	addi r3, r30, 0x6e6
/* 807B1DEC  7F 60 07 34 */	extsh r0, r27
/* 807B1DF0  7C 00 0E 70 */	srawi r0, r0, 1
/* 807B1DF4  7C 00 01 94 */	addze r0, r0
/* 807B1DF8  7C 04 07 34 */	extsh r4, r0
/* 807B1DFC  38 A0 00 04 */	li r5, 4
/* 807B1E00  38 C0 08 00 */	li r6, 0x800
/* 807B1E04  4B AB E8 05 */	bl cLib_addCalcAngleS2__FPssss
/* 807B1E08  7F 80 07 34 */	extsh r0, r28
/* 807B1E0C  2C 00 1F 40 */	cmpwi r0, 0x1f40
/* 807B1E10  40 81 00 0C */	ble lbl_807B1E1C
/* 807B1E14  3B 80 1F 40 */	li r28, 0x1f40
/* 807B1E18  48 00 00 10 */	b lbl_807B1E28
lbl_807B1E1C:
/* 807B1E1C  2C 00 E0 C0 */	cmpwi r0, -8000
/* 807B1E20  40 80 00 08 */	bge lbl_807B1E28
/* 807B1E24  3B 80 E0 C0 */	li r28, -8000
lbl_807B1E28:
/* 807B1E28  38 7E 06 E8 */	addi r3, r30, 0x6e8
/* 807B1E2C  7F 80 07 34 */	extsh r0, r28
/* 807B1E30  7C 00 0E 70 */	srawi r0, r0, 1
/* 807B1E34  7C 00 01 94 */	addze r0, r0
/* 807B1E38  7C 04 07 34 */	extsh r4, r0
/* 807B1E3C  38 A0 00 04 */	li r5, 4
/* 807B1E40  38 C0 08 00 */	li r6, 0x800
/* 807B1E44  4B AB E7 C5 */	bl cLib_addCalcAngleS2__FPssss
lbl_807B1E48:
/* 807B1E48  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807B1E4C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B1E50  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B1E54  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807B1E58  7F C3 F3 78 */	mr r3, r30
/* 807B1E5C  38 9E 05 E0 */	addi r4, r30, 0x5e0
/* 807B1E60  38 BE 05 38 */	addi r5, r30, 0x538
/* 807B1E64  38 C1 00 24 */	addi r6, r1, 0x24
/* 807B1E68  48 00 21 D1 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 807B1E6C  38 60 00 01 */	li r3, 1
/* 807B1E70  38 80 FF FF */	li r4, -1
/* 807B1E74  4B 87 BC F1 */	bl dComIfGs_isOneZoneSwitch__Fii
/* 807B1E78  2C 03 00 00 */	cmpwi r3, 0
/* 807B1E7C  41 82 00 20 */	beq lbl_807B1E9C
/* 807B1E80  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807B1E84  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 807B1E88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B1E8C  40 81 00 10 */	ble lbl_807B1E9C
/* 807B1E90  38 60 00 02 */	li r3, 2
/* 807B1E94  38 80 FF FF */	li r4, -1
/* 807B1E98  4B 87 BC 05 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_807B1E9C:
/* 807B1E9C  39 61 00 60 */	addi r11, r1, 0x60
/* 807B1EA0  4B BB 03 81 */	bl _restgpr_27
/* 807B1EA4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807B1EA8  7C 08 03 A6 */	mtlr r0
/* 807B1EAC  38 21 00 60 */	addi r1, r1, 0x60
/* 807B1EB0  4E 80 00 20 */	blr 
