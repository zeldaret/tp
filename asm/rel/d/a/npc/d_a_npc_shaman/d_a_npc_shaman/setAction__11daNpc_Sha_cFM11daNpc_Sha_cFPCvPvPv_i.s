lbl_80AE4534:
/* 80AE4534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE4538  7C 08 02 A6 */	mflr r0
/* 80AE453C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE4540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE4544  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE4548  7C 7E 1B 78 */	mr r30, r3
/* 80AE454C  7C 9F 23 78 */	mr r31, r4
/* 80AE4550  38 00 00 03 */	li r0, 3
/* 80AE4554  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80AE4558  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80AE455C  4B 87 DA BC */	b __ptmf_test
/* 80AE4560  2C 03 00 00 */	cmpwi r3, 0
/* 80AE4564  41 82 00 18 */	beq lbl_80AE457C
/* 80AE4568  7F C3 F3 78 */	mr r3, r30
/* 80AE456C  38 80 00 00 */	li r4, 0
/* 80AE4570  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80AE4574  4B 87 DB 10 */	b __ptmf_scall
/* 80AE4578  60 00 00 00 */	nop 
lbl_80AE457C:
/* 80AE457C  38 00 00 00 */	li r0, 0
/* 80AE4580  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80AE4584  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AE4588  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AE458C  90 7E 0F 90 */	stw r3, 0xf90(r30)
/* 80AE4590  90 1E 0F 94 */	stw r0, 0xf94(r30)
/* 80AE4594  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AE4598  90 1E 0F 98 */	stw r0, 0xf98(r30)
/* 80AE459C  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80AE45A0  4B 87 DA 78 */	b __ptmf_test
/* 80AE45A4  2C 03 00 00 */	cmpwi r3, 0
/* 80AE45A8  41 82 00 18 */	beq lbl_80AE45C0
/* 80AE45AC  7F C3 F3 78 */	mr r3, r30
/* 80AE45B0  38 80 00 00 */	li r4, 0
/* 80AE45B4  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80AE45B8  4B 87 DA CC */	b __ptmf_scall
/* 80AE45BC  60 00 00 00 */	nop 
lbl_80AE45C0:
/* 80AE45C0  38 60 00 01 */	li r3, 1
/* 80AE45C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE45C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE45CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE45D0  7C 08 03 A6 */	mtlr r0
/* 80AE45D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE45D8  4E 80 00 20 */	blr 
