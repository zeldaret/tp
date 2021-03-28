lbl_809AFCF4:
/* 809AFCF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AFCF8  7C 08 02 A6 */	mflr r0
/* 809AFCFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AFD00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AFD04  3C 60 80 9B */	lis r3, __global_destructor_chain@ha
/* 809AFD08  3B E3 19 E0 */	addi r31, r3, __global_destructor_chain@l
/* 809AFD0C  48 00 00 20 */	b lbl_809AFD2C
lbl_809AFD10:
/* 809AFD10  80 05 00 00 */	lwz r0, 0(r5)
/* 809AFD14  90 1F 00 00 */	stw r0, 0(r31)
/* 809AFD18  80 65 00 08 */	lwz r3, 8(r5)
/* 809AFD1C  38 80 FF FF */	li r4, -1
/* 809AFD20  81 85 00 04 */	lwz r12, 4(r5)
/* 809AFD24  7D 89 03 A6 */	mtctr r12
/* 809AFD28  4E 80 04 21 */	bctrl 
lbl_809AFD2C:
/* 809AFD2C  80 BF 00 00 */	lwz r5, 0(r31)
/* 809AFD30  28 05 00 00 */	cmplwi r5, 0
/* 809AFD34  40 82 FF DC */	bne lbl_809AFD10
/* 809AFD38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AFD3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AFD40  7C 08 03 A6 */	mtlr r0
/* 809AFD44  38 21 00 10 */	addi r1, r1, 0x10
/* 809AFD48  4E 80 00 20 */	blr 
