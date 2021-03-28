lbl_80579E5C:
/* 80579E5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80579E60  7C 08 02 A6 */	mflr r0
/* 80579E64  90 01 00 44 */	stw r0, 0x44(r1)
/* 80579E68  39 61 00 40 */	addi r11, r1, 0x40
/* 80579E6C  4B DE 83 70 */	b _savegpr_29
/* 80579E70  7C 7D 1B 78 */	mr r29, r3
/* 80579E74  3C 60 80 58 */	lis r3, l_hair_offset@ha
/* 80579E78  3B E3 B3 60 */	addi r31, r3, l_hair_offset@l
/* 80579E7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80579E80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80579E84  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80579E88  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80579E8C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80579E90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80579E94  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80579E98  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80579E9C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80579EA0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80579EA4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80579EA8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80579EAC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80579EB0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80579EB4  38 61 00 0C */	addi r3, r1, 0xc
/* 80579EB8  38 81 00 18 */	addi r4, r1, 0x18
/* 80579EBC  4B DC D4 E0 */	b PSVECSquareDistance
/* 80579EC0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80579EC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80579EC8  40 81 00 58 */	ble lbl_80579F20
/* 80579ECC  FC 00 08 34 */	frsqrte f0, f1
/* 80579ED0  C8 9F 01 00 */	lfd f4, 0x100(r31)
/* 80579ED4  FC 44 00 32 */	fmul f2, f4, f0
/* 80579ED8  C8 7F 01 08 */	lfd f3, 0x108(r31)
/* 80579EDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80579EE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80579EE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80579EE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80579EEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80579EF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80579EF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80579EF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80579EFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80579F00  FC 44 00 32 */	fmul f2, f4, f0
/* 80579F04  FC 00 00 32 */	fmul f0, f0, f0
/* 80579F08  FC 01 00 32 */	fmul f0, f1, f0
/* 80579F0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80579F10  FC 02 00 32 */	fmul f0, f2, f0
/* 80579F14  FC 21 00 32 */	fmul f1, f1, f0
/* 80579F18  FC 20 08 18 */	frsp f1, f1
/* 80579F1C  48 00 00 88 */	b lbl_80579FA4
lbl_80579F20:
/* 80579F20  C8 1F 01 10 */	lfd f0, 0x110(r31)
/* 80579F24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80579F28  40 80 00 10 */	bge lbl_80579F38
/* 80579F2C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80579F30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80579F34  48 00 00 70 */	b lbl_80579FA4
lbl_80579F38:
/* 80579F38  D0 21 00 08 */	stfs f1, 8(r1)
/* 80579F3C  80 81 00 08 */	lwz r4, 8(r1)
/* 80579F40  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80579F44  3C 00 7F 80 */	lis r0, 0x7f80
/* 80579F48  7C 03 00 00 */	cmpw r3, r0
/* 80579F4C  41 82 00 14 */	beq lbl_80579F60
/* 80579F50  40 80 00 40 */	bge lbl_80579F90
/* 80579F54  2C 03 00 00 */	cmpwi r3, 0
/* 80579F58  41 82 00 20 */	beq lbl_80579F78
/* 80579F5C  48 00 00 34 */	b lbl_80579F90
lbl_80579F60:
/* 80579F60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80579F64  41 82 00 0C */	beq lbl_80579F70
/* 80579F68  38 00 00 01 */	li r0, 1
/* 80579F6C  48 00 00 28 */	b lbl_80579F94
lbl_80579F70:
/* 80579F70  38 00 00 02 */	li r0, 2
/* 80579F74  48 00 00 20 */	b lbl_80579F94
lbl_80579F78:
/* 80579F78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80579F7C  41 82 00 0C */	beq lbl_80579F88
/* 80579F80  38 00 00 05 */	li r0, 5
/* 80579F84  48 00 00 10 */	b lbl_80579F94
lbl_80579F88:
/* 80579F88  38 00 00 03 */	li r0, 3
/* 80579F8C  48 00 00 08 */	b lbl_80579F94
lbl_80579F90:
/* 80579F90  38 00 00 04 */	li r0, 4
lbl_80579F94:
/* 80579F94  2C 00 00 01 */	cmpwi r0, 1
/* 80579F98  40 82 00 0C */	bne lbl_80579FA4
/* 80579F9C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80579FA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80579FA4:
/* 80579FA4  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80579FA8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80579FAC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80579FB0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80579FB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80579FB8  40 80 00 24 */	bge lbl_80579FDC
/* 80579FBC  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80579FC0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80579FC4  40 80 00 18 */	bge lbl_80579FDC
/* 80579FC8  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80579FCC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80579FD0  40 81 00 0C */	ble lbl_80579FDC
/* 80579FD4  38 60 00 01 */	li r3, 1
/* 80579FD8  48 00 00 08 */	b lbl_80579FE0
lbl_80579FDC:
/* 80579FDC  38 60 00 00 */	li r3, 0
lbl_80579FE0:
/* 80579FE0  39 61 00 40 */	addi r11, r1, 0x40
/* 80579FE4  4B DE 82 44 */	b _restgpr_29
/* 80579FE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80579FEC  7C 08 03 A6 */	mtlr r0
/* 80579FF0  38 21 00 40 */	addi r1, r1, 0x40
/* 80579FF4  4E 80 00 20 */	blr 
