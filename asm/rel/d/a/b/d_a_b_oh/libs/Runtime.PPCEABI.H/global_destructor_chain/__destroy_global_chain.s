lbl_8061B6D4:
/* 8061B6D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061B6D8  7C 08 02 A6 */	mflr r0
/* 8061B6DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061B6E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061B6E4  3C 60 80 62 */	lis r3, __global_destructor_chain@ha
/* 8061B6E8  3B E3 DB 70 */	addi r31, r3, __global_destructor_chain@l
/* 8061B6EC  48 00 00 20 */	b lbl_8061B70C
lbl_8061B6F0:
/* 8061B6F0  80 05 00 00 */	lwz r0, 0(r5)
/* 8061B6F4  90 1F 00 00 */	stw r0, 0(r31)
/* 8061B6F8  80 65 00 08 */	lwz r3, 8(r5)
/* 8061B6FC  38 80 FF FF */	li r4, -1
/* 8061B700  81 85 00 04 */	lwz r12, 4(r5)
/* 8061B704  7D 89 03 A6 */	mtctr r12
/* 8061B708  4E 80 04 21 */	bctrl 
lbl_8061B70C:
/* 8061B70C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8061B710  28 05 00 00 */	cmplwi r5, 0
/* 8061B714  40 82 FF DC */	bne lbl_8061B6F0
/* 8061B718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061B71C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061B720  7C 08 03 A6 */	mtlr r0
/* 8061B724  38 21 00 10 */	addi r1, r1, 0x10
/* 8061B728  4E 80 00 20 */	blr 
