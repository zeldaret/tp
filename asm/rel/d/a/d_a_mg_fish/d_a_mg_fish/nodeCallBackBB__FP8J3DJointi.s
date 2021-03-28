lbl_8052B070:
/* 8052B070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052B074  7C 08 02 A6 */	mflr r0
/* 8052B078  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052B07C  39 61 00 20 */	addi r11, r1, 0x20
/* 8052B080  4B E3 71 58 */	b _savegpr_28
/* 8052B084  2C 04 00 00 */	cmpwi r4, 0
/* 8052B088  40 82 00 A4 */	bne lbl_8052B12C
/* 8052B08C  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8052B090  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8052B094  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8052B098  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8052B09C  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8052B0A0  28 1C 00 00 */	cmplwi r28, 0
/* 8052B0A4  41 82 00 88 */	beq lbl_8052B12C
/* 8052B0A8  38 1F FF FE */	addi r0, r31, -2
/* 8052B0AC  28 00 00 01 */	cmplwi r0, 1
/* 8052B0B0  40 81 00 0C */	ble lbl_8052B0BC
/* 8052B0B4  2C 1F 00 04 */	cmpwi r31, 4
/* 8052B0B8  40 82 00 74 */	bne lbl_8052B12C
lbl_8052B0BC:
/* 8052B0BC  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8052B0C0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8052B0C4  1F BF 00 30 */	mulli r29, r31, 0x30
/* 8052B0C8  7C 60 EA 14 */	add r3, r0, r29
/* 8052B0CC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8052B0D0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8052B0D4  80 84 00 00 */	lwz r4, 0(r4)
/* 8052B0D8  4B E1 B3 D8 */	b PSMTXCopy
/* 8052B0DC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052B0E0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052B0E4  80 63 00 00 */	lwz r3, 0(r3)
/* 8052B0E8  57 E0 08 3C */	slwi r0, r31, 1
/* 8052B0EC  7C 9C 02 14 */	add r4, r28, r0
/* 8052B0F0  A8 84 07 14 */	lha r4, 0x714(r4)
/* 8052B0F4  4B AE 13 40 */	b mDoMtx_YrotM__FPA4_fs
/* 8052B0F8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052B0FC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052B100  80 63 00 00 */	lwz r3, 0(r3)
/* 8052B104  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8052B108  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8052B10C  7C 80 EA 14 */	add r4, r0, r29
/* 8052B110  4B E1 B3 A0 */	b PSMTXCopy
/* 8052B114  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052B118  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052B11C  80 63 00 00 */	lwz r3, 0(r3)
/* 8052B120  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8052B124  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8052B128  4B E1 B3 88 */	b PSMTXCopy
lbl_8052B12C:
/* 8052B12C  38 60 00 01 */	li r3, 1
/* 8052B130  39 61 00 20 */	addi r11, r1, 0x20
/* 8052B134  4B E3 70 F0 */	b _restgpr_28
/* 8052B138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052B13C  7C 08 03 A6 */	mtlr r0
/* 8052B140  38 21 00 20 */	addi r1, r1, 0x20
/* 8052B144  4E 80 00 20 */	blr 
