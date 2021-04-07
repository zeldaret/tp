lbl_809B29DC:
/* 809B29DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B29E0  7C 08 02 A6 */	mflr r0
/* 809B29E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B29E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B29EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B29F0  41 82 00 10 */	beq lbl_809B2A00
/* 809B29F4  7C 80 07 35 */	extsh. r0, r4
/* 809B29F8  40 81 00 08 */	ble lbl_809B2A00
/* 809B29FC  4B 91 C3 41 */	bl __dl__FPv
lbl_809B2A00:
/* 809B2A00  7F E3 FB 78 */	mr r3, r31
/* 809B2A04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B2A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B2A0C  7C 08 03 A6 */	mtlr r0
/* 809B2A10  38 21 00 10 */	addi r1, r1, 0x10
/* 809B2A14  4E 80 00 20 */	blr 
