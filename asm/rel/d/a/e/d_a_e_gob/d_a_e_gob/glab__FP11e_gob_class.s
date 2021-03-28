lbl_806D9DE0:
/* 806D9DE0  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 806D9DE4  7C 08 02 A6 */	mflr r0
/* 806D9DE8  90 01 02 24 */	stw r0, 0x224(r1)
/* 806D9DEC  DB E1 02 10 */	stfd f31, 0x210(r1)
/* 806D9DF0  F3 E1 02 18 */	psq_st f31, 536(r1), 0, 0 /* qr0 */
/* 806D9DF4  39 61 02 10 */	addi r11, r1, 0x210
/* 806D9DF8  4B C8 83 BC */	b _savegpr_19
/* 806D9DFC  7C 73 1B 78 */	mr r19, r3
/* 806D9E00  3C 60 80 6E */	lis r3, lit_3763@ha
/* 806D9E04  3B E3 EE 38 */	addi r31, r3, lit_3763@l
/* 806D9E08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D9E0C  3A 83 61 C0 */	addi r20, r3, g_dComIfG_gameInfo@l
/* 806D9E10  83 74 5D AC */	lwz r27, 0x5dac(r20)
/* 806D9E14  3A A1 01 78 */	addi r21, r1, 0x178
/* 806D9E18  7E A3 AB 78 */	mr r3, r21
/* 806D9E1C  4B 99 D7 60 */	b __ct__11dBgS_GndChkFv
/* 806D9E20  3C 60 80 6E */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 806D9E24  38 63 F2 40 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 806D9E28  90 61 01 88 */	stw r3, 0x188(r1)
/* 806D9E2C  3B C3 00 0C */	addi r30, r3, 0xc
/* 806D9E30  93 C1 01 98 */	stw r30, 0x198(r1)
/* 806D9E34  3B A3 00 18 */	addi r29, r3, 0x18
/* 806D9E38  93 A1 01 B4 */	stw r29, 0x1b4(r1)
/* 806D9E3C  3B 83 00 24 */	addi r28, r3, 0x24
/* 806D9E40  93 81 01 C4 */	stw r28, 0x1c4(r1)
/* 806D9E44  38 75 00 3C */	addi r3, r21, 0x3c
/* 806D9E48  4B 99 F0 20 */	b SetObj__16dBgS_PolyPassChkFv
/* 806D9E4C  80 73 05 B4 */	lwz r3, 0x5b4(r19)
/* 806D9E50  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806D9E54  FC 00 00 1E */	fctiwz f0, f0
/* 806D9E58  D8 01 01 D0 */	stfd f0, 0x1d0(r1)
/* 806D9E5C  83 41 01 D4 */	lwz r26, 0x1d4(r1)
/* 806D9E60  3B 20 00 02 */	li r25, 2
/* 806D9E64  3B 00 00 00 */	li r24, 0
/* 806D9E68  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806D9E6C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 806D9E70  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806D9E74  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806D9E78  80 74 5D AC */	lwz r3, 0x5dac(r20)
/* 806D9E7C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806D9E80  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 806D9E84  7D 89 03 A6 */	mtctr r12
/* 806D9E88  4E 80 04 21 */	bctrl 
/* 806D9E8C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 806D9E90  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 806D9E94  80 84 00 00 */	lwz r4, 0(r4)
/* 806D9E98  4B C6 C6 18 */	b PSMTXCopy
/* 806D9E9C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 806D9EA0  38 81 00 B8 */	addi r4, r1, 0xb8
/* 806D9EA4  4B B9 70 48 */	b MtxPosition__FP4cXyzP4cXyz
/* 806D9EA8  80 74 5D AC */	lwz r3, 0x5dac(r20)
/* 806D9EAC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806D9EB0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806D9EB4  7D 89 03 A6 */	mtctr r12
/* 806D9EB8  4E 80 04 21 */	bctrl 
/* 806D9EBC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 806D9EC0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 806D9EC4  80 84 00 00 */	lwz r4, 0(r4)
/* 806D9EC8  4B C6 C5 E8 */	b PSMTXCopy
/* 806D9ECC  38 61 00 C4 */	addi r3, r1, 0xc4
/* 806D9ED0  38 81 00 AC */	addi r4, r1, 0xac
/* 806D9ED4  4B B9 70 18 */	b MtxPosition__FP4cXyzP4cXyz
/* 806D9ED8  38 61 00 94 */	addi r3, r1, 0x94
/* 806D9EDC  38 81 00 AC */	addi r4, r1, 0xac
/* 806D9EE0  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 806D9EE4  4B B8 CC 50 */	b __mi__4cXyzCFRC3Vec
/* 806D9EE8  38 61 00 88 */	addi r3, r1, 0x88
/* 806D9EEC  38 81 00 94 */	addi r4, r1, 0x94
/* 806D9EF0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806D9EF4  4B B8 CC 90 */	b __ml__4cXyzCFf
/* 806D9EF8  38 61 00 7C */	addi r3, r1, 0x7c
/* 806D9EFC  38 81 00 B8 */	addi r4, r1, 0xb8
/* 806D9F00  38 A1 00 88 */	addi r5, r1, 0x88
/* 806D9F04  4B B8 CB E0 */	b __pl__4cXyzCFRC3Vec
/* 806D9F08  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 806D9F0C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 806D9F10  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 806D9F14  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 806D9F18  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 806D9F1C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 806D9F20  38 61 00 70 */	addi r3, r1, 0x70
/* 806D9F24  38 81 00 B8 */	addi r4, r1, 0xb8
/* 806D9F28  38 A1 00 AC */	addi r5, r1, 0xac
/* 806D9F2C  4B B8 CC 08 */	b __mi__4cXyzCFRC3Vec
/* 806D9F30  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 806D9F34  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 806D9F38  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 806D9F3C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806D9F40  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 806D9F44  D0 41 00 CC */	stfs f2, 0xcc(r1)
/* 806D9F48  4B B8 D7 2C */	b cM_atan2s__Fff
/* 806D9F4C  38 03 C0 00 */	addi r0, r3, -16384
/* 806D9F50  7C 17 07 34 */	extsh r23, r0
/* 806D9F54  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 806D9F58  EC 20 00 32 */	fmuls f1, f0, f0
/* 806D9F5C  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 806D9F60  EC 00 00 32 */	fmuls f0, f0, f0
/* 806D9F64  EC 41 00 2A */	fadds f2, f1, f0
/* 806D9F68  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806D9F6C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806D9F70  40 81 00 0C */	ble lbl_806D9F7C
/* 806D9F74  FC 00 10 34 */	frsqrte f0, f2
/* 806D9F78  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806D9F7C:
/* 806D9F7C  C0 21 00 C8 */	lfs f1, 0xc8(r1)
/* 806D9F80  4B B8 D6 F4 */	b cM_atan2s__Fff
/* 806D9F84  7C 03 00 D0 */	neg r0, r3
/* 806D9F88  7C 16 07 34 */	extsh r22, r0
/* 806D9F8C  38 00 00 0A */	li r0, 0xa
/* 806D9F90  B0 13 06 7E */	sth r0, 0x67e(r19)
/* 806D9F94  38 00 00 01 */	li r0, 1
/* 806D9F98  98 13 0D 20 */	stb r0, 0xd20(r19)
/* 806D9F9C  A8 73 06 B2 */	lha r3, 0x6b2(r19)
/* 806D9FA0  A8 13 06 B4 */	lha r0, 0x6b4(r19)
/* 806D9FA4  7C 03 02 14 */	add r0, r3, r0
/* 806D9FA8  B0 13 06 B2 */	sth r0, 0x6b2(r19)
/* 806D9FAC  38 73 06 B4 */	addi r3, r19, 0x6b4
/* 806D9FB0  38 80 00 00 */	li r4, 0
/* 806D9FB4  38 A0 00 01 */	li r5, 1
/* 806D9FB8  38 C0 02 00 */	li r6, 0x200
/* 806D9FBC  4B B9 66 4C */	b cLib_addCalcAngleS2__FPssss
/* 806D9FC0  3A A0 00 00 */	li r21, 0
/* 806D9FC4  3A 80 00 00 */	li r20, 0
/* 806D9FC8  A8 13 06 58 */	lha r0, 0x658(r19)
/* 806D9FCC  2C 00 00 02 */	cmpwi r0, 2
/* 806D9FD0  41 82 00 D0 */	beq lbl_806DA0A0
/* 806D9FD4  40 80 00 14 */	bge lbl_806D9FE8
/* 806D9FD8  2C 00 00 00 */	cmpwi r0, 0
/* 806D9FDC  41 82 00 24 */	beq lbl_806DA000
/* 806D9FE0  40 80 00 50 */	bge lbl_806DA030
/* 806D9FE4  48 00 0A 0C */	b lbl_806DA9F0
lbl_806D9FE8:
/* 806D9FE8  2C 00 00 06 */	cmpwi r0, 6
/* 806D9FEC  41 82 09 AC */	beq lbl_806DA998
/* 806D9FF0  40 80 0A 00 */	bge lbl_806DA9F0
/* 806D9FF4  2C 00 00 05 */	cmpwi r0, 5
/* 806D9FF8  40 80 03 94 */	bge lbl_806DA38C
/* 806D9FFC  48 00 01 C8 */	b lbl_806DA1C4
lbl_806DA000:
/* 806DA000  38 00 00 01 */	li r0, 1
/* 806DA004  B0 13 06 58 */	sth r0, 0x658(r19)
/* 806DA008  3A A0 00 01 */	li r21, 1
/* 806DA00C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA010  D0 13 05 2C */	stfs f0, 0x52c(r19)
/* 806DA014  7E 63 9B 78 */	mr r3, r19
/* 806DA018  38 80 00 1C */	li r4, 0x1c
/* 806DA01C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806DA020  38 A0 00 02 */	li r5, 2
/* 806DA024  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DA028  4B FF E5 51 */	bl anm_init__FP11e_gob_classifUcf
/* 806DA02C  48 00 09 C4 */	b lbl_806DA9F0
lbl_806DA030:
/* 806DA030  88 13 05 8D */	lbz r0, 0x58d(r19)
/* 806DA034  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806DA038  41 82 00 28 */	beq lbl_806DA060
/* 806DA03C  88 13 05 8D */	lbz r0, 0x58d(r19)
/* 806DA040  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 806DA044  98 13 05 8D */	stb r0, 0x58d(r19)
/* 806DA048  38 00 00 02 */	li r0, 2
/* 806DA04C  B0 13 06 58 */	sth r0, 0x658(r19)
/* 806DA050  38 00 00 00 */	li r0, 0
/* 806DA054  B0 13 06 54 */	sth r0, 0x654(r19)
/* 806DA058  38 00 08 00 */	li r0, 0x800
/* 806DA05C  B0 13 06 B6 */	sth r0, 0x6b6(r19)
lbl_806DA060:
/* 806DA060  88 13 05 8D */	lbz r0, 0x58d(r19)
/* 806DA064  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806DA068  41 82 00 28 */	beq lbl_806DA090
/* 806DA06C  88 13 05 8D */	lbz r0, 0x58d(r19)
/* 806DA070  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 806DA074  98 13 05 8D */	stb r0, 0x58d(r19)
/* 806DA078  38 00 00 02 */	li r0, 2
/* 806DA07C  B0 13 06 58 */	sth r0, 0x658(r19)
/* 806DA080  38 00 00 00 */	li r0, 0
/* 806DA084  B0 13 06 54 */	sth r0, 0x654(r19)
/* 806DA088  38 00 F8 00 */	li r0, -2048
/* 806DA08C  B0 13 06 B6 */	sth r0, 0x6b6(r19)
lbl_806DA090:
/* 806DA090  3A A0 00 01 */	li r21, 1
/* 806DA094  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA098  D0 13 04 FC */	stfs f0, 0x4fc(r19)
/* 806DA09C  48 00 09 54 */	b lbl_806DA9F0
lbl_806DA0A0:
/* 806DA0A0  2C 1A 00 01 */	cmpwi r26, 1
/* 806DA0A4  40 82 00 2C */	bne lbl_806DA0D0
/* 806DA0A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701F9@ha */
/* 806DA0AC  38 03 01 F9 */	addi r0, r3, 0x01F9 /* 0x000701F9@l */
/* 806DA0B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806DA0B4  38 73 05 B8 */	addi r3, r19, 0x5b8
/* 806DA0B8  38 81 00 24 */	addi r4, r1, 0x24
/* 806DA0BC  38 A0 FF FF */	li r5, -1
/* 806DA0C0  81 93 05 B8 */	lwz r12, 0x5b8(r19)
/* 806DA0C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806DA0C8  7D 89 03 A6 */	mtctr r12
/* 806DA0CC  4E 80 04 21 */	bctrl 
lbl_806DA0D0:
/* 806DA0D0  2C 1A 00 08 */	cmpwi r26, 8
/* 806DA0D4  40 82 00 30 */	bne lbl_806DA104
/* 806DA0D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701EA@ha */
/* 806DA0DC  38 03 01 EA */	addi r0, r3, 0x01EA /* 0x000701EA@l */
/* 806DA0E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 806DA0E4  38 73 05 B8 */	addi r3, r19, 0x5b8
/* 806DA0E8  38 81 00 20 */	addi r4, r1, 0x20
/* 806DA0EC  38 A0 00 00 */	li r5, 0
/* 806DA0F0  38 C0 FF FF */	li r6, -1
/* 806DA0F4  81 93 05 B8 */	lwz r12, 0x5b8(r19)
/* 806DA0F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DA0FC  7D 89 03 A6 */	mtctr r12
/* 806DA100  4E 80 04 21 */	bctrl 
lbl_806DA104:
/* 806DA104  A8 13 06 54 */	lha r0, 0x654(r19)
/* 806DA108  2C 00 00 20 */	cmpwi r0, 0x20
/* 806DA10C  40 82 00 A8 */	bne lbl_806DA1B4
/* 806DA110  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701FA@ha */
/* 806DA114  38 03 01 FA */	addi r0, r3, 0x01FA /* 0x000701FA@l */
/* 806DA118  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806DA11C  38 73 05 B8 */	addi r3, r19, 0x5b8
/* 806DA120  38 81 00 1C */	addi r4, r1, 0x1c
/* 806DA124  38 A0 FF FF */	li r5, -1
/* 806DA128  81 93 05 B8 */	lwz r12, 0x5b8(r19)
/* 806DA12C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806DA130  7D 89 03 A6 */	mtctr r12
/* 806DA134  4E 80 04 21 */	bctrl 
/* 806DA138  38 00 00 03 */	li r0, 3
/* 806DA13C  B0 13 06 58 */	sth r0, 0x658(r19)
/* 806DA140  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806DA144  D0 13 04 FC */	stfs f0, 0x4fc(r19)
/* 806DA148  A8 13 06 B6 */	lha r0, 0x6b6(r19)
/* 806DA14C  2C 00 00 00 */	cmpwi r0, 0
/* 806DA150  40 81 00 24 */	ble lbl_806DA174
/* 806DA154  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806DA158  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806DA15C  80 63 00 00 */	lwz r3, 0(r3)
/* 806DA160  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 806DA164  38 04 7D 00 */	addi r0, r4, 0x7d00
/* 806DA168  7C 04 07 34 */	extsh r4, r0
/* 806DA16C  4B 93 22 70 */	b mDoMtx_YrotS__FPA4_fs
/* 806DA170  48 00 00 20 */	b lbl_806DA190
lbl_806DA174:
/* 806DA174  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806DA178  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806DA17C  80 63 00 00 */	lwz r3, 0(r3)
/* 806DA180  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 806DA184  38 04 83 00 */	addi r0, r4, -32000
/* 806DA188  7C 04 07 34 */	extsh r4, r0
/* 806DA18C  4B 93 22 50 */	b mDoMtx_YrotS__FPA4_fs
lbl_806DA190:
/* 806DA190  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA194  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 806DA198  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806DA19C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 806DA1A0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806DA1A4  38 61 00 C4 */	addi r3, r1, 0xc4
/* 806DA1A8  38 93 06 B8 */	addi r4, r19, 0x6b8
/* 806DA1AC  4B B9 6D 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 806DA1B0  48 00 08 40 */	b lbl_806DA9F0
lbl_806DA1B4:
/* 806DA1B4  3A A0 00 01 */	li r21, 1
/* 806DA1B8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA1BC  D0 13 04 FC */	stfs f0, 0x4fc(r19)
/* 806DA1C0  48 00 08 30 */	b lbl_806DA9F0
lbl_806DA1C4:
/* 806DA1C4  88 13 06 D8 */	lbz r0, 0x6d8(r19)
/* 806DA1C8  7C 00 07 74 */	extsb r0, r0
/* 806DA1CC  2C 00 00 02 */	cmpwi r0, 2
/* 806DA1D0  41 80 00 C4 */	blt lbl_806DA294
/* 806DA1D4  38 61 01 24 */	addi r3, r1, 0x124
/* 806DA1D8  4B 99 D5 D8 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 806DA1DC  38 61 01 24 */	addi r3, r1, 0x124
/* 806DA1E0  38 93 04 D0 */	addi r4, r19, 0x4d0
/* 806DA1E4  4B B8 DB 44 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806DA1E8  3B 41 00 D0 */	addi r26, r1, 0xd0
/* 806DA1EC  7F 43 D3 78 */	mr r3, r26
/* 806DA1F0  4B 99 D3 8C */	b __ct__11dBgS_GndChkFv
/* 806DA1F4  3C 60 80 6E */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 806DA1F8  38 03 F2 40 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 806DA1FC  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 806DA200  93 C1 00 F0 */	stw r30, 0xf0(r1)
/* 806DA204  93 A1 01 0C */	stw r29, 0x10c(r1)
/* 806DA208  93 81 01 1C */	stw r28, 0x11c(r1)
/* 806DA20C  38 7A 00 3C */	addi r3, r26, 0x3c
/* 806DA210  4B 99 EC 58 */	b SetObj__16dBgS_PolyPassChkFv
/* 806DA214  7F 43 D3 78 */	mr r3, r26
/* 806DA218  38 93 04 D0 */	addi r4, r19, 0x4d0
/* 806DA21C  4B B8 DB 0C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806DA220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DA224  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DA228  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 806DA22C  7F 43 D3 78 */	mr r3, r26
/* 806DA230  38 81 01 24 */	addi r4, r1, 0x124
/* 806DA234  4B 99 A2 6C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806DA238  FF E0 08 90 */	fmr f31, f1
/* 806DA23C  7F 43 D3 78 */	mr r3, r26
/* 806DA240  38 81 00 D0 */	addi r4, r1, 0xd0
/* 806DA244  4B 99 A2 5C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806DA248  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 806DA24C  40 80 00 18 */	bge lbl_806DA264
/* 806DA250  A8 13 0D 38 */	lha r0, 0xd38(r19)
/* 806DA254  2C 00 00 00 */	cmpwi r0, 0
/* 806DA258  40 82 00 0C */	bne lbl_806DA264
/* 806DA25C  38 00 00 0A */	li r0, 0xa
/* 806DA260  B0 13 0D 38 */	sth r0, 0xd38(r19)
lbl_806DA264:
/* 806DA264  3C 60 80 6E */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 806DA268  38 03 F2 40 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 806DA26C  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 806DA270  93 C1 00 F0 */	stw r30, 0xf0(r1)
/* 806DA274  93 A1 01 0C */	stw r29, 0x10c(r1)
/* 806DA278  93 81 01 1C */	stw r28, 0x11c(r1)
/* 806DA27C  38 61 00 D0 */	addi r3, r1, 0xd0
/* 806DA280  38 80 00 00 */	li r4, 0
/* 806DA284  4B 99 D3 6C */	b __dt__11dBgS_GndChkFv
/* 806DA288  38 61 01 24 */	addi r3, r1, 0x124
/* 806DA28C  38 80 FF FF */	li r4, -1
/* 806DA290  4B 99 D5 B8 */	b __dt__18dBgS_ObjGndChk_SplFv
lbl_806DA294:
/* 806DA294  C0 33 04 D0 */	lfs f1, 0x4d0(r19)
/* 806DA298  C0 13 06 B8 */	lfs f0, 0x6b8(r19)
/* 806DA29C  EC 01 00 2A */	fadds f0, f1, f0
/* 806DA2A0  D0 13 04 D0 */	stfs f0, 0x4d0(r19)
/* 806DA2A4  C0 33 04 D8 */	lfs f1, 0x4d8(r19)
/* 806DA2A8  C0 13 06 C0 */	lfs f0, 0x6c0(r19)
/* 806DA2AC  EC 01 00 2A */	fadds f0, f1, f0
/* 806DA2B0  D0 13 04 D8 */	stfs f0, 0x4d8(r19)
/* 806DA2B4  A8 73 04 DE */	lha r3, 0x4de(r19)
/* 806DA2B8  A8 13 06 B6 */	lha r0, 0x6b6(r19)
/* 806DA2BC  7C 03 02 14 */	add r0, r3, r0
/* 806DA2C0  B0 13 04 DE */	sth r0, 0x4de(r19)
/* 806DA2C4  80 13 07 68 */	lwz r0, 0x768(r19)
/* 806DA2C8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806DA2CC  41 82 07 24 */	beq lbl_806DA9F0
/* 806DA2D0  C0 13 06 B8 */	lfs f0, 0x6b8(r19)
/* 806DA2D4  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 806DA2D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 806DA2DC  D0 13 06 B8 */	stfs f0, 0x6b8(r19)
/* 806DA2E0  C0 13 06 C0 */	lfs f0, 0x6c0(r19)
/* 806DA2E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 806DA2E8  D0 13 06 C0 */	stfs f0, 0x6c0(r19)
/* 806DA2EC  38 73 06 B6 */	addi r3, r19, 0x6b6
/* 806DA2F0  38 80 00 00 */	li r4, 0
/* 806DA2F4  38 A0 00 01 */	li r5, 1
/* 806DA2F8  38 C0 00 32 */	li r6, 0x32
/* 806DA2FC  4B B9 63 0C */	b cLib_addCalcAngleS2__FPssss
/* 806DA300  A8 13 06 58 */	lha r0, 0x658(r19)
/* 806DA304  2C 00 00 03 */	cmpwi r0, 3
/* 806DA308  40 82 00 70 */	bne lbl_806DA378
/* 806DA30C  38 00 00 04 */	li r0, 4
/* 806DA310  B0 13 06 58 */	sth r0, 0x658(r19)
/* 806DA314  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806DA318  D0 13 04 FC */	stfs f0, 0x4fc(r19)
/* 806DA31C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806DA320  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 806DA324  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806DA328  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806DA32C  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 806DA330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DA334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DA338  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806DA33C  38 80 00 05 */	li r4, 5
/* 806DA340  38 A0 00 1F */	li r5, 0x1f
/* 806DA344  38 C1 00 64 */	addi r6, r1, 0x64
/* 806DA348  4B 99 56 DC */	b StartShock__12dVibration_cFii4cXyz
/* 806DA34C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701E9@ha */
/* 806DA350  38 03 01 E9 */	addi r0, r3, 0x01E9 /* 0x000701E9@l */
/* 806DA354  90 01 00 18 */	stw r0, 0x18(r1)
/* 806DA358  38 73 05 B8 */	addi r3, r19, 0x5b8
/* 806DA35C  38 81 00 18 */	addi r4, r1, 0x18
/* 806DA360  38 A0 00 00 */	li r5, 0
/* 806DA364  38 C0 FF FF */	li r6, -1
/* 806DA368  81 93 05 B8 */	lwz r12, 0x5b8(r19)
/* 806DA36C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DA370  7D 89 03 A6 */	mtctr r12
/* 806DA374  4E 80 04 21 */	bctrl 
lbl_806DA378:
/* 806DA378  A8 13 06 B6 */	lha r0, 0x6b6(r19)
/* 806DA37C  2C 00 00 00 */	cmpwi r0, 0
/* 806DA380  40 82 06 70 */	bne lbl_806DA9F0
/* 806DA384  3A 80 00 01 */	li r20, 1
/* 806DA388  48 00 06 68 */	b lbl_806DA9F0
lbl_806DA38C:
/* 806DA38C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA390  D0 13 04 FC */	stfs f0, 0x4fc(r19)
/* 806DA394  38 73 06 B2 */	addi r3, r19, 0x6b2
/* 806DA398  38 80 00 00 */	li r4, 0
/* 806DA39C  38 A0 00 01 */	li r5, 1
/* 806DA3A0  38 C0 08 00 */	li r6, 0x800
/* 806DA3A4  4B B9 62 64 */	b cLib_addCalcAngleS2__FPssss
/* 806DA3A8  C0 13 06 5C */	lfs f0, 0x65c(r19)
/* 806DA3AC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 806DA3B0  C0 33 06 60 */	lfs f1, 0x660(r19)
/* 806DA3B4  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 806DA3B8  C0 13 06 64 */	lfs f0, 0x664(r19)
/* 806DA3BC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806DA3C0  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806DA3C4  EC 01 00 2A */	fadds f0, f1, f0
/* 806DA3C8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806DA3CC  38 61 01 78 */	addi r3, r1, 0x178
/* 806DA3D0  38 81 00 C4 */	addi r4, r1, 0xc4
/* 806DA3D4  4B B8 D9 54 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806DA3D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DA3DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DA3E0  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 806DA3E4  7F 63 DB 78 */	mr r3, r27
/* 806DA3E8  38 81 01 78 */	addi r4, r1, 0x178
/* 806DA3EC  4B 99 A0 B4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806DA3F0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA3F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DA3F8  40 81 00 08 */	ble lbl_806DA400
/* 806DA3FC  D0 33 06 60 */	stfs f1, 0x660(r19)
lbl_806DA400:
/* 806DA400  38 61 00 58 */	addi r3, r1, 0x58
/* 806DA404  38 93 06 5C */	addi r4, r19, 0x65c
/* 806DA408  38 B3 04 D0 */	addi r5, r19, 0x4d0
/* 806DA40C  4B B8 C7 28 */	b __mi__4cXyzCFRC3Vec
/* 806DA410  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 806DA414  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 806DA418  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 806DA41C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806DA420  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 806DA424  D0 41 00 CC */	stfs f2, 0xcc(r1)
/* 806DA428  4B B8 D2 4C */	b cM_atan2s__Fff
/* 806DA42C  7C 64 1B 78 */	mr r4, r3
/* 806DA430  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806DA434  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806DA438  80 63 00 00 */	lwz r3, 0(r3)
/* 806DA43C  4B 93 1F A0 */	b mDoMtx_YrotS__FPA4_fs
/* 806DA440  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 806DA444  EC 20 00 32 */	fmuls f1, f0, f0
/* 806DA448  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 806DA44C  EC 00 00 32 */	fmuls f0, f0, f0
/* 806DA450  EC 41 00 2A */	fadds f2, f1, f0
/* 806DA454  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA458  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806DA45C  40 81 00 0C */	ble lbl_806DA468
/* 806DA460  FC 00 10 34 */	frsqrte f0, f2
/* 806DA464  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806DA468:
/* 806DA468  C0 21 00 C8 */	lfs f1, 0xc8(r1)
/* 806DA46C  4B B8 D2 08 */	b cM_atan2s__Fff
/* 806DA470  7C 03 00 D0 */	neg r0, r3
/* 806DA474  7C 04 07 34 */	extsh r4, r0
/* 806DA478  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806DA47C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806DA480  80 63 00 00 */	lwz r3, 0(r3)
/* 806DA484  4B 93 1F 18 */	b mDoMtx_XrotM__FPA4_fs
/* 806DA488  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA48C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 806DA490  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806DA494  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806DA498  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806DA49C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 806DA4A0  38 81 00 B8 */	addi r4, r1, 0xb8
/* 806DA4A4  4B B9 6A 48 */	b MtxPosition__FP4cXyzP4cXyz
/* 806DA4A8  38 73 04 D0 */	addi r3, r19, 0x4d0
/* 806DA4AC  38 81 00 B8 */	addi r4, r1, 0xb8
/* 806DA4B0  7C 65 1B 78 */	mr r5, r3
/* 806DA4B4  4B C6 CB DC */	b PSVECAdd
/* 806DA4B8  38 61 00 4C */	addi r3, r1, 0x4c
/* 806DA4BC  38 93 06 5C */	addi r4, r19, 0x65c
/* 806DA4C0  38 B3 04 D0 */	addi r5, r19, 0x4d0
/* 806DA4C4  4B B8 C6 70 */	b __mi__4cXyzCFRC3Vec
/* 806DA4C8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 806DA4CC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 806DA4D0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806DA4D4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806DA4D8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 806DA4DC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806DA4E0  38 61 00 C4 */	addi r3, r1, 0xc4
/* 806DA4E4  4B C6 CC 54 */	b PSVECSquareMag
/* 806DA4E8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA4EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DA4F0  40 81 00 58 */	ble lbl_806DA548
/* 806DA4F4  FC 00 08 34 */	frsqrte f0, f1
/* 806DA4F8  C8 9F 00 98 */	lfd f4, 0x98(r31)
/* 806DA4FC  FC 44 00 32 */	fmul f2, f4, f0
/* 806DA500  C8 7F 00 A0 */	lfd f3, 0xa0(r31)
/* 806DA504  FC 00 00 32 */	fmul f0, f0, f0
/* 806DA508  FC 01 00 32 */	fmul f0, f1, f0
/* 806DA50C  FC 03 00 28 */	fsub f0, f3, f0
/* 806DA510  FC 02 00 32 */	fmul f0, f2, f0
/* 806DA514  FC 44 00 32 */	fmul f2, f4, f0
/* 806DA518  FC 00 00 32 */	fmul f0, f0, f0
/* 806DA51C  FC 01 00 32 */	fmul f0, f1, f0
/* 806DA520  FC 03 00 28 */	fsub f0, f3, f0
/* 806DA524  FC 02 00 32 */	fmul f0, f2, f0
/* 806DA528  FC 44 00 32 */	fmul f2, f4, f0
/* 806DA52C  FC 00 00 32 */	fmul f0, f0, f0
/* 806DA530  FC 01 00 32 */	fmul f0, f1, f0
/* 806DA534  FC 03 00 28 */	fsub f0, f3, f0
/* 806DA538  FC 02 00 32 */	fmul f0, f2, f0
/* 806DA53C  FC 21 00 32 */	fmul f1, f1, f0
/* 806DA540  FC 20 08 18 */	frsp f1, f1
/* 806DA544  48 00 00 88 */	b lbl_806DA5CC
lbl_806DA548:
/* 806DA548  C8 1F 00 A8 */	lfd f0, 0xa8(r31)
/* 806DA54C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DA550  40 80 00 10 */	bge lbl_806DA560
/* 806DA554  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806DA558  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806DA55C  48 00 00 70 */	b lbl_806DA5CC
lbl_806DA560:
/* 806DA560  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806DA564  80 81 00 10 */	lwz r4, 0x10(r1)
/* 806DA568  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806DA56C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806DA570  7C 03 00 00 */	cmpw r3, r0
/* 806DA574  41 82 00 14 */	beq lbl_806DA588
/* 806DA578  40 80 00 40 */	bge lbl_806DA5B8
/* 806DA57C  2C 03 00 00 */	cmpwi r3, 0
/* 806DA580  41 82 00 20 */	beq lbl_806DA5A0
/* 806DA584  48 00 00 34 */	b lbl_806DA5B8
lbl_806DA588:
/* 806DA588  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806DA58C  41 82 00 0C */	beq lbl_806DA598
/* 806DA590  38 00 00 01 */	li r0, 1
/* 806DA594  48 00 00 28 */	b lbl_806DA5BC
lbl_806DA598:
/* 806DA598  38 00 00 02 */	li r0, 2
/* 806DA59C  48 00 00 20 */	b lbl_806DA5BC
lbl_806DA5A0:
/* 806DA5A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806DA5A4  41 82 00 0C */	beq lbl_806DA5B0
/* 806DA5A8  38 00 00 05 */	li r0, 5
/* 806DA5AC  48 00 00 10 */	b lbl_806DA5BC
lbl_806DA5B0:
/* 806DA5B0  38 00 00 03 */	li r0, 3
/* 806DA5B4  48 00 00 08 */	b lbl_806DA5BC
lbl_806DA5B8:
/* 806DA5B8  38 00 00 04 */	li r0, 4
lbl_806DA5BC:
/* 806DA5BC  2C 00 00 01 */	cmpwi r0, 1
/* 806DA5C0  40 82 00 0C */	bne lbl_806DA5CC
/* 806DA5C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806DA5C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806DA5CC:
/* 806DA5CC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806DA5D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DA5D4  40 80 01 1C */	bge lbl_806DA6F0
/* 806DA5D8  C0 13 06 5C */	lfs f0, 0x65c(r19)
/* 806DA5DC  D0 13 04 D0 */	stfs f0, 0x4d0(r19)
/* 806DA5E0  C0 13 06 60 */	lfs f0, 0x660(r19)
/* 806DA5E4  D0 13 04 D4 */	stfs f0, 0x4d4(r19)
/* 806DA5E8  C0 13 06 64 */	lfs f0, 0x664(r19)
/* 806DA5EC  D0 13 04 D8 */	stfs f0, 0x4d8(r19)
/* 806DA5F0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806DA5F4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806DA5F8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806DA5FC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806DA600  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 806DA604  38 7B 4C 9C */	addi r3, r27, 0x4c9c
/* 806DA608  38 80 00 08 */	li r4, 8
/* 806DA60C  38 A0 00 4F */	li r5, 0x4f
/* 806DA610  38 C1 00 40 */	addi r6, r1, 0x40
/* 806DA614  4B 99 54 10 */	b StartShock__12dVibration_cFii4cXyz
/* 806DA618  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806DA61C  3C 60 80 6E */	lis r3, ms@ha
/* 806DA620  38 83 F2 F4 */	addi r4, r3, ms@l
/* 806DA624  80 64 00 00 */	lwz r3, 0(r4)
/* 806DA628  D0 03 05 9C */	stfs f0, 0x59c(r3)
/* 806DA62C  38 00 08 02 */	li r0, 0x802
/* 806DA630  80 64 00 00 */	lwz r3, 0(r4)
/* 806DA634  B0 03 05 98 */	sth r0, 0x598(r3)
/* 806DA638  38 00 07 08 */	li r0, 0x708
/* 806DA63C  80 64 00 00 */	lwz r3, 0(r4)
/* 806DA640  B0 03 05 9A */	sth r0, 0x59a(r3)
/* 806DA644  A8 13 0D 38 */	lha r0, 0xd38(r19)
/* 806DA648  2C 00 00 00 */	cmpwi r0, 0
/* 806DA64C  41 82 00 18 */	beq lbl_806DA664
/* 806DA650  38 00 00 0A */	li r0, 0xa
/* 806DA654  B0 13 06 56 */	sth r0, 0x656(r19)
/* 806DA658  38 00 00 00 */	li r0, 0
/* 806DA65C  B0 13 06 58 */	sth r0, 0x658(r19)
/* 806DA660  48 00 00 94 */	b lbl_806DA6F4
lbl_806DA664:
/* 806DA664  7E 63 9B 78 */	mr r3, r19
/* 806DA668  38 80 00 1D */	li r4, 0x1d
/* 806DA66C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806DA670  38 A0 00 00 */	li r5, 0
/* 806DA674  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DA678  4B FF DF 01 */	bl anm_init__FP11e_gob_classifUcf
/* 806DA67C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701FC@ha */
/* 806DA680  38 03 01 FC */	addi r0, r3, 0x01FC /* 0x000701FC@l */
/* 806DA684  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DA688  38 73 05 B8 */	addi r3, r19, 0x5b8
/* 806DA68C  38 81 00 14 */	addi r4, r1, 0x14
/* 806DA690  38 A0 FF FF */	li r5, -1
/* 806DA694  81 93 05 B8 */	lwz r12, 0x5b8(r19)
/* 806DA698  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806DA69C  7D 89 03 A6 */	mtctr r12
/* 806DA6A0  4E 80 04 21 */	bctrl 
/* 806DA6A4  38 00 00 06 */	li r0, 6
/* 806DA6A8  B0 13 06 58 */	sth r0, 0x658(r19)
/* 806DA6AC  88 13 06 D8 */	lbz r0, 0x6d8(r19)
/* 806DA6B0  2C 00 00 01 */	cmpwi r0, 1
/* 806DA6B4  40 82 00 20 */	bne lbl_806DA6D4
/* 806DA6B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DA6BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DA6C0  80 63 00 00 */	lwz r3, 0(r3)
/* 806DA6C4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806DA6C8  38 80 00 02 */	li r4, 2
/* 806DA6CC  4B BD 77 28 */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 806DA6D0  48 00 00 24 */	b lbl_806DA6F4
lbl_806DA6D4:
/* 806DA6D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DA6D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DA6DC  80 63 00 00 */	lwz r3, 0(r3)
/* 806DA6E0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806DA6E4  38 80 00 03 */	li r4, 3
/* 806DA6E8  4B BD 77 0C */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 806DA6EC  48 00 00 08 */	b lbl_806DA6F4
lbl_806DA6F0:
/* 806DA6F0  3B 20 00 00 */	li r25, 0
lbl_806DA6F4:
/* 806DA6F4  38 61 00 34 */	addi r3, r1, 0x34
/* 806DA6F8  38 93 06 5C */	addi r4, r19, 0x65c
/* 806DA6FC  38 B3 06 90 */	addi r5, r19, 0x690
/* 806DA700  4B B8 C4 34 */	b __mi__4cXyzCFRC3Vec
/* 806DA704  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806DA708  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 806DA70C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806DA710  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806DA714  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806DA718  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806DA71C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA720  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806DA724  38 61 00 C4 */	addi r3, r1, 0xc4
/* 806DA728  4B C6 CA 10 */	b PSVECSquareMag
/* 806DA72C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA730  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DA734  40 81 00 58 */	ble lbl_806DA78C
/* 806DA738  FC 00 08 34 */	frsqrte f0, f1
/* 806DA73C  C8 9F 00 98 */	lfd f4, 0x98(r31)
/* 806DA740  FC 44 00 32 */	fmul f2, f4, f0
/* 806DA744  C8 7F 00 A0 */	lfd f3, 0xa0(r31)
/* 806DA748  FC 00 00 32 */	fmul f0, f0, f0
/* 806DA74C  FC 01 00 32 */	fmul f0, f1, f0
/* 806DA750  FC 03 00 28 */	fsub f0, f3, f0
/* 806DA754  FC 02 00 32 */	fmul f0, f2, f0
/* 806DA758  FC 44 00 32 */	fmul f2, f4, f0
/* 806DA75C  FC 00 00 32 */	fmul f0, f0, f0
/* 806DA760  FC 01 00 32 */	fmul f0, f1, f0
/* 806DA764  FC 03 00 28 */	fsub f0, f3, f0
/* 806DA768  FC 02 00 32 */	fmul f0, f2, f0
/* 806DA76C  FC 44 00 32 */	fmul f2, f4, f0
/* 806DA770  FC 00 00 32 */	fmul f0, f0, f0
/* 806DA774  FC 01 00 32 */	fmul f0, f1, f0
/* 806DA778  FC 03 00 28 */	fsub f0, f3, f0
/* 806DA77C  FC 02 00 32 */	fmul f0, f2, f0
/* 806DA780  FF E1 00 32 */	fmul f31, f1, f0
/* 806DA784  FF E0 F8 18 */	frsp f31, f31
/* 806DA788  48 00 00 90 */	b lbl_806DA818
lbl_806DA78C:
/* 806DA78C  C8 1F 00 A8 */	lfd f0, 0xa8(r31)
/* 806DA790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DA794  40 80 00 10 */	bge lbl_806DA7A4
/* 806DA798  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806DA79C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 806DA7A0  48 00 00 78 */	b lbl_806DA818
lbl_806DA7A4:
/* 806DA7A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806DA7A8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806DA7AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806DA7B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806DA7B4  7C 03 00 00 */	cmpw r3, r0
/* 806DA7B8  41 82 00 14 */	beq lbl_806DA7CC
/* 806DA7BC  40 80 00 40 */	bge lbl_806DA7FC
/* 806DA7C0  2C 03 00 00 */	cmpwi r3, 0
/* 806DA7C4  41 82 00 20 */	beq lbl_806DA7E4
/* 806DA7C8  48 00 00 34 */	b lbl_806DA7FC
lbl_806DA7CC:
/* 806DA7CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806DA7D0  41 82 00 0C */	beq lbl_806DA7DC
/* 806DA7D4  38 00 00 01 */	li r0, 1
/* 806DA7D8  48 00 00 28 */	b lbl_806DA800
lbl_806DA7DC:
/* 806DA7DC  38 00 00 02 */	li r0, 2
/* 806DA7E0  48 00 00 20 */	b lbl_806DA800
lbl_806DA7E4:
/* 806DA7E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806DA7E8  41 82 00 0C */	beq lbl_806DA7F4
/* 806DA7EC  38 00 00 05 */	li r0, 5
/* 806DA7F0  48 00 00 10 */	b lbl_806DA800
lbl_806DA7F4:
/* 806DA7F4  38 00 00 03 */	li r0, 3
/* 806DA7F8  48 00 00 08 */	b lbl_806DA800
lbl_806DA7FC:
/* 806DA7FC  38 00 00 04 */	li r0, 4
lbl_806DA800:
/* 806DA800  2C 00 00 01 */	cmpwi r0, 1
/* 806DA804  40 82 00 10 */	bne lbl_806DA814
/* 806DA808  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806DA80C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 806DA810  48 00 00 08 */	b lbl_806DA818
lbl_806DA814:
/* 806DA814  FF E0 08 90 */	fmr f31, f1
lbl_806DA818:
/* 806DA818  38 61 00 28 */	addi r3, r1, 0x28
/* 806DA81C  38 93 06 5C */	addi r4, r19, 0x65c
/* 806DA820  38 B3 04 D0 */	addi r5, r19, 0x4d0
/* 806DA824  4B B8 C3 10 */	b __mi__4cXyzCFRC3Vec
/* 806DA828  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806DA82C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 806DA830  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806DA834  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806DA838  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806DA83C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806DA840  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA844  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806DA848  38 61 00 C4 */	addi r3, r1, 0xc4
/* 806DA84C  4B C6 C8 EC */	b PSVECSquareMag
/* 806DA850  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DA854  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DA858  40 81 00 58 */	ble lbl_806DA8B0
/* 806DA85C  FC 00 08 34 */	frsqrte f0, f1
/* 806DA860  C8 9F 00 98 */	lfd f4, 0x98(r31)
/* 806DA864  FC 44 00 32 */	fmul f2, f4, f0
/* 806DA868  C8 7F 00 A0 */	lfd f3, 0xa0(r31)
/* 806DA86C  FC 00 00 32 */	fmul f0, f0, f0
/* 806DA870  FC 01 00 32 */	fmul f0, f1, f0
/* 806DA874  FC 03 00 28 */	fsub f0, f3, f0
/* 806DA878  FC 02 00 32 */	fmul f0, f2, f0
/* 806DA87C  FC 44 00 32 */	fmul f2, f4, f0
/* 806DA880  FC 00 00 32 */	fmul f0, f0, f0
/* 806DA884  FC 01 00 32 */	fmul f0, f1, f0
/* 806DA888  FC 03 00 28 */	fsub f0, f3, f0
/* 806DA88C  FC 02 00 32 */	fmul f0, f2, f0
/* 806DA890  FC 44 00 32 */	fmul f2, f4, f0
/* 806DA894  FC 00 00 32 */	fmul f0, f0, f0
/* 806DA898  FC 01 00 32 */	fmul f0, f1, f0
/* 806DA89C  FC 03 00 28 */	fsub f0, f3, f0
/* 806DA8A0  FC 02 00 32 */	fmul f0, f2, f0
/* 806DA8A4  FC 21 00 32 */	fmul f1, f1, f0
/* 806DA8A8  FC 20 08 18 */	frsp f1, f1
/* 806DA8AC  48 00 00 88 */	b lbl_806DA934
lbl_806DA8B0:
/* 806DA8B0  C8 1F 00 A8 */	lfd f0, 0xa8(r31)
/* 806DA8B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DA8B8  40 80 00 10 */	bge lbl_806DA8C8
/* 806DA8BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806DA8C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806DA8C4  48 00 00 70 */	b lbl_806DA934
lbl_806DA8C8:
/* 806DA8C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 806DA8CC  80 81 00 08 */	lwz r4, 8(r1)
/* 806DA8D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806DA8D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 806DA8D8  7C 03 00 00 */	cmpw r3, r0
/* 806DA8DC  41 82 00 14 */	beq lbl_806DA8F0
/* 806DA8E0  40 80 00 40 */	bge lbl_806DA920
/* 806DA8E4  2C 03 00 00 */	cmpwi r3, 0
/* 806DA8E8  41 82 00 20 */	beq lbl_806DA908
/* 806DA8EC  48 00 00 34 */	b lbl_806DA920
lbl_806DA8F0:
/* 806DA8F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806DA8F4  41 82 00 0C */	beq lbl_806DA900
/* 806DA8F8  38 00 00 01 */	li r0, 1
/* 806DA8FC  48 00 00 28 */	b lbl_806DA924
lbl_806DA900:
/* 806DA900  38 00 00 02 */	li r0, 2
/* 806DA904  48 00 00 20 */	b lbl_806DA924
lbl_806DA908:
/* 806DA908  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806DA90C  41 82 00 0C */	beq lbl_806DA918
/* 806DA910  38 00 00 05 */	li r0, 5
/* 806DA914  48 00 00 10 */	b lbl_806DA924
lbl_806DA918:
/* 806DA918  38 00 00 03 */	li r0, 3
/* 806DA91C  48 00 00 08 */	b lbl_806DA924
lbl_806DA920:
/* 806DA920  38 00 00 04 */	li r0, 4
lbl_806DA924:
/* 806DA924  2C 00 00 01 */	cmpwi r0, 1
/* 806DA928  40 82 00 0C */	bne lbl_806DA934
/* 806DA92C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806DA930  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806DA934:
/* 806DA934  FC 60 F8 90 */	fmr f3, f31
/* 806DA938  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806DA93C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806DA940  40 81 00 08 */	ble lbl_806DA948
/* 806DA944  FC 60 00 90 */	fmr f3, f0
lbl_806DA948:
/* 806DA948  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 806DA94C  EC 01 F8 24 */	fdivs f0, f1, f31
/* 806DA950  EC 02 00 32 */	fmuls f0, f2, f0
/* 806DA954  FC 00 00 1E */	fctiwz f0, f0
/* 806DA958  D8 01 01 D0 */	stfd f0, 0x1d0(r1)
/* 806DA95C  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 806DA960  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806DA964  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806DA968  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806DA96C  7C 03 04 2E */	lfsx f0, r3, r0
/* 806DA970  EC 03 00 32 */	fmuls f0, f3, f0
/* 806DA974  D0 13 06 9C */	stfs f0, 0x69c(r19)
/* 806DA978  38 00 00 00 */	li r0, 0
/* 806DA97C  B0 13 04 E0 */	sth r0, 0x4e0(r19)
/* 806DA980  38 73 04 DE */	addi r3, r19, 0x4de
/* 806DA984  A8 93 06 6A */	lha r4, 0x66a(r19)
/* 806DA988  38 A0 00 01 */	li r5, 1
/* 806DA98C  38 C0 02 00 */	li r6, 0x200
/* 806DA990  4B B9 5C 78 */	b cLib_addCalcAngleS2__FPssss
/* 806DA994  48 00 00 5C */	b lbl_806DA9F0
lbl_806DA998:
/* 806DA998  3B 00 00 01 */	li r24, 1
/* 806DA99C  38 73 04 DE */	addi r3, r19, 0x4de
/* 806DA9A0  A8 93 06 6A */	lha r4, 0x66a(r19)
/* 806DA9A4  38 A0 00 01 */	li r5, 1
/* 806DA9A8  38 C0 02 00 */	li r6, 0x200
/* 806DA9AC  4B B9 5C 5C */	b cLib_addCalcAngleS2__FPssss
/* 806DA9B0  80 73 05 B4 */	lwz r3, 0x5b4(r19)
/* 806DA9B4  38 80 00 01 */	li r4, 1
/* 806DA9B8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806DA9BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806DA9C0  40 82 00 18 */	bne lbl_806DA9D8
/* 806DA9C4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806DA9C8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806DA9CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806DA9D0  41 82 00 08 */	beq lbl_806DA9D8
/* 806DA9D4  38 80 00 00 */	li r4, 0
lbl_806DA9D8:
/* 806DA9D8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806DA9DC  41 82 00 14 */	beq lbl_806DA9F0
/* 806DA9E0  38 00 00 02 */	li r0, 2
/* 806DA9E4  B0 13 06 56 */	sth r0, 0x656(r19)
/* 806DA9E8  38 00 00 00 */	li r0, 0
/* 806DA9EC  B0 13 06 58 */	sth r0, 0x658(r19)
lbl_806DA9F0:
/* 806DA9F0  7E A0 07 75 */	extsb. r0, r21
/* 806DA9F4  41 82 00 D8 */	beq lbl_806DAACC
/* 806DA9F8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806DA9FC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806DAA00  80 63 00 00 */	lwz r3, 0(r3)
/* 806DAA04  7E E4 BB 78 */	mr r4, r23
/* 806DAA08  4B 93 19 D4 */	b mDoMtx_YrotS__FPA4_fs
/* 806DAA0C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DAA10  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 806DAA14  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 806DAA18  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806DAA1C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 806DAA20  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806DAA24  38 61 00 C4 */	addi r3, r1, 0xc4
/* 806DAA28  38 81 00 B8 */	addi r4, r1, 0xb8
/* 806DAA2C  4B B9 64 C0 */	b MtxPosition__FP4cXyzP4cXyz
/* 806DAA30  38 61 00 B8 */	addi r3, r1, 0xb8
/* 806DAA34  38 81 00 A0 */	addi r4, r1, 0xa0
/* 806DAA38  7C 65 1B 78 */	mr r5, r3
/* 806DAA3C  4B C6 C6 54 */	b PSVECAdd
/* 806DAA40  38 73 04 D0 */	addi r3, r19, 0x4d0
/* 806DAA44  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 806DAA48  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DAA4C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 806DAA50  4B B9 4F EC */	b cLib_addCalc2__FPffff
/* 806DAA54  38 73 04 D4 */	addi r3, r19, 0x4d4
/* 806DAA58  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 806DAA5C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DAA60  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 806DAA64  4B B9 4F D8 */	b cLib_addCalc2__FPffff
/* 806DAA68  38 73 04 D8 */	addi r3, r19, 0x4d8
/* 806DAA6C  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 806DAA70  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DAA74  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 806DAA78  4B B9 4F C4 */	b cLib_addCalc2__FPffff
/* 806DAA7C  38 73 04 DE */	addi r3, r19, 0x4de
/* 806DAA80  3C 97 00 01 */	addis r4, r23, 1
/* 806DAA84  38 04 80 00 */	addi r0, r4, -32768
/* 806DAA88  7C 04 07 34 */	extsh r4, r0
/* 806DAA8C  38 A0 00 01 */	li r5, 1
/* 806DAA90  38 C0 08 00 */	li r6, 0x800
/* 806DAA94  4B B9 5B 74 */	b cLib_addCalcAngleS2__FPssss
/* 806DAA98  38 73 04 E0 */	addi r3, r19, 0x4e0
/* 806DAA9C  7E C0 0E 70 */	srawi r0, r22, 1
/* 806DAAA0  7C 00 01 94 */	addze r0, r0
/* 806DAAA4  7C 04 07 34 */	extsh r4, r0
/* 806DAAA8  38 A0 00 04 */	li r5, 4
/* 806DAAAC  38 C0 10 00 */	li r6, 0x1000
/* 806DAAB0  4B B9 5B 58 */	b cLib_addCalcAngleS2__FPssss
/* 806DAAB4  38 73 06 B2 */	addi r3, r19, 0x6b2
/* 806DAAB8  38 80 EC 78 */	li r4, -5000
/* 806DAABC  38 A0 00 01 */	li r5, 1
/* 806DAAC0  38 C0 08 00 */	li r6, 0x800
/* 806DAAC4  4B B9 5B 44 */	b cLib_addCalcAngleS2__FPssss
/* 806DAAC8  3B 20 00 00 */	li r25, 0
lbl_806DAACC:
/* 806DAACC  88 13 05 8D */	lbz r0, 0x58d(r19)
/* 806DAAD0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 806DAAD4  41 82 00 14 */	beq lbl_806DAAE8
/* 806DAAD8  88 13 05 8D */	lbz r0, 0x58d(r19)
/* 806DAADC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806DAAE0  98 13 05 8D */	stb r0, 0x58d(r19)
/* 806DAAE4  3A 80 00 01 */	li r20, 1
lbl_806DAAE8:
/* 806DAAE8  7E 80 07 75 */	extsb. r0, r20
/* 806DAAEC  41 82 00 30 */	beq lbl_806DAB1C
/* 806DAAF0  38 00 00 05 */	li r0, 5
/* 806DAAF4  B0 13 06 56 */	sth r0, 0x656(r19)
/* 806DAAF8  38 00 00 04 */	li r0, 4
/* 806DAAFC  B0 13 06 58 */	sth r0, 0x658(r19)
/* 806DAB00  38 00 00 00 */	li r0, 0
/* 806DAB04  B0 13 04 E0 */	sth r0, 0x4e0(r19)
/* 806DAB08  3B 20 00 02 */	li r25, 2
/* 806DAB0C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DAB10  D0 13 04 FC */	stfs f0, 0x4fc(r19)
/* 806DAB14  38 00 00 14 */	li r0, 0x14
/* 806DAB18  B0 13 06 7C */	sth r0, 0x67c(r19)
lbl_806DAB1C:
/* 806DAB1C  7F 20 C3 78 */	or r0, r25, r24
/* 806DAB20  54 13 06 3E */	clrlwi r19, r0, 0x18
/* 806DAB24  3C 60 80 6E */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 806DAB28  38 03 F2 40 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 806DAB2C  90 01 01 88 */	stw r0, 0x188(r1)
/* 806DAB30  93 C1 01 98 */	stw r30, 0x198(r1)
/* 806DAB34  93 A1 01 B4 */	stw r29, 0x1b4(r1)
/* 806DAB38  93 81 01 C4 */	stw r28, 0x1c4(r1)
/* 806DAB3C  38 61 01 78 */	addi r3, r1, 0x178
/* 806DAB40  38 80 00 00 */	li r4, 0
/* 806DAB44  4B 99 CA AC */	b __dt__11dBgS_GndChkFv
/* 806DAB48  7E 63 9B 78 */	mr r3, r19
/* 806DAB4C  E3 E1 02 18 */	psq_l f31, 536(r1), 0, 0 /* qr0 */
/* 806DAB50  CB E1 02 10 */	lfd f31, 0x210(r1)
/* 806DAB54  39 61 02 10 */	addi r11, r1, 0x210
/* 806DAB58  4B C8 76 A8 */	b _restgpr_19
/* 806DAB5C  80 01 02 24 */	lwz r0, 0x224(r1)
/* 806DAB60  7C 08 03 A6 */	mtlr r0
/* 806DAB64  38 21 02 20 */	addi r1, r1, 0x220
/* 806DAB68  4E 80 00 20 */	blr 
