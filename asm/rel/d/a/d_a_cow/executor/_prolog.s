lbl_806584E0:
/* 806584E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806584E4  7C 08 02 A6 */	mflr r0
/* 806584E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806584EC  3C 60 80 66 */	lis r3, data_80662D9C@ha
/* 806584F0  38 63 2D 9C */	addi r3, r3, data_80662D9C@l
/* 806584F4  4B C0 AC 58 */	b ModuleConstructorsX
/* 806584F8  4B C0 AB 90 */	b ModuleProlog
/* 806584FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80658500  7C 08 03 A6 */	mtlr r0
/* 80658504  38 21 00 10 */	addi r1, r1, 0x10
/* 80658508  4E 80 00 20 */	blr 
