lbl_809BD6D0:
/* 809BD6D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BD6D4  7C 08 02 A6 */	mflr r0
/* 809BD6D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BD6DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BD6E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BD6E4  41 82 00 10 */	beq lbl_809BD6F4
/* 809BD6E8  7C 80 07 35 */	extsh. r0, r4
/* 809BD6EC  40 81 00 08 */	ble lbl_809BD6F4
/* 809BD6F0  4B 91 16 4C */	b __dl__FPv
lbl_809BD6F4:
/* 809BD6F4  7F E3 FB 78 */	mr r3, r31
/* 809BD6F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BD6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BD700  7C 08 03 A6 */	mtlr r0
/* 809BD704  38 21 00 10 */	addi r1, r1, 0x10
/* 809BD708  4E 80 00 20 */	blr 
