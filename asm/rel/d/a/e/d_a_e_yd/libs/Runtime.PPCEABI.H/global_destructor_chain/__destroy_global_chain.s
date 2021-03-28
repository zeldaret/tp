lbl_807F2BD4:
/* 807F2BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F2BD8  7C 08 02 A6 */	mflr r0
/* 807F2BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F2BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F2BE4  3C 60 80 7F */	lis r3, __global_destructor_chain@ha
/* 807F2BE8  3B E3 7D 60 */	addi r31, r3, __global_destructor_chain@l
/* 807F2BEC  48 00 00 20 */	b lbl_807F2C0C
lbl_807F2BF0:
/* 807F2BF0  80 05 00 00 */	lwz r0, 0(r5)
/* 807F2BF4  90 1F 00 00 */	stw r0, 0(r31)
/* 807F2BF8  80 65 00 08 */	lwz r3, 8(r5)
/* 807F2BFC  38 80 FF FF */	li r4, -1
/* 807F2C00  81 85 00 04 */	lwz r12, 4(r5)
/* 807F2C04  7D 89 03 A6 */	mtctr r12
/* 807F2C08  4E 80 04 21 */	bctrl 
lbl_807F2C0C:
/* 807F2C0C  80 BF 00 00 */	lwz r5, 0(r31)
/* 807F2C10  28 05 00 00 */	cmplwi r5, 0
/* 807F2C14  40 82 FF DC */	bne lbl_807F2BF0
/* 807F2C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F2C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F2C20  7C 08 03 A6 */	mtlr r0
/* 807F2C24  38 21 00 10 */	addi r1, r1, 0x10
/* 807F2C28  4E 80 00 20 */	blr 
