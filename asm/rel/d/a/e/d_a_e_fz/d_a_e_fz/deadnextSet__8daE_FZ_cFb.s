lbl_806BEC08:
/* 806BEC08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806BEC0C  7C 08 02 A6 */	mflr r0
/* 806BEC10  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BEC14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806BEC18  7C 7F 1B 78 */	mr r31, r3
/* 806BEC1C  38 00 00 00 */	li r0, 0
/* 806BEC20  B0 03 05 62 */	sth r0, 0x562(r3)
/* 806BEC24  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806BEC28  40 82 00 68 */	bne lbl_806BEC90
/* 806BEC2C  88 1F 07 14 */	lbz r0, 0x714(r31)
/* 806BEC30  28 00 00 03 */	cmplwi r0, 3
/* 806BEC34  41 82 00 3C */	beq lbl_806BEC70
/* 806BEC38  3C 60 80 6C */	lis r3, lit_3804@ha
/* 806BEC3C  C0 23 19 3C */	lfs f1, lit_3804@l(r3)
/* 806BEC40  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806BEC44  3C 60 80 6C */	lis r3, lit_3805@ha
/* 806BEC48  C0 03 19 40 */	lfs f0, lit_3805@l(r3)
/* 806BEC4C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806BEC50  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806BEC54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806BEC58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806BEC5C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806BEC60  38 80 00 02 */	li r4, 2
/* 806BEC64  38 A0 00 1F */	li r5, 0x1f
/* 806BEC68  38 C1 00 0C */	addi r6, r1, 0xc
/* 806BEC6C  4B 9B 0D B8 */	b StartShock__12dVibration_cFii4cXyz
lbl_806BEC70:
/* 806BEC70  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 806BEC74  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040006@ha */
/* 806BEC78  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00040006@l */
/* 806BEC7C  38 A0 00 20 */	li r5, 0x20
/* 806BEC80  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 806BEC84  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806BEC88  7D 89 03 A6 */	mtctr r12
/* 806BEC8C  4E 80 04 21 */	bctrl 
lbl_806BEC90:
/* 806BEC90  38 7F 09 80 */	addi r3, r31, 0x980
/* 806BEC94  81 9F 09 BC */	lwz r12, 0x9bc(r31)
/* 806BEC98  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806BEC9C  7D 89 03 A6 */	mtctr r12
/* 806BECA0  4E 80 04 21 */	bctrl 
/* 806BECA4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806BECA8  54 00 00 3E */	slwi r0, r0, 0
/* 806BECAC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 806BECB0  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 806BECB4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806BECB8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806BECBC  80 1F 0A B8 */	lwz r0, 0xab8(r31)
/* 806BECC0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806BECC4  90 1F 0A B8 */	stw r0, 0xab8(r31)
/* 806BECC8  80 1F 09 98 */	lwz r0, 0x998(r31)
/* 806BECCC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806BECD0  90 1F 09 98 */	stw r0, 0x998(r31)
/* 806BECD4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070322@ha */
/* 806BECD8  38 03 03 22 */	addi r0, r3, 0x0322 /* 0x00070322@l */
/* 806BECDC  90 01 00 08 */	stw r0, 8(r1)
/* 806BECE0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 806BECE4  38 81 00 08 */	addi r4, r1, 8
/* 806BECE8  38 A0 00 00 */	li r5, 0
/* 806BECEC  38 C0 FF FF */	li r6, -1
/* 806BECF0  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 806BECF4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BECF8  7D 89 03 A6 */	mtctr r12
/* 806BECFC  4E 80 04 21 */	bctrl 
/* 806BED00  3C 60 80 6C */	lis r3, lit_3804@ha
/* 806BED04  C0 03 19 3C */	lfs f0, lit_3804@l(r3)
/* 806BED08  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 806BED0C  D0 1F 06 FC */	stfs f0, 0x6fc(r31)
/* 806BED10  7F E3 FB 78 */	mr r3, r31
/* 806BED14  38 80 00 03 */	li r4, 3
/* 806BED18  38 A0 00 00 */	li r5, 0
/* 806BED1C  4B FF FD DD */	bl setActionMode__8daE_FZ_cFii
/* 806BED20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806BED24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806BED28  7C 08 03 A6 */	mtlr r0
/* 806BED2C  38 21 00 20 */	addi r1, r1, 0x20
/* 806BED30  4E 80 00 20 */	blr 
