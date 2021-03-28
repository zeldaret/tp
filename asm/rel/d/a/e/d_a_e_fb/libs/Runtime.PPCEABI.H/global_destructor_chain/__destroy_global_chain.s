lbl_806B6454:
/* 806B6454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B6458  7C 08 02 A6 */	mflr r0
/* 806B645C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B6460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B6464  3C 60 80 6C */	lis r3, __global_destructor_chain@ha
/* 806B6468  3B E3 91 A8 */	addi r31, r3, __global_destructor_chain@l
/* 806B646C  48 00 00 20 */	b lbl_806B648C
lbl_806B6470:
/* 806B6470  80 05 00 00 */	lwz r0, 0(r5)
/* 806B6474  90 1F 00 00 */	stw r0, 0(r31)
/* 806B6478  80 65 00 08 */	lwz r3, 8(r5)
/* 806B647C  38 80 FF FF */	li r4, -1
/* 806B6480  81 85 00 04 */	lwz r12, 4(r5)
/* 806B6484  7D 89 03 A6 */	mtctr r12
/* 806B6488  4E 80 04 21 */	bctrl 
lbl_806B648C:
/* 806B648C  80 BF 00 00 */	lwz r5, 0(r31)
/* 806B6490  28 05 00 00 */	cmplwi r5, 0
/* 806B6494  40 82 FF DC */	bne lbl_806B6470
/* 806B6498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B649C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B64A0  7C 08 03 A6 */	mtlr r0
/* 806B64A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806B64A8  4E 80 00 20 */	blr 
