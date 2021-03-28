lbl_80A2A9B4:
/* 80A2A9B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2A9B8  7C 08 02 A6 */	mflr r0
/* 80A2A9BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2A9C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2A9C4  3C 60 80 A4 */	lis r3, __global_destructor_chain@ha
/* 80A2A9C8  3B E3 32 B8 */	addi r31, r3, __global_destructor_chain@l
/* 80A2A9CC  48 00 00 20 */	b lbl_80A2A9EC
lbl_80A2A9D0:
/* 80A2A9D0  80 05 00 00 */	lwz r0, 0(r5)
/* 80A2A9D4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A2A9D8  80 65 00 08 */	lwz r3, 8(r5)
/* 80A2A9DC  38 80 FF FF */	li r4, -1
/* 80A2A9E0  81 85 00 04 */	lwz r12, 4(r5)
/* 80A2A9E4  7D 89 03 A6 */	mtctr r12
/* 80A2A9E8  4E 80 04 21 */	bctrl 
lbl_80A2A9EC:
/* 80A2A9EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A2A9F0  28 05 00 00 */	cmplwi r5, 0
/* 80A2A9F4  40 82 FF DC */	bne lbl_80A2A9D0
/* 80A2A9F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2A9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2AA00  7C 08 03 A6 */	mtlr r0
/* 80A2AA04  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2AA08  4E 80 00 20 */	blr 
