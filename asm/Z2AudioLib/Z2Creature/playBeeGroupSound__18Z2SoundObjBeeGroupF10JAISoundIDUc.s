lbl_802C1D6C:
/* 802C1D6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C1D70  7C 08 02 A6 */	mflr r0
/* 802C1D74  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C1D78  39 61 00 40 */	addi r11, r1, 0x40
/* 802C1D7C  48 0A 04 61 */	bl _savegpr_29
/* 802C1D80  7C 7E 1B 78 */	mr r30, r3
/* 802C1D84  7C BF 2B 78 */	mr r31, r5
/* 802C1D88  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 802C1D8C  41 82 01 B0 */	beq lbl_802C1F3C
/* 802C1D90  80 A4 00 00 */	lwz r5, 0(r4)
/* 802C1D94  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070127@ha */
/* 802C1D98  38 04 01 27 */	addi r0, r4, 0x0127 /* 0x00070127@l */
/* 802C1D9C  7C 05 00 00 */	cmpw r5, r0
/* 802C1DA0  41 82 00 68 */	beq lbl_802C1E08
/* 802C1DA4  40 80 00 24 */	bge lbl_802C1DC8
/* 802C1DA8  38 64 01 25 */	addi r3, r4, 0x125
/* 802C1DAC  7C 05 18 00 */	cmpw r5, r3
/* 802C1DB0  41 82 00 88 */	beq lbl_802C1E38
/* 802C1DB4  40 80 00 44 */	bge lbl_802C1DF8
/* 802C1DB8  38 04 01 24 */	addi r0, r4, 0x124
/* 802C1DBC  7C 05 00 00 */	cmpw r5, r0
/* 802C1DC0  40 80 00 58 */	bge lbl_802C1E18
/* 802C1DC4  48 00 00 74 */	b lbl_802C1E38
lbl_802C1DC8:
/* 802C1DC8  38 64 03 76 */	addi r3, r4, 0x376
/* 802C1DCC  7C 05 18 00 */	cmpw r5, r3
/* 802C1DD0  41 82 00 68 */	beq lbl_802C1E38
/* 802C1DD4  40 80 00 14 */	bge lbl_802C1DE8
/* 802C1DD8  38 04 03 75 */	addi r0, r4, 0x375
/* 802C1DDC  7C 05 00 00 */	cmpw r5, r0
/* 802C1DE0  40 80 00 44 */	bge lbl_802C1E24
/* 802C1DE4  48 00 00 54 */	b lbl_802C1E38
lbl_802C1DE8:
/* 802C1DE8  38 04 03 78 */	addi r0, r4, 0x378
/* 802C1DEC  7C 05 00 00 */	cmpw r5, r0
/* 802C1DF0  40 80 00 48 */	bge lbl_802C1E38
/* 802C1DF4  48 00 00 3C */	b lbl_802C1E30
lbl_802C1DF8:
/* 802C1DF8  38 04 01 29 */	addi r0, r4, 0x129
/* 802C1DFC  90 01 00 20 */	stw r0, 0x20(r1)
/* 802C1E00  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C1E04  48 00 00 34 */	b lbl_802C1E38
lbl_802C1E08:
/* 802C1E08  38 04 01 2A */	addi r0, r4, 0x12a
/* 802C1E0C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C1E10  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C1E14  48 00 00 24 */	b lbl_802C1E38
lbl_802C1E18:
/* 802C1E18  90 61 00 18 */	stw r3, 0x18(r1)
/* 802C1E1C  90 61 00 24 */	stw r3, 0x24(r1)
/* 802C1E20  48 00 00 18 */	b lbl_802C1E38
lbl_802C1E24:
/* 802C1E24  90 61 00 14 */	stw r3, 0x14(r1)
/* 802C1E28  90 61 00 24 */	stw r3, 0x24(r1)
/* 802C1E2C  48 00 00 0C */	b lbl_802C1E38
lbl_802C1E30:
/* 802C1E30  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C1E34  90 01 00 24 */	stw r0, 0x24(r1)
lbl_802C1E38:
/* 802C1E38  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802C1E3C  7F C3 F3 78 */	mr r3, r30
/* 802C1E40  38 81 00 0C */	addi r4, r1, 0xc
/* 802C1E44  38 A0 00 00 */	li r5, 0
/* 802C1E48  38 C0 FF FF */	li r6, -1
/* 802C1E4C  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 802C1E50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C1E54  7D 89 03 A6 */	mtctr r12
/* 802C1E58  4E 80 04 21 */	bctrl 
/* 802C1E5C  7C 7D 1B 78 */	mr r29, r3
/* 802C1E60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C1E64  90 01 00 08 */	stw r0, 8(r1)
/* 802C1E68  7F C3 F3 78 */	mr r3, r30
/* 802C1E6C  38 81 00 08 */	addi r4, r1, 8
/* 802C1E70  38 A0 00 00 */	li r5, 0
/* 802C1E74  38 C0 FF FF */	li r6, -1
/* 802C1E78  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 802C1E7C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C1E80  7D 89 03 A6 */	mtctr r12
/* 802C1E84  4E 80 04 21 */	bctrl 
/* 802C1E88  7C 7E 1B 78 */	mr r30, r3
/* 802C1E8C  28 1D 00 00 */	cmplwi r29, 0
/* 802C1E90  41 82 00 54 */	beq lbl_802C1EE4
/* 802C1E94  80 1D 00 00 */	lwz r0, 0(r29)
/* 802C1E98  28 00 00 00 */	cmplwi r0, 0
/* 802C1E9C  41 82 00 48 */	beq lbl_802C1EE4
/* 802C1EA0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802C1EA4  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C1EA8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802C1EAC  3C 00 43 30 */	lis r0, 0x4330
/* 802C1EB0  90 01 00 28 */	stw r0, 0x28(r1)
/* 802C1EB4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802C1EB8  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C1EBC  C0 42 C2 20 */	lfs f2, lit_3669(r2)
/* 802C1EC0  C0 62 C2 70 */	lfs f3, lit_4561(r2)
/* 802C1EC4  C0 82 C2 1C */	lfs f4, lit_3668(r2)
/* 802C1EC8  FC A0 10 90 */	fmr f5, f2
/* 802C1ECC  38 60 00 00 */	li r3, 0
/* 802C1ED0  4B FE 77 BD */	bl linearTransform__6Z2CalcFfffffb
/* 802C1ED4  80 7D 00 00 */	lwz r3, 0(r29)
/* 802C1ED8  38 63 00 48 */	addi r3, r3, 0x48
/* 802C1EDC  38 80 00 00 */	li r4, 0
/* 802C1EE0  4B FE 0E D5 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802C1EE4:
/* 802C1EE4  28 1E 00 00 */	cmplwi r30, 0
/* 802C1EE8  41 82 00 54 */	beq lbl_802C1F3C
/* 802C1EEC  80 1E 00 00 */	lwz r0, 0(r30)
/* 802C1EF0  28 00 00 00 */	cmplwi r0, 0
/* 802C1EF4  41 82 00 48 */	beq lbl_802C1F3C
/* 802C1EF8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802C1EFC  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C1F00  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802C1F04  3C 00 43 30 */	lis r0, 0x4330
/* 802C1F08  90 01 00 28 */	stw r0, 0x28(r1)
/* 802C1F0C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802C1F10  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C1F14  C0 42 C2 20 */	lfs f2, lit_3669(r2)
/* 802C1F18  C0 62 C2 74 */	lfs f3, lit_4562(r2)
/* 802C1F1C  C0 82 C2 4C */	lfs f4, lit_4092(r2)
/* 802C1F20  FC A0 10 90 */	fmr f5, f2
/* 802C1F24  38 60 00 00 */	li r3, 0
/* 802C1F28  4B FE 77 65 */	bl linearTransform__6Z2CalcFfffffb
/* 802C1F2C  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C1F30  38 63 00 48 */	addi r3, r3, 0x48
/* 802C1F34  38 80 00 00 */	li r4, 0
/* 802C1F38  4B FE 0E 7D */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802C1F3C:
/* 802C1F3C  39 61 00 40 */	addi r11, r1, 0x40
/* 802C1F40  48 0A 02 E9 */	bl _restgpr_29
/* 802C1F44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C1F48  7C 08 03 A6 */	mtlr r0
/* 802C1F4C  38 21 00 40 */	addi r1, r1, 0x40
/* 802C1F50  4E 80 00 20 */	blr 
