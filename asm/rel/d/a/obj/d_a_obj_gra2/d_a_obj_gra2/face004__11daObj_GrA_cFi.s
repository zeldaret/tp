lbl_80C04518:
/* 80C04518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C0451C  7C 08 02 A6 */	mflr r0
/* 80C04520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C04528  7C 7F 1B 78 */	mr r31, r3
/* 80C0452C  2C 04 00 00 */	cmpwi r4, 0
/* 80C04530  41 82 00 18 */	beq lbl_80C04548
/* 80C04534  38 80 00 1C */	li r4, 0x1c
/* 80C04538  38 A0 00 01 */	li r5, 1
/* 80C0453C  C0 3F 0A 98 */	lfs f1, 0xa98(r31)
/* 80C04540  4B FF CF B5 */	bl setFaceAnm__11daObj_GrA_cFibf
/* 80C04544  48 00 00 5C */	b lbl_80C045A0
lbl_80C04548:
/* 80C04548  38 80 00 01 */	li r4, 1
/* 80C0454C  88 1F 07 F1 */	lbz r0, 0x7f1(r31)
/* 80C04550  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C04554  40 82 00 1C */	bne lbl_80C04570
/* 80C04558  3C 60 80 C1 */	lis r3, lit_4333@ha
/* 80C0455C  C0 23 FB 98 */	lfs f1, lit_4333@l(r3)
/* 80C04560  C0 1F 07 F8 */	lfs f0, 0x7f8(r31)
/* 80C04564  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C04568  41 82 00 08 */	beq lbl_80C04570
/* 80C0456C  38 80 00 00 */	li r4, 0
lbl_80C04570:
/* 80C04570  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C04574  41 82 00 2C */	beq lbl_80C045A0
/* 80C04578  7F E3 FB 78 */	mr r3, r31
/* 80C0457C  38 80 00 00 */	li r4, 0
/* 80C04580  3C A0 80 C1 */	lis r5, lit_4618@ha
/* 80C04584  C0 25 FB B4 */	lfs f1, lit_4618@l(r5)
/* 80C04588  4B FF D2 25 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0458C  7F E3 FB 78 */	mr r3, r31
/* 80C04590  38 80 00 16 */	li r4, 0x16
/* 80C04594  38 A0 00 01 */	li r5, 1
/* 80C04598  C0 3F 0A 98 */	lfs f1, 0xa98(r31)
/* 80C0459C  4B FF CF 59 */	bl setFaceAnm__11daObj_GrA_cFibf
lbl_80C045A0:
/* 80C045A0  38 60 00 01 */	li r3, 1
/* 80C045A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C045A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C045AC  7C 08 03 A6 */	mtlr r0
/* 80C045B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C045B4  4E 80 00 20 */	blr 
