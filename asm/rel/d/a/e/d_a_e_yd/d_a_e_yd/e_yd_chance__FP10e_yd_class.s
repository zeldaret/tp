lbl_807F4BB8:
/* 807F4BB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807F4BBC  7C 08 02 A6 */	mflr r0
/* 807F4BC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 807F4BC4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807F4BC8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807F4BCC  7C 7E 1B 78 */	mr r30, r3
/* 807F4BD0  3C 80 80 7F */	lis r4, lit_3788@ha
/* 807F4BD4  3B E4 7A 00 */	addi r31, r4, lit_3788@l
/* 807F4BD8  A8 03 06 70 */	lha r0, 0x670(r3)
/* 807F4BDC  2C 00 00 01 */	cmpwi r0, 1
/* 807F4BE0  41 82 00 88 */	beq lbl_807F4C68
/* 807F4BE4  40 80 00 10 */	bge lbl_807F4BF4
/* 807F4BE8  2C 00 00 00 */	cmpwi r0, 0
/* 807F4BEC  40 80 00 14 */	bge lbl_807F4C00
/* 807F4BF0  48 00 02 64 */	b lbl_807F4E54
lbl_807F4BF4:
/* 807F4BF4  2C 00 00 03 */	cmpwi r0, 3
/* 807F4BF8  40 80 02 5C */	bge lbl_807F4E54
/* 807F4BFC  48 00 02 10 */	b lbl_807F4E0C
lbl_807F4C00:
/* 807F4C00  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 807F4C04  7C 00 07 75 */	extsb. r0, r0
/* 807F4C08  41 82 00 1C */	beq lbl_807F4C24
/* 807F4C0C  38 80 00 0B */	li r4, 0xb
/* 807F4C10  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807F4C14  38 A0 00 02 */	li r5, 2
/* 807F4C18  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F4C1C  4B FF E2 05 */	bl anm_init__FP10e_yd_classifUcf
/* 807F4C20  48 00 00 18 */	b lbl_807F4C38
lbl_807F4C24:
/* 807F4C24  38 80 00 0A */	li r4, 0xa
/* 807F4C28  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807F4C2C  38 A0 00 02 */	li r5, 2
/* 807F4C30  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F4C34  4B FF E1 ED */	bl anm_init__FP10e_yd_classifUcf
lbl_807F4C38:
/* 807F4C38  7F C3 F3 78 */	mr r3, r30
/* 807F4C3C  38 80 00 15 */	li r4, 0x15
/* 807F4C40  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807F4C44  38 A0 00 02 */	li r5, 2
/* 807F4C48  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F4C4C  4B FF E2 81 */	bl leaf_anm_init__FP10e_yd_classifUcf
/* 807F4C50  38 00 00 01 */	li r0, 1
/* 807F4C54  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F4C58  38 00 00 3C */	li r0, 0x3c
/* 807F4C5C  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 807F4C60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F4C64  D0 1E 06 94 */	stfs f0, 0x694(r30)
lbl_807F4C68:
/* 807F4C68  A8 9E 06 6C */	lha r4, 0x66c(r30)
/* 807F4C6C  1C 04 03 84 */	mulli r0, r4, 0x384
/* 807F4C70  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807F4C74  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807F4C78  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807F4C7C  7C 23 04 2E */	lfsx f1, r3, r0
/* 807F4C80  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807F4C84  EC 20 00 72 */	fmuls f1, f0, f1
/* 807F4C88  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807F4C8C  1C 04 03 E8 */	mulli r0, r4, 0x3e8
/* 807F4C90  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807F4C94  7C 63 02 14 */	add r3, r3, r0
/* 807F4C98  C0 43 00 04 */	lfs f2, 4(r3)
/* 807F4C9C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807F4CA0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807F4CA4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807F4CA8  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807F4CAC  EC 20 08 2A */	fadds f1, f0, f1
/* 807F4CB0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807F4CB4  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 807F4CB8  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F4CBC  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F4CC0  4B A7 AD 7C */	b cLib_addCalc2__FPffff
/* 807F4CC4  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 807F4CC8  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 807F4CCC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807F4CD0  EC 21 00 2A */	fadds f1, f1, f0
/* 807F4CD4  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807F4CD8  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 807F4CDC  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F4CE0  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F4CE4  4B A7 AD 58 */	b cLib_addCalc2__FPffff
/* 807F4CE8  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 807F4CEC  7C 00 07 75 */	extsb. r0, r0
/* 807F4CF0  41 82 00 2C */	beq lbl_807F4D1C
/* 807F4CF4  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807F4CF8  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 807F4CFC  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 807F4D00  EC 21 00 28 */	fsubs f1, f1, f0
/* 807F4D04  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807F4D08  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 807F4D0C  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F4D10  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F4D14  4B A7 AD 28 */	b cLib_addCalc2__FPffff
/* 807F4D18  48 00 00 28 */	b lbl_807F4D40
lbl_807F4D1C:
/* 807F4D1C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 807F4D20  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 807F4D24  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807F4D28  EC 21 00 2A */	fadds f1, f1, f0
/* 807F4D2C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807F4D30  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 807F4D34  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 807F4D38  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F4D3C  4B A7 AD 00 */	b cLib_addCalc2__FPffff
lbl_807F4D40:
/* 807F4D40  38 7E 06 94 */	addi r3, r30, 0x694
/* 807F4D44  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F4D48  FC 40 08 90 */	fmr f2, f1
/* 807F4D4C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807F4D50  4B A7 AC EC */	b cLib_addCalc2__FPffff
/* 807F4D54  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 807F4D58  2C 00 00 32 */	cmpwi r0, 0x32
/* 807F4D5C  41 81 00 38 */	bgt lbl_807F4D94
/* 807F4D60  2C 00 00 0A */	cmpwi r0, 0xa
/* 807F4D64  41 80 00 30 */	blt lbl_807F4D94
/* 807F4D68  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070088@ha */
/* 807F4D6C  38 03 00 88 */	addi r0, r3, 0x0088 /* 0x00070088@l */
/* 807F4D70  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F4D74  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F4D78  38 81 00 0C */	addi r4, r1, 0xc
/* 807F4D7C  38 A0 00 00 */	li r5, 0
/* 807F4D80  38 C0 FF FF */	li r6, -1
/* 807F4D84  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F4D88  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807F4D8C  7D 89 03 A6 */	mtctr r12
/* 807F4D90  4E 80 04 21 */	bctrl 
lbl_807F4D94:
/* 807F4D94  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 807F4D98  2C 00 00 00 */	cmpwi r0, 0
/* 807F4D9C  40 82 00 B8 */	bne lbl_807F4E54
/* 807F4DA0  A8 7E 06 70 */	lha r3, 0x670(r30)
/* 807F4DA4  38 03 00 01 */	addi r0, r3, 1
/* 807F4DA8  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F4DAC  7F C3 F3 78 */	mr r3, r30
/* 807F4DB0  38 80 00 12 */	li r4, 0x12
/* 807F4DB4  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 807F4DB8  38 A0 00 00 */	li r5, 0
/* 807F4DBC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F4DC0  4B FF E0 61 */	bl anm_init__FP10e_yd_classifUcf
/* 807F4DC4  7F C3 F3 78 */	mr r3, r30
/* 807F4DC8  38 80 00 14 */	li r4, 0x14
/* 807F4DCC  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 807F4DD0  38 A0 00 02 */	li r5, 2
/* 807F4DD4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F4DD8  4B FF E0 F5 */	bl leaf_anm_init__FP10e_yd_classifUcf
/* 807F4DDC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 807F4DE0  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 807F4DE4  90 01 00 08 */	stw r0, 8(r1)
/* 807F4DE8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F4DEC  38 81 00 08 */	addi r4, r1, 8
/* 807F4DF0  38 A0 00 00 */	li r5, 0
/* 807F4DF4  38 C0 FF FF */	li r6, -1
/* 807F4DF8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F4DFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F4E00  7D 89 03 A6 */	mtctr r12
/* 807F4E04  4E 80 04 21 */	bctrl 
/* 807F4E08  48 00 00 4C */	b lbl_807F4E54
lbl_807F4E0C:
/* 807F4E0C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F4E10  38 80 00 01 */	li r4, 1
/* 807F4E14  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F4E18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F4E1C  40 82 00 18 */	bne lbl_807F4E34
/* 807F4E20  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807F4E24  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F4E28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807F4E2C  41 82 00 08 */	beq lbl_807F4E34
/* 807F4E30  38 80 00 00 */	li r4, 0
lbl_807F4E34:
/* 807F4E34  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F4E38  41 82 00 1C */	beq lbl_807F4E54
/* 807F4E3C  38 00 00 03 */	li r0, 3
/* 807F4E40  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 807F4E44  38 00 00 00 */	li r0, 0
/* 807F4E48  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 807F4E4C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F4E50  D0 1E 08 50 */	stfs f0, 0x850(r30)
lbl_807F4E54:
/* 807F4E54  88 1E 08 55 */	lbz r0, 0x855(r30)
/* 807F4E58  7C 00 07 75 */	extsb. r0, r0
/* 807F4E5C  41 82 00 1C */	beq lbl_807F4E78
/* 807F4E60  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807F4E64  38 80 40 00 */	li r4, 0x4000
/* 807F4E68  38 A0 00 04 */	li r5, 4
/* 807F4E6C  38 C0 04 00 */	li r6, 0x400
/* 807F4E70  4B A7 B7 98 */	b cLib_addCalcAngleS2__FPssss
/* 807F4E74  48 00 00 18 */	b lbl_807F4E8C
lbl_807F4E78:
/* 807F4E78  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807F4E7C  38 80 C0 00 */	li r4, -16384
/* 807F4E80  38 A0 00 04 */	li r5, 4
/* 807F4E84  38 C0 04 00 */	li r6, 0x400
/* 807F4E88  4B A7 B7 80 */	b cLib_addCalcAngleS2__FPssss
lbl_807F4E8C:
/* 807F4E8C  38 7E 08 4C */	addi r3, r30, 0x84c
/* 807F4E90  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807F4E94  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F4E98  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 807F4E9C  4B A7 AB A0 */	b cLib_addCalc2__FPffff
/* 807F4EA0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807F4EA4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807F4EA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807F4EAC  7C 08 03 A6 */	mtlr r0
/* 807F4EB0  38 21 00 30 */	addi r1, r1, 0x30
/* 807F4EB4  4E 80 00 20 */	blr 
