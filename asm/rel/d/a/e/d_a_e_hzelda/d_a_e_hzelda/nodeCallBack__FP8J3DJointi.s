lbl_806F0E1C:
/* 806F0E1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806F0E20  7C 08 02 A6 */	mflr r0
/* 806F0E24  90 01 00 34 */	stw r0, 0x34(r1)
/* 806F0E28  39 61 00 30 */	addi r11, r1, 0x30
/* 806F0E2C  4B C7 13 AD */	bl _savegpr_28
/* 806F0E30  2C 04 00 00 */	cmpwi r4, 0
/* 806F0E34  40 82 01 B4 */	bne lbl_806F0FE8
/* 806F0E38  A3 83 00 14 */	lhz r28, 0x14(r3)
/* 806F0E3C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 806F0E40  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 806F0E44  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 806F0E48  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 806F0E4C  28 1D 00 00 */	cmplwi r29, 0
/* 806F0E50  41 82 01 98 */	beq lbl_806F0FE8
/* 806F0E54  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 806F0E58  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806F0E5C  1F DC 00 30 */	mulli r30, r28, 0x30
/* 806F0E60  7C 60 F2 14 */	add r3, r0, r30
/* 806F0E64  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806F0E68  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806F0E6C  80 84 00 00 */	lwz r4, 0(r4)
/* 806F0E70  4B C5 56 41 */	bl PSMTXCopy
/* 806F0E74  2C 1C 00 03 */	cmpwi r28, 3
/* 806F0E78  40 82 00 4C */	bne lbl_806F0EC4
/* 806F0E7C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F0E80  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F0E84  80 63 00 00 */	lwz r3, 0(r3)
/* 806F0E88  A8 1D 06 BC */	lha r0, 0x6bc(r29)
/* 806F0E8C  7C 00 0E 70 */	srawi r0, r0, 1
/* 806F0E90  7C 00 01 94 */	addze r0, r0
/* 806F0E94  7C 04 07 34 */	extsh r4, r0
/* 806F0E98  4B 91 B5 05 */	bl mDoMtx_XrotM__FPA4_fs
/* 806F0E9C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F0EA0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F0EA4  80 63 00 00 */	lwz r3, 0(r3)
/* 806F0EA8  A8 1D 06 BE */	lha r0, 0x6be(r29)
/* 806F0EAC  7C 00 00 D0 */	neg r0, r0
/* 806F0EB0  7C 00 0E 70 */	srawi r0, r0, 1
/* 806F0EB4  7C 00 01 94 */	addze r0, r0
/* 806F0EB8  7C 04 07 34 */	extsh r4, r0
/* 806F0EBC  4B 91 B6 11 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806F0EC0  48 00 00 F4 */	b lbl_806F0FB4
lbl_806F0EC4:
/* 806F0EC4  2C 1C 00 04 */	cmpwi r28, 4
/* 806F0EC8  40 82 00 48 */	bne lbl_806F0F10
/* 806F0ECC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F0ED0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F0ED4  80 63 00 00 */	lwz r3, 0(r3)
/* 806F0ED8  A8 1D 06 BC */	lha r0, 0x6bc(r29)
/* 806F0EDC  7C 00 0E 70 */	srawi r0, r0, 1
/* 806F0EE0  7C 00 01 94 */	addze r0, r0
/* 806F0EE4  7C 04 07 34 */	extsh r4, r0
/* 806F0EE8  4B 91 B4 B5 */	bl mDoMtx_XrotM__FPA4_fs
/* 806F0EEC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F0EF0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F0EF4  80 63 00 00 */	lwz r3, 0(r3)
/* 806F0EF8  A8 1D 06 BE */	lha r0, 0x6be(r29)
/* 806F0EFC  7C 00 0E 70 */	srawi r0, r0, 1
/* 806F0F00  7C 00 01 94 */	addze r0, r0
/* 806F0F04  7C 04 07 34 */	extsh r4, r0
/* 806F0F08  4B 91 B5 C5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806F0F0C  48 00 00 A8 */	b lbl_806F0FB4
lbl_806F0F10:
/* 806F0F10  2C 1C 00 13 */	cmpwi r28, 0x13
/* 806F0F14  40 82 00 28 */	bne lbl_806F0F3C
/* 806F0F18  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F0F1C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F0F20  80 63 00 00 */	lwz r3, 0(r3)
/* 806F0F24  C0 1D 06 C8 */	lfs f0, 0x6c8(r29)
/* 806F0F28  FC 00 00 1E */	fctiwz f0, f0
/* 806F0F2C  D8 01 00 08 */	stfd f0, 8(r1)
/* 806F0F30  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806F0F34  4B 91 B5 01 */	bl mDoMtx_YrotM__FPA4_fs
/* 806F0F38  48 00 00 7C */	b lbl_806F0FB4
lbl_806F0F3C:
/* 806F0F3C  2C 1C 00 1A */	cmpwi r28, 0x1a
/* 806F0F40  40 82 00 2C */	bne lbl_806F0F6C
/* 806F0F44  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F0F48  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F0F4C  80 63 00 00 */	lwz r3, 0(r3)
/* 806F0F50  C0 1D 06 C0 */	lfs f0, 0x6c0(r29)
/* 806F0F54  FC 00 00 50 */	fneg f0, f0
/* 806F0F58  FC 00 00 1E */	fctiwz f0, f0
/* 806F0F5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 806F0F60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806F0F64  4B 91 B4 D1 */	bl mDoMtx_YrotM__FPA4_fs
/* 806F0F68  48 00 00 4C */	b lbl_806F0FB4
lbl_806F0F6C:
/* 806F0F6C  2C 1C 00 20 */	cmpwi r28, 0x20
/* 806F0F70  40 82 00 44 */	bne lbl_806F0FB4
/* 806F0F74  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F0F78  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F0F7C  80 63 00 00 */	lwz r3, 0(r3)
/* 806F0F80  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 806F0F84  FC 00 00 1E */	fctiwz f0, f0
/* 806F0F88  D8 01 00 08 */	stfd f0, 8(r1)
/* 806F0F8C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806F0F90  4B 91 B4 A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 806F0F94  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F0F98  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F0F9C  80 63 00 00 */	lwz r3, 0(r3)
/* 806F0FA0  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 806F0FA4  FC 00 00 1E */	fctiwz f0, f0
/* 806F0FA8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806F0FAC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 806F0FB0  4B 91 B5 1D */	bl mDoMtx_ZrotM__FPA4_fs
lbl_806F0FB4:
/* 806F0FB4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F0FB8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F0FBC  80 63 00 00 */	lwz r3, 0(r3)
/* 806F0FC0  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 806F0FC4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806F0FC8  7C 80 F2 14 */	add r4, r0, r30
/* 806F0FCC  4B C5 54 E5 */	bl PSMTXCopy
/* 806F0FD0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F0FD4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F0FD8  80 63 00 00 */	lwz r3, 0(r3)
/* 806F0FDC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806F0FE0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806F0FE4  4B C5 54 CD */	bl PSMTXCopy
lbl_806F0FE8:
/* 806F0FE8  38 60 00 01 */	li r3, 1
/* 806F0FEC  39 61 00 30 */	addi r11, r1, 0x30
/* 806F0FF0  4B C7 12 35 */	bl _restgpr_28
/* 806F0FF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F0FF8  7C 08 03 A6 */	mtlr r0
/* 806F0FFC  38 21 00 30 */	addi r1, r1, 0x30
/* 806F1000  4E 80 00 20 */	blr 
