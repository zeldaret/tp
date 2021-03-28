lbl_80D62E64:
/* 80D62E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D62E68  7C 08 02 A6 */	mflr r0
/* 80D62E6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D62E70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D62E74  7C 7F 1B 78 */	mr r31, r3
/* 80D62E78  48 00 03 91 */	bl chkEvent__15daTag_SSDrink_cFv
/* 80D62E7C  2C 03 00 00 */	cmpwi r3, 0
/* 80D62E80  41 82 00 30 */	beq lbl_80D62EB0
/* 80D62E84  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80D62E88  4B 5F F1 90 */	b __ptmf_test
/* 80D62E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80D62E90  41 82 00 18 */	beq lbl_80D62EA8
/* 80D62E94  7F E3 FB 78 */	mr r3, r31
/* 80D62E98  38 80 00 00 */	li r4, 0
/* 80D62E9C  39 9F 05 C4 */	addi r12, r31, 0x5c4
/* 80D62EA0  4B 5F F1 E4 */	b __ptmf_scall
/* 80D62EA4  60 00 00 00 */	nop 
lbl_80D62EA8:
/* 80D62EA8  7F E3 FB 78 */	mr r3, r31
/* 80D62EAC  48 00 04 D9 */	bl orderEvent__15daTag_SSDrink_cFv
lbl_80D62EB0:
/* 80D62EB0  7F E3 FB 78 */	mr r3, r31
/* 80D62EB4  48 00 03 21 */	bl setAttnPos__15daTag_SSDrink_cFv
/* 80D62EB8  38 60 00 01 */	li r3, 1
/* 80D62EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D62EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D62EC4  7C 08 03 A6 */	mtlr r0
/* 80D62EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D62ECC  4E 80 00 20 */	blr 
