lbl_80770CF8:
/* 80770CF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80770CFC  7C 08 02 A6 */	mflr r0
/* 80770D00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80770D04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80770D08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80770D0C  7C 7E 1B 78 */	mr r30, r3
/* 80770D10  3C 60 80 78 */	lis r3, lit_4018@ha /* 0x80779DFC@ha */
/* 80770D14  3B E3 9D FC */	addi r31, r3, lit_4018@l /* 0x80779DFC@l */
/* 80770D18  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 80770D1C  2C 00 00 01 */	cmpwi r0, 1
/* 80770D20  41 82 00 74 */	beq lbl_80770D94
/* 80770D24  40 80 00 FC */	bge lbl_80770E20
/* 80770D28  2C 00 00 00 */	cmpwi r0, 0
/* 80770D2C  40 80 00 08 */	bge lbl_80770D34
/* 80770D30  48 00 00 F0 */	b lbl_80770E20
lbl_80770D34:
/* 80770D34  38 00 00 01 */	li r0, 1
/* 80770D38  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80770D3C  38 00 00 0A */	li r0, 0xa
/* 80770D40  B0 1E 0A 60 */	sth r0, 0xa60(r30)
/* 80770D44  88 1E 0A 8E */	lbz r0, 0xa8e(r30)
/* 80770D48  7C 00 07 75 */	extsb. r0, r0
/* 80770D4C  41 82 00 D4 */	beq lbl_80770E20
/* 80770D50  80 1E 0A 5C */	lwz r0, 0xa5c(r30)
/* 80770D54  90 01 00 08 */	stw r0, 8(r1)
/* 80770D58  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80770D5C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80770D60  38 81 00 08 */	addi r4, r1, 8
/* 80770D64  4B 8A 8A 95 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80770D68  28 03 00 00 */	cmplwi r3, 0
/* 80770D6C  41 82 00 14 */	beq lbl_80770D80
/* 80770D70  88 83 06 B0 */	lbz r4, 0x6b0(r3)
/* 80770D74  88 1E 0A 8E */	lbz r0, 0xa8e(r30)
/* 80770D78  7C 80 00 78 */	andc r0, r4, r0
/* 80770D7C  98 03 06 B0 */	stb r0, 0x6b0(r3)
lbl_80770D80:
/* 80770D80  38 00 00 00 */	li r0, 0
/* 80770D84  98 1E 0A 8E */	stb r0, 0xa8e(r30)
/* 80770D88  38 00 FF FF */	li r0, -1
/* 80770D8C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80770D90  48 00 00 90 */	b lbl_80770E20
lbl_80770D94:
/* 80770D94  A8 1E 0A 62 */	lha r0, 0xa62(r30)
/* 80770D98  2C 00 00 00 */	cmpwi r0, 0
/* 80770D9C  41 82 00 10 */	beq lbl_80770DAC
/* 80770DA0  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 80770DA4  60 00 00 80 */	ori r0, r0, 0x80
/* 80770DA8  B0 1E 05 8E */	sth r0, 0x58e(r30)
lbl_80770DAC:
/* 80770DAC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80770DB0  38 80 00 01 */	li r4, 1
/* 80770DB4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80770DB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80770DBC  40 82 00 18 */	bne lbl_80770DD4
/* 80770DC0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80770DC4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80770DC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80770DCC  41 82 00 08 */	beq lbl_80770DD4
/* 80770DD0  38 80 00 00 */	li r4, 0
lbl_80770DD4:
/* 80770DD4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80770DD8  41 82 00 48 */	beq lbl_80770E20
/* 80770DDC  A8 1E 0A 44 */	lha r0, 0xa44(r30)
/* 80770DE0  2C 00 00 07 */	cmpwi r0, 7
/* 80770DE4  40 82 00 10 */	bne lbl_80770DF4
/* 80770DE8  38 00 00 07 */	li r0, 7
/* 80770DEC  B0 1E 0A 42 */	sth r0, 0xa42(r30)
/* 80770DF0  48 00 00 28 */	b lbl_80770E18
lbl_80770DF4:
/* 80770DF4  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80770DF8  40 82 00 10 */	bne lbl_80770E08
/* 80770DFC  38 00 00 1A */	li r0, 0x1a
/* 80770E00  B0 1E 0A 42 */	sth r0, 0xa42(r30)
/* 80770E04  48 00 00 14 */	b lbl_80770E18
lbl_80770E08:
/* 80770E08  38 00 00 03 */	li r0, 3
/* 80770E0C  B0 1E 0A 42 */	sth r0, 0xa42(r30)
/* 80770E10  38 00 00 28 */	li r0, 0x28
/* 80770E14  B0 1E 0A 60 */	sth r0, 0xa60(r30)
lbl_80770E18:
/* 80770E18  38 00 00 00 */	li r0, 0
/* 80770E1C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_80770E20:
/* 80770E20  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80770E24  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80770E28  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80770E2C  4B AF EC 55 */	bl cLib_addCalc0__FPfff
/* 80770E30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80770E34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80770E38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80770E3C  7C 08 03 A6 */	mtlr r0
/* 80770E40  38 21 00 20 */	addi r1, r1, 0x20
/* 80770E44  4E 80 00 20 */	blr 
