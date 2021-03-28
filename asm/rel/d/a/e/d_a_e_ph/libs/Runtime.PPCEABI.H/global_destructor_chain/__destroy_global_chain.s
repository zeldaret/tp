lbl_8073D3F4:
/* 8073D3F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073D3F8  7C 08 02 A6 */	mflr r0
/* 8073D3FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073D400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073D404  3C 60 80 74 */	lis r3, __global_destructor_chain@ha
/* 8073D408  3B E3 1D B8 */	addi r31, r3, __global_destructor_chain@l
/* 8073D40C  48 00 00 20 */	b lbl_8073D42C
lbl_8073D410:
/* 8073D410  80 05 00 00 */	lwz r0, 0(r5)
/* 8073D414  90 1F 00 00 */	stw r0, 0(r31)
/* 8073D418  80 65 00 08 */	lwz r3, 8(r5)
/* 8073D41C  38 80 FF FF */	li r4, -1
/* 8073D420  81 85 00 04 */	lwz r12, 4(r5)
/* 8073D424  7D 89 03 A6 */	mtctr r12
/* 8073D428  4E 80 04 21 */	bctrl 
lbl_8073D42C:
/* 8073D42C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8073D430  28 05 00 00 */	cmplwi r5, 0
/* 8073D434  40 82 FF DC */	bne lbl_8073D410
/* 8073D438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073D43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073D440  7C 08 03 A6 */	mtlr r0
/* 8073D444  38 21 00 10 */	addi r1, r1, 0x10
/* 8073D448  4E 80 00 20 */	blr 
