lbl_80BFE1D4:
/* 80BFE1D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFE1D8  7C 08 02 A6 */	mflr r0
/* 80BFE1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFE1E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFE1E4  3C 60 80 C0 */	lis r3, __global_destructor_chain@ha
/* 80BFE1E8  3B E3 FE 00 */	addi r31, r3, __global_destructor_chain@l
/* 80BFE1EC  48 00 00 20 */	b lbl_80BFE20C
lbl_80BFE1F0:
/* 80BFE1F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80BFE1F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFE1F8  80 65 00 08 */	lwz r3, 8(r5)
/* 80BFE1FC  38 80 FF FF */	li r4, -1
/* 80BFE200  81 85 00 04 */	lwz r12, 4(r5)
/* 80BFE204  7D 89 03 A6 */	mtctr r12
/* 80BFE208  4E 80 04 21 */	bctrl 
lbl_80BFE20C:
/* 80BFE20C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BFE210  28 05 00 00 */	cmplwi r5, 0
/* 80BFE214  40 82 FF DC */	bne lbl_80BFE1F0
/* 80BFE218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFE21C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFE220  7C 08 03 A6 */	mtlr r0
/* 80BFE224  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFE228  4E 80 00 20 */	blr 
