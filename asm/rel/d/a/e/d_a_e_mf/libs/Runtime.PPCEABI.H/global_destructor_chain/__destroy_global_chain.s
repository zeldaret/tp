lbl_8070A6B4:
/* 8070A6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8070A6B8  7C 08 02 A6 */	mflr r0
/* 8070A6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070A6C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8070A6C4  3C 60 80 71 */	lis r3, __global_destructor_chain@ha
/* 8070A6C8  3B E3 3F 20 */	addi r31, r3, __global_destructor_chain@l
/* 8070A6CC  48 00 00 20 */	b lbl_8070A6EC
lbl_8070A6D0:
/* 8070A6D0  80 05 00 00 */	lwz r0, 0(r5)
/* 8070A6D4  90 1F 00 00 */	stw r0, 0(r31)
/* 8070A6D8  80 65 00 08 */	lwz r3, 8(r5)
/* 8070A6DC  38 80 FF FF */	li r4, -1
/* 8070A6E0  81 85 00 04 */	lwz r12, 4(r5)
/* 8070A6E4  7D 89 03 A6 */	mtctr r12
/* 8070A6E8  4E 80 04 21 */	bctrl 
lbl_8070A6EC:
/* 8070A6EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8070A6F0  28 05 00 00 */	cmplwi r5, 0
/* 8070A6F4  40 82 FF DC */	bne lbl_8070A6D0
/* 8070A6F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8070A6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8070A700  7C 08 03 A6 */	mtlr r0
/* 8070A704  38 21 00 10 */	addi r1, r1, 0x10
/* 8070A708  4E 80 00 20 */	blr 
