lbl_806109AC:
/* 806109AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806109B0  7C 08 02 A6 */	mflr r0
/* 806109B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806109B8  39 61 00 20 */	addi r11, r1, 0x20
/* 806109BC  4B D5 18 20 */	b _savegpr_29
/* 806109C0  2C 04 00 00 */	cmpwi r4, 0
/* 806109C4  40 82 01 5C */	bne lbl_80610B20
/* 806109C8  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 806109CC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 806109D0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 806109D4  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 806109D8  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 806109DC  28 1D 00 00 */	cmplwi r29, 0
/* 806109E0  41 82 01 40 */	beq lbl_80610B20
/* 806109E4  2C 04 00 02 */	cmpwi r4, 2
/* 806109E8  41 82 00 0C */	beq lbl_806109F4
/* 806109EC  2C 04 00 01 */	cmpwi r4, 1
/* 806109F0  40 82 01 30 */	bne lbl_80610B20
lbl_806109F4:
/* 806109F4  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 806109F8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806109FC  1F C4 00 30 */	mulli r30, r4, 0x30
/* 80610A00  7C 60 F2 14 */	add r3, r0, r30
/* 80610A04  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80610A08  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80610A0C  80 84 00 00 */	lwz r4, 0(r4)
/* 80610A10  4B D3 5A A0 */	b PSMTXCopy
/* 80610A14  3C 60 80 62 */	lis r3, fin@ha
/* 80610A18  80 03 B5 38 */	lwz r0, fin@l(r3)
/* 80610A1C  2C 00 00 00 */	cmpwi r0, 0
/* 80610A20  40 82 00 50 */	bne lbl_80610A70
/* 80610A24  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610A28  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610A2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80610A30  3C 80 80 62 */	lis r4, pno@ha
/* 80610A34  80 04 B5 34 */	lwz r0, pno@l(r4)
/* 80610A38  1C 00 01 78 */	mulli r0, r0, 0x178
/* 80610A3C  7C 9D 02 14 */	add r4, r29, r0
/* 80610A40  A8 84 05 EE */	lha r4, 0x5ee(r4)
/* 80610A44  4B 9F B9 F0 */	b mDoMtx_YrotM__FPA4_fs
/* 80610A48  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610A4C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610A50  80 63 00 00 */	lwz r3, 0(r3)
/* 80610A54  3C 80 80 62 */	lis r4, pno@ha
/* 80610A58  80 04 B5 34 */	lwz r0, pno@l(r4)
/* 80610A5C  1C 00 01 78 */	mulli r0, r0, 0x178
/* 80610A60  7C 9D 02 14 */	add r4, r29, r0
/* 80610A64  A8 84 05 EE */	lha r4, 0x5ee(r4)
/* 80610A68  4B 9F B9 34 */	b mDoMtx_XrotM__FPA4_fs
/* 80610A6C  48 00 00 5C */	b lbl_80610AC8
lbl_80610A70:
/* 80610A70  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610A74  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610A78  80 63 00 00 */	lwz r3, 0(r3)
/* 80610A7C  3C 80 80 62 */	lis r4, pno@ha
/* 80610A80  80 04 B5 34 */	lwz r0, pno@l(r4)
/* 80610A84  1C 00 01 78 */	mulli r0, r0, 0x178
/* 80610A88  7C 9D 02 14 */	add r4, r29, r0
/* 80610A8C  A8 04 05 EE */	lha r0, 0x5ee(r4)
/* 80610A90  7C 00 00 D0 */	neg r0, r0
/* 80610A94  7C 04 07 34 */	extsh r4, r0
/* 80610A98  4B 9F B9 9C */	b mDoMtx_YrotM__FPA4_fs
/* 80610A9C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610AA0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610AA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80610AA8  3C 80 80 62 */	lis r4, pno@ha
/* 80610AAC  80 04 B5 34 */	lwz r0, pno@l(r4)
/* 80610AB0  1C 00 01 78 */	mulli r0, r0, 0x178
/* 80610AB4  7C 9D 02 14 */	add r4, r29, r0
/* 80610AB8  A8 04 05 EE */	lha r0, 0x5ee(r4)
/* 80610ABC  7C 00 00 D0 */	neg r0, r0
/* 80610AC0  7C 04 07 34 */	extsh r4, r0
/* 80610AC4  4B 9F B8 D8 */	b mDoMtx_XrotM__FPA4_fs
lbl_80610AC8:
/* 80610AC8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610ACC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610AD0  80 63 00 00 */	lwz r3, 0(r3)
/* 80610AD4  3C 80 80 62 */	lis r4, pno@ha
/* 80610AD8  80 04 B5 34 */	lwz r0, pno@l(r4)
/* 80610ADC  1C 00 01 78 */	mulli r0, r0, 0x178
/* 80610AE0  7C 9D 02 14 */	add r4, r29, r0
/* 80610AE4  A8 84 05 EC */	lha r4, 0x5ec(r4)
/* 80610AE8  4B 9F B9 E4 */	b mDoMtx_ZrotM__FPA4_fs
/* 80610AEC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610AF0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610AF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80610AF8  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80610AFC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80610B00  7C 80 F2 14 */	add r4, r0, r30
/* 80610B04  4B D3 59 AC */	b PSMTXCopy
/* 80610B08  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80610B0C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80610B10  80 63 00 00 */	lwz r3, 0(r3)
/* 80610B14  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80610B18  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80610B1C  4B D3 59 94 */	b PSMTXCopy
lbl_80610B20:
/* 80610B20  38 60 00 01 */	li r3, 1
/* 80610B24  39 61 00 20 */	addi r11, r1, 0x20
/* 80610B28  4B D5 17 00 */	b _restgpr_29
/* 80610B2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80610B30  7C 08 03 A6 */	mtlr r0
/* 80610B34  38 21 00 20 */	addi r1, r1, 0x20
/* 80610B38  4E 80 00 20 */	blr 
