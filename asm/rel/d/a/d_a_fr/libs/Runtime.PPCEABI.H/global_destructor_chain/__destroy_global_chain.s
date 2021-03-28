lbl_80519894:
/* 80519894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519898  7C 08 02 A6 */	mflr r0
/* 8051989C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805198A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805198A4  3C 60 80 52 */	lis r3, __global_destructor_chain@ha
/* 805198A8  3B E3 BC 08 */	addi r31, r3, __global_destructor_chain@l
/* 805198AC  48 00 00 20 */	b lbl_805198CC
lbl_805198B0:
/* 805198B0  80 05 00 00 */	lwz r0, 0(r5)
/* 805198B4  90 1F 00 00 */	stw r0, 0(r31)
/* 805198B8  80 65 00 08 */	lwz r3, 8(r5)
/* 805198BC  38 80 FF FF */	li r4, -1
/* 805198C0  81 85 00 04 */	lwz r12, 4(r5)
/* 805198C4  7D 89 03 A6 */	mtctr r12
/* 805198C8  4E 80 04 21 */	bctrl 
lbl_805198CC:
/* 805198CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 805198D0  28 05 00 00 */	cmplwi r5, 0
/* 805198D4  40 82 FF DC */	bne lbl_805198B0
/* 805198D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805198DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805198E0  7C 08 03 A6 */	mtlr r0
/* 805198E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805198E8  4E 80 00 20 */	blr 
