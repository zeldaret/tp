lbl_80C92E58:
/* 80C92E58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C92E5C  7C 08 02 A6 */	mflr r0
/* 80C92E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C92E64  39 61 00 20 */	addi r11, r1, 0x20
/* 80C92E68  4B 6C F3 75 */	bl _savegpr_29
/* 80C92E6C  7C 9D 23 78 */	mr r29, r4
/* 80C92E70  3C 80 80 C9 */	lis r4, l_bmd@ha /* 0x80C93D88@ha */
/* 80C92E74  3B E4 3D 88 */	addi r31, r4, l_bmd@l /* 0x80C93D88@l */
/* 80C92E78  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C92E7C  41 82 01 20 */	beq lbl_80C92F9C
/* 80C92E80  4B 38 5E 61 */	bl fopAc_IsActor__FPv
/* 80C92E84  2C 03 00 00 */	cmpwi r3, 0
/* 80C92E88  41 82 01 14 */	beq lbl_80C92F9C
/* 80C92E8C  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80C92E90  2C 00 00 37 */	cmpwi r0, 0x37
/* 80C92E94  40 82 01 08 */	bne lbl_80C92F9C
/* 80C92E98  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 80C92E9C  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80C92EA0  4B 6B 44 FD */	bl PSVECSquareDistance
/* 80C92EA4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C92EA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C92EAC  40 81 00 58 */	ble lbl_80C92F04
/* 80C92EB0  FC 00 08 34 */	frsqrte f0, f1
/* 80C92EB4  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80C92EB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C92EBC  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80C92EC0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C92EC4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C92EC8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C92ECC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C92ED0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C92ED4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C92ED8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C92EDC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C92EE0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C92EE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C92EE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C92EEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C92EF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C92EF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C92EF8  FC 21 00 32 */	fmul f1, f1, f0
/* 80C92EFC  FC 20 08 18 */	frsp f1, f1
/* 80C92F00  48 00 00 88 */	b lbl_80C92F88
lbl_80C92F04:
/* 80C92F04  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80C92F08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C92F0C  40 80 00 10 */	bge lbl_80C92F1C
/* 80C92F10  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C92F14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C92F18  48 00 00 70 */	b lbl_80C92F88
lbl_80C92F1C:
/* 80C92F1C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C92F20  80 81 00 08 */	lwz r4, 8(r1)
/* 80C92F24  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C92F28  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C92F2C  7C 03 00 00 */	cmpw r3, r0
/* 80C92F30  41 82 00 14 */	beq lbl_80C92F44
/* 80C92F34  40 80 00 40 */	bge lbl_80C92F74
/* 80C92F38  2C 03 00 00 */	cmpwi r3, 0
/* 80C92F3C  41 82 00 20 */	beq lbl_80C92F5C
/* 80C92F40  48 00 00 34 */	b lbl_80C92F74
lbl_80C92F44:
/* 80C92F44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C92F48  41 82 00 0C */	beq lbl_80C92F54
/* 80C92F4C  38 00 00 01 */	li r0, 1
/* 80C92F50  48 00 00 28 */	b lbl_80C92F78
lbl_80C92F54:
/* 80C92F54  38 00 00 02 */	li r0, 2
/* 80C92F58  48 00 00 20 */	b lbl_80C92F78
lbl_80C92F5C:
/* 80C92F5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C92F60  41 82 00 0C */	beq lbl_80C92F6C
/* 80C92F64  38 00 00 05 */	li r0, 5
/* 80C92F68  48 00 00 10 */	b lbl_80C92F78
lbl_80C92F6C:
/* 80C92F6C  38 00 00 03 */	li r0, 3
/* 80C92F70  48 00 00 08 */	b lbl_80C92F78
lbl_80C92F74:
/* 80C92F74  38 00 00 04 */	li r0, 4
lbl_80C92F78:
/* 80C92F78  2C 00 00 01 */	cmpwi r0, 1
/* 80C92F7C  40 82 00 0C */	bne lbl_80C92F88
/* 80C92F80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C92F84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C92F88:
/* 80C92F88  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C92F8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C92F90  40 80 00 0C */	bge lbl_80C92F9C
/* 80C92F94  7F C3 F3 78 */	mr r3, r30
/* 80C92F98  48 00 00 08 */	b lbl_80C92FA0
lbl_80C92F9C:
/* 80C92F9C  38 60 00 00 */	li r3, 0
lbl_80C92FA0:
/* 80C92FA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C92FA4  4B 6C F2 85 */	bl _restgpr_29
/* 80C92FA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C92FAC  7C 08 03 A6 */	mtlr r0
/* 80C92FB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C92FB4  4E 80 00 20 */	blr 
