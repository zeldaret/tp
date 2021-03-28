lbl_8027D8A0:
/* 8027D8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D8A4  7C 08 02 A6 */	mflr r0
/* 8027D8A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D8AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D8B0  7C 7F 1B 78 */	mr r31, r3
/* 8027D8B4  80 C4 00 04 */	lwz r6, 4(r4)
/* 8027D8B8  3C 06 CD D3 */	addis r0, r6, 0xcdd3
/* 8027D8BC  28 00 31 30 */	cmplwi r0, 0x3130
/* 8027D8C0  40 82 00 08 */	bne lbl_8027D8C8
/* 8027D8C4  48 00 00 1D */	bl load_jpc__17JPAResourceLoaderFPCUcP18JPAResourceManager
lbl_8027D8C8:
/* 8027D8C8  7F E3 FB 78 */	mr r3, r31
/* 8027D8CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D8D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D8D4  7C 08 03 A6 */	mtlr r0
/* 8027D8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D8DC  4E 80 00 20 */	blr 
