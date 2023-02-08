lbl_80AC7980:
/* 80AC7980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC7984  7C 08 02 A6 */	mflr r0
/* 80AC7988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC798C  38 80 FF FF */	li r4, -1
/* 80AC7990  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AC7994  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AC7998  7D 89 03 A6 */	mtctr r12
/* 80AC799C  4E 80 04 21 */	bctrl 
/* 80AC79A0  38 60 00 01 */	li r3, 1
/* 80AC79A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC79A8  7C 08 03 A6 */	mtlr r0
/* 80AC79AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC79B0  4E 80 00 20 */	blr 
