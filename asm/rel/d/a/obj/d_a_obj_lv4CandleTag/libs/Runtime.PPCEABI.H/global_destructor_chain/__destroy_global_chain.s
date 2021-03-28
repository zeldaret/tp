lbl_80C5D3F4:
/* 80C5D3F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D3F8  7C 08 02 A6 */	mflr r0
/* 80C5D3FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5D404  3C 60 80 C6 */	lis r3, __global_destructor_chain@ha
/* 80C5D408  3B E3 DC 90 */	addi r31, r3, __global_destructor_chain@l
/* 80C5D40C  48 00 00 20 */	b lbl_80C5D42C
lbl_80C5D410:
/* 80C5D410  80 05 00 00 */	lwz r0, 0(r5)
/* 80C5D414  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5D418  80 65 00 08 */	lwz r3, 8(r5)
/* 80C5D41C  38 80 FF FF */	li r4, -1
/* 80C5D420  81 85 00 04 */	lwz r12, 4(r5)
/* 80C5D424  7D 89 03 A6 */	mtctr r12
/* 80C5D428  4E 80 04 21 */	bctrl 
lbl_80C5D42C:
/* 80C5D42C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C5D430  28 05 00 00 */	cmplwi r5, 0
/* 80C5D434  40 82 FF DC */	bne lbl_80C5D410
/* 80C5D438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5D43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D440  7C 08 03 A6 */	mtlr r0
/* 80C5D444  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D448  4E 80 00 20 */	blr 
