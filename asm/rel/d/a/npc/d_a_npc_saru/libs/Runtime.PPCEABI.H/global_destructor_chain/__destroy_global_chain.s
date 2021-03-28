lbl_80AC03D4:
/* 80AC03D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC03D8  7C 08 02 A6 */	mflr r0
/* 80AC03DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC03E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC03E4  3C 60 80 AC */	lis r3, __global_destructor_chain@ha
/* 80AC03E8  3B E3 4F E0 */	addi r31, r3, __global_destructor_chain@l
/* 80AC03EC  48 00 00 20 */	b lbl_80AC040C
lbl_80AC03F0:
/* 80AC03F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80AC03F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC03F8  80 65 00 08 */	lwz r3, 8(r5)
/* 80AC03FC  38 80 FF FF */	li r4, -1
/* 80AC0400  81 85 00 04 */	lwz r12, 4(r5)
/* 80AC0404  7D 89 03 A6 */	mtctr r12
/* 80AC0408  4E 80 04 21 */	bctrl 
lbl_80AC040C:
/* 80AC040C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80AC0410  28 05 00 00 */	cmplwi r5, 0
/* 80AC0414  40 82 FF DC */	bne lbl_80AC03F0
/* 80AC0418  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC041C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC0420  7C 08 03 A6 */	mtlr r0
/* 80AC0424  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC0428  4E 80 00 20 */	blr 
