lbl_80505404:
/* 80505404  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80505408  7C 08 02 A6 */	mflr r0
/* 8050540C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80505410  39 61 00 20 */	addi r11, r1, 0x20
/* 80505414  4B E5 CD C8 */	b _savegpr_29
/* 80505418  2C 04 00 00 */	cmpwi r4, 0
/* 8050541C  40 82 00 94 */	bne lbl_805054B0
/* 80505420  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 80505424  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80505428  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8050542C  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80505430  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 80505434  28 1D 00 00 */	cmplwi r29, 0
/* 80505438  41 82 00 78 */	beq lbl_805054B0
/* 8050543C  A8 1D 09 A8 */	lha r0, 0x9a8(r29)
/* 80505440  2C 00 00 00 */	cmpwi r0, 0
/* 80505444  41 82 00 6C */	beq lbl_805054B0
/* 80505448  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8050544C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80505450  1F C4 00 30 */	mulli r30, r4, 0x30
/* 80505454  7C 60 F2 14 */	add r3, r0, r30
/* 80505458  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8050545C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80505460  80 84 00 00 */	lwz r4, 0(r4)
/* 80505464  4B E4 10 4C */	b PSMTXCopy
/* 80505468  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8050546C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80505470  80 63 00 00 */	lwz r3, 0(r3)
/* 80505474  A8 9D 09 A8 */	lha r4, 0x9a8(r29)
/* 80505478  4B B0 70 54 */	b mDoMtx_ZrotM__FPA4_fs
/* 8050547C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80505480  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80505484  80 63 00 00 */	lwz r3, 0(r3)
/* 80505488  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8050548C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80505490  7C 80 F2 14 */	add r4, r0, r30
/* 80505494  4B E4 10 1C */	b PSMTXCopy
/* 80505498  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8050549C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805054A0  80 63 00 00 */	lwz r3, 0(r3)
/* 805054A4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 805054A8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 805054AC  4B E4 10 04 */	b PSMTXCopy
lbl_805054B0:
/* 805054B0  38 60 00 01 */	li r3, 1
/* 805054B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805054B8  4B E5 CD 70 */	b _restgpr_29
/* 805054BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805054C0  7C 08 03 A6 */	mtlr r0
/* 805054C4  38 21 00 20 */	addi r1, r1, 0x20
/* 805054C8  4E 80 00 20 */	blr 
