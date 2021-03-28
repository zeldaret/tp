lbl_8054B314:
/* 8054B314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B318  7C 08 02 A6 */	mflr r0
/* 8054B31C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054B324  3C 60 80 55 */	lis r3, __global_destructor_chain@ha
/* 8054B328  3B E3 F1 98 */	addi r31, r3, __global_destructor_chain@l
/* 8054B32C  48 00 00 20 */	b lbl_8054B34C
lbl_8054B330:
/* 8054B330  80 05 00 00 */	lwz r0, 0(r5)
/* 8054B334  90 1F 00 00 */	stw r0, 0(r31)
/* 8054B338  80 65 00 08 */	lwz r3, 8(r5)
/* 8054B33C  38 80 FF FF */	li r4, -1
/* 8054B340  81 85 00 04 */	lwz r12, 4(r5)
/* 8054B344  7D 89 03 A6 */	mtctr r12
/* 8054B348  4E 80 04 21 */	bctrl 
lbl_8054B34C:
/* 8054B34C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8054B350  28 05 00 00 */	cmplwi r5, 0
/* 8054B354  40 82 FF DC */	bne lbl_8054B330
/* 8054B358  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054B35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B360  7C 08 03 A6 */	mtlr r0
/* 8054B364  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B368  4E 80 00 20 */	blr 
