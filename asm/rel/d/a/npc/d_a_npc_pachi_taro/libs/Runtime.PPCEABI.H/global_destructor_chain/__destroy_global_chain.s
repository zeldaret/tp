lbl_80A9C234:
/* 80A9C234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9C238  7C 08 02 A6 */	mflr r0
/* 80A9C23C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9C240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9C244  3C 60 80 AA */	lis r3, __global_destructor_chain@ha
/* 80A9C248  3B E3 2B 80 */	addi r31, r3, __global_destructor_chain@l
/* 80A9C24C  48 00 00 20 */	b lbl_80A9C26C
lbl_80A9C250:
/* 80A9C250  80 05 00 00 */	lwz r0, 0(r5)
/* 80A9C254  90 1F 00 00 */	stw r0, 0(r31)
/* 80A9C258  80 65 00 08 */	lwz r3, 8(r5)
/* 80A9C25C  38 80 FF FF */	li r4, -1
/* 80A9C260  81 85 00 04 */	lwz r12, 4(r5)
/* 80A9C264  7D 89 03 A6 */	mtctr r12
/* 80A9C268  4E 80 04 21 */	bctrl 
lbl_80A9C26C:
/* 80A9C26C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A9C270  28 05 00 00 */	cmplwi r5, 0
/* 80A9C274  40 82 FF DC */	bne lbl_80A9C250
/* 80A9C278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9C27C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9C280  7C 08 03 A6 */	mtlr r0
/* 80A9C284  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9C288  4E 80 00 20 */	blr 
