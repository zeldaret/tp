lbl_809DCDD0:
/* 809DCDD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DCDD4  7C 08 02 A6 */	mflr r0
/* 809DCDD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DCDDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DCDE0  93 C1 00 08 */	stw r30, 8(r1)
/* 809DCDE4  7C 7E 1B 78 */	mr r30, r3
/* 809DCDE8  7C 9F 23 78 */	mr r31, r4
/* 809DCDEC  38 00 00 03 */	li r0, 3
/* 809DCDF0  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 809DCDF4  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 809DCDF8  4B 98 52 21 */	bl __ptmf_test
/* 809DCDFC  2C 03 00 00 */	cmpwi r3, 0
/* 809DCE00  41 82 00 18 */	beq lbl_809DCE18
/* 809DCE04  7F C3 F3 78 */	mr r3, r30
/* 809DCE08  38 80 00 00 */	li r4, 0
/* 809DCE0C  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 809DCE10  4B 98 52 75 */	bl __ptmf_scall
/* 809DCE14  60 00 00 00 */	nop 
lbl_809DCE18:
/* 809DCE18  38 00 00 00 */	li r0, 0
/* 809DCE1C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809DCE20  80 7F 00 00 */	lwz r3, 0(r31)
/* 809DCE24  80 1F 00 04 */	lwz r0, 4(r31)
/* 809DCE28  90 7E 0D E0 */	stw r3, 0xde0(r30)
/* 809DCE2C  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 809DCE30  80 1F 00 08 */	lwz r0, 8(r31)
/* 809DCE34  90 1E 0D E8 */	stw r0, 0xde8(r30)
/* 809DCE38  38 7E 0D E0 */	addi r3, r30, 0xde0
/* 809DCE3C  4B 98 51 DD */	bl __ptmf_test
/* 809DCE40  2C 03 00 00 */	cmpwi r3, 0
/* 809DCE44  41 82 00 18 */	beq lbl_809DCE5C
/* 809DCE48  7F C3 F3 78 */	mr r3, r30
/* 809DCE4C  38 80 00 00 */	li r4, 0
/* 809DCE50  39 9E 0D E0 */	addi r12, r30, 0xde0
/* 809DCE54  4B 98 52 31 */	bl __ptmf_scall
/* 809DCE58  60 00 00 00 */	nop 
lbl_809DCE5C:
/* 809DCE5C  38 60 00 01 */	li r3, 1
/* 809DCE60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DCE64  83 C1 00 08 */	lwz r30, 8(r1)
/* 809DCE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DCE6C  7C 08 03 A6 */	mtlr r0
/* 809DCE70  38 21 00 10 */	addi r1, r1, 0x10
/* 809DCE74  4E 80 00 20 */	blr 
