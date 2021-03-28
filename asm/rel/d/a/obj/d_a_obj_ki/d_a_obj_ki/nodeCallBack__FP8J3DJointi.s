lbl_80C43F0C:
/* 80C43F0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C43F10  7C 08 02 A6 */	mflr r0
/* 80C43F14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C43F18  39 61 00 20 */	addi r11, r1, 0x20
/* 80C43F1C  4B 71 E2 BC */	b _savegpr_28
/* 80C43F20  2C 04 00 00 */	cmpwi r4, 0
/* 80C43F24  40 82 00 D0 */	bne lbl_80C43FF4
/* 80C43F28  A3 83 00 14 */	lhz r28, 0x14(r3)
/* 80C43F2C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C43F30  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80C43F34  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80C43F38  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 80C43F3C  28 1D 00 00 */	cmplwi r29, 0
/* 80C43F40  41 82 00 B4 */	beq lbl_80C43FF4
/* 80C43F44  2C 1C 00 02 */	cmpwi r28, 2
/* 80C43F48  41 80 00 AC */	blt lbl_80C43FF4
/* 80C43F4C  2C 1C 00 04 */	cmpwi r28, 4
/* 80C43F50  41 81 00 A4 */	bgt lbl_80C43FF4
/* 80C43F54  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80C43F58  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C43F5C  1F DC 00 30 */	mulli r30, r28, 0x30
/* 80C43F60  7C 60 F2 14 */	add r3, r0, r30
/* 80C43F64  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80C43F68  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80C43F6C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C43F70  4B 70 25 40 */	b PSMTXCopy
/* 80C43F74  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C43F78  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C43F7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C43F80  1F 9C 00 06 */	mulli r28, r28, 6
/* 80C43F84  7C 9D E2 14 */	add r4, r29, r28
/* 80C43F88  A8 84 05 82 */	lha r4, 0x582(r4)
/* 80C43F8C  4B 3C 84 A8 */	b mDoMtx_YrotM__FPA4_fs
/* 80C43F90  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C43F94  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C43F98  80 63 00 00 */	lwz r3, 0(r3)
/* 80C43F9C  7C 9D E2 14 */	add r4, r29, r28
/* 80C43FA0  A8 84 05 80 */	lha r4, 0x580(r4)
/* 80C43FA4  4B 3C 83 F8 */	b mDoMtx_XrotM__FPA4_fs
/* 80C43FA8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C43FAC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C43FB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C43FB4  7C 9D E2 14 */	add r4, r29, r28
/* 80C43FB8  A8 84 05 84 */	lha r4, 0x584(r4)
/* 80C43FBC  4B 3C 85 10 */	b mDoMtx_ZrotM__FPA4_fs
/* 80C43FC0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C43FC4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C43FC8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C43FCC  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80C43FD0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80C43FD4  7C 80 F2 14 */	add r4, r0, r30
/* 80C43FD8  4B 70 24 D8 */	b PSMTXCopy
/* 80C43FDC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C43FE0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C43FE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C43FE8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80C43FEC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80C43FF0  4B 70 24 C0 */	b PSMTXCopy
lbl_80C43FF4:
/* 80C43FF4  38 60 00 01 */	li r3, 1
/* 80C43FF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C43FFC  4B 71 E2 28 */	b _restgpr_28
/* 80C44000  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C44004  7C 08 03 A6 */	mtlr r0
/* 80C44008  38 21 00 20 */	addi r1, r1, 0x20
/* 80C4400C  4E 80 00 20 */	blr 
