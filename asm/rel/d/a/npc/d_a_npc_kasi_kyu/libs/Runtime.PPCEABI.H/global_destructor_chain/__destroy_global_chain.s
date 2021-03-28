lbl_80A21974:
/* 80A21974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A21978  7C 08 02 A6 */	mflr r0
/* 80A2197C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A21980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A21984  3C 60 80 A2 */	lis r3, __global_destructor_chain@ha
/* 80A21988  3B E3 60 08 */	addi r31, r3, __global_destructor_chain@l
/* 80A2198C  48 00 00 20 */	b lbl_80A219AC
lbl_80A21990:
/* 80A21990  80 05 00 00 */	lwz r0, 0(r5)
/* 80A21994  90 1F 00 00 */	stw r0, 0(r31)
/* 80A21998  80 65 00 08 */	lwz r3, 8(r5)
/* 80A2199C  38 80 FF FF */	li r4, -1
/* 80A219A0  81 85 00 04 */	lwz r12, 4(r5)
/* 80A219A4  7D 89 03 A6 */	mtctr r12
/* 80A219A8  4E 80 04 21 */	bctrl 
lbl_80A219AC:
/* 80A219AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A219B0  28 05 00 00 */	cmplwi r5, 0
/* 80A219B4  40 82 FF DC */	bne lbl_80A21990
/* 80A219B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A219BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A219C0  7C 08 03 A6 */	mtlr r0
/* 80A219C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A219C8  4E 80 00 20 */	blr 
