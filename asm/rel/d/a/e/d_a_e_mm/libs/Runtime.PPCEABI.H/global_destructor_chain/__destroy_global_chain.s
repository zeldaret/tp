lbl_8071F974:
/* 8071F974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071F978  7C 08 02 A6 */	mflr r0
/* 8071F97C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071F980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071F984  3C 60 80 72 */	lis r3, __global_destructor_chain@ha
/* 8071F988  3B E3 2E A8 */	addi r31, r3, __global_destructor_chain@l
/* 8071F98C  48 00 00 20 */	b lbl_8071F9AC
lbl_8071F990:
/* 8071F990  80 05 00 00 */	lwz r0, 0(r5)
/* 8071F994  90 1F 00 00 */	stw r0, 0(r31)
/* 8071F998  80 65 00 08 */	lwz r3, 8(r5)
/* 8071F99C  38 80 FF FF */	li r4, -1
/* 8071F9A0  81 85 00 04 */	lwz r12, 4(r5)
/* 8071F9A4  7D 89 03 A6 */	mtctr r12
/* 8071F9A8  4E 80 04 21 */	bctrl 
lbl_8071F9AC:
/* 8071F9AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8071F9B0  28 05 00 00 */	cmplwi r5, 0
/* 8071F9B4  40 82 FF DC */	bne lbl_8071F990
/* 8071F9B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071F9BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071F9C0  7C 08 03 A6 */	mtlr r0
/* 8071F9C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8071F9C8  4E 80 00 20 */	blr 
