lbl_806BBA74:
/* 806BBA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BBA78  7C 08 02 A6 */	mflr r0
/* 806BBA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BBA80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BBA84  3C 60 80 6C */	lis r3, __global_destructor_chain@ha
/* 806BBA88  3B E3 E7 58 */	addi r31, r3, __global_destructor_chain@l
/* 806BBA8C  48 00 00 20 */	b lbl_806BBAAC
lbl_806BBA90:
/* 806BBA90  80 05 00 00 */	lwz r0, 0(r5)
/* 806BBA94  90 1F 00 00 */	stw r0, 0(r31)
/* 806BBA98  80 65 00 08 */	lwz r3, 8(r5)
/* 806BBA9C  38 80 FF FF */	li r4, -1
/* 806BBAA0  81 85 00 04 */	lwz r12, 4(r5)
/* 806BBAA4  7D 89 03 A6 */	mtctr r12
/* 806BBAA8  4E 80 04 21 */	bctrl 
lbl_806BBAAC:
/* 806BBAAC  80 BF 00 00 */	lwz r5, 0(r31)
/* 806BBAB0  28 05 00 00 */	cmplwi r5, 0
/* 806BBAB4  40 82 FF DC */	bne lbl_806BBA90
/* 806BBAB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BBABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BBAC0  7C 08 03 A6 */	mtlr r0
/* 806BBAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 806BBAC8  4E 80 00 20 */	blr 
