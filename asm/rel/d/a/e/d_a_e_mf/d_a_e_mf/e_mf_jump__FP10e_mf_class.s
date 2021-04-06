lbl_8070DBB4:
/* 8070DBB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8070DBB8  7C 08 02 A6 */	mflr r0
/* 8070DBBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8070DBC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8070DBC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8070DBC8  7C 7E 1B 78 */	mr r30, r3
/* 8070DBCC  3C 80 80 71 */	lis r4, lit_3828@ha /* 0x80713974@ha */
/* 8070DBD0  3B E4 39 74 */	addi r31, r4, lit_3828@l /* 0x80713974@l */
/* 8070DBD4  38 80 00 01 */	li r4, 1
/* 8070DBD8  98 83 06 D4 */	stb r4, 0x6d4(r3)
/* 8070DBDC  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8070DBE0  2C 00 00 02 */	cmpwi r0, 2
/* 8070DBE4  41 82 00 B4 */	beq lbl_8070DC98
/* 8070DBE8  40 80 00 14 */	bge lbl_8070DBFC
/* 8070DBEC  2C 00 00 00 */	cmpwi r0, 0
/* 8070DBF0  41 82 00 1C */	beq lbl_8070DC0C
/* 8070DBF4  40 80 00 38 */	bge lbl_8070DC2C
/* 8070DBF8  48 00 01 CC */	b lbl_8070DDC4
lbl_8070DBFC:
/* 8070DBFC  2C 00 00 04 */	cmpwi r0, 4
/* 8070DC00  41 82 01 3C */	beq lbl_8070DD3C
/* 8070DC04  40 80 01 C0 */	bge lbl_8070DDC4
/* 8070DC08  48 00 00 D0 */	b lbl_8070DCD8
lbl_8070DC0C:
/* 8070DC0C  38 80 00 1B */	li r4, 0x1b
/* 8070DC10  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070DC14  38 A0 00 00 */	li r5, 0
/* 8070DC18  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070DC1C  4B FF CC 11 */	bl anm_init__FP10e_mf_classifUcf
/* 8070DC20  38 00 00 01 */	li r0, 1
/* 8070DC24  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070DC28  48 00 01 9C */	b lbl_8070DDC4
lbl_8070DC2C:
/* 8070DC2C  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070DC30  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070DC34  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070DC38  40 82 00 18 */	bne lbl_8070DC50
/* 8070DC3C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070DC40  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070DC44  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070DC48  41 82 00 08 */	beq lbl_8070DC50
/* 8070DC4C  38 80 00 00 */	li r4, 0
lbl_8070DC50:
/* 8070DC50  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070DC54  41 82 01 70 */	beq lbl_8070DDC4
/* 8070DC58  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8070DC5C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8070DC60  38 00 00 02 */	li r0, 2
/* 8070DC64  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070DC68  38 00 00 03 */	li r0, 3
/* 8070DC6C  98 1E 10 C4 */	stb r0, 0x10c4(r30)
/* 8070DC70  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703DE@ha */
/* 8070DC74  38 03 03 DE */	addi r0, r3, 0x03DE /* 0x000703DE@l */
/* 8070DC78  90 01 00 10 */	stw r0, 0x10(r1)
/* 8070DC7C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070DC80  38 81 00 10 */	addi r4, r1, 0x10
/* 8070DC84  38 A0 FF FF */	li r5, -1
/* 8070DC88  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070DC8C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070DC90  7D 89 03 A6 */	mtctr r12
/* 8070DC94  4E 80 04 21 */	bctrl 
lbl_8070DC98:
/* 8070DC98  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8070DC9C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8070DCA0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8070DCA4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070DCA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070DCAC  4C 40 13 82 */	cror 2, 0, 2
/* 8070DCB0  40 82 01 14 */	bne lbl_8070DDC4
/* 8070DCB4  7F C3 F3 78 */	mr r3, r30
/* 8070DCB8  38 80 00 1C */	li r4, 0x1c
/* 8070DCBC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070DCC0  38 A0 00 00 */	li r5, 0
/* 8070DCC4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070DCC8  4B FF CB 65 */	bl anm_init__FP10e_mf_classifUcf
/* 8070DCCC  38 00 00 03 */	li r0, 3
/* 8070DCD0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070DCD4  48 00 00 F0 */	b lbl_8070DDC4
lbl_8070DCD8:
/* 8070DCD8  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 8070DCDC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8070DCE0  41 82 00 E4 */	beq lbl_8070DDC4
/* 8070DCE4  38 80 00 1D */	li r4, 0x1d
/* 8070DCE8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070DCEC  38 A0 00 00 */	li r5, 0
/* 8070DCF0  FC 40 08 90 */	fmr f2, f1
/* 8070DCF4  4B FF CB 39 */	bl anm_init__FP10e_mf_classifUcf
/* 8070DCF8  38 00 00 04 */	li r0, 4
/* 8070DCFC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070DD00  38 00 00 03 */	li r0, 3
/* 8070DD04  98 1E 10 C4 */	stb r0, 0x10c4(r30)
/* 8070DD08  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070DD0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D5@ha */
/* 8070DD10  38 03 03 D5 */	addi r0, r3, 0x03D5 /* 0x000703D5@l */
/* 8070DD14  90 01 00 0C */	stw r0, 0xc(r1)
/* 8070DD18  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070DD1C  38 81 00 0C */	addi r4, r1, 0xc
/* 8070DD20  38 A0 00 00 */	li r5, 0
/* 8070DD24  38 C0 FF FF */	li r6, -1
/* 8070DD28  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070DD2C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8070DD30  7D 89 03 A6 */	mtctr r12
/* 8070DD34  4E 80 04 21 */	bctrl 
/* 8070DD38  48 00 00 8C */	b lbl_8070DDC4
lbl_8070DD3C:
/* 8070DD3C  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070DD40  2C 00 00 01 */	cmpwi r0, 1
/* 8070DD44  40 82 00 30 */	bne lbl_8070DD74
/* 8070DD48  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D4@ha */
/* 8070DD4C  38 03 03 D4 */	addi r0, r3, 0x03D4 /* 0x000703D4@l */
/* 8070DD50  90 01 00 08 */	stw r0, 8(r1)
/* 8070DD54  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070DD58  38 81 00 08 */	addi r4, r1, 8
/* 8070DD5C  38 A0 00 00 */	li r5, 0
/* 8070DD60  38 C0 FF FF */	li r6, -1
/* 8070DD64  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070DD68  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8070DD6C  7D 89 03 A6 */	mtctr r12
/* 8070DD70  4E 80 04 21 */	bctrl 
lbl_8070DD74:
/* 8070DD74  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8070DD78  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070DD7C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8070DD80  4B B6 1D 01 */	bl cLib_addCalc0__FPfff
/* 8070DD84  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070DD88  38 80 00 01 */	li r4, 1
/* 8070DD8C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070DD90  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070DD94  40 82 00 18 */	bne lbl_8070DDAC
/* 8070DD98  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070DD9C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070DDA0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070DDA4  41 82 00 08 */	beq lbl_8070DDAC
/* 8070DDA8  38 80 00 00 */	li r4, 0
lbl_8070DDAC:
/* 8070DDAC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070DDB0  41 82 00 14 */	beq lbl_8070DDC4
/* 8070DDB4  38 00 00 03 */	li r0, 3
/* 8070DDB8  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070DDBC  38 00 00 00 */	li r0, 0
/* 8070DDC0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070DDC4:
/* 8070DDC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8070DDC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8070DDCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8070DDD0  7C 08 03 A6 */	mtlr r0
/* 8070DDD4  38 21 00 20 */	addi r1, r1, 0x20
/* 8070DDD8  4E 80 00 20 */	blr 
