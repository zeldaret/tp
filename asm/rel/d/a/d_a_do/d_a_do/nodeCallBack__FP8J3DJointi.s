lbl_80667E68:
/* 80667E68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80667E6C  7C 08 02 A6 */	mflr r0
/* 80667E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80667E74  39 61 00 20 */	addi r11, r1, 0x20
/* 80667E78  4B CF A3 60 */	b _savegpr_28
/* 80667E7C  2C 04 00 00 */	cmpwi r4, 0
/* 80667E80  40 82 01 48 */	bne lbl_80667FC8
/* 80667E84  A3 83 00 14 */	lhz r28, 0x14(r3)
/* 80667E88  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80667E8C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80667E90  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80667E94  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 80667E98  28 1D 00 00 */	cmplwi r29, 0
/* 80667E9C  41 82 01 2C */	beq lbl_80667FC8
/* 80667EA0  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80667EA4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80667EA8  1F DC 00 30 */	mulli r30, r28, 0x30
/* 80667EAC  7C 60 F2 14 */	add r3, r0, r30
/* 80667EB0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80667EB4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80667EB8  80 84 00 00 */	lwz r4, 0(r4)
/* 80667EBC  4B CD E5 F4 */	b PSMTXCopy
/* 80667EC0  2C 1C 00 09 */	cmpwi r28, 9
/* 80667EC4  41 82 00 0C */	beq lbl_80667ED0
/* 80667EC8  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80667ECC  40 82 00 5C */	bne lbl_80667F28
lbl_80667ED0:
/* 80667ED0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80667ED4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80667ED8  80 63 00 00 */	lwz r3, 0(r3)
/* 80667EDC  A8 9D 06 10 */	lha r4, 0x610(r29)
/* 80667EE0  A8 1D 06 28 */	lha r0, 0x628(r29)
/* 80667EE4  7C 04 02 14 */	add r0, r4, r0
/* 80667EE8  7C 04 07 34 */	extsh r4, r0
/* 80667EEC  4B 9A 45 48 */	b mDoMtx_YrotM__FPA4_fs
/* 80667EF0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80667EF4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80667EF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80667EFC  A8 9D 06 12 */	lha r4, 0x612(r29)
/* 80667F00  A8 1D 06 2A */	lha r0, 0x62a(r29)
/* 80667F04  7C 04 02 14 */	add r0, r4, r0
/* 80667F08  7C 04 07 34 */	extsh r4, r0
/* 80667F0C  4B 9A 44 90 */	b mDoMtx_XrotM__FPA4_fs
/* 80667F10  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80667F14  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80667F18  80 63 00 00 */	lwz r3, 0(r3)
/* 80667F1C  A8 9D 06 0E */	lha r4, 0x60e(r29)
/* 80667F20  4B 9A 45 AC */	b mDoMtx_ZrotM__FPA4_fs
/* 80667F24  48 00 00 70 */	b lbl_80667F94
lbl_80667F28:
/* 80667F28  2C 1C 00 16 */	cmpwi r28, 0x16
/* 80667F2C  40 82 00 40 */	bne lbl_80667F6C
/* 80667F30  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80667F34  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80667F38  80 63 00 00 */	lwz r3, 0(r3)
/* 80667F3C  A8 1D 06 40 */	lha r0, 0x640(r29)
/* 80667F40  54 00 08 3C */	slwi r0, r0, 1
/* 80667F44  7C 04 07 34 */	extsh r4, r0
/* 80667F48  4B 9A 44 EC */	b mDoMtx_YrotM__FPA4_fs
/* 80667F4C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80667F50  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80667F54  80 63 00 00 */	lwz r3, 0(r3)
/* 80667F58  A8 1D 06 3E */	lha r0, 0x63e(r29)
/* 80667F5C  54 00 08 3C */	slwi r0, r0, 1
/* 80667F60  7C 04 07 34 */	extsh r4, r0
/* 80667F64  4B 9A 45 68 */	b mDoMtx_ZrotM__FPA4_fs
/* 80667F68  48 00 00 2C */	b lbl_80667F94
lbl_80667F6C:
/* 80667F6C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80667F70  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80667F74  80 63 00 00 */	lwz r3, 0(r3)
/* 80667F78  A8 9D 06 40 */	lha r4, 0x640(r29)
/* 80667F7C  4B 9A 44 B8 */	b mDoMtx_YrotM__FPA4_fs
/* 80667F80  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80667F84  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80667F88  80 63 00 00 */	lwz r3, 0(r3)
/* 80667F8C  A8 9D 06 3E */	lha r4, 0x63e(r29)
/* 80667F90  4B 9A 45 3C */	b mDoMtx_ZrotM__FPA4_fs
lbl_80667F94:
/* 80667F94  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80667F98  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80667F9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80667FA0  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80667FA4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80667FA8  7C 80 F2 14 */	add r4, r0, r30
/* 80667FAC  4B CD E5 04 */	b PSMTXCopy
/* 80667FB0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80667FB4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80667FB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80667FBC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80667FC0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80667FC4  4B CD E4 EC */	b PSMTXCopy
lbl_80667FC8:
/* 80667FC8  38 60 00 01 */	li r3, 1
/* 80667FCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80667FD0  4B CF A2 54 */	b _restgpr_28
/* 80667FD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80667FD8  7C 08 03 A6 */	mtlr r0
/* 80667FDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80667FE0  4E 80 00 20 */	blr 
