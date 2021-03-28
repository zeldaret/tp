lbl_8074C4F4:
/* 8074C4F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074C4F8  7C 08 02 A6 */	mflr r0
/* 8074C4FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074C500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8074C504  3C 60 80 75 */	lis r3, __global_destructor_chain@ha
/* 8074C508  3B E3 7E 08 */	addi r31, r3, __global_destructor_chain@l
/* 8074C50C  48 00 00 20 */	b lbl_8074C52C
lbl_8074C510:
/* 8074C510  80 05 00 00 */	lwz r0, 0(r5)
/* 8074C514  90 1F 00 00 */	stw r0, 0(r31)
/* 8074C518  80 65 00 08 */	lwz r3, 8(r5)
/* 8074C51C  38 80 FF FF */	li r4, -1
/* 8074C520  81 85 00 04 */	lwz r12, 4(r5)
/* 8074C524  7D 89 03 A6 */	mtctr r12
/* 8074C528  4E 80 04 21 */	bctrl 
lbl_8074C52C:
/* 8074C52C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8074C530  28 05 00 00 */	cmplwi r5, 0
/* 8074C534  40 82 FF DC */	bne lbl_8074C510
/* 8074C538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8074C53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074C540  7C 08 03 A6 */	mtlr r0
/* 8074C544  38 21 00 10 */	addi r1, r1, 0x10
/* 8074C548  4E 80 00 20 */	blr 
