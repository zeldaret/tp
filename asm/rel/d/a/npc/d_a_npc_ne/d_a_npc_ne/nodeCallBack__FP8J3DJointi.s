lbl_80A88DC0:
/* 80A88DC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A88DC4  7C 08 02 A6 */	mflr r0
/* 80A88DC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A88DCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A88DD0  4B 8D 94 08 */	b _savegpr_28
/* 80A88DD4  2C 04 00 00 */	cmpwi r4, 0
/* 80A88DD8  40 82 01 D0 */	bne lbl_80A88FA8
/* 80A88DDC  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80A88DE0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80A88DE4  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80A88DE8  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80A88DEC  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80A88DF0  28 1C 00 00 */	cmplwi r28, 0
/* 80A88DF4  41 82 01 B4 */	beq lbl_80A88FA8
/* 80A88DF8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A88DFC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A88E00  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80A88E04  7C 60 EA 14 */	add r3, r0, r29
/* 80A88E08  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80A88E0C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80A88E10  80 84 00 00 */	lwz r4, 0(r4)
/* 80A88E14  4B 8B D6 9C */	b PSMTXCopy
/* 80A88E18  2C 1F 00 04 */	cmpwi r31, 4
/* 80A88E1C  40 82 00 58 */	bne lbl_80A88E74
/* 80A88E20  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88E24  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88E28  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88E2C  A8 9C 06 64 */	lha r4, 0x664(r28)
/* 80A88E30  A8 1C 06 9A */	lha r0, 0x69a(r28)
/* 80A88E34  7C 04 02 14 */	add r0, r4, r0
/* 80A88E38  7C 04 07 34 */	extsh r4, r0
/* 80A88E3C  4B 58 35 F8 */	b mDoMtx_YrotM__FPA4_fs
/* 80A88E40  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88E44  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88E48  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88E4C  A8 9C 06 66 */	lha r4, 0x666(r28)
/* 80A88E50  A8 1C 06 9C */	lha r0, 0x69c(r28)
/* 80A88E54  7C 04 02 14 */	add r0, r4, r0
/* 80A88E58  7C 04 07 34 */	extsh r4, r0
/* 80A88E5C  4B 58 35 40 */	b mDoMtx_XrotM__FPA4_fs
/* 80A88E60  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88E64  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88E68  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88E6C  A8 9C 06 62 */	lha r4, 0x662(r28)
/* 80A88E70  4B 58 36 5C */	b mDoMtx_ZrotM__FPA4_fs
lbl_80A88E74:
/* 80A88E74  38 1F FF FF */	addi r0, r31, -1
/* 80A88E78  28 00 00 01 */	cmplwi r0, 1
/* 80A88E7C  40 81 00 0C */	ble lbl_80A88E88
/* 80A88E80  2C 1F 00 03 */	cmpwi r31, 3
/* 80A88E84  40 82 00 34 */	bne lbl_80A88EB8
lbl_80A88E88:
/* 80A88E88  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88E8C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88E90  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88E94  A8 9C 06 94 */	lha r4, 0x694(r28)
/* 80A88E98  4B 58 35 9C */	b mDoMtx_YrotM__FPA4_fs
/* 80A88E9C  2C 1F 00 03 */	cmpwi r31, 3
/* 80A88EA0  40 82 00 18 */	bne lbl_80A88EB8
/* 80A88EA4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88EA8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88EAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88EB0  A8 9C 06 82 */	lha r4, 0x682(r28)
/* 80A88EB4  4B 58 35 80 */	b mDoMtx_YrotM__FPA4_fs
lbl_80A88EB8:
/* 80A88EB8  2C 1F 00 14 */	cmpwi r31, 0x14
/* 80A88EBC  41 82 00 0C */	beq lbl_80A88EC8
/* 80A88EC0  2C 1F 00 15 */	cmpwi r31, 0x15
/* 80A88EC4  40 82 00 6C */	bne lbl_80A88F30
lbl_80A88EC8:
/* 80A88EC8  2C 1F 00 14 */	cmpwi r31, 0x14
/* 80A88ECC  40 82 00 1C */	bne lbl_80A88EE8
/* 80A88ED0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88ED4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88ED8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88EDC  A8 9C 06 88 */	lha r4, 0x688(r28)
/* 80A88EE0  4B 58 35 EC */	b mDoMtx_ZrotM__FPA4_fs
/* 80A88EE4  48 00 00 30 */	b lbl_80A88F14
lbl_80A88EE8:
/* 80A88EE8  2C 1F 00 15 */	cmpwi r31, 0x15
/* 80A88EEC  40 82 00 28 */	bne lbl_80A88F14
/* 80A88EF0  A8 9C 06 88 */	lha r4, 0x688(r28)
/* 80A88EF4  7C 80 07 35 */	extsh. r0, r4
/* 80A88EF8  40 81 00 1C */	ble lbl_80A88F14
/* 80A88EFC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88F00  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88F04  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88F08  54 80 08 3C */	slwi r0, r4, 1
/* 80A88F0C  7C 04 07 34 */	extsh r4, r0
/* 80A88F10  4B 58 35 BC */	b mDoMtx_ZrotM__FPA4_fs
lbl_80A88F14:
/* 80A88F14  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88F18  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88F1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88F20  57 E0 08 3C */	slwi r0, r31, 1
/* 80A88F24  7C 9C 02 14 */	add r4, r28, r0
/* 80A88F28  A8 84 06 5C */	lha r4, 0x65c(r4)
/* 80A88F2C  4B 58 35 A0 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80A88F30:
/* 80A88F30  2C 1F 00 00 */	cmpwi r31, 0
/* 80A88F34  40 82 00 40 */	bne lbl_80A88F74
/* 80A88F38  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88F3C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88F40  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88F44  38 80 00 00 */	li r4, 0
/* 80A88F48  4B 58 34 EC */	b mDoMtx_YrotM__FPA4_fs
/* 80A88F4C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88F50  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88F54  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88F58  38 80 00 00 */	li r4, 0
/* 80A88F5C  4B 58 34 40 */	b mDoMtx_XrotM__FPA4_fs
/* 80A88F60  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88F64  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88F68  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88F6C  38 80 00 00 */	li r4, 0
/* 80A88F70  4B 58 35 5C */	b mDoMtx_ZrotM__FPA4_fs
lbl_80A88F74:
/* 80A88F74  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88F78  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88F7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88F80  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A88F84  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A88F88  7C 80 EA 14 */	add r4, r0, r29
/* 80A88F8C  4B 8B D5 24 */	b PSMTXCopy
/* 80A88F90  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A88F94  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A88F98  80 63 00 00 */	lwz r3, 0(r3)
/* 80A88F9C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80A88FA0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80A88FA4  4B 8B D5 0C */	b PSMTXCopy
lbl_80A88FA8:
/* 80A88FA8  38 60 00 01 */	li r3, 1
/* 80A88FAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A88FB0  4B 8D 92 74 */	b _restgpr_28
/* 80A88FB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A88FB8  7C 08 03 A6 */	mtlr r0
/* 80A88FBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A88FC0  4E 80 00 20 */	blr 
