lbl_806B0114:
/* 806B0114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B0118  7C 08 02 A6 */	mflr r0
/* 806B011C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B0120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B0124  7C 7F 1B 78 */	mr r31, r3
/* 806B0128  80 63 05 D0 */	lwz r3, 0x5d0(r3)
/* 806B012C  80 63 00 04 */	lwz r3, 4(r3)
/* 806B0130  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B0134  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B0138  38 63 05 40 */	addi r3, r3, 0x540
/* 806B013C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B0140  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B0144  4B C9 63 6D */	bl PSMTXCopy
/* 806B0148  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B014C  38 83 D4 70 */	addi r4, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B0150  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 806B0154  3C 60 80 6B */	lis r3, m_tongue_pos__6E_DT_n@ha /* 0x806B6340@ha */
/* 806B0158  D4 03 63 40 */	stfsu f0, m_tongue_pos__6E_DT_n@l(r3)  /* 0x806B6340@l */
/* 806B015C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 806B0160  D0 03 00 04 */	stfs f0, 4(r3)
/* 806B0164  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 806B0168  D0 03 00 08 */	stfs f0, 8(r3)
/* 806B016C  3C 60 80 6B */	lis r3, s_bomb_search__FPvPv@ha /* 0x806AFF8C@ha */
/* 806B0170  38 63 FF 8C */	addi r3, r3, s_bomb_search__FPvPv@l /* 0x806AFF8C@l */
/* 806B0174  7F E4 FB 78 */	mr r4, r31
/* 806B0178  4B 97 11 C1 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806B017C  28 03 00 00 */	cmplwi r3, 0
/* 806B0180  41 82 00 1C */	beq lbl_806B019C
/* 806B0184  81 83 05 68 */	lwz r12, 0x568(r3)
/* 806B0188  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 806B018C  7D 89 03 A6 */	mtctr r12
/* 806B0190  4E 80 04 21 */	bctrl 
/* 806B0194  38 60 00 01 */	li r3, 1
/* 806B0198  48 00 00 08 */	b lbl_806B01A0
lbl_806B019C:
/* 806B019C  38 60 00 00 */	li r3, 0
lbl_806B01A0:
/* 806B01A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B01A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B01A8  7C 08 03 A6 */	mtlr r0
/* 806B01AC  38 21 00 10 */	addi r1, r1, 0x10
/* 806B01B0  4E 80 00 20 */	blr 
