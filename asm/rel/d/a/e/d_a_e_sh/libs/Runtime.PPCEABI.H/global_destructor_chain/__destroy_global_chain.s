lbl_8078E2F4:
/* 8078E2F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078E2F8  7C 08 02 A6 */	mflr r0
/* 8078E2FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078E300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8078E304  3C 60 80 79 */	lis r3, __global_destructor_chain@ha
/* 8078E308  3B E3 20 F0 */	addi r31, r3, __global_destructor_chain@l
/* 8078E30C  48 00 00 20 */	b lbl_8078E32C
lbl_8078E310:
/* 8078E310  80 05 00 00 */	lwz r0, 0(r5)
/* 8078E314  90 1F 00 00 */	stw r0, 0(r31)
/* 8078E318  80 65 00 08 */	lwz r3, 8(r5)
/* 8078E31C  38 80 FF FF */	li r4, -1
/* 8078E320  81 85 00 04 */	lwz r12, 4(r5)
/* 8078E324  7D 89 03 A6 */	mtctr r12
/* 8078E328  4E 80 04 21 */	bctrl 
lbl_8078E32C:
/* 8078E32C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8078E330  28 05 00 00 */	cmplwi r5, 0
/* 8078E334  40 82 FF DC */	bne lbl_8078E310
/* 8078E338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8078E33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078E340  7C 08 03 A6 */	mtlr r0
/* 8078E344  38 21 00 10 */	addi r1, r1, 0x10
/* 8078E348  4E 80 00 20 */	blr 
