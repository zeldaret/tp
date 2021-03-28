lbl_809BE8F4:
/* 809BE8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BE8F8  7C 08 02 A6 */	mflr r0
/* 809BE8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BE900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BE904  3C 60 80 9D */	lis r3, __global_destructor_chain@ha
/* 809BE908  3B E3 B2 F0 */	addi r31, r3, __global_destructor_chain@l
/* 809BE90C  48 00 00 20 */	b lbl_809BE92C
lbl_809BE910:
/* 809BE910  80 05 00 00 */	lwz r0, 0(r5)
/* 809BE914  90 1F 00 00 */	stw r0, 0(r31)
/* 809BE918  80 65 00 08 */	lwz r3, 8(r5)
/* 809BE91C  38 80 FF FF */	li r4, -1
/* 809BE920  81 85 00 04 */	lwz r12, 4(r5)
/* 809BE924  7D 89 03 A6 */	mtctr r12
/* 809BE928  4E 80 04 21 */	bctrl 
lbl_809BE92C:
/* 809BE92C  80 BF 00 00 */	lwz r5, 0(r31)
/* 809BE930  28 05 00 00 */	cmplwi r5, 0
/* 809BE934  40 82 FF DC */	bne lbl_809BE910
/* 809BE938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BE93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BE940  7C 08 03 A6 */	mtlr r0
/* 809BE944  38 21 00 10 */	addi r1, r1, 0x10
/* 809BE948  4E 80 00 20 */	blr 
