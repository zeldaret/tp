lbl_806D7428:
/* 806D7428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D742C  7C 08 02 A6 */	mflr r0
/* 806D7430  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D7434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D7438  7C 7F 1B 79 */	or. r31, r3, r3
/* 806D743C  41 82 00 1C */	beq lbl_806D7458
/* 806D7440  3C A0 80 6D */	lis r5, __vt__12daE_GM_HIO_c@ha /* 0x806D7E64@ha */
/* 806D7444  38 05 7E 64 */	addi r0, r5, __vt__12daE_GM_HIO_c@l /* 0x806D7E64@l */
/* 806D7448  90 1F 00 00 */	stw r0, 0(r31)
/* 806D744C  7C 80 07 35 */	extsh. r0, r4
/* 806D7450  40 81 00 08 */	ble lbl_806D7458
/* 806D7454  4B BF 78 E9 */	bl __dl__FPv
lbl_806D7458:
/* 806D7458  7F E3 FB 78 */	mr r3, r31
/* 806D745C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D7460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D7464  7C 08 03 A6 */	mtlr r0
/* 806D7468  38 21 00 10 */	addi r1, r1, 0x10
/* 806D746C  4E 80 00 20 */	blr 
