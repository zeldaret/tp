lbl_806BE8F4:
/* 806BE8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BE8F8  7C 08 02 A6 */	mflr r0
/* 806BE8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BE900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BE904  3C 60 80 6C */	lis r3, __global_destructor_chain@ha
/* 806BE908  3B E3 1B 98 */	addi r31, r3, __global_destructor_chain@l
/* 806BE90C  48 00 00 20 */	b lbl_806BE92C
lbl_806BE910:
/* 806BE910  80 05 00 00 */	lwz r0, 0(r5)
/* 806BE914  90 1F 00 00 */	stw r0, 0(r31)
/* 806BE918  80 65 00 08 */	lwz r3, 8(r5)
/* 806BE91C  38 80 FF FF */	li r4, -1
/* 806BE920  81 85 00 04 */	lwz r12, 4(r5)
/* 806BE924  7D 89 03 A6 */	mtctr r12
/* 806BE928  4E 80 04 21 */	bctrl 
lbl_806BE92C:
/* 806BE92C  80 BF 00 00 */	lwz r5, 0(r31)
/* 806BE930  28 05 00 00 */	cmplwi r5, 0
/* 806BE934  40 82 FF DC */	bne lbl_806BE910
/* 806BE938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BE93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BE940  7C 08 03 A6 */	mtlr r0
/* 806BE944  38 21 00 10 */	addi r1, r1, 0x10
/* 806BE948  4E 80 00 20 */	blr 
