lbl_8074C460:
/* 8074C460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074C464  7C 08 02 A6 */	mflr r0
/* 8074C468  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074C46C  3C 60 80 75 */	lis r3, data_807576E8@ha
/* 8074C470  38 63 76 E8 */	addi r3, r3, data_807576E8@l
/* 8074C474  4B B1 6C D8 */	b ModuleConstructorsX
/* 8074C478  4B B1 6C 10 */	b ModuleProlog
/* 8074C47C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074C480  7C 08 03 A6 */	mtlr r0
/* 8074C484  38 21 00 10 */	addi r1, r1, 0x10
/* 8074C488  4E 80 00 20 */	blr 
