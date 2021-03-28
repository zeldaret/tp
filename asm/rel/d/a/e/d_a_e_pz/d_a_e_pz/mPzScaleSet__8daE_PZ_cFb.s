lbl_80758A94:
/* 80758A94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80758A98  7C 08 02 A6 */	mflr r0
/* 80758A9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80758AA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80758AA4  4B C0 97 38 */	b _savegpr_29
/* 80758AA8  7C 7D 1B 78 */	mr r29, r3
/* 80758AAC  3C 60 80 76 */	lis r3, lit_3906@ha
/* 80758AB0  3B C3 14 FC */	addi r30, r3, lit_3906@l
/* 80758AB4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80758AB8  40 82 00 70 */	bne lbl_80758B28
/* 80758ABC  38 7D 07 9C */	addi r3, r29, 0x79c
/* 80758AC0  3C 80 80 76 */	lis r4, struct_80761E0C+0x0@ha
/* 80758AC4  3B E4 1E 0C */	addi r31, r4, struct_80761E0C+0x0@l
/* 80758AC8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80758ACC  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 80758AD0  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80758AD4  4B B1 6F 68 */	b cLib_addCalc2__FPffff
/* 80758AD8  38 7D 07 A0 */	addi r3, r29, 0x7a0
/* 80758ADC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80758AE0  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 80758AE4  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 80758AE8  4B B1 6F 54 */	b cLib_addCalc2__FPffff
/* 80758AEC  38 7D 07 A4 */	addi r3, r29, 0x7a4
/* 80758AF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80758AF4  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 80758AF8  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80758AFC  4B B1 6F 40 */	b cLib_addCalc2__FPffff
/* 80758B00  C0 3D 07 A0 */	lfs f1, 0x7a0(r29)
/* 80758B04  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80758B08  EC 01 00 28 */	fsubs f0, f1, f0
/* 80758B0C  FC 00 02 10 */	fabs f0, f0
/* 80758B10  FC 20 00 18 */	frsp f1, f0
/* 80758B14  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80758B18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80758B1C  40 81 00 68 */	ble lbl_80758B84
/* 80758B20  38 60 00 00 */	li r3, 0
/* 80758B24  48 00 00 64 */	b lbl_80758B88
lbl_80758B28:
/* 80758B28  38 7D 07 9C */	addi r3, r29, 0x79c
/* 80758B2C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80758B30  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80758B34  4B B1 6F 4C */	b cLib_addCalc0__FPfff
/* 80758B38  38 7D 07 A0 */	addi r3, r29, 0x7a0
/* 80758B3C  C0 3D 07 CC */	lfs f1, 0x7cc(r29)
/* 80758B40  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 80758B44  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 80758B48  4B B1 6E F4 */	b cLib_addCalc2__FPffff
/* 80758B4C  38 7D 07 A4 */	addi r3, r29, 0x7a4
/* 80758B50  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80758B54  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80758B58  4B B1 6F 28 */	b cLib_addCalc0__FPfff
/* 80758B5C  C0 3D 07 A0 */	lfs f1, 0x7a0(r29)
/* 80758B60  C0 1D 07 CC */	lfs f0, 0x7cc(r29)
/* 80758B64  EC 01 00 28 */	fsubs f0, f1, f0
/* 80758B68  FC 00 02 10 */	fabs f0, f0
/* 80758B6C  FC 20 00 18 */	frsp f1, f0
/* 80758B70  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80758B74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80758B78  40 81 00 0C */	ble lbl_80758B84
/* 80758B7C  38 60 00 00 */	li r3, 0
/* 80758B80  48 00 00 08 */	b lbl_80758B88
lbl_80758B84:
/* 80758B84  38 60 00 01 */	li r3, 1
lbl_80758B88:
/* 80758B88  39 61 00 20 */	addi r11, r1, 0x20
/* 80758B8C  4B C0 96 9C */	b _restgpr_29
/* 80758B90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80758B94  7C 08 03 A6 */	mtlr r0
/* 80758B98  38 21 00 20 */	addi r1, r1, 0x20
/* 80758B9C  4E 80 00 20 */	blr 
