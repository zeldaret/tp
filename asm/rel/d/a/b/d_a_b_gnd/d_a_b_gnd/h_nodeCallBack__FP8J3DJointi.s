lbl_805F4DCC:
/* 805F4DCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F4DD0  7C 08 02 A6 */	mflr r0
/* 805F4DD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F4DD8  39 61 00 20 */	addi r11, r1, 0x20
/* 805F4DDC  4B D6 D3 FC */	b _savegpr_28
/* 805F4DE0  2C 04 00 00 */	cmpwi r4, 0
/* 805F4DE4  40 82 01 38 */	bne lbl_805F4F1C
/* 805F4DE8  A3 A3 00 14 */	lhz r29, 0x14(r3)
/* 805F4DEC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 805F4DF0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 805F4DF4  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 805F4DF8  83 9F 00 14 */	lwz r28, 0x14(r31)
/* 805F4DFC  28 1C 00 00 */	cmplwi r28, 0
/* 805F4E00  41 82 01 1C */	beq lbl_805F4F1C
/* 805F4E04  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 805F4E08  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805F4E0C  1F DD 00 30 */	mulli r30, r29, 0x30
/* 805F4E10  7C 60 F2 14 */	add r3, r0, r30
/* 805F4E14  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805F4E18  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805F4E1C  80 84 00 00 */	lwz r4, 0(r4)
/* 805F4E20  4B D5 16 90 */	b PSMTXCopy
/* 805F4E24  2C 1D 00 04 */	cmpwi r29, 4
/* 805F4E28  41 82 00 0C */	beq lbl_805F4E34
/* 805F4E2C  2C 1D 00 05 */	cmpwi r29, 5
/* 805F4E30  40 82 00 28 */	bne lbl_805F4E58
lbl_805F4E34:
/* 805F4E34  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F4E38  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F4E3C  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4E40  A8 1C 0C 5C */	lha r0, 0xc5c(r28)
/* 805F4E44  7C 00 00 D0 */	neg r0, r0
/* 805F4E48  54 00 08 3C */	slwi r0, r0, 1
/* 805F4E4C  7C 04 07 34 */	extsh r4, r0
/* 805F4E50  4B A1 76 7C */	b mDoMtx_ZrotM__FPA4_fs
/* 805F4E54  48 00 00 94 */	b lbl_805F4EE8
lbl_805F4E58:
/* 805F4E58  2C 1D 00 08 */	cmpwi r29, 8
/* 805F4E5C  41 82 00 0C */	beq lbl_805F4E68
/* 805F4E60  2C 1D 00 09 */	cmpwi r29, 9
/* 805F4E64  40 82 00 28 */	bne lbl_805F4E8C
lbl_805F4E68:
/* 805F4E68  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F4E6C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F4E70  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4E74  A8 1C 0C 5C */	lha r0, 0xc5c(r28)
/* 805F4E78  7C 00 00 D0 */	neg r0, r0
/* 805F4E7C  54 00 08 3C */	slwi r0, r0, 1
/* 805F4E80  7C 04 07 34 */	extsh r4, r0
/* 805F4E84  4B A1 75 B0 */	b mDoMtx_YrotM__FPA4_fs
/* 805F4E88  48 00 00 60 */	b lbl_805F4EE8
lbl_805F4E8C:
/* 805F4E8C  2C 1D 00 1C */	cmpwi r29, 0x1c
/* 805F4E90  41 82 00 0C */	beq lbl_805F4E9C
/* 805F4E94  2C 1D 00 1D */	cmpwi r29, 0x1d
/* 805F4E98  40 82 00 24 */	bne lbl_805F4EBC
lbl_805F4E9C:
/* 805F4E9C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F4EA0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F4EA4  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4EA8  A8 1C 0C 5C */	lha r0, 0xc5c(r28)
/* 805F4EAC  54 00 08 3C */	slwi r0, r0, 1
/* 805F4EB0  7C 04 07 34 */	extsh r4, r0
/* 805F4EB4  4B A1 75 80 */	b mDoMtx_YrotM__FPA4_fs
/* 805F4EB8  48 00 00 30 */	b lbl_805F4EE8
lbl_805F4EBC:
/* 805F4EBC  2C 1D 00 20 */	cmpwi r29, 0x20
/* 805F4EC0  41 82 00 0C */	beq lbl_805F4ECC
/* 805F4EC4  2C 1D 00 21 */	cmpwi r29, 0x21
/* 805F4EC8  40 82 00 20 */	bne lbl_805F4EE8
lbl_805F4ECC:
/* 805F4ECC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F4ED0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F4ED4  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4ED8  A8 1C 0C 5C */	lha r0, 0xc5c(r28)
/* 805F4EDC  54 00 08 3C */	slwi r0, r0, 1
/* 805F4EE0  7C 04 07 34 */	extsh r4, r0
/* 805F4EE4  4B A1 75 50 */	b mDoMtx_YrotM__FPA4_fs
lbl_805F4EE8:
/* 805F4EE8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F4EEC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F4EF0  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4EF4  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 805F4EF8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 805F4EFC  7C 80 F2 14 */	add r4, r0, r30
/* 805F4F00  4B D5 15 B0 */	b PSMTXCopy
/* 805F4F04  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805F4F08  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805F4F0C  80 63 00 00 */	lwz r3, 0(r3)
/* 805F4F10  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 805F4F14  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 805F4F18  4B D5 15 98 */	b PSMTXCopy
lbl_805F4F1C:
/* 805F4F1C  38 60 00 01 */	li r3, 1
/* 805F4F20  39 61 00 20 */	addi r11, r1, 0x20
/* 805F4F24  4B D6 D3 00 */	b _restgpr_28
/* 805F4F28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F4F2C  7C 08 03 A6 */	mtlr r0
/* 805F4F30  38 21 00 20 */	addi r1, r1, 0x20
/* 805F4F34  4E 80 00 20 */	blr 
