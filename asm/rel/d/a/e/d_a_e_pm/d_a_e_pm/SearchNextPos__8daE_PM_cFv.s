lbl_80742E1C:
/* 80742E1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80742E20  7C 08 02 A6 */	mflr r0
/* 80742E24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80742E28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80742E2C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80742E30  7C 7E 1B 78 */	mr r30, r3
/* 80742E34  3C 60 80 75 */	lis r3, lit_3910@ha /* 0x8074BF3C@ha */
/* 80742E38  3B E3 BF 3C */	addi r31, r3, lit_3910@l /* 0x8074BF3C@l */
/* 80742E3C  C0 5E 05 EC */	lfs f2, 0x5ec(r30)
/* 80742E40  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 80742E44  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 80742E48  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80742E4C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80742E50  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80742E54  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80742E58  38 81 00 0C */	addi r4, r1, 0xc
/* 80742E5C  4B C0 45 41 */	bl PSVECSquareDistance
/* 80742E60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80742E64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80742E68  40 81 00 58 */	ble lbl_80742EC0
/* 80742E6C  FC 00 08 34 */	frsqrte f0, f1
/* 80742E70  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80742E74  FC 44 00 32 */	fmul f2, f4, f0
/* 80742E78  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80742E7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80742E80  FC 01 00 32 */	fmul f0, f1, f0
/* 80742E84  FC 03 00 28 */	fsub f0, f3, f0
/* 80742E88  FC 02 00 32 */	fmul f0, f2, f0
/* 80742E8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80742E90  FC 00 00 32 */	fmul f0, f0, f0
/* 80742E94  FC 01 00 32 */	fmul f0, f1, f0
/* 80742E98  FC 03 00 28 */	fsub f0, f3, f0
/* 80742E9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80742EA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80742EA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80742EA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80742EAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80742EB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80742EB4  FC 21 00 32 */	fmul f1, f1, f0
/* 80742EB8  FC 20 08 18 */	frsp f1, f1
/* 80742EBC  48 00 00 88 */	b lbl_80742F44
lbl_80742EC0:
/* 80742EC0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80742EC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80742EC8  40 80 00 10 */	bge lbl_80742ED8
/* 80742ECC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80742ED0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80742ED4  48 00 00 70 */	b lbl_80742F44
lbl_80742ED8:
/* 80742ED8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80742EDC  80 81 00 08 */	lwz r4, 8(r1)
/* 80742EE0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80742EE4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80742EE8  7C 03 00 00 */	cmpw r3, r0
/* 80742EEC  41 82 00 14 */	beq lbl_80742F00
/* 80742EF0  40 80 00 40 */	bge lbl_80742F30
/* 80742EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80742EF8  41 82 00 20 */	beq lbl_80742F18
/* 80742EFC  48 00 00 34 */	b lbl_80742F30
lbl_80742F00:
/* 80742F00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80742F04  41 82 00 0C */	beq lbl_80742F10
/* 80742F08  38 00 00 01 */	li r0, 1
/* 80742F0C  48 00 00 28 */	b lbl_80742F34
lbl_80742F10:
/* 80742F10  38 00 00 02 */	li r0, 2
/* 80742F14  48 00 00 20 */	b lbl_80742F34
lbl_80742F18:
/* 80742F18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80742F1C  41 82 00 0C */	beq lbl_80742F28
/* 80742F20  38 00 00 05 */	li r0, 5
/* 80742F24  48 00 00 10 */	b lbl_80742F34
lbl_80742F28:
/* 80742F28  38 00 00 03 */	li r0, 3
/* 80742F2C  48 00 00 08 */	b lbl_80742F34
lbl_80742F30:
/* 80742F30  38 00 00 04 */	li r0, 4
lbl_80742F34:
/* 80742F34  2C 00 00 01 */	cmpwi r0, 1
/* 80742F38  40 82 00 0C */	bne lbl_80742F44
/* 80742F3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80742F40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80742F44:
/* 80742F44  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80742F48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80742F4C  40 80 00 4C */	bge lbl_80742F98
/* 80742F50  80 7E 05 F4 */	lwz r3, 0x5f4(r30)
/* 80742F54  38 83 00 01 */	addi r4, r3, 1
/* 80742F58  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 80742F5C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80742F60  7C 04 00 00 */	cmpw r4, r0
/* 80742F64  41 80 00 0C */	blt lbl_80742F70
/* 80742F68  38 60 00 01 */	li r3, 1
/* 80742F6C  48 00 00 30 */	b lbl_80742F9C
lbl_80742F70:
/* 80742F70  90 9E 05 F4 */	stw r4, 0x5f4(r30)
/* 80742F74  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 80742F78  80 9E 05 F4 */	lwz r4, 0x5f4(r30)
/* 80742F7C  4B 90 E8 35 */	bl dPath_GetPnt__FPC5dPathi
/* 80742F80  C0 03 00 04 */	lfs f0, 4(r3)
/* 80742F84  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80742F88  C0 03 00 08 */	lfs f0, 8(r3)
/* 80742F8C  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80742F90  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80742F94  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
lbl_80742F98:
/* 80742F98  38 60 00 00 */	li r3, 0
lbl_80742F9C:
/* 80742F9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80742FA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80742FA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80742FA8  7C 08 03 A6 */	mtlr r0
/* 80742FAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80742FB0  4E 80 00 20 */	blr 
