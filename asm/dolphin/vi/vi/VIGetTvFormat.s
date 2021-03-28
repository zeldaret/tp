lbl_8034DA9C:
/* 8034DA9C  7C 08 02 A6 */	mflr r0
/* 8034DAA0  90 01 00 04 */	stw r0, 4(r1)
/* 8034DAA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034DAA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034DAAC  4B FE FC 49 */	bl OSDisableInterrupts
/* 8034DAB0  80 AD 92 AC */	lwz r5, CurrTvMode(r13)
/* 8034DAB4  28 05 00 07 */	cmplwi r5, 7
/* 8034DAB8  41 81 00 30 */	bgt lbl_8034DAE8
/* 8034DABC  3C 80 80 3D */	lis r4, lit_740@ha
/* 8034DAC0  38 84 1B 24 */	addi r4, r4, lit_740@l
/* 8034DAC4  54 A0 10 3A */	slwi r0, r5, 2
/* 8034DAC8  7C 04 00 2E */	lwzx r0, r4, r0
/* 8034DACC  7C 09 03 A6 */	mtctr r0
/* 8034DAD0  4E 80 04 20 */	bctr 
/* 8034DAD4  3B E0 00 00 */	li r31, 0
/* 8034DAD8  48 00 00 10 */	b lbl_8034DAE8
/* 8034DADC  3B E0 00 01 */	li r31, 1
/* 8034DAE0  48 00 00 08 */	b lbl_8034DAE8
/* 8034DAE4  7C BF 2B 78 */	mr r31, r5
lbl_8034DAE8:
/* 8034DAE8  4B FE FC 35 */	bl OSRestoreInterrupts
/* 8034DAEC  7F E3 FB 78 */	mr r3, r31
/* 8034DAF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034DAF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034DAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8034DAFC  7C 08 03 A6 */	mtlr r0
/* 8034DB00  4E 80 00 20 */	blr 
