lbl_80BE4C38:
/* 80BE4C38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE4C3C  7C 08 02 A6 */	mflr r0
/* 80BE4C40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE4C44  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE4C48  4B 77 D5 94 */	b _savegpr_29
/* 80BE4C4C  7C 9D 23 78 */	mr r29, r4
/* 80BE4C50  3C 80 80 BE */	lis r4, l_bmd@ha
/* 80BE4C54  3B E4 5D 80 */	addi r31, r4, l_bmd@l
/* 80BE4C58  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BE4C5C  41 82 01 20 */	beq lbl_80BE4D7C
/* 80BE4C60  4B 43 40 80 */	b fopAc_IsActor__FPv
/* 80BE4C64  2C 03 00 00 */	cmpwi r3, 0
/* 80BE4C68  41 82 01 14 */	beq lbl_80BE4D7C
/* 80BE4C6C  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80BE4C70  2C 00 01 5C */	cmpwi r0, 0x15c
/* 80BE4C74  40 82 01 08 */	bne lbl_80BE4D7C
/* 80BE4C78  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80BE4C7C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BE4C80  4B 76 27 1C */	b PSVECSquareDistance
/* 80BE4C84  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80BE4C88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE4C8C  40 81 00 58 */	ble lbl_80BE4CE4
/* 80BE4C90  FC 00 08 34 */	frsqrte f0, f1
/* 80BE4C94  C8 9F 00 98 */	lfd f4, 0x98(r31)
/* 80BE4C98  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE4C9C  C8 7F 00 A0 */	lfd f3, 0xa0(r31)
/* 80BE4CA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE4CA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE4CA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE4CAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE4CB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE4CB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE4CB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE4CBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE4CC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE4CC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE4CC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE4CCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE4CD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE4CD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE4CD8  FC 21 00 32 */	fmul f1, f1, f0
/* 80BE4CDC  FC 20 08 18 */	frsp f1, f1
/* 80BE4CE0  48 00 00 88 */	b lbl_80BE4D68
lbl_80BE4CE4:
/* 80BE4CE4  C8 1F 00 A8 */	lfd f0, 0xa8(r31)
/* 80BE4CE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE4CEC  40 80 00 10 */	bge lbl_80BE4CFC
/* 80BE4CF0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BE4CF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BE4CF8  48 00 00 70 */	b lbl_80BE4D68
lbl_80BE4CFC:
/* 80BE4CFC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BE4D00  80 81 00 08 */	lwz r4, 8(r1)
/* 80BE4D04  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE4D08  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE4D0C  7C 03 00 00 */	cmpw r3, r0
/* 80BE4D10  41 82 00 14 */	beq lbl_80BE4D24
/* 80BE4D14  40 80 00 40 */	bge lbl_80BE4D54
/* 80BE4D18  2C 03 00 00 */	cmpwi r3, 0
/* 80BE4D1C  41 82 00 20 */	beq lbl_80BE4D3C
/* 80BE4D20  48 00 00 34 */	b lbl_80BE4D54
lbl_80BE4D24:
/* 80BE4D24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE4D28  41 82 00 0C */	beq lbl_80BE4D34
/* 80BE4D2C  38 00 00 01 */	li r0, 1
/* 80BE4D30  48 00 00 28 */	b lbl_80BE4D58
lbl_80BE4D34:
/* 80BE4D34  38 00 00 02 */	li r0, 2
/* 80BE4D38  48 00 00 20 */	b lbl_80BE4D58
lbl_80BE4D3C:
/* 80BE4D3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE4D40  41 82 00 0C */	beq lbl_80BE4D4C
/* 80BE4D44  38 00 00 05 */	li r0, 5
/* 80BE4D48  48 00 00 10 */	b lbl_80BE4D58
lbl_80BE4D4C:
/* 80BE4D4C  38 00 00 03 */	li r0, 3
/* 80BE4D50  48 00 00 08 */	b lbl_80BE4D58
lbl_80BE4D54:
/* 80BE4D54  38 00 00 04 */	li r0, 4
lbl_80BE4D58:
/* 80BE4D58  2C 00 00 01 */	cmpwi r0, 1
/* 80BE4D5C  40 82 00 0C */	bne lbl_80BE4D68
/* 80BE4D60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BE4D64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BE4D68:
/* 80BE4D68  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80BE4D6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE4D70  40 80 00 0C */	bge lbl_80BE4D7C
/* 80BE4D74  7F C3 F3 78 */	mr r3, r30
/* 80BE4D78  48 00 00 08 */	b lbl_80BE4D80
lbl_80BE4D7C:
/* 80BE4D7C  38 60 00 00 */	li r3, 0
lbl_80BE4D80:
/* 80BE4D80  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE4D84  4B 77 D4 A4 */	b _restgpr_29
/* 80BE4D88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE4D8C  7C 08 03 A6 */	mtlr r0
/* 80BE4D90  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE4D94  4E 80 00 20 */	blr 
