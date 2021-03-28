lbl_8029EAA0:
/* 8029EAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029EAA4  7C 08 02 A6 */	mflr r0
/* 8029EAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029EAAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029EAB0  93 C1 00 08 */	stw r30, 8(r1)
/* 8029EAB4  7C 7E 1B 78 */	mr r30, r3
/* 8029EAB8  80 0D 8D 8C */	lwz r0, DSP_prior_task(r13)
/* 8029EABC  28 00 00 00 */	cmplwi r0, 0
/* 8029EAC0  41 82 00 18 */	beq lbl_8029EAD8
/* 8029EAC4  3C 60 80 3A */	lis r3, lit_88@ha
/* 8029EAC8  38 63 B8 D4 */	addi r3, r3, lit_88@l
/* 8029EACC  4C C6 31 82 */	crclr 6
/* 8029EAD0  4B D6 7F ED */	bl OSReport
/* 8029EAD4  48 00 00 30 */	b lbl_8029EB04
lbl_8029EAD8:
/* 8029EAD8  48 09 EC 1D */	bl OSDisableInterrupts
/* 8029EADC  93 CD 8D 8C */	stw r30, DSP_prior_task(r13)
/* 8029EAE0  38 80 00 00 */	li r4, 0
/* 8029EAE4  7C 7F 1B 78 */	mr r31, r3
/* 8029EAE8  38 00 00 01 */	li r0, 1
/* 8029EAEC  90 9E 00 00 */	stw r4, 0(r30)
/* 8029EAF0  7F C3 F3 78 */	mr r3, r30
/* 8029EAF4  90 1E 00 08 */	stw r0, 8(r30)
/* 8029EAF8  48 0B 3C 79 */	bl __DSP_boot_task
/* 8029EAFC  7F E3 FB 78 */	mr r3, r31
/* 8029EB00  48 09 EC 1D */	bl OSRestoreInterrupts
lbl_8029EB04:
/* 8029EB04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029EB08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029EB0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029EB10  7C 08 03 A6 */	mtlr r0
/* 8029EB14  38 21 00 10 */	addi r1, r1, 0x10
/* 8029EB18  4E 80 00 20 */	blr 
