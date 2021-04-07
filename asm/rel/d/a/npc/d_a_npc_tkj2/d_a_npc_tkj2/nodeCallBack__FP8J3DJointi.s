lbl_80B10ECC:
/* 80B10ECC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B10ED0  7C 08 02 A6 */	mflr r0
/* 80B10ED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B10ED8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B10EDC  4B 85 12 FD */	bl _savegpr_28
/* 80B10EE0  2C 04 00 00 */	cmpwi r4, 0
/* 80B10EE4  40 82 01 1C */	bne lbl_80B11000
/* 80B10EE8  A3 83 00 14 */	lhz r28, 0x14(r3)
/* 80B10EEC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B10EF0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B10EF4  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80B10EF8  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 80B10EFC  28 1D 00 00 */	cmplwi r29, 0
/* 80B10F00  41 82 01 00 */	beq lbl_80B11000
/* 80B10F04  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80B10F08  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B10F0C  1F DC 00 30 */	mulli r30, r28, 0x30
/* 80B10F10  7C 60 F2 14 */	add r3, r0, r30
/* 80B10F14  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80B10F18  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80B10F1C  80 84 00 00 */	lwz r4, 0(r4)
/* 80B10F20  4B 83 55 91 */	bl PSMTXCopy
/* 80B10F24  2C 1C 00 0F */	cmpwi r28, 0xf
/* 80B10F28  40 82 00 48 */	bne lbl_80B10F70
/* 80B10F2C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B10F30  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B10F34  80 63 00 00 */	lwz r3, 0(r3)
/* 80B10F38  A8 1D 0A 8E */	lha r0, 0xa8e(r29)
/* 80B10F3C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B10F40  7C 00 01 94 */	addze r0, r0
/* 80B10F44  7C 04 07 34 */	extsh r4, r0
/* 80B10F48  4B 4F B4 55 */	bl mDoMtx_XrotM__FPA4_fs
/* 80B10F4C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B10F50  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B10F54  80 63 00 00 */	lwz r3, 0(r3)
/* 80B10F58  A8 1D 0A 90 */	lha r0, 0xa90(r29)
/* 80B10F5C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B10F60  7C 00 01 94 */	addze r0, r0
/* 80B10F64  7C 04 07 34 */	extsh r4, r0
/* 80B10F68  4B 4F B5 65 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80B10F6C  48 00 00 60 */	b lbl_80B10FCC
lbl_80B10F70:
/* 80B10F70  2C 1C 00 10 */	cmpwi r28, 0x10
/* 80B10F74  40 82 00 58 */	bne lbl_80B10FCC
/* 80B10F78  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B10F7C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B10F80  80 63 00 00 */	lwz r3, 0(r3)
/* 80B10F84  A8 9D 0A 92 */	lha r4, 0xa92(r29)
/* 80B10F88  4B 4F B4 AD */	bl mDoMtx_YrotM__FPA4_fs
/* 80B10F8C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B10F90  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B10F94  80 63 00 00 */	lwz r3, 0(r3)
/* 80B10F98  A8 1D 0A 8E */	lha r0, 0xa8e(r29)
/* 80B10F9C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B10FA0  7C 00 01 94 */	addze r0, r0
/* 80B10FA4  7C 04 07 34 */	extsh r4, r0
/* 80B10FA8  4B 4F B3 F5 */	bl mDoMtx_XrotM__FPA4_fs
/* 80B10FAC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B10FB0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B10FB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80B10FB8  A8 1D 0A 90 */	lha r0, 0xa90(r29)
/* 80B10FBC  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B10FC0  7C 00 01 94 */	addze r0, r0
/* 80B10FC4  7C 04 07 34 */	extsh r4, r0
/* 80B10FC8  4B 4F B5 05 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80B10FCC:
/* 80B10FCC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B10FD0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B10FD4  80 63 00 00 */	lwz r3, 0(r3)
/* 80B10FD8  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80B10FDC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B10FE0  7C 80 F2 14 */	add r4, r0, r30
/* 80B10FE4  4B 83 54 CD */	bl PSMTXCopy
/* 80B10FE8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B10FEC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B10FF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80B10FF4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80B10FF8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80B10FFC  4B 83 54 B5 */	bl PSMTXCopy
lbl_80B11000:
/* 80B11000  38 60 00 01 */	li r3, 1
/* 80B11004  39 61 00 20 */	addi r11, r1, 0x20
/* 80B11008  4B 85 12 1D */	bl _restgpr_28
/* 80B1100C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B11010  7C 08 03 A6 */	mtlr r0
/* 80B11014  38 21 00 20 */	addi r1, r1, 0x20
/* 80B11018  4E 80 00 20 */	blr 
