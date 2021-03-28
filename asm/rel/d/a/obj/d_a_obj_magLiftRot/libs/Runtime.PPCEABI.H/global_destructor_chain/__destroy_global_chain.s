lbl_80C8E8F4:
/* 80C8E8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E8F8  7C 08 02 A6 */	mflr r0
/* 80C8E8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8E904  3C 60 80 C9 */	lis r3, __global_destructor_chain@ha
/* 80C8E908  3B E3 FC B8 */	addi r31, r3, __global_destructor_chain@l
/* 80C8E90C  48 00 00 20 */	b lbl_80C8E92C
lbl_80C8E910:
/* 80C8E910  80 05 00 00 */	lwz r0, 0(r5)
/* 80C8E914  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8E918  80 65 00 08 */	lwz r3, 8(r5)
/* 80C8E91C  38 80 FF FF */	li r4, -1
/* 80C8E920  81 85 00 04 */	lwz r12, 4(r5)
/* 80C8E924  7D 89 03 A6 */	mtctr r12
/* 80C8E928  4E 80 04 21 */	bctrl 
lbl_80C8E92C:
/* 80C8E92C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C8E930  28 05 00 00 */	cmplwi r5, 0
/* 80C8E934  40 82 FF DC */	bne lbl_80C8E910
/* 80C8E938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8E93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8E940  7C 08 03 A6 */	mtlr r0
/* 80C8E944  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8E948  4E 80 00 20 */	blr 
