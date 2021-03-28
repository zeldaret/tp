lbl_8078A26C:
/* 8078A26C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8078A270  7C 08 02 A6 */	mflr r0
/* 8078A274  90 01 00 24 */	stw r0, 0x24(r1)
/* 8078A278  39 61 00 20 */	addi r11, r1, 0x20
/* 8078A27C  4B BD 7F 5C */	b _savegpr_28
/* 8078A280  2C 04 00 00 */	cmpwi r4, 0
/* 8078A284  40 82 01 60 */	bne lbl_8078A3E4
/* 8078A288  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8078A28C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8078A290  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8078A294  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8078A298  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8078A29C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8078A2A0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8078A2A4  1F BF 00 30 */	mulli r29, r31, 0x30
/* 8078A2A8  7C 60 EA 14 */	add r3, r0, r29
/* 8078A2AC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8078A2B0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8078A2B4  80 84 00 00 */	lwz r4, 0(r4)
/* 8078A2B8  4B BB C1 F8 */	b PSMTXCopy
/* 8078A2BC  2C 1F 00 01 */	cmpwi r31, 1
/* 8078A2C0  41 80 00 40 */	blt lbl_8078A300
/* 8078A2C4  2C 1F 00 03 */	cmpwi r31, 3
/* 8078A2C8  41 81 00 38 */	bgt lbl_8078A300
/* 8078A2CC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078A2D0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078A2D4  80 63 00 00 */	lwz r3, 0(r3)
/* 8078A2D8  57 E0 08 3C */	slwi r0, r31, 1
/* 8078A2DC  7C 9C 02 14 */	add r4, r28, r0
/* 8078A2E0  A8 84 06 A0 */	lha r4, 0x6a0(r4)
/* 8078A2E4  C0 1C 06 A8 */	lfs f0, 0x6a8(r28)
/* 8078A2E8  FC 00 00 1E */	fctiwz f0, f0
/* 8078A2EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8078A2F0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8078A2F4  7C 04 02 14 */	add r0, r4, r0
/* 8078A2F8  7C 04 07 34 */	extsh r4, r0
/* 8078A2FC  4B 88 21 38 */	b mDoMtx_YrotM__FPA4_fs
lbl_8078A300:
/* 8078A300  2C 1F 00 05 */	cmpwi r31, 5
/* 8078A304  40 82 00 18 */	bne lbl_8078A31C
/* 8078A308  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078A30C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078A310  80 63 00 00 */	lwz r3, 0(r3)
/* 8078A314  A8 9C 06 B0 */	lha r4, 0x6b0(r28)
/* 8078A318  4B 88 21 B4 */	b mDoMtx_ZrotM__FPA4_fs
lbl_8078A31C:
/* 8078A31C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078A320  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078A324  80 63 00 00 */	lwz r3, 0(r3)
/* 8078A328  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8078A32C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8078A330  7C 80 EA 14 */	add r4, r0, r29
/* 8078A334  4B BB C1 7C */	b PSMTXCopy
/* 8078A338  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078A33C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078A340  80 63 00 00 */	lwz r3, 0(r3)
/* 8078A344  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8078A348  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8078A34C  4B BB C1 64 */	b PSMTXCopy
/* 8078A350  2C 1F 00 00 */	cmpwi r31, 0
/* 8078A354  40 82 00 90 */	bne lbl_8078A3E4
/* 8078A358  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8078A35C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8078A360  7C 60 EA 14 */	add r3, r0, r29
/* 8078A364  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8078A368  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8078A36C  80 84 00 00 */	lwz r4, 0(r4)
/* 8078A370  4B BB C1 40 */	b PSMTXCopy
/* 8078A374  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078A378  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078A37C  80 63 00 00 */	lwz r3, 0(r3)
/* 8078A380  38 80 00 00 */	li r4, 0
/* 8078A384  4B 88 20 B0 */	b mDoMtx_YrotM__FPA4_fs
/* 8078A388  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078A38C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078A390  80 63 00 00 */	lwz r3, 0(r3)
/* 8078A394  38 80 00 00 */	li r4, 0
/* 8078A398  4B 88 20 04 */	b mDoMtx_XrotM__FPA4_fs
/* 8078A39C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078A3A0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078A3A4  80 63 00 00 */	lwz r3, 0(r3)
/* 8078A3A8  38 80 00 00 */	li r4, 0
/* 8078A3AC  4B 88 21 20 */	b mDoMtx_ZrotM__FPA4_fs
/* 8078A3B0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078A3B4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078A3B8  80 63 00 00 */	lwz r3, 0(r3)
/* 8078A3BC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8078A3C0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8078A3C4  7C 80 EA 14 */	add r4, r0, r29
/* 8078A3C8  4B BB C0 E8 */	b PSMTXCopy
/* 8078A3CC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078A3D0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078A3D4  80 63 00 00 */	lwz r3, 0(r3)
/* 8078A3D8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8078A3DC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8078A3E0  4B BB C0 D0 */	b PSMTXCopy
lbl_8078A3E4:
/* 8078A3E4  38 60 00 01 */	li r3, 1
/* 8078A3E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8078A3EC  4B BD 7E 38 */	b _restgpr_28
/* 8078A3F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8078A3F4  7C 08 03 A6 */	mtlr r0
/* 8078A3F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8078A3FC  4E 80 00 20 */	blr 
