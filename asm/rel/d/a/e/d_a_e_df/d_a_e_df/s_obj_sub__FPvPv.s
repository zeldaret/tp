lbl_806A7E7C:
/* 806A7E7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806A7E80  7C 08 02 A6 */	mflr r0
/* 806A7E84  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A7E88  39 61 00 40 */	addi r11, r1, 0x40
/* 806A7E8C  4B CB A3 50 */	b _savegpr_29
/* 806A7E90  7C 7D 1B 78 */	mr r29, r3
/* 806A7E94  7C 9E 23 78 */	mr r30, r4
/* 806A7E98  3C 80 80 6B */	lis r4, lit_3916@ha
/* 806A7E9C  3B E4 9F 30 */	addi r31, r4, lit_3916@l
/* 806A7EA0  4B 97 0E 40 */	b fopAc_IsActor__FPv
/* 806A7EA4  2C 03 00 00 */	cmpwi r3, 0
/* 806A7EA8  41 82 01 6C */	beq lbl_806A8014
/* 806A7EAC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 806A7EB0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806A7EB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806A7EB8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806A7EBC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806A7EC0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 806A7EC4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806A7EC8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806A7ECC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A7ED0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806A7ED4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 806A7ED8  38 61 00 0C */	addi r3, r1, 0xc
/* 806A7EDC  38 81 00 18 */	addi r4, r1, 0x18
/* 806A7EE0  4B C9 F4 BC */	b PSVECSquareDistance
/* 806A7EE4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A7EE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A7EEC  40 81 00 58 */	ble lbl_806A7F44
/* 806A7EF0  FC 00 08 34 */	frsqrte f0, f1
/* 806A7EF4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806A7EF8  FC 44 00 32 */	fmul f2, f4, f0
/* 806A7EFC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806A7F00  FC 00 00 32 */	fmul f0, f0, f0
/* 806A7F04  FC 01 00 32 */	fmul f0, f1, f0
/* 806A7F08  FC 03 00 28 */	fsub f0, f3, f0
/* 806A7F0C  FC 02 00 32 */	fmul f0, f2, f0
/* 806A7F10  FC 44 00 32 */	fmul f2, f4, f0
/* 806A7F14  FC 00 00 32 */	fmul f0, f0, f0
/* 806A7F18  FC 01 00 32 */	fmul f0, f1, f0
/* 806A7F1C  FC 03 00 28 */	fsub f0, f3, f0
/* 806A7F20  FC 02 00 32 */	fmul f0, f2, f0
/* 806A7F24  FC 44 00 32 */	fmul f2, f4, f0
/* 806A7F28  FC 00 00 32 */	fmul f0, f0, f0
/* 806A7F2C  FC 01 00 32 */	fmul f0, f1, f0
/* 806A7F30  FC 03 00 28 */	fsub f0, f3, f0
/* 806A7F34  FC 02 00 32 */	fmul f0, f2, f0
/* 806A7F38  FC 21 00 32 */	fmul f1, f1, f0
/* 806A7F3C  FC 20 08 18 */	frsp f1, f1
/* 806A7F40  48 00 00 88 */	b lbl_806A7FC8
lbl_806A7F44:
/* 806A7F44  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806A7F48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A7F4C  40 80 00 10 */	bge lbl_806A7F5C
/* 806A7F50  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806A7F54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806A7F58  48 00 00 70 */	b lbl_806A7FC8
lbl_806A7F5C:
/* 806A7F5C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806A7F60  80 81 00 08 */	lwz r4, 8(r1)
/* 806A7F64  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806A7F68  3C 00 7F 80 */	lis r0, 0x7f80
/* 806A7F6C  7C 03 00 00 */	cmpw r3, r0
/* 806A7F70  41 82 00 14 */	beq lbl_806A7F84
/* 806A7F74  40 80 00 40 */	bge lbl_806A7FB4
/* 806A7F78  2C 03 00 00 */	cmpwi r3, 0
/* 806A7F7C  41 82 00 20 */	beq lbl_806A7F9C
/* 806A7F80  48 00 00 34 */	b lbl_806A7FB4
lbl_806A7F84:
/* 806A7F84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A7F88  41 82 00 0C */	beq lbl_806A7F94
/* 806A7F8C  38 00 00 01 */	li r0, 1
/* 806A7F90  48 00 00 28 */	b lbl_806A7FB8
lbl_806A7F94:
/* 806A7F94  38 00 00 02 */	li r0, 2
/* 806A7F98  48 00 00 20 */	b lbl_806A7FB8
lbl_806A7F9C:
/* 806A7F9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A7FA0  41 82 00 0C */	beq lbl_806A7FAC
/* 806A7FA4  38 00 00 05 */	li r0, 5
/* 806A7FA8  48 00 00 10 */	b lbl_806A7FB8
lbl_806A7FAC:
/* 806A7FAC  38 00 00 03 */	li r0, 3
/* 806A7FB0  48 00 00 08 */	b lbl_806A7FB8
lbl_806A7FB4:
/* 806A7FB4  38 00 00 04 */	li r0, 4
lbl_806A7FB8:
/* 806A7FB8  2C 00 00 01 */	cmpwi r0, 1
/* 806A7FBC  40 82 00 0C */	bne lbl_806A7FC8
/* 806A7FC0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806A7FC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806A7FC8:
/* 806A7FC8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 806A7FCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A7FD0  4C 40 13 82 */	cror 2, 0, 2
/* 806A7FD4  40 82 00 40 */	bne lbl_806A8014
/* 806A7FD8  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 806A7FDC  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806A7FE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A7FE4  40 80 00 30 */	bge lbl_806A8014
/* 806A7FE8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806A7FEC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806A7FF0  EC 21 00 28 */	fsubs f1, f1, f0
/* 806A7FF4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806A7FF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A7FFC  40 81 00 18 */	ble lbl_806A8014
/* 806A8000  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 806A8004  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A8008  40 80 00 0C */	bge lbl_806A8014
/* 806A800C  7F A3 EB 78 */	mr r3, r29
/* 806A8010  48 00 00 08 */	b lbl_806A8018
lbl_806A8014:
/* 806A8014  38 60 00 00 */	li r3, 0
lbl_806A8018:
/* 806A8018  39 61 00 40 */	addi r11, r1, 0x40
/* 806A801C  4B CB A2 0C */	b _restgpr_29
/* 806A8020  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A8024  7C 08 03 A6 */	mtlr r0
/* 806A8028  38 21 00 40 */	addi r1, r1, 0x40
/* 806A802C  4E 80 00 20 */	blr 
