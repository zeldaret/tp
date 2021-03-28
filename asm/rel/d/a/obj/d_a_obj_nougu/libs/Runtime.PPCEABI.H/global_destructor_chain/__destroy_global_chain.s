lbl_80CA3BB4:
/* 80CA3BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA3BB8  7C 08 02 A6 */	mflr r0
/* 80CA3BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA3BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA3BC4  3C 60 80 CA */	lis r3, __global_destructor_chain@ha
/* 80CA3BC8  3B E3 4B 10 */	addi r31, r3, __global_destructor_chain@l
/* 80CA3BCC  48 00 00 20 */	b lbl_80CA3BEC
lbl_80CA3BD0:
/* 80CA3BD0  80 05 00 00 */	lwz r0, 0(r5)
/* 80CA3BD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA3BD8  80 65 00 08 */	lwz r3, 8(r5)
/* 80CA3BDC  38 80 FF FF */	li r4, -1
/* 80CA3BE0  81 85 00 04 */	lwz r12, 4(r5)
/* 80CA3BE4  7D 89 03 A6 */	mtctr r12
/* 80CA3BE8  4E 80 04 21 */	bctrl 
lbl_80CA3BEC:
/* 80CA3BEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CA3BF0  28 05 00 00 */	cmplwi r5, 0
/* 80CA3BF4  40 82 FF DC */	bne lbl_80CA3BD0
/* 80CA3BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA3BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA3C00  7C 08 03 A6 */	mtlr r0
/* 80CA3C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3C08  4E 80 00 20 */	blr 
