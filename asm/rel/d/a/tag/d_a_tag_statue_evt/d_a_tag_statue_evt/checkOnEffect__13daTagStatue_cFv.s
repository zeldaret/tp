lbl_805A7CD0:
/* 805A7CD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A7CD4  7C 08 02 A6 */	mflr r0
/* 805A7CD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A7CDC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805A7CE0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805A7CE4  7C 7E 1B 78 */	mr r30, r3
/* 805A7CE8  3C 60 80 5B */	lis r3, l_event_bit@ha
/* 805A7CEC  3B E3 81 04 */	addi r31, r3, l_event_bit@l
/* 805A7CF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A7CF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A7CF8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A7CFC  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 805A7D00  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 805A7D04  7C 05 07 74 */	extsb r5, r0
/* 805A7D08  4B A8 D6 58 */	b isSwitch__10dSv_info_cCFii
/* 805A7D0C  2C 03 00 00 */	cmpwi r3, 0
/* 805A7D10  40 82 01 68 */	bne lbl_805A7E78
/* 805A7D14  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 805A7D18  3C 03 00 01 */	addis r0, r3, 1
/* 805A7D1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 805A7D20  41 82 01 58 */	beq lbl_805A7E78
/* 805A7D24  90 61 00 0C */	stw r3, 0xc(r1)
/* 805A7D28  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805A7D2C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805A7D30  38 81 00 0C */	addi r4, r1, 0xc
/* 805A7D34  4B A7 1A C4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805A7D38  28 03 00 00 */	cmplwi r3, 0
/* 805A7D3C  41 82 01 34 */	beq lbl_805A7E70
/* 805A7D40  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 805A7D44  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 805A7D48  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805A7D4C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805A7D50  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805A7D54  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 805A7D58  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 805A7D5C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805A7D60  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805A7D64  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805A7D68  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 805A7D6C  38 61 00 10 */	addi r3, r1, 0x10
/* 805A7D70  38 81 00 1C */	addi r4, r1, 0x1c
/* 805A7D74  4B D9 F6 28 */	b PSVECSquareDistance
/* 805A7D78  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805A7D7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A7D80  40 81 00 58 */	ble lbl_805A7DD8
/* 805A7D84  FC 00 08 34 */	frsqrte f0, f1
/* 805A7D88  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 805A7D8C  FC 44 00 32 */	fmul f2, f4, f0
/* 805A7D90  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 805A7D94  FC 00 00 32 */	fmul f0, f0, f0
/* 805A7D98  FC 01 00 32 */	fmul f0, f1, f0
/* 805A7D9C  FC 03 00 28 */	fsub f0, f3, f0
/* 805A7DA0  FC 02 00 32 */	fmul f0, f2, f0
/* 805A7DA4  FC 44 00 32 */	fmul f2, f4, f0
/* 805A7DA8  FC 00 00 32 */	fmul f0, f0, f0
/* 805A7DAC  FC 01 00 32 */	fmul f0, f1, f0
/* 805A7DB0  FC 03 00 28 */	fsub f0, f3, f0
/* 805A7DB4  FC 02 00 32 */	fmul f0, f2, f0
/* 805A7DB8  FC 44 00 32 */	fmul f2, f4, f0
/* 805A7DBC  FC 00 00 32 */	fmul f0, f0, f0
/* 805A7DC0  FC 01 00 32 */	fmul f0, f1, f0
/* 805A7DC4  FC 03 00 28 */	fsub f0, f3, f0
/* 805A7DC8  FC 02 00 32 */	fmul f0, f2, f0
/* 805A7DCC  FC 21 00 32 */	fmul f1, f1, f0
/* 805A7DD0  FC 20 08 18 */	frsp f1, f1
/* 805A7DD4  48 00 00 88 */	b lbl_805A7E5C
lbl_805A7DD8:
/* 805A7DD8  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 805A7DDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A7DE0  40 80 00 10 */	bge lbl_805A7DF0
/* 805A7DE4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805A7DE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805A7DEC  48 00 00 70 */	b lbl_805A7E5C
lbl_805A7DF0:
/* 805A7DF0  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A7DF4  80 81 00 08 */	lwz r4, 8(r1)
/* 805A7DF8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805A7DFC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805A7E00  7C 03 00 00 */	cmpw r3, r0
/* 805A7E04  41 82 00 14 */	beq lbl_805A7E18
/* 805A7E08  40 80 00 40 */	bge lbl_805A7E48
/* 805A7E0C  2C 03 00 00 */	cmpwi r3, 0
/* 805A7E10  41 82 00 20 */	beq lbl_805A7E30
/* 805A7E14  48 00 00 34 */	b lbl_805A7E48
lbl_805A7E18:
/* 805A7E18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805A7E1C  41 82 00 0C */	beq lbl_805A7E28
/* 805A7E20  38 00 00 01 */	li r0, 1
/* 805A7E24  48 00 00 28 */	b lbl_805A7E4C
lbl_805A7E28:
/* 805A7E28  38 00 00 02 */	li r0, 2
/* 805A7E2C  48 00 00 20 */	b lbl_805A7E4C
lbl_805A7E30:
/* 805A7E30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805A7E34  41 82 00 0C */	beq lbl_805A7E40
/* 805A7E38  38 00 00 05 */	li r0, 5
/* 805A7E3C  48 00 00 10 */	b lbl_805A7E4C
lbl_805A7E40:
/* 805A7E40  38 00 00 03 */	li r0, 3
/* 805A7E44  48 00 00 08 */	b lbl_805A7E4C
lbl_805A7E48:
/* 805A7E48  38 00 00 04 */	li r0, 4
lbl_805A7E4C:
/* 805A7E4C  2C 00 00 01 */	cmpwi r0, 1
/* 805A7E50  40 82 00 0C */	bne lbl_805A7E5C
/* 805A7E54  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805A7E58  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805A7E5C:
/* 805A7E5C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 805A7E60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A7E64  40 81 00 14 */	ble lbl_805A7E78
/* 805A7E68  38 60 00 01 */	li r3, 1
/* 805A7E6C  48 00 00 10 */	b lbl_805A7E7C
lbl_805A7E70:
/* 805A7E70  38 60 00 01 */	li r3, 1
/* 805A7E74  48 00 00 08 */	b lbl_805A7E7C
lbl_805A7E78:
/* 805A7E78  38 60 00 00 */	li r3, 0
lbl_805A7E7C:
/* 805A7E7C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A7E80  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805A7E84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A7E88  7C 08 03 A6 */	mtlr r0
/* 805A7E8C  38 21 00 30 */	addi r1, r1, 0x30
/* 805A7E90  4E 80 00 20 */	blr 
