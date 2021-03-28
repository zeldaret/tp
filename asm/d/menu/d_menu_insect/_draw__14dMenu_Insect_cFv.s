lbl_801D8760:
/* 801D8760  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D8764  7C 08 02 A6 */	mflr r0
/* 801D8768  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D876C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D8770  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D8774  7C 7E 1B 78 */	mr r30, r3
/* 801D8778  80 03 00 08 */	lwz r0, 8(r3)
/* 801D877C  28 00 00 00 */	cmplwi r0, 0
/* 801D8780  41 82 01 54 */	beq lbl_801D88D4
/* 801D8784  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801D8788  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801D878C  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 801D8790  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 801D8794  38 80 00 FF */	li r4, 0xff
/* 801D8798  81 83 00 00 */	lwz r12, 0(r3)
/* 801D879C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801D87A0  7D 89 03 A6 */	mtctr r12
/* 801D87A4  4E 80 04 21 */	bctrl 
/* 801D87A8  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 801D87AC  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D87B0  FC 40 08 90 */	fmr f2, f1
/* 801D87B4  C0 62 A8 48 */	lfs f3, lit_3961(r2)
/* 801D87B8  C0 82 A8 4C */	lfs f4, lit_3962(r2)
/* 801D87BC  38 80 00 00 */	li r4, 0
/* 801D87C0  38 A0 00 00 */	li r5, 0
/* 801D87C4  38 C0 00 00 */	li r6, 0
/* 801D87C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801D87CC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801D87D0  7D 89 03 A6 */	mtctr r12
/* 801D87D4  4E 80 04 21 */	bctrl 
/* 801D87D8  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801D87DC  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D87E0  FC 40 08 90 */	fmr f2, f1
/* 801D87E4  7F E4 FB 78 */	mr r4, r31
/* 801D87E8  48 12 06 ED */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801D87EC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801D87F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801D87F4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801D87F8  7D 89 03 A6 */	mtctr r12
/* 801D87FC  4E 80 04 21 */	bctrl 
/* 801D8800  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 801D8804  48 07 D0 25 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 801D8808  C0 02 A8 50 */	lfs f0, lit_3963(r2)
/* 801D880C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801D8810  FC 00 00 1E */	fctiwz f0, f0
/* 801D8814  D8 01 00 08 */	stfd f0, 8(r1)
/* 801D8818  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801D881C  98 1E 00 FC */	stb r0, 0xfc(r30)
/* 801D8820  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 801D8824  88 9E 00 FC */	lbz r4, 0xfc(r30)
/* 801D8828  81 83 00 00 */	lwz r12, 0(r3)
/* 801D882C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801D8830  7D 89 03 A6 */	mtctr r12
/* 801D8834  4E 80 04 21 */	bctrl 
/* 801D8838  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 801D883C  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D8840  FC 40 08 90 */	fmr f2, f1
/* 801D8844  C0 62 A8 48 */	lfs f3, lit_3961(r2)
/* 801D8848  C0 82 A8 4C */	lfs f4, lit_3962(r2)
/* 801D884C  38 80 00 00 */	li r4, 0
/* 801D8850  38 A0 00 00 */	li r5, 0
/* 801D8854  38 C0 00 00 */	li r6, 0
/* 801D8858  81 83 00 00 */	lwz r12, 0(r3)
/* 801D885C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801D8860  7D 89 03 A6 */	mtctr r12
/* 801D8864  4E 80 04 21 */	bctrl 
/* 801D8868  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 801D886C  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D8870  FC 40 08 90 */	fmr f2, f1
/* 801D8874  7F E4 FB 78 */	mr r4, r31
/* 801D8878  48 12 06 5D */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801D887C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801D8880  38 83 EB C8 */	addi r4, r3, g_drawHIO@l
/* 801D8884  C0 04 0A 04 */	lfs f0, 0xa04(r4)
/* 801D8888  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801D888C  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 801D8890  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801D8894  C0 22 A8 54 */	lfs f1, lit_3964(r2)
/* 801D8898  C0 04 0A 04 */	lfs f0, 0xa04(r4)
/* 801D889C  EC 21 00 2A */	fadds f1, f1, f0
/* 801D88A0  C0 42 A8 58 */	lfs f2, lit_3965(r2)
/* 801D88A4  C0 04 0A 0C */	lfs f0, 0xa0c(r4)
/* 801D88A8  EC 42 00 2A */	fadds f2, f2, f0
/* 801D88AC  48 06 14 ED */	bl translate__17dMsgScrn3Select_cFff
/* 801D88B0  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801D88B4  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D88B8  FC 40 08 90 */	fmr f2, f1
/* 801D88BC  48 06 15 19 */	bl draw__17dMsgScrn3Select_cFff
/* 801D88C0  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 801D88C4  C0 22 A8 44 */	lfs f1, lit_3837(r2)
/* 801D88C8  FC 40 08 90 */	fmr f2, f1
/* 801D88CC  7F E4 FB 78 */	mr r4, r31
/* 801D88D0  48 12 06 05 */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_801D88D4:
/* 801D88D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D88D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D88DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D88E0  7C 08 03 A6 */	mtlr r0
/* 801D88E4  38 21 00 20 */	addi r1, r1, 0x20
/* 801D88E8  4E 80 00 20 */	blr 
