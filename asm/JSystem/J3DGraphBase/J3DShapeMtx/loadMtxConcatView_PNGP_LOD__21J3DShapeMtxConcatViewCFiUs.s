lbl_80313AC8:
/* 80313AC8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80313ACC  7C 08 02 A6 */	mflr r0
/* 80313AD0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80313AD4  39 61 00 50 */	addi r11, r1, 0x50
/* 80313AD8  48 04 E7 05 */	bl _savegpr_29
/* 80313ADC  7C 7D 1B 78 */	mr r29, r3
/* 80313AE0  7C 9E 23 78 */	mr r30, r4
/* 80313AE4  7C BF 2B 78 */	mr r31, r5
/* 80313AE8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80313AEC  38 83 4A C8 */	addi r4, r3, j3dSys@l /* 0x80434AC8@l */
/* 80313AF0  80 64 00 40 */	lwz r3, 0x40(r4)
/* 80313AF4  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80313AF8  80 84 01 04 */	lwz r4, 0x104(r4)
/* 80313AFC  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80313B00  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80313B04  7C 84 02 14 */	add r4, r4, r0
/* 80313B08  38 A1 00 08 */	addi r5, r1, 8
/* 80313B0C  48 03 29 D9 */	bl PSMTXConcat
/* 80313B10  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80313B14  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80313B18  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80313B1C  80 63 00 04 */	lwz r3, 4(r3)
/* 80313B20  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 80313B24  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 80313B28  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80313B2C  7C 83 02 14 */	add r4, r3, r0
/* 80313B30  38 61 00 08 */	addi r3, r1, 8
/* 80313B34  7C 65 1B 78 */	mr r5, r3
/* 80313B38  48 03 29 AD */	bl PSMTXConcat
/* 80313B3C  80 0D 90 40 */	lwz r0, sTexGenBlock__17J3DDifferedTexMtx(r13)
/* 80313B40  28 00 00 00 */	cmplwi r0, 0
/* 80313B44  41 82 00 0C */	beq lbl_80313B50
/* 80313B48  38 61 00 08 */	addi r3, r1, 8
/* 80313B4C  4B FF F6 E1 */	bl loadExecute__17J3DDifferedTexMtxFPA4_Cf
lbl_80313B50:
/* 80313B50  38 61 00 08 */	addi r3, r1, 8
/* 80313B54  1C 9E 00 03 */	mulli r4, r30, 3
/* 80313B58  4B FF BF 89 */	bl J3DFifoLoadPosMtxImm__FPA4_fUl
/* 80313B5C  7F A3 EB 78 */	mr r3, r29
/* 80313B60  7F C4 F3 78 */	mr r4, r30
/* 80313B64  7F E5 FB 78 */	mr r5, r31
/* 80313B68  38 C1 00 08 */	addi r6, r1, 8
/* 80313B6C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80313B70  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80313B74  7D 89 03 A6 */	mtctr r12
/* 80313B78  4E 80 04 21 */	bctrl 
/* 80313B7C  39 61 00 50 */	addi r11, r1, 0x50
/* 80313B80  48 04 E6 A9 */	bl _restgpr_29
/* 80313B84  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80313B88  7C 08 03 A6 */	mtlr r0
/* 80313B8C  38 21 00 50 */	addi r1, r1, 0x50
/* 80313B90  4E 80 00 20 */	blr 
