lbl_80BD84C0:
/* 80BD84C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD84C4  7C 08 02 A6 */	mflr r0
/* 80BD84C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD84CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD84D0  7C 7F 1B 78 */	mr r31, r3
/* 80BD84D4  3C 60 80 BE */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BDA0C0@ha */
/* 80BD84D8  38 C3 A0 C0 */	addi r6, r3, cNullVec__6Z2Calc@l /* 0x80BDA0C0@l */
/* 80BD84DC  3C 60 80 BE */	lis r3, data_80BDA370@ha /* 0x80BDA370@ha */
/* 80BD84E0  38 A3 A3 70 */	addi r5, r3, data_80BDA370@l /* 0x80BDA370@l */
/* 80BD84E4  88 05 00 00 */	lbz r0, 0(r5)
/* 80BD84E8  7C 00 07 75 */	extsb. r0, r0
/* 80BD84EC  40 82 00 58 */	bne lbl_80BD8544
/* 80BD84F0  80 66 01 38 */	lwz r3, 0x138(r6)
/* 80BD84F4  80 06 01 3C */	lwz r0, 0x13c(r6)
/* 80BD84F8  90 66 01 5C */	stw r3, 0x15c(r6)
/* 80BD84FC  90 06 01 60 */	stw r0, 0x160(r6)
/* 80BD8500  80 06 01 40 */	lwz r0, 0x140(r6)
/* 80BD8504  90 06 01 64 */	stw r0, 0x164(r6)
/* 80BD8508  38 86 01 5C */	addi r4, r6, 0x15c
/* 80BD850C  80 66 01 44 */	lwz r3, 0x144(r6)
/* 80BD8510  80 06 01 48 */	lwz r0, 0x148(r6)
/* 80BD8514  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BD8518  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BD851C  80 06 01 4C */	lwz r0, 0x14c(r6)
/* 80BD8520  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BD8524  80 66 01 50 */	lwz r3, 0x150(r6)
/* 80BD8528  80 06 01 54 */	lwz r0, 0x154(r6)
/* 80BD852C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80BD8530  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80BD8534  80 06 01 58 */	lwz r0, 0x158(r6)
/* 80BD8538  90 04 00 20 */	stw r0, 0x20(r4)
/* 80BD853C  38 00 00 01 */	li r0, 1
/* 80BD8540  98 05 00 00 */	stb r0, 0(r5)
lbl_80BD8544:
/* 80BD8544  7F E3 FB 78 */	mr r3, r31
/* 80BD8548  88 1F 0E 92 */	lbz r0, 0xe92(r31)
/* 80BD854C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BD8550  39 86 01 5C */	addi r12, r6, 0x15c
/* 80BD8554  7D 8C 02 14 */	add r12, r12, r0
/* 80BD8558  4B 78 9B 2D */	bl __ptmf_scall
/* 80BD855C  60 00 00 00 */	nop 
/* 80BD8560  3C 60 80 BE */	lis r3, lit_3829@ha /* 0x80BDA008@ha */
/* 80BD8564  C0 03 A0 08 */	lfs f0, lit_3829@l(r3)  /* 0x80BDA008@l */
/* 80BD8568  C0 3F 0F 50 */	lfs f1, 0xf50(r31)
/* 80BD856C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BD8570  41 82 00 10 */	beq lbl_80BD8580
/* 80BD8574  7F E3 FB 78 */	mr r3, r31
/* 80BD8578  38 80 00 00 */	li r4, 0
/* 80BD857C  48 00 0D E1 */	bl setPower__12daObjCwall_cFfPs
lbl_80BD8580:
/* 80BD8580  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD8584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD8588  7C 08 03 A6 */	mtlr r0
/* 80BD858C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD8590  4E 80 00 20 */	blr 
