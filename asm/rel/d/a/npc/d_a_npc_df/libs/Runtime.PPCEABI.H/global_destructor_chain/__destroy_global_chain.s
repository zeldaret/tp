lbl_809A5334:
/* 809A5334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A5338  7C 08 02 A6 */	mflr r0
/* 809A533C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A5340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A5344  3C 60 80 9A */	lis r3, __global_destructor_chain@ha
/* 809A5348  3B E3 6A 08 */	addi r31, r3, __global_destructor_chain@l
/* 809A534C  48 00 00 20 */	b lbl_809A536C
lbl_809A5350:
/* 809A5350  80 05 00 00 */	lwz r0, 0(r5)
/* 809A5354  90 1F 00 00 */	stw r0, 0(r31)
/* 809A5358  80 65 00 08 */	lwz r3, 8(r5)
/* 809A535C  38 80 FF FF */	li r4, -1
/* 809A5360  81 85 00 04 */	lwz r12, 4(r5)
/* 809A5364  7D 89 03 A6 */	mtctr r12
/* 809A5368  4E 80 04 21 */	bctrl 
lbl_809A536C:
/* 809A536C  80 BF 00 00 */	lwz r5, 0(r31)
/* 809A5370  28 05 00 00 */	cmplwi r5, 0
/* 809A5374  40 82 FF DC */	bne lbl_809A5350
/* 809A5378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A537C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A5380  7C 08 03 A6 */	mtlr r0
/* 809A5384  38 21 00 10 */	addi r1, r1, 0x10
/* 809A5388  4E 80 00 20 */	blr 
