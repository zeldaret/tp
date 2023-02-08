lbl_801E0330:
/* 801E0330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E0334  7C 08 02 A6 */	mflr r0
/* 801E0338  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E033C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E0340  7C 7F 1B 78 */	mr r31, r3
/* 801E0344  38 60 01 18 */	li r3, 0x118
/* 801E0348  48 0E E9 05 */	bl __nw__FUl
/* 801E034C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E0350  41 82 00 0C */	beq lbl_801E035C
/* 801E0354  48 11 81 45 */	bl __ct__9J2DScreenFv
/* 801E0358  7C 60 1B 78 */	mr r0, r3
lbl_801E035C:
/* 801E035C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 801E0360  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801E0364  3C 80 80 39 */	lis r4, d_menu_d_menu_letter__stringBase0@ha /* 0x80396DC0@ha */
/* 801E0368  38 84 6D C0 */	addi r4, r4, d_menu_d_menu_letter__stringBase0@l /* 0x80396DC0@l */
/* 801E036C  38 84 00 59 */	addi r4, r4, 0x59
/* 801E0370  3C A0 00 02 */	lis r5, 2
/* 801E0374  80 DF 00 08 */	lwz r6, 8(r31)
/* 801E0378  48 11 82 D1 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801E037C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801E0380  48 07 4D 69 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801E0384  38 60 00 6C */	li r3, 0x6c
/* 801E0388  48 0E E8 C5 */	bl __nw__FUl
/* 801E038C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E0390  41 82 00 24 */	beq lbl_801E03B4
/* 801E0394  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 801E0398  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801E039C  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801E03A0  38 A0 00 6E */	li r5, 0x6e
/* 801E03A4  38 E0 00 02 */	li r7, 2
/* 801E03A8  39 00 00 00 */	li r8, 0
/* 801E03AC  48 07 35 D9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E03B0  7C 60 1B 78 */	mr r0, r3
lbl_801E03B4:
/* 801E03B4  90 1F 02 C0 */	stw r0, 0x2c0(r31)
/* 801E03B8  80 7F 02 C0 */	lwz r3, 0x2c0(r31)
/* 801E03BC  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801E03C0  48 07 54 11 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801E03C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E03C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E03CC  7C 08 03 A6 */	mtlr r0
/* 801E03D0  38 21 00 10 */	addi r1, r1, 0x10
/* 801E03D4  4E 80 00 20 */	blr 
