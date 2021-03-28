lbl_80AC5094:
/* 80AC5094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC5098  7C 08 02 A6 */	mflr r0
/* 80AC509C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC50A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC50A4  3C 60 80 AC */	lis r3, __global_destructor_chain@ha
/* 80AC50A8  3B E3 74 38 */	addi r31, r3, __global_destructor_chain@l
/* 80AC50AC  48 00 00 20 */	b lbl_80AC50CC
lbl_80AC50B0:
/* 80AC50B0  80 05 00 00 */	lwz r0, 0(r5)
/* 80AC50B4  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC50B8  80 65 00 08 */	lwz r3, 8(r5)
/* 80AC50BC  38 80 FF FF */	li r4, -1
/* 80AC50C0  81 85 00 04 */	lwz r12, 4(r5)
/* 80AC50C4  7D 89 03 A6 */	mtctr r12
/* 80AC50C8  4E 80 04 21 */	bctrl 
lbl_80AC50CC:
/* 80AC50CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80AC50D0  28 05 00 00 */	cmplwi r5, 0
/* 80AC50D4  40 82 FF DC */	bne lbl_80AC50B0
/* 80AC50D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC50DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC50E0  7C 08 03 A6 */	mtlr r0
/* 80AC50E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC50E8  4E 80 00 20 */	blr 
