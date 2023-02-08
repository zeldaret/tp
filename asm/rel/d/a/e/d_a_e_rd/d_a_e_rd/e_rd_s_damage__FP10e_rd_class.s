lbl_8050AF78:
/* 8050AF78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050AF7C  7C 08 02 A6 */	mflr r0
/* 8050AF80  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050AF84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050AF88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8050AF8C  7C 7E 1B 78 */	mr r30, r3
/* 8050AF90  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 8050AF94  3B E3 85 84 */	addi r31, r3, lit_4208@l /* 0x80518584@l */
/* 8050AF98  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8050AF9C  2C 00 00 01 */	cmpwi r0, 1
/* 8050AFA0  41 82 00 78 */	beq lbl_8050B018
/* 8050AFA4  40 80 01 28 */	bge lbl_8050B0CC
/* 8050AFA8  2C 00 00 00 */	cmpwi r0, 0
/* 8050AFAC  40 80 00 08 */	bge lbl_8050AFB4
/* 8050AFB0  48 00 01 1C */	b lbl_8050B0CC
lbl_8050AFB4:
/* 8050AFB4  38 00 00 01 */	li r0, 1
/* 8050AFB8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050AFBC  38 00 00 0A */	li r0, 0xa
/* 8050AFC0  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050AFC4  88 1E 09 BE */	lbz r0, 0x9be(r30)
/* 8050AFC8  7C 00 07 75 */	extsb. r0, r0
/* 8050AFCC  41 82 01 00 */	beq lbl_8050B0CC
/* 8050AFD0  80 1E 09 8C */	lwz r0, 0x98c(r30)
/* 8050AFD4  90 01 00 08 */	stw r0, 8(r1)
/* 8050AFD8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8050AFDC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8050AFE0  38 81 00 08 */	addi r4, r1, 8
/* 8050AFE4  4B B0 E8 15 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8050AFE8  28 03 00 00 */	cmplwi r3, 0
/* 8050AFEC  41 82 00 18 */	beq lbl_8050B004
/* 8050AFF0  A0 83 06 BE */	lhz r4, 0x6be(r3)
/* 8050AFF4  88 1E 09 BE */	lbz r0, 0x9be(r30)
/* 8050AFF8  7C 00 07 74 */	extsb r0, r0
/* 8050AFFC  7C 80 00 78 */	andc r0, r4, r0
/* 8050B000  B0 03 06 BE */	sth r0, 0x6be(r3)
lbl_8050B004:
/* 8050B004  38 00 00 00 */	li r0, 0
/* 8050B008  98 1E 09 BE */	stb r0, 0x9be(r30)
/* 8050B00C  38 00 FF FF */	li r0, -1
/* 8050B010  90 1E 09 8C */	stw r0, 0x98c(r30)
/* 8050B014  48 00 00 B8 */	b lbl_8050B0CC
lbl_8050B018:
/* 8050B018  A8 1E 09 92 */	lha r0, 0x992(r30)
/* 8050B01C  2C 00 00 00 */	cmpwi r0, 0
/* 8050B020  41 82 00 10 */	beq lbl_8050B030
/* 8050B024  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 8050B028  60 00 00 80 */	ori r0, r0, 0x80
/* 8050B02C  B0 1E 05 8E */	sth r0, 0x58e(r30)
lbl_8050B030:
/* 8050B030  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8050B034  38 80 00 01 */	li r4, 1
/* 8050B038  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050B03C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050B040  40 82 00 18 */	bne lbl_8050B058
/* 8050B044  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050B048  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050B04C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050B050  41 82 00 08 */	beq lbl_8050B058
/* 8050B054  38 80 00 00 */	li r4, 0
lbl_8050B058:
/* 8050B058  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050B05C  41 82 00 70 */	beq lbl_8050B0CC
/* 8050B060  A8 1E 09 74 */	lha r0, 0x974(r30)
/* 8050B064  2C 00 00 07 */	cmpwi r0, 7
/* 8050B068  40 82 00 10 */	bne lbl_8050B078
/* 8050B06C  38 00 00 07 */	li r0, 7
/* 8050B070  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050B074  48 00 00 50 */	b lbl_8050B0C4
lbl_8050B078:
/* 8050B078  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8050B07C  40 82 00 10 */	bne lbl_8050B08C
/* 8050B080  38 00 00 1A */	li r0, 0x1a
/* 8050B084  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050B088  48 00 00 3C */	b lbl_8050B0C4
lbl_8050B08C:
/* 8050B08C  7F C3 F3 78 */	mr r3, r30
/* 8050B090  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050B094  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050B098  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8050B09C  4B FF A9 09 */	bl other_bg_check__FP10e_rd_classP10fopAc_ac_c
/* 8050B0A0  2C 03 00 00 */	cmpwi r3, 0
/* 8050B0A4  40 82 00 18 */	bne lbl_8050B0BC
/* 8050B0A8  38 00 00 03 */	li r0, 3
/* 8050B0AC  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050B0B0  38 00 00 28 */	li r0, 0x28
/* 8050B0B4  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050B0B8  48 00 00 0C */	b lbl_8050B0C4
lbl_8050B0BC:
/* 8050B0BC  38 00 00 00 */	li r0, 0
/* 8050B0C0  B0 1E 09 72 */	sth r0, 0x972(r30)
lbl_8050B0C4:
/* 8050B0C4  38 00 00 00 */	li r0, 0
/* 8050B0C8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8050B0CC:
/* 8050B0CC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8050B0D0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8050B0D4  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 8050B0D8  4B D6 49 A9 */	bl cLib_addCalc0__FPfff
/* 8050B0DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050B0E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8050B0E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050B0E8  7C 08 03 A6 */	mtlr r0
/* 8050B0EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8050B0F0  4E 80 00 20 */	blr 
