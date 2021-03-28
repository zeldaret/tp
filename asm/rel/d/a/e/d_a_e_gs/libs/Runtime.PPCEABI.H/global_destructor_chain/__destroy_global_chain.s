lbl_806DF414:
/* 806DF414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DF418  7C 08 02 A6 */	mflr r0
/* 806DF41C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DF420  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DF424  3C 60 80 6E */	lis r3, __global_destructor_chain@ha
/* 806DF428  3B E3 FE 90 */	addi r31, r3, __global_destructor_chain@l
/* 806DF42C  48 00 00 20 */	b lbl_806DF44C
lbl_806DF430:
/* 806DF430  80 05 00 00 */	lwz r0, 0(r5)
/* 806DF434  90 1F 00 00 */	stw r0, 0(r31)
/* 806DF438  80 65 00 08 */	lwz r3, 8(r5)
/* 806DF43C  38 80 FF FF */	li r4, -1
/* 806DF440  81 85 00 04 */	lwz r12, 4(r5)
/* 806DF444  7D 89 03 A6 */	mtctr r12
/* 806DF448  4E 80 04 21 */	bctrl 
lbl_806DF44C:
/* 806DF44C  80 BF 00 00 */	lwz r5, 0(r31)
/* 806DF450  28 05 00 00 */	cmplwi r5, 0
/* 806DF454  40 82 FF DC */	bne lbl_806DF430
/* 806DF458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DF45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DF460  7C 08 03 A6 */	mtlr r0
/* 806DF464  38 21 00 10 */	addi r1, r1, 0x10
/* 806DF468  4E 80 00 20 */	blr 
