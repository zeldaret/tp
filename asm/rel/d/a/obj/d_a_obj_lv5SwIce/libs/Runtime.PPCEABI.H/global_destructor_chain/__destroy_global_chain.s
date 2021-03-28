lbl_80C6C8F4:
/* 80C6C8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C8F8  7C 08 02 A6 */	mflr r0
/* 80C6C8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6C904  3C 60 80 C7 */	lis r3, __global_destructor_chain@ha
/* 80C6C908  3B E3 D6 C0 */	addi r31, r3, __global_destructor_chain@l
/* 80C6C90C  48 00 00 20 */	b lbl_80C6C92C
lbl_80C6C910:
/* 80C6C910  80 05 00 00 */	lwz r0, 0(r5)
/* 80C6C914  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6C918  80 65 00 08 */	lwz r3, 8(r5)
/* 80C6C91C  38 80 FF FF */	li r4, -1
/* 80C6C920  81 85 00 04 */	lwz r12, 4(r5)
/* 80C6C924  7D 89 03 A6 */	mtctr r12
/* 80C6C928  4E 80 04 21 */	bctrl 
lbl_80C6C92C:
/* 80C6C92C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C6C930  28 05 00 00 */	cmplwi r5, 0
/* 80C6C934  40 82 FF DC */	bne lbl_80C6C910
/* 80C6C938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6C93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C940  7C 08 03 A6 */	mtlr r0
/* 80C6C944  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C948  4E 80 00 20 */	blr 
