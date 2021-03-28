lbl_80D3C93C:
/* 80D3C93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3C940  7C 08 02 A6 */	mflr r0
/* 80D3C944  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3C948  38 80 FF FF */	li r4, -1
/* 80D3C94C  81 83 0A 38 */	lwz r12, 0xa38(r3)
/* 80D3C950  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D3C954  7D 89 03 A6 */	mtctr r12
/* 80D3C958  4E 80 04 21 */	bctrl 
/* 80D3C95C  38 60 00 01 */	li r3, 1
/* 80D3C960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3C964  7C 08 03 A6 */	mtlr r0
/* 80D3C968  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3C96C  4E 80 00 20 */	blr 
