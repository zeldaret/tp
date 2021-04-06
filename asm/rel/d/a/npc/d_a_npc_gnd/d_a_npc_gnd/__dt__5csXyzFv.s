lbl_809BD70C:
/* 809BD70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BD710  7C 08 02 A6 */	mflr r0
/* 809BD714  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BD718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BD71C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BD720  41 82 00 10 */	beq lbl_809BD730
/* 809BD724  7C 80 07 35 */	extsh. r0, r4
/* 809BD728  40 81 00 08 */	ble lbl_809BD730
/* 809BD72C  4B 91 16 11 */	bl __dl__FPv
lbl_809BD730:
/* 809BD730  7F E3 FB 78 */	mr r3, r31
/* 809BD734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BD738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BD73C  7C 08 03 A6 */	mtlr r0
/* 809BD740  38 21 00 10 */	addi r1, r1, 0x10
/* 809BD744  4E 80 00 20 */	blr 
