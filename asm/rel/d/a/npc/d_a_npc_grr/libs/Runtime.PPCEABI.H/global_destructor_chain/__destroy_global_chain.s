lbl_809DF874:
/* 809DF874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DF878  7C 08 02 A6 */	mflr r0
/* 809DF87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DF880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DF884  3C 60 80 9E */	lis r3, __global_destructor_chain@ha
/* 809DF888  3B E3 3E F0 */	addi r31, r3, __global_destructor_chain@l
/* 809DF88C  48 00 00 20 */	b lbl_809DF8AC
lbl_809DF890:
/* 809DF890  80 05 00 00 */	lwz r0, 0(r5)
/* 809DF894  90 1F 00 00 */	stw r0, 0(r31)
/* 809DF898  80 65 00 08 */	lwz r3, 8(r5)
/* 809DF89C  38 80 FF FF */	li r4, -1
/* 809DF8A0  81 85 00 04 */	lwz r12, 4(r5)
/* 809DF8A4  7D 89 03 A6 */	mtctr r12
/* 809DF8A8  4E 80 04 21 */	bctrl 
lbl_809DF8AC:
/* 809DF8AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 809DF8B0  28 05 00 00 */	cmplwi r5, 0
/* 809DF8B4  40 82 FF DC */	bne lbl_809DF890
/* 809DF8B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DF8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DF8C0  7C 08 03 A6 */	mtlr r0
/* 809DF8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 809DF8C8  4E 80 00 20 */	blr 
