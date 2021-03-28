lbl_8054F354:
/* 8054F354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054F358  7C 08 02 A6 */	mflr r0
/* 8054F35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054F360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054F364  3C 60 80 55 */	lis r3, __global_destructor_chain@ha
/* 8054F368  3B E3 3E D8 */	addi r31, r3, __global_destructor_chain@l
/* 8054F36C  48 00 00 20 */	b lbl_8054F38C
lbl_8054F370:
/* 8054F370  80 05 00 00 */	lwz r0, 0(r5)
/* 8054F374  90 1F 00 00 */	stw r0, 0(r31)
/* 8054F378  80 65 00 08 */	lwz r3, 8(r5)
/* 8054F37C  38 80 FF FF */	li r4, -1
/* 8054F380  81 85 00 04 */	lwz r12, 4(r5)
/* 8054F384  7D 89 03 A6 */	mtctr r12
/* 8054F388  4E 80 04 21 */	bctrl 
lbl_8054F38C:
/* 8054F38C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8054F390  28 05 00 00 */	cmplwi r5, 0
/* 8054F394  40 82 FF DC */	bne lbl_8054F370
/* 8054F398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054F39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054F3A0  7C 08 03 A6 */	mtlr r0
/* 8054F3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054F3A8  4E 80 00 20 */	blr 
