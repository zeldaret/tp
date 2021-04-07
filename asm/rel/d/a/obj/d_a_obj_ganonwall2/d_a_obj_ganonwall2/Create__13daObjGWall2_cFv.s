lbl_80BF5878:
/* 80BF5878  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF587C  7C 08 02 A6 */	mflr r0
/* 80BF5880  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF5884  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF5888  4B 76 C9 4D */	bl _savegpr_27
/* 80BF588C  7C 7F 1B 78 */	mr r31, r3
/* 80BF5890  3C 80 80 BF */	lis r4, l_idx@ha /* 0x80BF610C@ha */
/* 80BF5894  3B A4 61 0C */	addi r29, r4, l_idx@l /* 0x80BF610C@l */
/* 80BF5898  4B FF FF 41 */	bl initBaseMtx__13daObjGWall2_cFv
/* 80BF589C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BF58A0  38 03 00 24 */	addi r0, r3, 0x24
/* 80BF58A4  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BF58A8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BF58AC  80 83 00 04 */	lwz r4, 4(r3)
/* 80BF58B0  7F E3 FB 78 */	mr r3, r31
/* 80BF58B4  4B 42 4C C5 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BF58B8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80BF58BC  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80BF58C0  B0 1F 05 B0 */	sth r0, 0x5b0(r31)
/* 80BF58C4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BF58C8  80 63 00 04 */	lwz r3, 4(r3)
/* 80BF58CC  83 83 00 64 */	lwz r28, 0x64(r3)
/* 80BF58D0  3B 60 00 00 */	li r27, 0
/* 80BF58D4  3C 60 80 BF */	lis r3, l_matName@ha /* 0x80BF6210@ha */
/* 80BF58D8  3B C3 62 10 */	addi r30, r3, l_matName@l /* 0x80BF6210@l */
/* 80BF58DC  48 00 00 28 */	b lbl_80BF5904
lbl_80BF58E0:
/* 80BF58E0  7F 83 E3 78 */	mr r3, r28
/* 80BF58E4  7F 64 DB 78 */	mr r4, r27
/* 80BF58E8  4B 6E 92 11 */	bl getName__10JUTNameTabCFUs
/* 80BF58EC  80 9E 00 00 */	lwz r4, 0(r30)
/* 80BF58F0  4B 77 30 A5 */	bl strcmp
/* 80BF58F4  2C 03 00 00 */	cmpwi r3, 0
/* 80BF58F8  40 82 00 08 */	bne lbl_80BF5900
/* 80BF58FC  B3 7F 05 B0 */	sth r27, 0x5b0(r31)
lbl_80BF5900:
/* 80BF5900  3B 7B 00 01 */	addi r27, r27, 1
lbl_80BF5904:
/* 80BF5904  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BF5908  80 63 00 04 */	lwz r3, 4(r3)
/* 80BF590C  A0 63 00 5C */	lhz r3, 0x5c(r3)
/* 80BF5910  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 80BF5914  7C 00 18 40 */	cmplw r0, r3
/* 80BF5918  41 80 FF C8 */	blt lbl_80BF58E0
/* 80BF591C  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80BF5920  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80BF5924  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80BF5928  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80BF592C  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80BF5930  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80BF5934  38 60 00 01 */	li r3, 1
/* 80BF5938  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF593C  4B 76 C8 E5 */	bl _restgpr_27
/* 80BF5940  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF5944  7C 08 03 A6 */	mtlr r0
/* 80BF5948  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF594C  4E 80 00 20 */	blr 
