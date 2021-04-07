lbl_80CBC7F8:
/* 80CBC7F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBC7FC  7C 08 02 A6 */	mflr r0
/* 80CBC800  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBC804  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CBC808  7C 7F 1B 78 */	mr r31, r3
/* 80CBC80C  A8 03 05 AA */	lha r0, 0x5aa(r3)
/* 80CBC810  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CBC814  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CBC818  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CBC81C  7C 43 04 2E */	lfsx f2, r3, r0
/* 80CBC820  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 80CBC824  3C 60 80 CC */	lis r3, lit_3669@ha /* 0x80CBDAAC@ha */
/* 80CBC828  C8 23 DA AC */	lfd f1, lit_3669@l(r3)  /* 0x80CBDAAC@l */
/* 80CBC82C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CBC830  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBC834  3C 00 43 30 */	lis r0, 0x4330
/* 80CBC838  90 01 00 08 */	stw r0, 8(r1)
/* 80CBC83C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CBC840  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CBC844  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CBC848  FC 00 00 1E */	fctiwz f0, f0
/* 80CBC84C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CBC850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC854  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CBC858  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80CBC85C  38 80 00 10 */	li r4, 0x10
/* 80CBC860  38 A0 01 00 */	li r5, 0x100
/* 80CBC864  38 C0 00 50 */	li r6, 0x50
/* 80CBC868  38 E0 00 00 */	li r7, 0
/* 80CBC86C  4B 5B 3C D5 */	bl cLib_addCalcAngleS__FPsssss
/* 80CBC870  A8 7F 05 AA */	lha r3, 0x5aa(r31)
/* 80CBC874  A8 1F 05 B0 */	lha r0, 0x5b0(r31)
/* 80CBC878  7C 03 02 14 */	add r0, r3, r0
/* 80CBC87C  B0 1F 05 AA */	sth r0, 0x5aa(r31)
/* 80CBC880  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80CBC884  38 80 00 00 */	li r4, 0
/* 80CBC888  38 A0 00 15 */	li r5, 0x15
/* 80CBC88C  4B 5B 43 05 */	bl cLib_chaseAngleS__FPsss
/* 80CBC890  2C 03 00 00 */	cmpwi r3, 0
/* 80CBC894  41 82 00 14 */	beq lbl_80CBC8A8
/* 80CBC898  38 00 00 01 */	li r0, 1
/* 80CBC89C  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80CBC8A0  38 00 00 00 */	li r0, 0
/* 80CBC8A4  B0 1F 05 AA */	sth r0, 0x5aa(r31)
lbl_80CBC8A8:
/* 80CBC8A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CBC8AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBC8B0  7C 08 03 A6 */	mtlr r0
/* 80CBC8B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBC8B8  4E 80 00 20 */	blr 
