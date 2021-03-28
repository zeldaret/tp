lbl_804839B4:
/* 804839B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804839B8  7C 08 02 A6 */	mflr r0
/* 804839BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804839C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804839C4  4B ED E8 18 */	b _savegpr_29
/* 804839C8  2C 04 00 00 */	cmpwi r4, 0
/* 804839CC  40 82 00 74 */	bne lbl_80483A40
/* 804839D0  3C 80 80 43 */	lis r4, j3dSys@ha
/* 804839D4  38 84 4A C8 */	addi r4, r4, j3dSys@l
/* 804839D8  83 C4 00 38 */	lwz r30, 0x38(r4)
/* 804839DC  83 BE 00 14 */	lwz r29, 0x14(r30)
/* 804839E0  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 804839E4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 804839E8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804839EC  1F E4 00 30 */	mulli r31, r4, 0x30
/* 804839F0  7C 60 FA 14 */	add r3, r0, r31
/* 804839F4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 804839F8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 804839FC  4B EC 2A B4 */	b PSMTXCopy
/* 80483A00  C0 3D 05 D8 */	lfs f1, 0x5d8(r29)
/* 80483A04  3C 60 80 48 */	lis r3, lit_3879@ha
/* 80483A08  C0 43 4E 28 */	lfs f2, lit_3879@l(r3)
/* 80483A0C  FC 60 10 90 */	fmr f3, f2
/* 80483A10  4B B8 93 8C */	b transM__14mDoMtx_stack_cFfff
/* 80483A14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80483A18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80483A1C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80483A20  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80483A24  7C 80 FA 14 */	add r4, r0, r31
/* 80483A28  4B EC 2A 88 */	b PSMTXCopy
/* 80483A2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80483A30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80483A34  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80483A38  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80483A3C  4B EC 2A 74 */	b PSMTXCopy
lbl_80483A40:
/* 80483A40  38 60 00 01 */	li r3, 1
/* 80483A44  39 61 00 20 */	addi r11, r1, 0x20
/* 80483A48  4B ED E7 E0 */	b _restgpr_29
/* 80483A4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80483A50  7C 08 03 A6 */	mtlr r0
/* 80483A54  38 21 00 20 */	addi r1, r1, 0x20
/* 80483A58  4E 80 00 20 */	blr 
