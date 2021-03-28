lbl_80CA8574:
/* 80CA8574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8578  7C 08 02 A6 */	mflr r0
/* 80CA857C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA8584  3C 60 80 CB */	lis r3, __global_destructor_chain@ha
/* 80CA8588  3B E3 9D E0 */	addi r31, r3, __global_destructor_chain@l
/* 80CA858C  48 00 00 20 */	b lbl_80CA85AC
lbl_80CA8590:
/* 80CA8590  80 05 00 00 */	lwz r0, 0(r5)
/* 80CA8594  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA8598  80 65 00 08 */	lwz r3, 8(r5)
/* 80CA859C  38 80 FF FF */	li r4, -1
/* 80CA85A0  81 85 00 04 */	lwz r12, 4(r5)
/* 80CA85A4  7D 89 03 A6 */	mtctr r12
/* 80CA85A8  4E 80 04 21 */	bctrl 
lbl_80CA85AC:
/* 80CA85AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CA85B0  28 05 00 00 */	cmplwi r5, 0
/* 80CA85B4  40 82 FF DC */	bne lbl_80CA8590
/* 80CA85B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA85BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA85C0  7C 08 03 A6 */	mtlr r0
/* 80CA85C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA85C8  4E 80 00 20 */	blr 
