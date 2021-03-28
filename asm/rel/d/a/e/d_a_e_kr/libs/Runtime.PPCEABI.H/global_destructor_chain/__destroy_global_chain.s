lbl_806FF954:
/* 806FF954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FF958  7C 08 02 A6 */	mflr r0
/* 806FF95C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FF960  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FF964  3C 60 80 70 */	lis r3, __global_destructor_chain@ha
/* 806FF968  3B E3 5F E0 */	addi r31, r3, __global_destructor_chain@l
/* 806FF96C  48 00 00 20 */	b lbl_806FF98C
lbl_806FF970:
/* 806FF970  80 05 00 00 */	lwz r0, 0(r5)
/* 806FF974  90 1F 00 00 */	stw r0, 0(r31)
/* 806FF978  80 65 00 08 */	lwz r3, 8(r5)
/* 806FF97C  38 80 FF FF */	li r4, -1
/* 806FF980  81 85 00 04 */	lwz r12, 4(r5)
/* 806FF984  7D 89 03 A6 */	mtctr r12
/* 806FF988  4E 80 04 21 */	bctrl 
lbl_806FF98C:
/* 806FF98C  80 BF 00 00 */	lwz r5, 0(r31)
/* 806FF990  28 05 00 00 */	cmplwi r5, 0
/* 806FF994  40 82 FF DC */	bne lbl_806FF970
/* 806FF998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FF99C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FF9A0  7C 08 03 A6 */	mtlr r0
/* 806FF9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806FF9A8  4E 80 00 20 */	blr 
