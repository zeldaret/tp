lbl_80A26AD0:
/* 80A26AD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A26AD4  7C 08 02 A6 */	mflr r0
/* 80A26AD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A26ADC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A26AE0  4B 93 B6 F8 */	b _savegpr_28
/* 80A26AE4  7C 7D 1B 78 */	mr r29, r3
/* 80A26AE8  7C BE 2B 78 */	mr r30, r5
/* 80A26AEC  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80A26AF0  7C BF 2B 78 */	mr r31, r5
/* 80A26AF4  3C 60 80 A3 */	lis r3, lit_4270@ha
/* 80A26AF8  38 83 A0 DC */	addi r4, r3, lit_4270@l
/* 80A26AFC  80 64 00 00 */	lwz r3, 0(r4)
/* 80A26B00  80 04 00 04 */	lwz r0, 4(r4)
/* 80A26B04  90 61 00 08 */	stw r3, 8(r1)
/* 80A26B08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A26B0C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A26B10  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A26B14  2C 05 00 00 */	cmpwi r5, 0
/* 80A26B18  40 82 00 B0 */	bne lbl_80A26BC8
/* 80A26B1C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A26B20  80 63 00 04 */	lwz r3, 4(r3)
/* 80A26B24  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A26B28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A26B2C  38 63 00 30 */	addi r3, r3, 0x30
/* 80A26B30  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A26B34  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A26B38  4B 91 F9 78 */	b PSMTXCopy
/* 80A26B3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A26B40  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80A26B44  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A26B48  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80A26B4C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A26B50  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80A26B54  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A26B58  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80A26B5C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A26B60  80 63 00 04 */	lwz r3, 4(r3)
/* 80A26B64  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A26B68  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A26B6C  38 63 00 60 */	addi r3, r3, 0x60
/* 80A26B70  7F 84 E3 78 */	mr r4, r28
/* 80A26B74  4B 91 F9 3C */	b PSMTXCopy
/* 80A26B78  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A26B7C  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80A26B80  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A26B84  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80A26B88  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A26B8C  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80A26B90  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A26B94  80 63 00 04 */	lwz r3, 4(r3)
/* 80A26B98  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A26B9C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A26BA0  38 63 00 90 */	addi r3, r3, 0x90
/* 80A26BA4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A26BA8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A26BAC  4B 91 F9 04 */	b PSMTXCopy
/* 80A26BB0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A26BB4  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80A26BB8  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A26BBC  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80A26BC0  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A26BC4  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80A26BC8:
/* 80A26BC8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A26BCC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A26BD0  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80A26BD4  7C 60 E2 14 */	add r3, r0, r28
/* 80A26BD8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A26BDC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A26BE0  4B 91 F8 D0 */	b PSMTXCopy
/* 80A26BE4  2C 1F 00 04 */	cmpwi r31, 4
/* 80A26BE8  40 80 00 2C */	bge lbl_80A26C14
/* 80A26BEC  2C 1F 00 01 */	cmpwi r31, 1
/* 80A26BF0  40 80 00 08 */	bge lbl_80A26BF8
/* 80A26BF4  48 00 00 20 */	b lbl_80A26C14
lbl_80A26BF8:
/* 80A26BF8  7F A3 EB 78 */	mr r3, r29
/* 80A26BFC  7F E4 FB 78 */	mr r4, r31
/* 80A26C00  38 A1 00 08 */	addi r5, r1, 8
/* 80A26C04  3C C0 80 A3 */	lis r6, m__21daNpcKasiMich_Param_c@ha
/* 80A26C08  38 C6 A0 4C */	addi r6, r6, m__21daNpcKasiMich_Param_c@l
/* 80A26C0C  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80A26C10  4B 72 C7 6C */	b setLookatMtx__8daNpcF_cFiPif
lbl_80A26C14:
/* 80A26C14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A26C18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A26C1C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A26C20  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A26C24  7C 80 E2 14 */	add r4, r0, r28
/* 80A26C28  4B 91 F8 88 */	b PSMTXCopy
/* 80A26C2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A26C30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A26C34  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80A26C38  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80A26C3C  4B 91 F8 74 */	b PSMTXCopy
/* 80A26C40  38 60 00 01 */	li r3, 1
/* 80A26C44  39 61 00 30 */	addi r11, r1, 0x30
/* 80A26C48  4B 93 B5 DC */	b _restgpr_28
/* 80A26C4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A26C50  7C 08 03 A6 */	mtlr r0
/* 80A26C54  38 21 00 30 */	addi r1, r1, 0x30
/* 80A26C58  4E 80 00 20 */	blr 
