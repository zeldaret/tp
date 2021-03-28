lbl_80D0F234:
/* 80D0F234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0F238  7C 08 02 A6 */	mflr r0
/* 80D0F23C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0F240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0F244  3C 60 80 D1 */	lis r3, __global_destructor_chain@ha
/* 80D0F248  3B E3 2A F0 */	addi r31, r3, __global_destructor_chain@l
/* 80D0F24C  48 00 00 20 */	b lbl_80D0F26C
lbl_80D0F250:
/* 80D0F250  80 05 00 00 */	lwz r0, 0(r5)
/* 80D0F254  90 1F 00 00 */	stw r0, 0(r31)
/* 80D0F258  80 65 00 08 */	lwz r3, 8(r5)
/* 80D0F25C  38 80 FF FF */	li r4, -1
/* 80D0F260  81 85 00 04 */	lwz r12, 4(r5)
/* 80D0F264  7D 89 03 A6 */	mtctr r12
/* 80D0F268  4E 80 04 21 */	bctrl 
lbl_80D0F26C:
/* 80D0F26C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D0F270  28 05 00 00 */	cmplwi r5, 0
/* 80D0F274  40 82 FF DC */	bne lbl_80D0F250
/* 80D0F278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0F27C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0F280  7C 08 03 A6 */	mtlr r0
/* 80D0F284  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0F288  4E 80 00 20 */	blr 
