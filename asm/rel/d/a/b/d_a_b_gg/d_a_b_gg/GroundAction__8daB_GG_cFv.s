lbl_805E8D48:
/* 805E8D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E8D4C  7C 08 02 A6 */	mflr r0
/* 805E8D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E8D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E8D58  93 C1 00 08 */	stw r30, 8(r1)
/* 805E8D5C  7C 7E 1B 78 */	mr r30, r3
/* 805E8D60  3B E0 00 00 */	li r31, 0
/* 805E8D64  88 03 05 C6 */	lbz r0, 0x5c6(r3)
/* 805E8D68  2C 00 00 03 */	cmpwi r0, 3
/* 805E8D6C  41 82 00 38 */	beq lbl_805E8DA4
/* 805E8D70  40 80 00 14 */	bge lbl_805E8D84
/* 805E8D74  2C 00 00 01 */	cmpwi r0, 1
/* 805E8D78  41 82 00 18 */	beq lbl_805E8D90
/* 805E8D7C  40 80 00 20 */	bge lbl_805E8D9C
/* 805E8D80  48 00 00 50 */	b lbl_805E8DD0
lbl_805E8D84:
/* 805E8D84  2C 00 00 05 */	cmpwi r0, 5
/* 805E8D88  40 80 00 48 */	bge lbl_805E8DD0
/* 805E8D8C  48 00 00 24 */	b lbl_805E8DB0
lbl_805E8D90:
/* 805E8D90  4B FF D3 E5 */	bl G_MoveAction__8daB_GG_cFv
/* 805E8D94  3B E0 00 0A */	li r31, 0xa
/* 805E8D98  48 00 00 38 */	b lbl_805E8DD0
lbl_805E8D9C:
/* 805E8D9C  4B FF E0 95 */	bl G_AttackAction__8daB_GG_cFv
/* 805E8DA0  48 00 00 30 */	b lbl_805E8DD0
lbl_805E8DA4:
/* 805E8DA4  4B FF E6 05 */	bl G_DamageAction__8daB_GG_cFv
/* 805E8DA8  3B E0 00 02 */	li r31, 2
/* 805E8DAC  48 00 00 24 */	b lbl_805E8DD0
lbl_805E8DB0:
/* 805E8DB0  88 1E 06 90 */	lbz r0, 0x690(r30)
/* 805E8DB4  28 00 00 00 */	cmplwi r0, 0
/* 805E8DB8  40 82 00 0C */	bne lbl_805E8DC4
/* 805E8DBC  4B FF F5 35 */	bl DeathCam__8daB_GG_cFv
/* 805E8DC0  48 00 00 10 */	b lbl_805E8DD0
lbl_805E8DC4:
/* 805E8DC4  4B FF F1 8D */	bl G_DeathAction1__8daB_GG_cFv
/* 805E8DC8  7F C3 F3 78 */	mr r3, r30
/* 805E8DCC  4B FF EF 85 */	bl G_DeathAction__8daB_GG_cFv
lbl_805E8DD0:
/* 805E8DD0  80 1E 05 D4 */	lwz r0, 0x5d4(r30)
/* 805E8DD4  2C 00 00 16 */	cmpwi r0, 0x16
/* 805E8DD8  41 82 00 10 */	beq lbl_805E8DE8
/* 805E8DDC  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 805E8DE0  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 805E8DE4  B0 1E 05 8E */	sth r0, 0x58e(r30)
lbl_805E8DE8:
/* 805E8DE8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805E8DEC  C0 3E 05 BC */	lfs f1, 0x5bc(r30)
/* 805E8DF0  3C 80 80 5F */	lis r4, lit_5018@ha
/* 805E8DF4  C0 44 D2 18 */	lfs f2, lit_5018@l(r4)
/* 805E8DF8  3C 80 80 5F */	lis r4, lit_3911@ha
/* 805E8DFC  C0 64 D0 60 */	lfs f3, lit_3911@l(r4)
/* 805E8E00  4B C8 6C 3C */	b cLib_addCalc2__FPffff
/* 805E8E04  38 7E 04 DE */	addi r3, r30, 0x4de
/* 805E8E08  A8 9E 05 BA */	lha r4, 0x5ba(r30)
/* 805E8E0C  7F E5 FB 78 */	mr r5, r31
/* 805E8E10  38 C0 10 00 */	li r6, 0x1000
/* 805E8E14  4B C8 77 F4 */	b cLib_addCalcAngleS2__FPssss
/* 805E8E18  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 805E8E1C  3C 80 80 5F */	lis r4, data_805ED730@ha
/* 805E8E20  38 84 D7 30 */	addi r4, r4, data_805ED730@l
/* 805E8E24  A8 84 00 00 */	lha r4, 0(r4)
/* 805E8E28  7F E5 FB 78 */	mr r5, r31
/* 805E8E2C  38 C0 10 00 */	li r6, 0x1000
/* 805E8E30  4B C8 77 D8 */	b cLib_addCalcAngleS2__FPssss
/* 805E8E34  38 7E 06 BE */	addi r3, r30, 0x6be
/* 805E8E38  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 805E8E3C  3C 80 80 5F */	lis r4, data_805ED730@ha
/* 805E8E40  A8 04 D7 30 */	lha r0, data_805ED730@l(r4)
/* 805E8E44  7C 05 00 50 */	subf r0, r5, r0
/* 805E8E48  7C 04 07 34 */	extsh r4, r0
/* 805E8E4C  7F E5 FB 78 */	mr r5, r31
/* 805E8E50  38 C0 01 00 */	li r6, 0x100
/* 805E8E54  4B C8 77 B4 */	b cLib_addCalcAngleS2__FPssss
/* 805E8E58  38 7E 06 C8 */	addi r3, r30, 0x6c8
/* 805E8E5C  38 80 00 00 */	li r4, 0
/* 805E8E60  38 A0 00 10 */	li r5, 0x10
/* 805E8E64  38 C0 10 00 */	li r6, 0x1000
/* 805E8E68  4B C8 77 A0 */	b cLib_addCalcAngleS2__FPssss
/* 805E8E6C  38 7E 06 CA */	addi r3, r30, 0x6ca
/* 805E8E70  38 80 00 00 */	li r4, 0
/* 805E8E74  38 A0 00 10 */	li r5, 0x10
/* 805E8E78  38 C0 10 00 */	li r6, 0x1000
/* 805E8E7C  4B C8 77 8C */	b cLib_addCalcAngleS2__FPssss
/* 805E8E80  38 7E 06 CC */	addi r3, r30, 0x6cc
/* 805E8E84  38 80 00 00 */	li r4, 0
/* 805E8E88  38 A0 00 10 */	li r5, 0x10
/* 805E8E8C  38 C0 10 00 */	li r6, 0x1000
/* 805E8E90  4B C8 77 78 */	b cLib_addCalcAngleS2__FPssss
/* 805E8E94  38 7E 06 CE */	addi r3, r30, 0x6ce
/* 805E8E98  38 80 00 00 */	li r4, 0
/* 805E8E9C  38 A0 00 10 */	li r5, 0x10
/* 805E8EA0  38 C0 10 00 */	li r6, 0x1000
/* 805E8EA4  4B C8 77 64 */	b cLib_addCalcAngleS2__FPssss
/* 805E8EA8  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 805E8EAC  38 80 00 00 */	li r4, 0
/* 805E8EB0  38 A0 00 10 */	li r5, 0x10
/* 805E8EB4  38 C0 10 00 */	li r6, 0x1000
/* 805E8EB8  4B C8 77 50 */	b cLib_addCalcAngleS2__FPssss
/* 805E8EBC  38 7E 06 D2 */	addi r3, r30, 0x6d2
/* 805E8EC0  38 80 00 00 */	li r4, 0
/* 805E8EC4  38 A0 00 10 */	li r5, 0x10
/* 805E8EC8  38 C0 10 00 */	li r6, 0x1000
/* 805E8ECC  4B C8 77 3C */	b cLib_addCalcAngleS2__FPssss
/* 805E8ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E8ED4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E8ED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E8EDC  7C 08 03 A6 */	mtlr r0
/* 805E8EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 805E8EE4  4E 80 00 20 */	blr 
