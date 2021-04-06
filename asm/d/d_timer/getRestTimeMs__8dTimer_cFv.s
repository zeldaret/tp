lbl_8025DA9C:
/* 8025DA9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025DAA0  7C 08 02 A6 */	mflr r0
/* 8025DAA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025DAA8  80 A3 01 18 */	lwz r5, 0x118(r3)
/* 8025DAAC  80 C3 01 1C */	lwz r6, 0x11c(r3)
/* 8025DAB0  80 03 01 10 */	lwz r0, 0x110(r3)
/* 8025DAB4  80 83 01 14 */	lwz r4, 0x114(r3)
/* 8025DAB8  7C C4 30 10 */	subfc r6, r4, r6
/* 8025DABC  7C A0 29 10 */	subfe r5, r0, r5
/* 8025DAC0  80 03 01 38 */	lwz r0, 0x138(r3)
/* 8025DAC4  80 83 01 3C */	lwz r4, 0x13c(r3)
/* 8025DAC8  7C 84 30 10 */	subfc r4, r4, r6
/* 8025DACC  7C A0 29 10 */	subfe r5, r0, r5
/* 8025DAD0  80 03 01 40 */	lwz r0, 0x140(r3)
/* 8025DAD4  80 63 01 44 */	lwz r3, 0x144(r3)
/* 8025DAD8  7C 84 18 10 */	subfc r4, r4, r3
/* 8025DADC  7C 65 01 10 */	subfe r3, r5, r0
/* 8025DAE0  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000F8@ha */
/* 8025DAE4  80 05 00 F8 */	lwz r0, 0x00F8(r5)  /* 0x800000F8@l */
/* 8025DAE8  54 05 F0 BE */	srwi r5, r0, 2
/* 8025DAEC  38 00 03 E8 */	li r0, 0x3e8
/* 8025DAF0  7C C5 03 96 */	divwu r6, r5, r0
/* 8025DAF4  38 A0 00 00 */	li r5, 0
/* 8025DAF8  48 10 48 2D */	bl __div2i
/* 8025DAFC  7C 83 23 78 */	mr r3, r4
/* 8025DB00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025DB04  7C 08 03 A6 */	mtlr r0
/* 8025DB08  38 21 00 10 */	addi r1, r1, 0x10
/* 8025DB0C  4E 80 00 20 */	blr 
