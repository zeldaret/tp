lbl_80B6A4F0:
/* 80B6A4F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6A4F4  7C 08 02 A6 */	mflr r0
/* 80B6A4F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6A4FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6A500  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6A504  7C 7E 1B 78 */	mr r30, r3
/* 80B6A508  7C 9F 23 78 */	mr r31, r4
/* 80B6A50C  38 00 00 03 */	li r0, 3
/* 80B6A510  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80B6A514  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80B6A518  4B 7F 7B 01 */	bl __ptmf_test
/* 80B6A51C  2C 03 00 00 */	cmpwi r3, 0
/* 80B6A520  41 82 00 18 */	beq lbl_80B6A538
/* 80B6A524  7F C3 F3 78 */	mr r3, r30
/* 80B6A528  38 80 00 00 */	li r4, 0
/* 80B6A52C  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80B6A530  4B 7F 7B 55 */	bl __ptmf_scall
/* 80B6A534  60 00 00 00 */	nop 
lbl_80B6A538:
/* 80B6A538  38 00 00 00 */	li r0, 0
/* 80B6A53C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B6A540  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B6A544  80 1F 00 04 */	lwz r0, 4(r31)
/* 80B6A548  90 7E 0F 90 */	stw r3, 0xf90(r30)
/* 80B6A54C  90 1E 0F 94 */	stw r0, 0xf94(r30)
/* 80B6A550  80 1F 00 08 */	lwz r0, 8(r31)
/* 80B6A554  90 1E 0F 98 */	stw r0, 0xf98(r30)
/* 80B6A558  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80B6A55C  4B 7F 7A BD */	bl __ptmf_test
/* 80B6A560  2C 03 00 00 */	cmpwi r3, 0
/* 80B6A564  41 82 00 18 */	beq lbl_80B6A57C
/* 80B6A568  7F C3 F3 78 */	mr r3, r30
/* 80B6A56C  38 80 00 00 */	li r4, 0
/* 80B6A570  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 80B6A574  4B 7F 7B 11 */	bl __ptmf_scall
/* 80B6A578  60 00 00 00 */	nop 
lbl_80B6A57C:
/* 80B6A57C  38 60 00 01 */	li r3, 1
/* 80B6A580  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6A584  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6A588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6A58C  7C 08 03 A6 */	mtlr r0
/* 80B6A590  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6A594  4E 80 00 20 */	blr 
