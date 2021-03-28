lbl_8047B294:
/* 8047B294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047B298  7C 08 02 A6 */	mflr r0
/* 8047B29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047B2A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047B2A4  3C 60 80 48 */	lis r3, __global_destructor_chain@ha
/* 8047B2A8  3B E3 D9 C0 */	addi r31, r3, __global_destructor_chain@l
/* 8047B2AC  48 00 00 20 */	b lbl_8047B2CC
lbl_8047B2B0:
/* 8047B2B0  80 05 00 00 */	lwz r0, 0(r5)
/* 8047B2B4  90 1F 00 00 */	stw r0, 0(r31)
/* 8047B2B8  80 65 00 08 */	lwz r3, 8(r5)
/* 8047B2BC  38 80 FF FF */	li r4, -1
/* 8047B2C0  81 85 00 04 */	lwz r12, 4(r5)
/* 8047B2C4  7D 89 03 A6 */	mtctr r12
/* 8047B2C8  4E 80 04 21 */	bctrl 
lbl_8047B2CC:
/* 8047B2CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8047B2D0  28 05 00 00 */	cmplwi r5, 0
/* 8047B2D4  40 82 FF DC */	bne lbl_8047B2B0
/* 8047B2D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047B2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047B2E0  7C 08 03 A6 */	mtlr r0
/* 8047B2E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8047B2E8  4E 80 00 20 */	blr 
