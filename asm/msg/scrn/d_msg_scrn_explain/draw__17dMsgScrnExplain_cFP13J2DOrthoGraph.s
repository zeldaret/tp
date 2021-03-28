lbl_8023D918:
/* 8023D918  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 8023D91C  7C 08 02 A6 */	mflr r0
/* 8023D920  90 01 02 14 */	stw r0, 0x214(r1)
/* 8023D924  93 E1 02 0C */	stw r31, 0x20c(r1)
/* 8023D928  93 C1 02 08 */	stw r30, 0x208(r1)
/* 8023D92C  7C 7F 1B 78 */	mr r31, r3
/* 8023D930  7C 9E 23 78 */	mr r30, r4
/* 8023D934  88 03 00 60 */	lbz r0, 0x60(r3)
/* 8023D938  28 00 00 00 */	cmplwi r0, 0
/* 8023D93C  41 82 01 7C */	beq lbl_8023DAB8
/* 8023D940  28 00 00 01 */	cmplwi r0, 1
/* 8023D944  40 82 00 08 */	bne lbl_8023D94C
/* 8023D948  48 00 01 70 */	b lbl_8023DAB8
lbl_8023D94C:
/* 8023D94C  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8023D950  28 03 00 00 */	cmplwi r3, 0
/* 8023D954  41 82 00 30 */	beq lbl_8023D984
/* 8023D958  C0 22 B1 C0 */	lfs f1, lit_3980(r2)
/* 8023D95C  FC 40 08 90 */	fmr f2, f1
/* 8023D960  C0 62 B1 B8 */	lfs f3, lit_3978(r2)
/* 8023D964  C0 82 B1 CC */	lfs f4, lit_4120(r2)
/* 8023D968  38 80 00 00 */	li r4, 0
/* 8023D96C  38 A0 00 00 */	li r5, 0
/* 8023D970  38 C0 00 00 */	li r6, 0
/* 8023D974  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D978  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8023D97C  7D 89 03 A6 */	mtctr r12
/* 8023D980  4E 80 04 21 */	bctrl 
lbl_8023D984:
/* 8023D984  88 1F 00 66 */	lbz r0, 0x66(r31)
/* 8023D988  28 00 00 02 */	cmplwi r0, 2
/* 8023D98C  41 82 00 20 */	beq lbl_8023D9AC
/* 8023D990  28 00 00 03 */	cmplwi r0, 3
/* 8023D994  41 82 00 18 */	beq lbl_8023D9AC
/* 8023D998  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8023D99C  C0 22 B1 C0 */	lfs f1, lit_3980(r2)
/* 8023D9A0  FC 40 08 90 */	fmr f2, f1
/* 8023D9A4  7F C4 F3 78 */	mr r4, r30
/* 8023D9A8  48 0B B5 2D */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_8023D9AC:
/* 8023D9AC  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023D9B0  80 63 00 04 */	lwz r3, 4(r3)
/* 8023D9B4  48 0C 2C A5 */	bl getStringPtr__10J2DTextBoxCFv
/* 8023D9B8  7C 64 1B 78 */	mr r4, r3
/* 8023D9BC  38 61 00 08 */	addi r3, r1, 8
/* 8023D9C0  48 12 B1 6D */	bl strcpy
/* 8023D9C4  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8023D9C8  C0 22 B1 C0 */	lfs f1, lit_3980(r2)
/* 8023D9CC  FC 40 08 90 */	fmr f2, f1
/* 8023D9D0  7F C4 F3 78 */	mr r4, r30
/* 8023D9D4  48 0B B5 01 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8023D9D8  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023D9DC  80 A3 00 04 */	lwz r5, 4(r3)
/* 8023D9E0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023D9E4  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 8023D9E8  38 C0 00 00 */	li r6, 0
/* 8023D9EC  38 E0 00 00 */	li r7, 0
/* 8023D9F0  39 00 00 00 */	li r8, 0
/* 8023D9F4  39 20 00 08 */	li r9, 8
/* 8023D9F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023D9FC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023DA00  7D 89 03 A6 */	mtctr r12
/* 8023DA04  4E 80 04 21 */	bctrl 
/* 8023DA08  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023DA0C  80 83 00 04 */	lwz r4, 4(r3)
/* 8023DA10  80 7F 00 04 */	lwz r3, 4(r31)
/* 8023DA14  C0 22 B1 D0 */	lfs f1, lit_4121(r2)
/* 8023DA18  81 83 00 00 */	lwz r12, 0(r3)
/* 8023DA1C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023DA20  7D 89 03 A6 */	mtctr r12
/* 8023DA24  4E 80 04 21 */	bctrl 
/* 8023DA28  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023DA2C  80 63 00 04 */	lwz r3, 4(r3)
/* 8023DA30  48 0C 2C 29 */	bl getStringPtr__10J2DTextBoxCFv
/* 8023DA34  38 81 00 08 */	addi r4, r1, 8
/* 8023DA38  48 12 B0 F5 */	bl strcpy
/* 8023DA3C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023DA40  28 03 00 00 */	cmplwi r3, 0
/* 8023DA44  41 82 00 64 */	beq lbl_8023DAA8
/* 8023DA48  88 1F 00 64 */	lbz r0, 0x64(r31)
/* 8023DA4C  28 00 00 01 */	cmplwi r0, 1
/* 8023DA50  41 82 00 0C */	beq lbl_8023DA5C
/* 8023DA54  28 00 00 02 */	cmplwi r0, 2
/* 8023DA58  40 82 00 50 */	bne lbl_8023DAA8
lbl_8023DA5C:
/* 8023DA5C  C0 62 B1 C0 */	lfs f3, lit_3980(r2)
/* 8023DA60  88 1F 00 66 */	lbz r0, 0x66(r31)
/* 8023DA64  28 00 00 02 */	cmplwi r0, 2
/* 8023DA68  40 82 00 08 */	bne lbl_8023DA70
/* 8023DA6C  C0 62 B1 D4 */	lfs f3, lit_4122(r2)
lbl_8023DA70:
/* 8023DA70  C0 22 B1 D8 */	lfs f1, lit_4123(r2)
/* 8023DA74  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 8023DA78  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l
/* 8023DA7C  C0 04 01 F0 */	lfs f0, 0x1f0(r4)
/* 8023DA80  EC 21 00 2A */	fadds f1, f1, f0
/* 8023DA84  C0 42 B1 DC */	lfs f2, lit_4124(r2)
/* 8023DA88  C0 04 02 68 */	lfs f0, 0x268(r4)
/* 8023DA8C  EC 02 00 2A */	fadds f0, f2, f0
/* 8023DA90  EC 40 18 2A */	fadds f2, f0, f3
/* 8023DA94  4B FF C3 05 */	bl translate__17dMsgScrn3Select_cFff
/* 8023DA98  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8023DA9C  C0 22 B1 C0 */	lfs f1, lit_3980(r2)
/* 8023DAA0  FC 40 08 90 */	fmr f2, f1
/* 8023DAA4  4B FF C3 31 */	bl draw__17dMsgScrn3Select_cFff
lbl_8023DAA8:
/* 8023DAA8  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8023DAAC  28 03 00 00 */	cmplwi r3, 0
/* 8023DAB0  41 82 00 08 */	beq lbl_8023DAB8
/* 8023DAB4  4B FF E3 0D */	bl draw__15dMsgScrnArrow_cFv
lbl_8023DAB8:
/* 8023DAB8  83 E1 02 0C */	lwz r31, 0x20c(r1)
/* 8023DABC  83 C1 02 08 */	lwz r30, 0x208(r1)
/* 8023DAC0  80 01 02 14 */	lwz r0, 0x214(r1)
/* 8023DAC4  7C 08 03 A6 */	mtlr r0
/* 8023DAC8  38 21 02 10 */	addi r1, r1, 0x210
/* 8023DACC  4E 80 00 20 */	blr 
