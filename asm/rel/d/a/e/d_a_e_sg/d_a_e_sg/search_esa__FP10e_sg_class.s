lbl_8078A9B8:
/* 8078A9B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078A9BC  7C 08 02 A6 */	mflr r0
/* 8078A9C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078A9C4  38 00 02 E4 */	li r0, 0x2e4
/* 8078A9C8  B0 01 00 08 */	sth r0, 8(r1)
/* 8078A9CC  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8078A9D0  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8078A9D4  38 81 00 08 */	addi r4, r1, 8
/* 8078A9D8  4B 88 EE 21 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8078A9DC  28 03 00 00 */	cmplwi r3, 0
/* 8078A9E0  41 82 00 48 */	beq lbl_8078AA28
/* 8078A9E4  A8 03 0F 7C */	lha r0, 0xf7c(r3)
/* 8078A9E8  2C 00 00 01 */	cmpwi r0, 1
/* 8078A9EC  40 82 00 3C */	bne lbl_8078AA28
/* 8078A9F0  A8 03 0F 7E */	lha r0, 0xf7e(r3)
/* 8078A9F4  2C 00 00 05 */	cmpwi r0, 5
/* 8078A9F8  41 82 00 30 */	beq lbl_8078AA28
/* 8078A9FC  88 03 10 0D */	lbz r0, 0x100d(r3)
/* 8078AA00  7C 00 07 75 */	extsb. r0, r0
/* 8078AA04  41 82 00 24 */	beq lbl_8078AA28
/* 8078AA08  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 8078AA0C  C0 23 05 90 */	lfs f1, 0x590(r3)
/* 8078AA10  3C 80 80 79 */	lis r4, lit_4015@ha /* 0x8078DDE4@ha */
/* 8078AA14  C0 04 DD E4 */	lfs f0, lit_4015@l(r4)  /* 0x8078DDE4@l */
/* 8078AA18  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078AA1C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078AA20  40 80 00 08 */	bge lbl_8078AA28
/* 8078AA24  48 00 00 08 */	b lbl_8078AA2C
lbl_8078AA28:
/* 8078AA28  38 60 00 00 */	li r3, 0
lbl_8078AA2C:
/* 8078AA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078AA30  7C 08 03 A6 */	mtlr r0
/* 8078AA34  38 21 00 10 */	addi r1, r1, 0x10
/* 8078AA38  4E 80 00 20 */	blr 
