lbl_80A85614:
/* 80A85614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A85618  7C 08 02 A6 */	mflr r0
/* 80A8561C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A85620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A85624  93 C1 00 08 */	stw r30, 8(r1)
/* 80A85628  7C 7E 1B 78 */	mr r30, r3
/* 80A8562C  7C 9F 23 78 */	mr r31, r4
/* 80A85630  38 00 00 03 */	li r0, 3
/* 80A85634  B0 03 0E 0A */	sth r0, 0xe0a(r3)
/* 80A85638  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80A8563C  4B 8D C9 DC */	b __ptmf_test
/* 80A85640  2C 03 00 00 */	cmpwi r3, 0
/* 80A85644  41 82 00 18 */	beq lbl_80A8565C
/* 80A85648  7F C3 F3 78 */	mr r3, r30
/* 80A8564C  38 80 00 00 */	li r4, 0
/* 80A85650  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80A85654  4B 8D CA 30 */	b __ptmf_scall
/* 80A85658  60 00 00 00 */	nop 
lbl_80A8565C:
/* 80A8565C  38 00 00 00 */	li r0, 0
/* 80A85660  B0 1E 0E 0A */	sth r0, 0xe0a(r30)
/* 80A85664  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A85668  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A8566C  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80A85670  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80A85674  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A85678  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80A8567C  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80A85680  4B 8D C9 98 */	b __ptmf_test
/* 80A85684  2C 03 00 00 */	cmpwi r3, 0
/* 80A85688  41 82 00 18 */	beq lbl_80A856A0
/* 80A8568C  7F C3 F3 78 */	mr r3, r30
/* 80A85690  38 80 00 00 */	li r4, 0
/* 80A85694  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80A85698  4B 8D C9 EC */	b __ptmf_scall
/* 80A8569C  60 00 00 00 */	nop 
lbl_80A856A0:
/* 80A856A0  38 60 00 01 */	li r3, 1
/* 80A856A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A856A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A856AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A856B0  7C 08 03 A6 */	mtlr r0
/* 80A856B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A856B8  4E 80 00 20 */	blr 
