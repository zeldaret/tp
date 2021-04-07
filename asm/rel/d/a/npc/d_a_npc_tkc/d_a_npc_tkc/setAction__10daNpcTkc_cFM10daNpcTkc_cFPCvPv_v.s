lbl_80B0DBC8:
/* 80B0DBC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0DBCC  7C 08 02 A6 */	mflr r0
/* 80B0DBD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0DBD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0DBD8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B0DBDC  7C 7E 1B 78 */	mr r30, r3
/* 80B0DBE0  7C 9F 23 78 */	mr r31, r4
/* 80B0DBE4  38 00 00 03 */	li r0, 3
/* 80B0DBE8  B0 03 0D 76 */	sth r0, 0xd76(r3)
/* 80B0DBEC  38 7E 0D 20 */	addi r3, r30, 0xd20
/* 80B0DBF0  4B 85 44 29 */	bl __ptmf_test
/* 80B0DBF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B0DBF8  41 82 00 14 */	beq lbl_80B0DC0C
/* 80B0DBFC  7F C3 F3 78 */	mr r3, r30
/* 80B0DC00  39 9E 0D 20 */	addi r12, r30, 0xd20
/* 80B0DC04  4B 85 44 81 */	bl __ptmf_scall
/* 80B0DC08  60 00 00 00 */	nop 
lbl_80B0DC0C:
/* 80B0DC0C  38 00 00 00 */	li r0, 0
/* 80B0DC10  B0 1E 0D 76 */	sth r0, 0xd76(r30)
/* 80B0DC14  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B0DC18  80 1F 00 04 */	lwz r0, 4(r31)
/* 80B0DC1C  90 7E 0D 20 */	stw r3, 0xd20(r30)
/* 80B0DC20  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 80B0DC24  80 1F 00 08 */	lwz r0, 8(r31)
/* 80B0DC28  90 1E 0D 28 */	stw r0, 0xd28(r30)
/* 80B0DC2C  38 7E 0D 20 */	addi r3, r30, 0xd20
/* 80B0DC30  4B 85 43 E9 */	bl __ptmf_test
/* 80B0DC34  2C 03 00 00 */	cmpwi r3, 0
/* 80B0DC38  41 82 00 14 */	beq lbl_80B0DC4C
/* 80B0DC3C  7F C3 F3 78 */	mr r3, r30
/* 80B0DC40  39 9E 0D 20 */	addi r12, r30, 0xd20
/* 80B0DC44  4B 85 44 41 */	bl __ptmf_scall
/* 80B0DC48  60 00 00 00 */	nop 
lbl_80B0DC4C:
/* 80B0DC4C  38 60 00 01 */	li r3, 1
/* 80B0DC50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0DC54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B0DC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0DC5C  7C 08 03 A6 */	mtlr r0
/* 80B0DC60  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0DC64  4E 80 00 20 */	blr 
