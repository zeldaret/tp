lbl_809CFCD4:
/* 809CFCD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CFCD8  7C 08 02 A6 */	mflr r0
/* 809CFCDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CFCE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CFCE4  3C 60 80 9D */	lis r3, __global_destructor_chain@ha
/* 809CFCE8  3B E3 3E A8 */	addi r31, r3, __global_destructor_chain@l
/* 809CFCEC  48 00 00 20 */	b lbl_809CFD0C
lbl_809CFCF0:
/* 809CFCF0  80 05 00 00 */	lwz r0, 0(r5)
/* 809CFCF4  90 1F 00 00 */	stw r0, 0(r31)
/* 809CFCF8  80 65 00 08 */	lwz r3, 8(r5)
/* 809CFCFC  38 80 FF FF */	li r4, -1
/* 809CFD00  81 85 00 04 */	lwz r12, 4(r5)
/* 809CFD04  7D 89 03 A6 */	mtctr r12
/* 809CFD08  4E 80 04 21 */	bctrl 
lbl_809CFD0C:
/* 809CFD0C  80 BF 00 00 */	lwz r5, 0(r31)
/* 809CFD10  28 05 00 00 */	cmplwi r5, 0
/* 809CFD14  40 82 FF DC */	bne lbl_809CFCF0
/* 809CFD18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CFD1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CFD20  7C 08 03 A6 */	mtlr r0
/* 809CFD24  38 21 00 10 */	addi r1, r1, 0x10
/* 809CFD28  4E 80 00 20 */	blr 
