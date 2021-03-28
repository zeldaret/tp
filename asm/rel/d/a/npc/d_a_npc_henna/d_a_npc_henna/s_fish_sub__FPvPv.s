lbl_80543EB4:
/* 80543EB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80543EB8  7C 08 02 A6 */	mflr r0
/* 80543EBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80543EC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80543EC4  4B E1 E3 18 */	b _savegpr_29
/* 80543EC8  7C 7D 1B 78 */	mr r29, r3
/* 80543ECC  7C 9E 23 78 */	mr r30, r4
/* 80543ED0  3C 80 80 55 */	lis r4, lit_3905@ha
/* 80543ED4  3B E4 A9 64 */	addi r31, r4, lit_3905@l
/* 80543ED8  4B AD 4E 08 */	b fopAc_IsActor__FPv
/* 80543EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80543EE0  41 82 01 40 */	beq lbl_80544020
/* 80543EE4  A8 1D 00 08 */	lha r0, 8(r29)
/* 80543EE8  2C 00 01 38 */	cmpwi r0, 0x138
/* 80543EEC  41 82 00 0C */	beq lbl_80543EF8
/* 80543EF0  2C 00 01 36 */	cmpwi r0, 0x136
/* 80543EF4  40 82 01 2C */	bne lbl_80544020
lbl_80543EF8:
/* 80543EF8  38 61 00 0C */	addi r3, r1, 0xc
/* 80543EFC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80543F00  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80543F04  4B D2 2C 30 */	b __mi__4cXyzCFRC3Vec
/* 80543F08  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80543F0C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80543F10  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80543F14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80543F18  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80543F1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80543F20  38 61 00 18 */	addi r3, r1, 0x18
/* 80543F24  4B E0 32 14 */	b PSVECSquareMag
/* 80543F28  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80543F2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80543F30  40 81 00 58 */	ble lbl_80543F88
/* 80543F34  FC 00 08 34 */	frsqrte f0, f1
/* 80543F38  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 80543F3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80543F40  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 80543F44  FC 00 00 32 */	fmul f0, f0, f0
/* 80543F48  FC 01 00 32 */	fmul f0, f1, f0
/* 80543F4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80543F50  FC 02 00 32 */	fmul f0, f2, f0
/* 80543F54  FC 44 00 32 */	fmul f2, f4, f0
/* 80543F58  FC 00 00 32 */	fmul f0, f0, f0
/* 80543F5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80543F60  FC 03 00 28 */	fsub f0, f3, f0
/* 80543F64  FC 02 00 32 */	fmul f0, f2, f0
/* 80543F68  FC 44 00 32 */	fmul f2, f4, f0
/* 80543F6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80543F70  FC 01 00 32 */	fmul f0, f1, f0
/* 80543F74  FC 03 00 28 */	fsub f0, f3, f0
/* 80543F78  FC 02 00 32 */	fmul f0, f2, f0
/* 80543F7C  FC 21 00 32 */	fmul f1, f1, f0
/* 80543F80  FC 20 08 18 */	frsp f1, f1
/* 80543F84  48 00 00 88 */	b lbl_8054400C
lbl_80543F88:
/* 80543F88  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 80543F8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80543F90  40 80 00 10 */	bge lbl_80543FA0
/* 80543F94  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80543F98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80543F9C  48 00 00 70 */	b lbl_8054400C
lbl_80543FA0:
/* 80543FA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80543FA4  80 81 00 08 */	lwz r4, 8(r1)
/* 80543FA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80543FAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80543FB0  7C 03 00 00 */	cmpw r3, r0
/* 80543FB4  41 82 00 14 */	beq lbl_80543FC8
/* 80543FB8  40 80 00 40 */	bge lbl_80543FF8
/* 80543FBC  2C 03 00 00 */	cmpwi r3, 0
/* 80543FC0  41 82 00 20 */	beq lbl_80543FE0
/* 80543FC4  48 00 00 34 */	b lbl_80543FF8
lbl_80543FC8:
/* 80543FC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80543FCC  41 82 00 0C */	beq lbl_80543FD8
/* 80543FD0  38 00 00 01 */	li r0, 1
/* 80543FD4  48 00 00 28 */	b lbl_80543FFC
lbl_80543FD8:
/* 80543FD8  38 00 00 02 */	li r0, 2
/* 80543FDC  48 00 00 20 */	b lbl_80543FFC
lbl_80543FE0:
/* 80543FE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80543FE4  41 82 00 0C */	beq lbl_80543FF0
/* 80543FE8  38 00 00 05 */	li r0, 5
/* 80543FEC  48 00 00 10 */	b lbl_80543FFC
lbl_80543FF0:
/* 80543FF0  38 00 00 03 */	li r0, 3
/* 80543FF4  48 00 00 08 */	b lbl_80543FFC
lbl_80543FF8:
/* 80543FF8  38 00 00 04 */	li r0, 4
lbl_80543FFC:
/* 80543FFC  2C 00 00 01 */	cmpwi r0, 1
/* 80544000  40 82 00 0C */	bne lbl_8054400C
/* 80544004  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80544008  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8054400C:
/* 8054400C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80544010  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80544014  40 80 00 0C */	bge lbl_80544020
/* 80544018  7F A3 EB 78 */	mr r3, r29
/* 8054401C  48 00 00 08 */	b lbl_80544024
lbl_80544020:
/* 80544020  38 60 00 00 */	li r3, 0
lbl_80544024:
/* 80544024  39 61 00 40 */	addi r11, r1, 0x40
/* 80544028  4B E1 E2 00 */	b _restgpr_29
/* 8054402C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80544030  7C 08 03 A6 */	mtlr r0
/* 80544034  38 21 00 40 */	addi r1, r1, 0x40
/* 80544038  4E 80 00 20 */	blr 
