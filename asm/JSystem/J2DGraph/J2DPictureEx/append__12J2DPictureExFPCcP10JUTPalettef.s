lbl_80303EA4:
/* 80303EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80303EA8  7C 08 02 A6 */	mflr r0
/* 80303EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80303EB0  80 C3 01 50 */	lwz r6, 0x150(r3)
/* 80303EB4  28 06 00 00 */	cmplwi r6, 0
/* 80303EB8  40 82 00 0C */	bne lbl_80303EC4
/* 80303EBC  38 60 00 00 */	li r3, 0
/* 80303EC0  48 00 00 1C */	b lbl_80303EDC
lbl_80303EC4:
/* 80303EC4  80 06 00 28 */	lwz r0, 0x28(r6)
/* 80303EC8  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 80303ECC  81 83 00 00 */	lwz r12, 0(r3)
/* 80303ED0  81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 80303ED4  7D 89 03 A6 */	mtctr r12
/* 80303ED8  4E 80 04 21 */	bctrl 
lbl_80303EDC:
/* 80303EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80303EE0  7C 08 03 A6 */	mtlr r0
/* 80303EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80303EE8  4E 80 00 20 */	blr 
