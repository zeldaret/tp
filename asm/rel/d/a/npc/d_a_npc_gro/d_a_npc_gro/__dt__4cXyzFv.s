lbl_809DE81C:
/* 809DE81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DE820  7C 08 02 A6 */	mflr r0
/* 809DE824  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DE828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DE82C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DE830  41 82 00 10 */	beq lbl_809DE840
/* 809DE834  7C 80 07 35 */	extsh. r0, r4
/* 809DE838  40 81 00 08 */	ble lbl_809DE840
/* 809DE83C  4B 8F 05 00 */	b __dl__FPv
lbl_809DE840:
/* 809DE840  7F E3 FB 78 */	mr r3, r31
/* 809DE844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DE848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DE84C  7C 08 03 A6 */	mtlr r0
/* 809DE850  38 21 00 10 */	addi r1, r1, 0x10
/* 809DE854  4E 80 00 20 */	blr 
