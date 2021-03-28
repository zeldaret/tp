lbl_8086C140:
/* 8086C140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8086C144  7C 08 02 A6 */	mflr r0
/* 8086C148  90 01 00 24 */	stw r0, 0x24(r1)
/* 8086C14C  39 61 00 20 */	addi r11, r1, 0x20
/* 8086C150  4B AF 60 8C */	b _savegpr_29
/* 8086C154  3C A0 80 87 */	lis r5, lit_3829@ha
/* 8086C158  3B E5 00 94 */	addi r31, r5, lit_3829@l
/* 8086C15C  2C 04 00 00 */	cmpwi r4, 0
/* 8086C160  40 82 00 98 */	bne lbl_8086C1F8
/* 8086C164  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8086C168  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8086C16C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8086C170  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8086C174  2C 04 00 01 */	cmpwi r4, 1
/* 8086C178  40 82 00 80 */	bne lbl_8086C1F8
/* 8086C17C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8086C180  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8086C184  1F A4 00 30 */	mulli r29, r4, 0x30
/* 8086C188  7C 60 EA 14 */	add r3, r0, r29
/* 8086C18C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8086C190  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8086C194  80 84 00 00 */	lwz r4, 0(r4)
/* 8086C198  4B AD A3 18 */	b PSMTXCopy
/* 8086C19C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8086C1A0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8086C1A4  80 63 00 00 */	lwz r3, 0(r3)
/* 8086C1A8  38 80 DD A0 */	li r4, -8800
/* 8086C1AC  4B 7A 02 88 */	b mDoMtx_YrotM__FPA4_fs
/* 8086C1B0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8086C1B4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8086C1B8  C0 7F 00 08 */	lfs f3, 8(r31)
/* 8086C1BC  38 60 00 01 */	li r3, 1
/* 8086C1C0  4B A0 4C E4 */	b MtxScale__FfffUc
/* 8086C1C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8086C1C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8086C1CC  80 63 00 00 */	lwz r3, 0(r3)
/* 8086C1D0  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8086C1D4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8086C1D8  7C 80 EA 14 */	add r4, r0, r29
/* 8086C1DC  4B AD A2 D4 */	b PSMTXCopy
/* 8086C1E0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8086C1E4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8086C1E8  80 63 00 00 */	lwz r3, 0(r3)
/* 8086C1EC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8086C1F0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8086C1F4  4B AD A2 BC */	b PSMTXCopy
lbl_8086C1F8:
/* 8086C1F8  38 60 00 01 */	li r3, 1
/* 8086C1FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8086C200  4B AF 60 28 */	b _restgpr_29
/* 8086C204  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8086C208  7C 08 03 A6 */	mtlr r0
/* 8086C20C  38 21 00 20 */	addi r1, r1, 0x20
/* 8086C210  4E 80 00 20 */	blr 
