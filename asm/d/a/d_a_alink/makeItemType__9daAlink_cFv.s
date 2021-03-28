lbl_800BFD74:
/* 800BFD74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BFD78  7C 08 02 A6 */	mflr r0
/* 800BFD7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BFD80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BFD84  7C 7F 1B 78 */	mr r31, r3
/* 800BFD88  4B FF FB 49 */	bl setItemModel__9daAlink_cFv
/* 800BFD8C  2C 03 00 00 */	cmpwi r3, 0
/* 800BFD90  40 82 00 0C */	bne lbl_800BFD9C
/* 800BFD94  7F E3 FB 78 */	mr r3, r31
/* 800BFD98  4B FF FC 59 */	bl setItemActor__9daAlink_cFv
lbl_800BFD9C:
/* 800BFD9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BFDA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BFDA4  7C 08 03 A6 */	mtlr r0
/* 800BFDA8  38 21 00 10 */	addi r1, r1, 0x10
/* 800BFDAC  4E 80 00 20 */	blr 
