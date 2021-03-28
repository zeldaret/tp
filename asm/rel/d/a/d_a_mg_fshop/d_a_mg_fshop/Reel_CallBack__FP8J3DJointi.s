lbl_8086C08C:
/* 8086C08C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8086C090  7C 08 02 A6 */	mflr r0
/* 8086C094  90 01 00 24 */	stw r0, 0x24(r1)
/* 8086C098  39 61 00 20 */	addi r11, r1, 0x20
/* 8086C09C  4B AF 61 40 */	b _savegpr_29
/* 8086C0A0  2C 04 00 00 */	cmpwi r4, 0
/* 8086C0A4  40 82 00 80 */	bne lbl_8086C124
/* 8086C0A8  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8086C0AC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8086C0B0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8086C0B4  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8086C0B8  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 8086C0BC  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8086C0C0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8086C0C4  1F C4 00 30 */	mulli r30, r4, 0x30
/* 8086C0C8  7C 60 F2 14 */	add r3, r0, r30
/* 8086C0CC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8086C0D0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8086C0D4  80 84 00 00 */	lwz r4, 0(r4)
/* 8086C0D8  4B AD A3 D8 */	b PSMTXCopy
/* 8086C0DC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8086C0E0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8086C0E4  80 63 00 00 */	lwz r3, 0(r3)
/* 8086C0E8  A8 9D 00 58 */	lha r4, 0x58(r29)
/* 8086C0EC  4B 7A 02 B0 */	b mDoMtx_XrotM__FPA4_fs
/* 8086C0F0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8086C0F4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8086C0F8  80 63 00 00 */	lwz r3, 0(r3)
/* 8086C0FC  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8086C100  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8086C104  7C 80 F2 14 */	add r4, r0, r30
/* 8086C108  4B AD A3 A8 */	b PSMTXCopy
/* 8086C10C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8086C110  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8086C114  80 63 00 00 */	lwz r3, 0(r3)
/* 8086C118  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8086C11C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8086C120  4B AD A3 90 */	b PSMTXCopy
lbl_8086C124:
/* 8086C124  38 60 00 01 */	li r3, 1
/* 8086C128  39 61 00 20 */	addi r11, r1, 0x20
/* 8086C12C  4B AF 60 FC */	b _restgpr_29
/* 8086C130  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8086C134  7C 08 03 A6 */	mtlr r0
/* 8086C138  38 21 00 20 */	addi r1, r1, 0x20
/* 8086C13C  4E 80 00 20 */	blr 
