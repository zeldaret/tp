lbl_80A08F60:
/* 80A08F60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A08F64  7C 08 02 A6 */	mflr r0
/* 80A08F68  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A08F6C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A08F70  4B 95 92 6C */	b _savegpr_29
/* 80A08F74  7C 7D 1B 78 */	mr r29, r3
/* 80A08F78  7C 9E 23 78 */	mr r30, r4
/* 80A08F7C  3C 80 80 A1 */	lis r4, m__18daNpcImpal_Param_c@ha
/* 80A08F80  3B E4 C2 70 */	addi r31, r4, m__18daNpcImpal_Param_c@l
/* 80A08F84  4B 60 FD 5C */	b fopAc_IsActor__FPv
/* 80A08F88  2C 03 00 00 */	cmpwi r3, 0
/* 80A08F8C  41 82 01 40 */	beq lbl_80A090CC
/* 80A08F90  A8 1D 00 08 */	lha r0, 8(r29)
/* 80A08F94  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80A08F98  40 82 01 34 */	bne lbl_80A090CC
/* 80A08F9C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80A08FA0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A08FA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A08FA8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80A08FAC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A08FB0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80A08FB4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80A08FB8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A08FBC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A08FC0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80A08FC4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80A08FC8  38 61 00 0C */	addi r3, r1, 0xc
/* 80A08FCC  38 81 00 18 */	addi r4, r1, 0x18
/* 80A08FD0  4B 93 E3 CC */	b PSVECSquareDistance
/* 80A08FD4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A08FD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A08FDC  40 81 00 58 */	ble lbl_80A09034
/* 80A08FE0  FC 00 08 34 */	frsqrte f0, f1
/* 80A08FE4  C8 9F 02 00 */	lfd f4, 0x200(r31)
/* 80A08FE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A08FEC  C8 7F 02 08 */	lfd f3, 0x208(r31)
/* 80A08FF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A08FF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A08FF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A08FFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A09000  FC 44 00 32 */	fmul f2, f4, f0
/* 80A09004  FC 00 00 32 */	fmul f0, f0, f0
/* 80A09008  FC 01 00 32 */	fmul f0, f1, f0
/* 80A0900C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A09010  FC 02 00 32 */	fmul f0, f2, f0
/* 80A09014  FC 44 00 32 */	fmul f2, f4, f0
/* 80A09018  FC 00 00 32 */	fmul f0, f0, f0
/* 80A0901C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A09020  FC 03 00 28 */	fsub f0, f3, f0
/* 80A09024  FC 02 00 32 */	fmul f0, f2, f0
/* 80A09028  FC 21 00 32 */	fmul f1, f1, f0
/* 80A0902C  FC 20 08 18 */	frsp f1, f1
/* 80A09030  48 00 00 88 */	b lbl_80A090B8
lbl_80A09034:
/* 80A09034  C8 1F 02 10 */	lfd f0, 0x210(r31)
/* 80A09038  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0903C  40 80 00 10 */	bge lbl_80A0904C
/* 80A09040  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A09044  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A09048  48 00 00 70 */	b lbl_80A090B8
lbl_80A0904C:
/* 80A0904C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A09050  80 81 00 08 */	lwz r4, 8(r1)
/* 80A09054  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A09058  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A0905C  7C 03 00 00 */	cmpw r3, r0
/* 80A09060  41 82 00 14 */	beq lbl_80A09074
/* 80A09064  40 80 00 40 */	bge lbl_80A090A4
/* 80A09068  2C 03 00 00 */	cmpwi r3, 0
/* 80A0906C  41 82 00 20 */	beq lbl_80A0908C
/* 80A09070  48 00 00 34 */	b lbl_80A090A4
lbl_80A09074:
/* 80A09074  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A09078  41 82 00 0C */	beq lbl_80A09084
/* 80A0907C  38 00 00 01 */	li r0, 1
/* 80A09080  48 00 00 28 */	b lbl_80A090A8
lbl_80A09084:
/* 80A09084  38 00 00 02 */	li r0, 2
/* 80A09088  48 00 00 20 */	b lbl_80A090A8
lbl_80A0908C:
/* 80A0908C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A09090  41 82 00 0C */	beq lbl_80A0909C
/* 80A09094  38 00 00 05 */	li r0, 5
/* 80A09098  48 00 00 10 */	b lbl_80A090A8
lbl_80A0909C:
/* 80A0909C  38 00 00 03 */	li r0, 3
/* 80A090A0  48 00 00 08 */	b lbl_80A090A8
lbl_80A090A4:
/* 80A090A4  38 00 00 04 */	li r0, 4
lbl_80A090A8:
/* 80A090A8  2C 00 00 01 */	cmpwi r0, 1
/* 80A090AC  40 82 00 0C */	bne lbl_80A090B8
/* 80A090B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A090B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A090B8:
/* 80A090B8  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 80A090BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A090C0  40 80 00 0C */	bge lbl_80A090CC
/* 80A090C4  7F A3 EB 78 */	mr r3, r29
/* 80A090C8  4B 61 0B B4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80A090CC:
/* 80A090CC  38 60 00 00 */	li r3, 0
/* 80A090D0  39 61 00 40 */	addi r11, r1, 0x40
/* 80A090D4  4B 95 91 54 */	b _restgpr_29
/* 80A090D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A090DC  7C 08 03 A6 */	mtlr r0
/* 80A090E0  38 21 00 40 */	addi r1, r1, 0x40
/* 80A090E4  4E 80 00 20 */	blr 
