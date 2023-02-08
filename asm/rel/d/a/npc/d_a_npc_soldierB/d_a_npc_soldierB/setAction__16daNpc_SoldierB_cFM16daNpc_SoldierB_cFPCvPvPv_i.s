lbl_80AF4534:
/* 80AF4534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF4538  7C 08 02 A6 */	mflr r0
/* 80AF453C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF4540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF4544  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF4548  7C 7E 1B 78 */	mr r30, r3
/* 80AF454C  7C 9F 23 78 */	mr r31, r4
/* 80AF4550  38 00 00 03 */	li r0, 3
/* 80AF4554  B0 03 0E 16 */	sth r0, 0xe16(r3)
/* 80AF4558  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80AF455C  4B 86 DA BD */	bl __ptmf_test
/* 80AF4560  2C 03 00 00 */	cmpwi r3, 0
/* 80AF4564  41 82 00 18 */	beq lbl_80AF457C
/* 80AF4568  7F C3 F3 78 */	mr r3, r30
/* 80AF456C  38 80 00 00 */	li r4, 0
/* 80AF4570  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80AF4574  4B 86 DB 11 */	bl __ptmf_scall
/* 80AF4578  60 00 00 00 */	nop 
lbl_80AF457C:
/* 80AF457C  38 00 00 00 */	li r0, 0
/* 80AF4580  B0 1E 0E 16 */	sth r0, 0xe16(r30)
/* 80AF4584  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AF4588  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AF458C  90 7E 0D DC */	stw r3, 0xddc(r30)
/* 80AF4590  90 1E 0D E0 */	stw r0, 0xde0(r30)
/* 80AF4594  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AF4598  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80AF459C  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80AF45A0  4B 86 DA 79 */	bl __ptmf_test
/* 80AF45A4  2C 03 00 00 */	cmpwi r3, 0
/* 80AF45A8  41 82 00 18 */	beq lbl_80AF45C0
/* 80AF45AC  7F C3 F3 78 */	mr r3, r30
/* 80AF45B0  38 80 00 00 */	li r4, 0
/* 80AF45B4  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80AF45B8  4B 86 DA CD */	bl __ptmf_scall
/* 80AF45BC  60 00 00 00 */	nop 
lbl_80AF45C0:
/* 80AF45C0  38 60 00 01 */	li r3, 1
/* 80AF45C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF45C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF45CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF45D0  7C 08 03 A6 */	mtlr r0
/* 80AF45D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF45D8  4E 80 00 20 */	blr 
