lbl_805ED8F4:
/* 805ED8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805ED8F8  7C 08 02 A6 */	mflr r0
/* 805ED8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ED900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805ED904  3C 60 80 5F */	lis r3, __global_destructor_chain@ha
/* 805ED908  3B E3 47 88 */	addi r31, r3, __global_destructor_chain@l
/* 805ED90C  48 00 00 20 */	b lbl_805ED92C
lbl_805ED910:
/* 805ED910  80 05 00 00 */	lwz r0, 0(r5)
/* 805ED914  90 1F 00 00 */	stw r0, 0(r31)
/* 805ED918  80 65 00 08 */	lwz r3, 8(r5)
/* 805ED91C  38 80 FF FF */	li r4, -1
/* 805ED920  81 85 00 04 */	lwz r12, 4(r5)
/* 805ED924  7D 89 03 A6 */	mtctr r12
/* 805ED928  4E 80 04 21 */	bctrl 
lbl_805ED92C:
/* 805ED92C  80 BF 00 00 */	lwz r5, 0(r31)
/* 805ED930  28 05 00 00 */	cmplwi r5, 0
/* 805ED934  40 82 FF DC */	bne lbl_805ED910
/* 805ED938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805ED93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805ED940  7C 08 03 A6 */	mtlr r0
/* 805ED944  38 21 00 10 */	addi r1, r1, 0x10
/* 805ED948  4E 80 00 20 */	blr 
