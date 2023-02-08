lbl_804A9EAC:
/* 804A9EAC  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 804A9EB0  7C 08 02 A6 */	mflr r0
/* 804A9EB4  90 01 01 24 */	stw r0, 0x124(r1)
/* 804A9EB8  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 804A9EBC  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 804A9EC0  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 804A9EC4  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 804A9EC8  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 804A9ECC  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, 0 /* qr0 */
/* 804A9ED0  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 804A9ED4  F3 81 00 E8 */	psq_st f28, 232(r1), 0, 0 /* qr0 */
/* 804A9ED8  DB 61 00 D0 */	stfd f27, 0xd0(r1)
/* 804A9EDC  F3 61 00 D8 */	psq_st f27, 216(r1), 0, 0 /* qr0 */
/* 804A9EE0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 804A9EE4  4B EB 82 DD */	bl _savegpr_22
/* 804A9EE8  7C 7E 1B 78 */	mr r30, r3
/* 804A9EEC  3C 60 80 4C */	lis r3, cNullVec__6Z2Calc@ha /* 0x804BB850@ha */
/* 804A9EF0  3B 43 B8 50 */	addi r26, r3, cNullVec__6Z2Calc@l /* 0x804BB850@l */
/* 804A9EF4  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804A9EF8  3B E3 B5 34 */	addi r31, r3, lit_3879@l /* 0x804BB534@l */
/* 804A9EFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A9F00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A9F04  83 03 5D AC */	lwz r24, 0x5dac(r3)
/* 804A9F08  3B 3E 05 A4 */	addi r25, r30, 0x5a4
/* 804A9F0C  A8 1E 0F 7C */	lha r0, 0xf7c(r30)
/* 804A9F10  2C 00 00 00 */	cmpwi r0, 0
/* 804A9F14  40 82 01 A4 */	bne lbl_804AA0B8
/* 804A9F18  A8 7E 0F 7E */	lha r3, 0xf7e(r30)
/* 804A9F1C  7C 60 07 35 */	extsh. r0, r3
/* 804A9F20  41 82 00 18 */	beq lbl_804A9F38
/* 804A9F24  2C 03 00 01 */	cmpwi r3, 1
/* 804A9F28  40 82 01 90 */	bne lbl_804AA0B8
/* 804A9F2C  A8 1E 05 82 */	lha r0, 0x582(r30)
/* 804A9F30  2C 00 00 00 */	cmpwi r0, 0
/* 804A9F34  41 82 01 84 */	beq lbl_804AA0B8
lbl_804A9F38:
/* 804A9F38  80 1E 11 44 */	lwz r0, 0x1144(r30)
/* 804A9F3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A9F40  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 804A9F44  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 804A9F48  38 81 00 10 */	addi r4, r1, 0x10
/* 804A9F4C  4B B6 F8 AD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804A9F50  7C 7B 1B 78 */	mr r27, r3
/* 804A9F54  A8 1E 13 B4 */	lha r0, 0x13b4(r30)
/* 804A9F58  2C 00 03 B6 */	cmpwi r0, 0x3b6
/* 804A9F5C  41 80 00 9C */	blt lbl_804A9FF8
/* 804A9F60  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804A9F64  40 80 00 94 */	bge lbl_804A9FF8
/* 804A9F68  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A9F6C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A9F70  80 63 00 00 */	lwz r3, 0(r3)
/* 804A9F74  A8 98 04 E6 */	lha r4, 0x4e6(r24)
/* 804A9F78  4B B6 24 65 */	bl mDoMtx_YrotS__FPA4_fs
/* 804A9F7C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804A9F80  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804A9F84  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 804A9F88  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804A9F8C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 804A9F90  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804A9F94  38 61 00 7C */	addi r3, r1, 0x7c
/* 804A9F98  38 81 00 70 */	addi r4, r1, 0x70
/* 804A9F9C  4B DC 6F 51 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804A9FA0  38 61 00 70 */	addi r3, r1, 0x70
/* 804A9FA4  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 804A9FA8  7C 65 1B 78 */	mr r5, r3
/* 804A9FAC  4B E9 D0 E5 */	bl PSVECAdd
/* 804A9FB0  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 804A9FB4  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 804A9FB8  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 804A9FBC  38 60 00 00 */	li r3, 0
/* 804A9FC0  4B DC 6E 9D */	bl MtxTrans__FfffUc
/* 804A9FC4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A9FC8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A9FCC  80 63 00 00 */	lwz r3, 0(r3)
/* 804A9FD0  A8 98 04 E6 */	lha r4, 0x4e6(r24)
/* 804A9FD4  38 04 8A 08 */	addi r0, r4, -30200
/* 804A9FD8  7C 04 07 34 */	extsh r4, r0
/* 804A9FDC  4B B6 24 59 */	bl mDoMtx_YrotM__FPA4_fs
/* 804A9FE0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A9FE4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A9FE8  80 63 00 00 */	lwz r3, 0(r3)
/* 804A9FEC  38 80 CD 38 */	li r4, -13000
/* 804A9FF0  4B B6 23 AD */	bl mDoMtx_XrotM__FPA4_fs
/* 804A9FF4  48 00 00 B8 */	b lbl_804AA0AC
lbl_804A9FF8:
/* 804A9FF8  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 804A9FFC  38 63 00 24 */	addi r3, r3, 0x24
/* 804AA000  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804AA004  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804AA008  80 84 00 00 */	lwz r4, 0(r4)
/* 804AA00C  4B E9 C4 A5 */	bl PSMTXCopy
/* 804AA010  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 804AA014  28 00 00 02 */	cmplwi r0, 2
/* 804AA018  40 82 00 30 */	bne lbl_804AA048
/* 804AA01C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804AA020  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 804AA024  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 804AA028  38 60 00 01 */	li r3, 1
/* 804AA02C  4B DC 6E 31 */	bl MtxTrans__FfffUc
/* 804AA030  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA034  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA038  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA03C  38 80 A2 40 */	li r4, -24000
/* 804AA040  4B B6 23 F5 */	bl mDoMtx_YrotM__FPA4_fs
/* 804AA044  48 00 00 2C */	b lbl_804AA070
lbl_804AA048:
/* 804AA048  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804AA04C  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 804AA050  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 804AA054  38 60 00 01 */	li r3, 1
/* 804AA058  4B DC 6E 05 */	bl MtxTrans__FfffUc
/* 804AA05C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA060  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA064  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA068  38 80 9E 58 */	li r4, -25000
/* 804AA06C  4B B6 23 C9 */	bl mDoMtx_YrotM__FPA4_fs
lbl_804AA070:
/* 804AA070  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA074  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA078  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA07C  38 80 07 6C */	li r4, 0x76c
/* 804AA080  4B B6 23 1D */	bl mDoMtx_XrotM__FPA4_fs
/* 804AA084  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA088  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA08C  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA090  38 80 20 B6 */	li r4, 0x20b6
/* 804AA094  4B B6 23 A1 */	bl mDoMtx_YrotM__FPA4_fs
/* 804AA098  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA09C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA0A0  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA0A4  38 80 C0 00 */	li r4, -16384
/* 804AA0A8  4B B6 24 25 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_804AA0AC:
/* 804AA0AC  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 804AA0B0  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 804AA0B4  48 00 01 78 */	b lbl_804AA22C
lbl_804AA0B8:
/* 804AA0B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AA0BC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AA0C0  80 A4 5D B4 */	lwz r5, 0x5db4(r4)
/* 804AA0C4  A8 65 04 E6 */	lha r3, 0x4e6(r5)
/* 804AA0C8  A8 05 05 9E */	lha r0, 0x59e(r5)
/* 804AA0CC  7C 03 02 14 */	add r0, r3, r0
/* 804AA0D0  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 804AA0D4  A8 1E 0F 7C */	lha r0, 0xf7c(r30)
/* 804AA0D8  2C 00 00 00 */	cmpwi r0, 0
/* 804AA0DC  40 82 00 74 */	bne lbl_804AA150
/* 804AA0E0  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 804AA0E4  A8 03 30 18 */	lha r0, 0x3018(r3)
/* 804AA0E8  2C 00 00 00 */	cmpwi r0, 0
/* 804AA0EC  40 82 00 64 */	bne lbl_804AA150
/* 804AA0F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804AA0F4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 804AA0F8  7D 89 03 A6 */	mtctr r12
/* 804AA0FC  4E 80 04 21 */	bctrl 
/* 804AA100  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804AA104  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804AA108  80 84 00 00 */	lwz r4, 0(r4)
/* 804AA10C  4B E9 C3 A5 */	bl PSMTXCopy
/* 804AA110  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA114  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA118  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA11C  38 80 20 B6 */	li r4, 0x20b6
/* 804AA120  4B B6 23 15 */	bl mDoMtx_YrotM__FPA4_fs
/* 804AA124  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA128  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA12C  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA130  38 80 80 00 */	li r4, -32768
/* 804AA134  4B B6 22 69 */	bl mDoMtx_XrotM__FPA4_fs
/* 804AA138  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA13C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA140  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA144  38 80 C0 00 */	li r4, -16384
/* 804AA148  4B B6 23 85 */	bl mDoMtx_ZrotM__FPA4_fs
/* 804AA14C  48 00 00 E0 */	b lbl_804AA22C
lbl_804AA150:
/* 804AA150  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 804AA154  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804AA158  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 804AA15C  7D 89 03 A6 */	mtctr r12
/* 804AA160  4E 80 04 21 */	bctrl 
/* 804AA164  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804AA168  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804AA16C  80 84 00 00 */	lwz r4, 0(r4)
/* 804AA170  4B E9 C3 41 */	bl PSMTXCopy
/* 804AA174  A8 1E 0F 7C */	lha r0, 0xf7c(r30)
/* 804AA178  2C 00 00 00 */	cmpwi r0, 0
/* 804AA17C  40 82 00 B0 */	bne lbl_804AA22C
/* 804AA180  3B 60 00 00 */	li r27, 0
/* 804AA184  A8 78 04 E6 */	lha r3, 0x4e6(r24)
/* 804AA188  A8 1E 06 C4 */	lha r0, 0x6c4(r30)
/* 804AA18C  7C 03 00 50 */	subf r0, r3, r0
/* 804AA190  7C 00 07 34 */	extsh r0, r0
/* 804AA194  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804AA198  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804AA19C  C8 5F 00 A0 */	lfd f2, 0xa0(r31)
/* 804AA1A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804AA1A4  90 01 00 8C */	stw r0, 0x8c(r1)
/* 804AA1A8  3C 60 43 30 */	lis r3, 0x4330
/* 804AA1AC  90 61 00 88 */	stw r3, 0x88(r1)
/* 804AA1B0  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 804AA1B4  EC 00 10 28 */	fsubs f0, f0, f2
/* 804AA1B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AA1BC  EC 03 00 2A */	fadds f0, f3, f0
/* 804AA1C0  FC 00 00 1E */	fctiwz f0, f0
/* 804AA1C4  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 804AA1C8  80 A1 00 94 */	lwz r5, 0x94(r1)
/* 804AA1CC  A8 9E 14 F8 */	lha r4, 0x14f8(r30)
/* 804AA1D0  7C 80 07 35 */	extsh. r0, r4
/* 804AA1D4  40 80 00 2C */	bge lbl_804AA200
/* 804AA1D8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 804AA1DC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804AA1E0  90 01 00 9C */	stw r0, 0x9c(r1)
/* 804AA1E4  90 61 00 98 */	stw r3, 0x98(r1)
/* 804AA1E8  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 804AA1EC  EC 00 10 28 */	fsubs f0, f0, f2
/* 804AA1F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AA1F4  FC 00 00 1E */	fctiwz f0, f0
/* 804AA1F8  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 804AA1FC  83 61 00 A4 */	lwz r27, 0xa4(r1)
lbl_804AA200:
/* 804AA200  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA204  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA208  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA20C  38 05 F8 30 */	addi r0, r5, -2000
/* 804AA210  7C 04 07 34 */	extsh r4, r0
/* 804AA214  4B B6 21 89 */	bl mDoMtx_XrotM__FPA4_fs
/* 804AA218  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA21C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA220  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA224  7F 64 07 34 */	extsh r4, r27
/* 804AA228  4B B6 22 A5 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_804AA22C:
/* 804AA22C  A8 1E 0F 7C */	lha r0, 0xf7c(r30)
/* 804AA230  2C 00 00 00 */	cmpwi r0, 0
/* 804AA234  40 82 00 B8 */	bne lbl_804AA2EC
/* 804AA238  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804AA23C  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 804AA240  FC 60 08 90 */	fmr f3, f1
/* 804AA244  38 60 00 01 */	li r3, 1
/* 804AA248  4B DC 6C 15 */	bl MtxTrans__FfffUc
/* 804AA24C  80 7E 07 00 */	lwz r3, 0x700(r30)
/* 804AA250  82 C3 00 04 */	lwz r22, 4(r3)
/* 804AA254  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA258  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA25C  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA260  38 96 00 24 */	addi r4, r22, 0x24
/* 804AA264  4B E9 C2 4D */	bl PSMTXCopy
/* 804AA268  4B DC 6C B5 */	bl MtxPush__Fv
/* 804AA26C  80 7E 07 00 */	lwz r3, 0x700(r30)
/* 804AA270  4B B6 64 3D */	bl modelCalc__14mDoExt_McaMorfFv
/* 804AA274  4B DC 6C E5 */	bl MtxPull__Fv
/* 804AA278  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AA27C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804AA280  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804AA284  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804AA288  38 61 00 7C */	addi r3, r1, 0x7c
/* 804AA28C  38 9E 07 50 */	addi r4, r30, 0x750
/* 804AA290  4B DC 6C 5D */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AA294  C0 1E 07 60 */	lfs f0, 0x760(r30)
/* 804AA298  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804AA29C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804AA2A0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804AA2A4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 804AA2A8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804AA2AC  38 61 00 7C */	addi r3, r1, 0x7c
/* 804AA2B0  38 9E 07 44 */	addi r4, r30, 0x744
/* 804AA2B4  4B DC 6C 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AA2B8  80 76 00 84 */	lwz r3, 0x84(r22)
/* 804AA2BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804AA2C0  38 63 00 60 */	addi r3, r3, 0x60
/* 804AA2C4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804AA2C8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804AA2CC  80 84 00 00 */	lwz r4, 0(r4)
/* 804AA2D0  4B E9 C1 E1 */	bl PSMTXCopy
/* 804AA2D4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA2D8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA2DC  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA2E0  38 80 C0 00 */	li r4, -16384
/* 804AA2E4  4B B6 20 B9 */	bl mDoMtx_XrotM__FPA4_fs
/* 804AA2E8  48 00 00 40 */	b lbl_804AA328
lbl_804AA2EC:
/* 804AA2EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA2F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA2F4  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA2F8  38 80 BD 98 */	li r4, -17000
/* 804AA2FC  4B B6 21 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 804AA300  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA304  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA308  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA30C  38 80 A1 34 */	li r4, -24268
/* 804AA310  4B B6 20 8D */	bl mDoMtx_XrotM__FPA4_fs
/* 804AA314  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804AA318  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 804AA31C  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 804AA320  38 60 00 01 */	li r3, 1
/* 804AA324  4B DC 6B 39 */	bl MtxTrans__FfffUc
lbl_804AA328:
/* 804AA328  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AA32C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804AA330  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804AA334  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804AA338  38 61 00 7C */	addi r3, r1, 0x7c
/* 804AA33C  7F 24 CB 78 */	mr r4, r25
/* 804AA340  4B DC 6B AD */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AA344  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804AA348  FC 40 08 90 */	fmr f2, f1
/* 804AA34C  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 804AA350  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 804AA354  EC 63 00 32 */	fmuls f3, f3, f0
/* 804AA358  38 60 00 01 */	li r3, 1
/* 804AA35C  4B DC 6B 01 */	bl MtxTrans__FfffUc
/* 804AA360  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AA364  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804AA368  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804AA36C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804AA370  38 61 00 7C */	addi r3, r1, 0x7c
/* 804AA374  38 81 00 4C */	addi r4, r1, 0x4c
/* 804AA378  4B DC 6B 75 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AA37C  38 61 00 40 */	addi r3, r1, 0x40
/* 804AA380  38 81 00 4C */	addi r4, r1, 0x4c
/* 804AA384  7F 25 CB 78 */	mr r5, r25
/* 804AA388  4B DB C7 AD */	bl __mi__4cXyzCFRC3Vec
/* 804AA38C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 804AA390  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 804AA394  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804AA398  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804AA39C  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 804AA3A0  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 804AA3A4  4B DB D2 D1 */	bl cM_atan2s__Fff
/* 804AA3A8  B0 61 00 16 */	sth r3, 0x16(r1)
/* 804AA3AC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 804AA3B0  EC 20 00 32 */	fmuls f1, f0, f0
/* 804AA3B4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 804AA3B8  EC 00 00 32 */	fmuls f0, f0, f0
/* 804AA3BC  EC 41 00 2A */	fadds f2, f1, f0
/* 804AA3C0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AA3C4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AA3C8  40 81 00 0C */	ble lbl_804AA3D4
/* 804AA3CC  FC 00 10 34 */	frsqrte f0, f2
/* 804AA3D0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AA3D4:
/* 804AA3D4  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 804AA3D8  4B DB D2 9D */	bl cM_atan2s__Fff
/* 804AA3DC  7C 03 00 D0 */	neg r0, r3
/* 804AA3E0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 804AA3E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA3E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA3EC  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA3F0  A8 81 00 16 */	lha r4, 0x16(r1)
/* 804AA3F4  4B B6 1F E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AA3F8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA3FC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA400  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA404  A8 81 00 14 */	lha r4, 0x14(r1)
/* 804AA408  4B B6 1F 95 */	bl mDoMtx_XrotM__FPA4_fs
/* 804AA40C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AA410  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804AA414  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804AA418  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804AA41C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804AA420  38 61 00 7C */	addi r3, r1, 0x7c
/* 804AA424  38 81 00 64 */	addi r4, r1, 0x64
/* 804AA428  4B DC 6A C5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AA42C  38 61 00 34 */	addi r3, r1, 0x34
/* 804AA430  38 9E 0A B8 */	addi r4, r30, 0xab8
/* 804AA434  38 A1 00 4C */	addi r5, r1, 0x4c
/* 804AA438  4B DB C6 FD */	bl __mi__4cXyzCFRC3Vec
/* 804AA43C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804AA440  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804AA444  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804AA448  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804AA44C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804AA450  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804AA454  A8 1E 0F 7C */	lha r0, 0xf7c(r30)
/* 804AA458  2C 00 00 01 */	cmpwi r0, 1
/* 804AA45C  40 82 00 4C */	bne lbl_804AA4A8
/* 804AA460  A8 1E 0F 7E */	lha r0, 0xf7e(r30)
/* 804AA464  2C 00 00 01 */	cmpwi r0, 1
/* 804AA468  40 82 00 40 */	bne lbl_804AA4A8
/* 804AA46C  C0 3E 15 08 */	lfs f1, 0x1508(r30)
/* 804AA470  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804AA474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AA478  40 80 00 30 */	bge lbl_804AA4A8
/* 804AA47C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA480  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA484  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA488  A8 9E 06 C4 */	lha r4, 0x6c4(r30)
/* 804AA48C  4B B6 1F 51 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AA490  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA494  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA498  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA49C  38 80 17 70 */	li r4, 0x1770
/* 804AA4A0  4B B6 1E FD */	bl mDoMtx_XrotM__FPA4_fs
/* 804AA4A4  48 00 00 6C */	b lbl_804AA510
lbl_804AA4A8:
/* 804AA4A8  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 804AA4AC  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 804AA4B0  4B DB D1 C5 */	bl cM_atan2s__Fff
/* 804AA4B4  7C 64 07 34 */	extsh r4, r3
/* 804AA4B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA4BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA4C0  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA4C4  4B B6 1F 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AA4C8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 804AA4CC  EC 20 00 32 */	fmuls f1, f0, f0
/* 804AA4D0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 804AA4D4  EC 00 00 32 */	fmuls f0, f0, f0
/* 804AA4D8  EC 41 00 2A */	fadds f2, f1, f0
/* 804AA4DC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AA4E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AA4E4  40 81 00 0C */	ble lbl_804AA4F0
/* 804AA4E8  FC 00 10 34 */	frsqrte f0, f2
/* 804AA4EC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AA4F0:
/* 804AA4F0  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 804AA4F4  4B DB D1 81 */	bl cM_atan2s__Fff
/* 804AA4F8  7C 03 00 D0 */	neg r0, r3
/* 804AA4FC  7C 04 07 34 */	extsh r4, r0
/* 804AA500  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA504  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA508  80 63 00 00 */	lwz r3, 0(r3)
/* 804AA50C  4B B6 1E 91 */	bl mDoMtx_XrotM__FPA4_fs
lbl_804AA510:
/* 804AA510  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AA514  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804AA518  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804AA51C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804AA520  C0 1E 06 F8 */	lfs f0, 0x6f8(r30)
/* 804AA524  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AA528  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804AA52C  38 61 00 7C */	addi r3, r1, 0x7c
/* 804AA530  38 81 00 58 */	addi r4, r1, 0x58
/* 804AA534  4B DC 69 B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AA538  C3 BF 00 58 */	lfs f29, 0x58(r31)
/* 804AA53C  D3 A1 00 7C */	stfs f29, 0x7c(r1)
/* 804AA540  D3 A1 00 80 */	stfs f29, 0x80(r1)
/* 804AA544  C0 3E 06 A0 */	lfs f1, 0x6a0(r30)
/* 804AA548  C0 1E 06 A4 */	lfs f0, 0x6a4(r30)
/* 804AA54C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AA550  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804AA554  3B 60 00 01 */	li r27, 1
/* 804AA558  3A E0 00 04 */	li r23, 4
/* 804AA55C  3B 1A 00 30 */	addi r24, r26, 0x30
/* 804AA560  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AA564  3A C3 07 68 */	addi r22, r3, calc_mtx@l /* 0x80450768@l */
/* 804AA568  3B 39 00 0C */	addi r25, r25, 0xc
lbl_804AA56C:
/* 804AA56C  7C 78 BC 2E */	lfsx f3, r24, r23
/* 804AA570  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 804AA574  C0 39 00 00 */	lfs f1, 0(r25)
/* 804AA578  C0 19 FF F4 */	lfs f0, -0xc(r25)
/* 804AA57C  EC 21 00 28 */	fsubs f1, f1, f0
/* 804AA580  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 804AA584  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804AA588  EC 01 00 2A */	fadds f0, f1, f0
/* 804AA58C  EF 62 00 2A */	fadds f27, f2, f0
/* 804AA590  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 804AA594  C0 39 00 04 */	lfs f1, 4(r25)
/* 804AA598  C0 19 FF F8 */	lfs f0, -8(r25)
/* 804AA59C  EC 21 00 28 */	fsubs f1, f1, f0
/* 804AA5A0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804AA5A4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804AA5A8  EC 01 00 2A */	fadds f0, f1, f0
/* 804AA5AC  EF 82 00 2A */	fadds f28, f2, f0
/* 804AA5B0  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 804AA5B4  C0 39 00 08 */	lfs f1, 8(r25)
/* 804AA5B8  C0 19 FF FC */	lfs f0, -4(r25)
/* 804AA5BC  EC 21 00 28 */	fsubs f1, f1, f0
/* 804AA5C0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804AA5C4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804AA5C8  EC 01 00 2A */	fadds f0, f1, f0
/* 804AA5CC  EF C2 00 2A */	fadds f30, f2, f0
/* 804AA5D0  FC 20 D8 90 */	fmr f1, f27
/* 804AA5D4  FC 40 F0 90 */	fmr f2, f30
/* 804AA5D8  4B DB D0 9D */	bl cM_atan2s__Fff
/* 804AA5DC  7C 7D 07 34 */	extsh r29, r3
/* 804AA5E0  EC 3B 06 F2 */	fmuls f1, f27, f27
/* 804AA5E4  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 804AA5E8  EC 41 00 2A */	fadds f2, f1, f0
/* 804AA5EC  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 804AA5F0  40 81 00 0C */	ble lbl_804AA5FC
/* 804AA5F4  FC 00 10 34 */	frsqrte f0, f2
/* 804AA5F8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AA5FC:
/* 804AA5FC  FC 20 E0 90 */	fmr f1, f28
/* 804AA600  4B DB D0 75 */	bl cM_atan2s__Fff
/* 804AA604  7C 03 00 D0 */	neg r0, r3
/* 804AA608  7C 1C 07 34 */	extsh r28, r0
/* 804AA60C  80 76 00 00 */	lwz r3, 0(r22)
/* 804AA610  7F A4 EB 78 */	mr r4, r29
/* 804AA614  4B B6 1D C9 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AA618  80 76 00 00 */	lwz r3, 0(r22)
/* 804AA61C  7F 84 E3 78 */	mr r4, r28
/* 804AA620  4B B6 1D 7D */	bl mDoMtx_XrotM__FPA4_fs
/* 804AA624  38 61 00 7C */	addi r3, r1, 0x7c
/* 804AA628  38 81 00 70 */	addi r4, r1, 0x70
/* 804AA62C  4B DC 68 C1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AA630  C0 39 FF F4 */	lfs f1, -0xc(r25)
/* 804AA634  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 804AA638  EC 01 00 2A */	fadds f0, f1, f0
/* 804AA63C  D0 19 00 00 */	stfs f0, 0(r25)
/* 804AA640  C0 39 FF F8 */	lfs f1, -8(r25)
/* 804AA644  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 804AA648  EC 01 00 2A */	fadds f0, f1, f0
/* 804AA64C  D0 19 00 04 */	stfs f0, 4(r25)
/* 804AA650  C0 39 FF FC */	lfs f1, -4(r25)
/* 804AA654  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 804AA658  EC 01 00 2A */	fadds f0, f1, f0
/* 804AA65C  D0 19 00 08 */	stfs f0, 8(r25)
/* 804AA660  2C 1B 00 0F */	cmpwi r27, 0xf
/* 804AA664  40 82 00 38 */	bne lbl_804AA69C
/* 804AA668  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 804AA66C  D0 1E 06 B8 */	stfs f0, 0x6b8(r30)
/* 804AA670  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 804AA674  D0 1E 06 BC */	stfs f0, 0x6bc(r30)
/* 804AA678  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 804AA67C  D0 1E 06 C0 */	stfs f0, 0x6c0(r30)
/* 804AA680  C0 19 00 00 */	lfs f0, 0(r25)
/* 804AA684  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 804AA688  C0 19 00 04 */	lfs f0, 4(r25)
/* 804AA68C  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 804AA690  C0 19 00 08 */	lfs f0, 8(r25)
/* 804AA694  D0 1E 06 B4 */	stfs f0, 0x6b4(r30)
/* 804AA698  48 00 00 3C */	b lbl_804AA6D4
lbl_804AA69C:
/* 804AA69C  2C 1B 00 01 */	cmpwi r27, 1
/* 804AA6A0  40 82 00 34 */	bne lbl_804AA6D4
/* 804AA6A4  C0 1E 06 C8 */	lfs f0, 0x6c8(r30)
/* 804AA6A8  D0 1E 06 D4 */	stfs f0, 0x6d4(r30)
/* 804AA6AC  C0 1E 06 CC */	lfs f0, 0x6cc(r30)
/* 804AA6B0  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 804AA6B4  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 804AA6B8  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 804AA6BC  C0 19 00 00 */	lfs f0, 0(r25)
/* 804AA6C0  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 804AA6C4  C0 19 00 04 */	lfs f0, 4(r25)
/* 804AA6C8  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 804AA6CC  C0 19 00 08 */	lfs f0, 8(r25)
/* 804AA6D0  D0 1E 06 D0 */	stfs f0, 0x6d0(r30)
lbl_804AA6D4:
/* 804AA6D4  3B 7B 00 01 */	addi r27, r27, 1
/* 804AA6D8  2C 1B 00 10 */	cmpwi r27, 0x10
/* 804AA6DC  3A F7 00 04 */	addi r23, r23, 4
/* 804AA6E0  3B 39 00 0C */	addi r25, r25, 0xc
/* 804AA6E4  41 80 FE 88 */	blt lbl_804AA56C
/* 804AA6E8  A8 1E 0F 7C */	lha r0, 0xf7c(r30)
/* 804AA6EC  2C 00 00 01 */	cmpwi r0, 1
/* 804AA6F0  40 82 02 3C */	bne lbl_804AA92C
/* 804AA6F4  3B 3E 05 A4 */	addi r25, r30, 0x5a4
/* 804AA6F8  3B 00 00 00 */	li r24, 0
/* 804AA6FC  3A E0 00 00 */	li r23, 0
/* 804AA700  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804AA704  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804AA708  C3 FF 00 58 */	lfs f31, 0x58(r31)
/* 804AA70C  7F BC EB 78 */	mr r28, r29
/* 804AA710  C3 DF 00 7C */	lfs f30, 0x7c(r31)
/* 804AA714  38 1A 00 70 */	addi r0, r26, 0x70
/* 804AA718  CB BF 00 A8 */	lfd f29, 0xa8(r31)
/* 804AA71C  3F 60 43 30 */	lis r27, 0x4330
/* 804AA720  C3 7F 00 98 */	lfs f27, 0x98(r31)
/* 804AA724  7F B6 EB 78 */	mr r22, r29
/* 804AA728  7C 1A 03 78 */	mr r26, r0
lbl_804AA72C:
/* 804AA72C  38 61 00 28 */	addi r3, r1, 0x28
/* 804AA730  38 99 00 0C */	addi r4, r25, 0xc
/* 804AA734  7F 25 CB 78 */	mr r5, r25
/* 804AA738  4B DB C3 FD */	bl __mi__4cXyzCFRC3Vec
/* 804AA73C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804AA740  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804AA744  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804AA748  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804AA74C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804AA750  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804AA754  7F A3 EB 78 */	mr r3, r29
/* 804AA758  C0 39 00 00 */	lfs f1, 0(r25)
/* 804AA75C  C0 59 00 04 */	lfs f2, 4(r25)
/* 804AA760  C0 79 00 08 */	lfs f3, 8(r25)
/* 804AA764  4B E9 C1 85 */	bl PSMTXTrans
/* 804AA768  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 804AA76C  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 804AA770  4B DB CF 05 */	bl cM_atan2s__Fff
/* 804AA774  7C 64 1B 78 */	mr r4, r3
/* 804AA778  7F A3 EB 78 */	mr r3, r29
/* 804AA77C  4B B6 1C B9 */	bl mDoMtx_YrotM__FPA4_fs
/* 804AA780  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 804AA784  EC 20 00 32 */	fmuls f1, f0, f0
/* 804AA788  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 804AA78C  EC 00 00 32 */	fmuls f0, f0, f0
/* 804AA790  EC 41 00 2A */	fadds f2, f1, f0
/* 804AA794  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 804AA798  40 81 00 0C */	ble lbl_804AA7A4
/* 804AA79C  FC 00 10 34 */	frsqrte f0, f2
/* 804AA7A0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AA7A4:
/* 804AA7A4  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 804AA7A8  4B DB CE CD */	bl cM_atan2s__Fff
/* 804AA7AC  7C 03 00 D0 */	neg r0, r3
/* 804AA7B0  7C 04 07 34 */	extsh r4, r0
/* 804AA7B4  7F 83 E3 78 */	mr r3, r28
/* 804AA7B8  4B B6 1B E5 */	bl mDoMtx_XrotM__FPA4_fs
/* 804AA7BC  88 1A 00 00 */	lbz r0, 0(r26)
/* 804AA7C0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804AA7C4  93 61 00 A0 */	stw r27, 0xa0(r1)
/* 804AA7C8  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 804AA7CC  EC 00 E8 28 */	fsubs f0, f0, f29
/* 804AA7D0  EF 9E 00 32 */	fmuls f28, f30, f0
/* 804AA7D4  38 61 00 7C */	addi r3, r1, 0x7c
/* 804AA7D8  4B E9 C9 61 */	bl PSVECSquareMag
/* 804AA7DC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804AA7E0  40 81 00 58 */	ble lbl_804AA838
/* 804AA7E4  FC 00 08 34 */	frsqrte f0, f1
/* 804AA7E8  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 804AA7EC  FC 44 00 32 */	fmul f2, f4, f0
/* 804AA7F0  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 804AA7F4  FC 00 00 32 */	fmul f0, f0, f0
/* 804AA7F8  FC 01 00 32 */	fmul f0, f1, f0
/* 804AA7FC  FC 03 00 28 */	fsub f0, f3, f0
/* 804AA800  FC 02 00 32 */	fmul f0, f2, f0
/* 804AA804  FC 44 00 32 */	fmul f2, f4, f0
/* 804AA808  FC 00 00 32 */	fmul f0, f0, f0
/* 804AA80C  FC 01 00 32 */	fmul f0, f1, f0
/* 804AA810  FC 03 00 28 */	fsub f0, f3, f0
/* 804AA814  FC 02 00 32 */	fmul f0, f2, f0
/* 804AA818  FC 44 00 32 */	fmul f2, f4, f0
/* 804AA81C  FC 00 00 32 */	fmul f0, f0, f0
/* 804AA820  FC 01 00 32 */	fmul f0, f1, f0
/* 804AA824  FC 03 00 28 */	fsub f0, f3, f0
/* 804AA828  FC 02 00 32 */	fmul f0, f2, f0
/* 804AA82C  FC 01 00 32 */	fmul f0, f1, f0
/* 804AA830  FC 00 00 18 */	frsp f0, f0
/* 804AA834  48 00 00 90 */	b lbl_804AA8C4
lbl_804AA838:
/* 804AA838  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 804AA83C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AA840  40 80 00 10 */	bge lbl_804AA850
/* 804AA844  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AA848  C0 03 0A E0 */	lfs f0, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804AA84C  48 00 00 78 */	b lbl_804AA8C4
lbl_804AA850:
/* 804AA850  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804AA854  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804AA858  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804AA85C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804AA860  7C 03 00 00 */	cmpw r3, r0
/* 804AA864  41 82 00 14 */	beq lbl_804AA878
/* 804AA868  40 80 00 40 */	bge lbl_804AA8A8
/* 804AA86C  2C 03 00 00 */	cmpwi r3, 0
/* 804AA870  41 82 00 20 */	beq lbl_804AA890
/* 804AA874  48 00 00 34 */	b lbl_804AA8A8
lbl_804AA878:
/* 804AA878  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AA87C  41 82 00 0C */	beq lbl_804AA888
/* 804AA880  38 00 00 01 */	li r0, 1
/* 804AA884  48 00 00 28 */	b lbl_804AA8AC
lbl_804AA888:
/* 804AA888  38 00 00 02 */	li r0, 2
/* 804AA88C  48 00 00 20 */	b lbl_804AA8AC
lbl_804AA890:
/* 804AA890  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AA894  41 82 00 0C */	beq lbl_804AA8A0
/* 804AA898  38 00 00 05 */	li r0, 5
/* 804AA89C  48 00 00 10 */	b lbl_804AA8AC
lbl_804AA8A0:
/* 804AA8A0  38 00 00 03 */	li r0, 3
/* 804AA8A4  48 00 00 08 */	b lbl_804AA8AC
lbl_804AA8A8:
/* 804AA8A8  38 00 00 04 */	li r0, 4
lbl_804AA8AC:
/* 804AA8AC  2C 00 00 01 */	cmpwi r0, 1
/* 804AA8B0  40 82 00 10 */	bne lbl_804AA8C0
/* 804AA8B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AA8B8  C0 03 0A E0 */	lfs f0, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804AA8BC  48 00 00 08 */	b lbl_804AA8C4
lbl_804AA8C0:
/* 804AA8C0  FC 00 08 90 */	fmr f0, f1
lbl_804AA8C4:
/* 804AA8C4  FC 20 E0 90 */	fmr f1, f28
/* 804AA8C8  FC 40 E0 90 */	fmr f2, f28
/* 804AA8CC  EC 7B 00 32 */	fmuls f3, f27, f0
/* 804AA8D0  4B B6 25 69 */	bl scaleM__14mDoMtx_stack_cFfff
/* 804AA8D4  2C 18 00 00 */	cmpwi r24, 0
/* 804AA8D8  40 82 00 24 */	bne lbl_804AA8FC
/* 804AA8DC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804AA8E0  FC 40 08 90 */	fmr f2, f1
/* 804AA8E4  C0 7F 00 9C */	lfs f3, 0x9c(r31)
/* 804AA8E8  4B B6 25 51 */	bl scaleM__14mDoMtx_stack_cFfff
/* 804AA8EC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804AA8F0  FC 40 08 90 */	fmr f2, f1
/* 804AA8F4  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 804AA8F8  4B B6 24 A5 */	bl transM__14mDoMtx_stack_cFfff
lbl_804AA8FC:
/* 804AA8FC  7E C3 B3 78 */	mr r3, r22
/* 804AA900  38 17 06 64 */	addi r0, r23, 0x664
/* 804AA904  7C 9E 00 2E */	lwzx r4, r30, r0
/* 804AA908  38 84 00 24 */	addi r4, r4, 0x24
/* 804AA90C  4B E9 BB A5 */	bl PSMTXCopy
/* 804AA910  3B 18 00 01 */	addi r24, r24, 1
/* 804AA914  2C 18 00 0F */	cmpwi r24, 0xf
/* 804AA918  3A F7 00 04 */	addi r23, r23, 4
/* 804AA91C  3B 5A 00 01 */	addi r26, r26, 1
/* 804AA920  3B 39 00 0C */	addi r25, r25, 0xc
/* 804AA924  41 80 FE 08 */	blt lbl_804AA72C
/* 804AA928  48 00 02 10 */	b lbl_804AAB38
lbl_804AA92C:
/* 804AA92C  3B 3E 05 A4 */	addi r25, r30, 0x5a4
/* 804AA930  3B 00 00 00 */	li r24, 0
/* 804AA934  3A E0 00 00 */	li r23, 0
/* 804AA938  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804AA93C  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804AA940  C3 BF 00 58 */	lfs f29, 0x58(r31)
/* 804AA944  7F 7C DB 78 */	mr r28, r27
/* 804AA948  C3 DF 00 7C */	lfs f30, 0x7c(r31)
/* 804AA94C  38 1A 00 80 */	addi r0, r26, 0x80
/* 804AA950  CB FF 00 A8 */	lfd f31, 0xa8(r31)
/* 804AA954  3F A0 43 30 */	lis r29, 0x4330
/* 804AA958  C3 7F 00 98 */	lfs f27, 0x98(r31)
/* 804AA95C  7F 76 DB 78 */	mr r22, r27
/* 804AA960  7C 1A 03 78 */	mr r26, r0
lbl_804AA964:
/* 804AA964  38 61 00 1C */	addi r3, r1, 0x1c
/* 804AA968  38 99 00 0C */	addi r4, r25, 0xc
/* 804AA96C  7F 25 CB 78 */	mr r5, r25
/* 804AA970  4B DB C1 C5 */	bl __mi__4cXyzCFRC3Vec
/* 804AA974  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804AA978  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804AA97C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804AA980  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804AA984  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804AA988  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804AA98C  7F 63 DB 78 */	mr r3, r27
/* 804AA990  C0 39 00 00 */	lfs f1, 0(r25)
/* 804AA994  C0 59 00 04 */	lfs f2, 4(r25)
/* 804AA998  C0 79 00 08 */	lfs f3, 8(r25)
/* 804AA99C  4B E9 BF 4D */	bl PSMTXTrans
/* 804AA9A0  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 804AA9A4  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 804AA9A8  4B DB CC CD */	bl cM_atan2s__Fff
/* 804AA9AC  7C 64 1B 78 */	mr r4, r3
/* 804AA9B0  7F 63 DB 78 */	mr r3, r27
/* 804AA9B4  4B B6 1A 81 */	bl mDoMtx_YrotM__FPA4_fs
/* 804AA9B8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 804AA9BC  EC 20 00 32 */	fmuls f1, f0, f0
/* 804AA9C0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 804AA9C4  EC 00 00 32 */	fmuls f0, f0, f0
/* 804AA9C8  EC 41 00 2A */	fadds f2, f1, f0
/* 804AA9CC  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 804AA9D0  40 81 00 0C */	ble lbl_804AA9DC
/* 804AA9D4  FC 00 10 34 */	frsqrte f0, f2
/* 804AA9D8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AA9DC:
/* 804AA9DC  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 804AA9E0  4B DB CC 95 */	bl cM_atan2s__Fff
/* 804AA9E4  7C 03 00 D0 */	neg r0, r3
/* 804AA9E8  7C 04 07 34 */	extsh r4, r0
/* 804AA9EC  7F 83 E3 78 */	mr r3, r28
/* 804AA9F0  4B B6 19 AD */	bl mDoMtx_XrotM__FPA4_fs
/* 804AA9F4  88 1A 00 00 */	lbz r0, 0(r26)
/* 804AA9F8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804AA9FC  93 A1 00 A0 */	stw r29, 0xa0(r1)
/* 804AAA00  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 804AAA04  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804AAA08  EF 9E 00 32 */	fmuls f28, f30, f0
/* 804AAA0C  38 61 00 7C */	addi r3, r1, 0x7c
/* 804AAA10  4B E9 C7 29 */	bl PSVECSquareMag
/* 804AAA14  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 804AAA18  40 81 00 58 */	ble lbl_804AAA70
/* 804AAA1C  FC 00 08 34 */	frsqrte f0, f1
/* 804AAA20  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 804AAA24  FC 44 00 32 */	fmul f2, f4, f0
/* 804AAA28  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 804AAA2C  FC 00 00 32 */	fmul f0, f0, f0
/* 804AAA30  FC 01 00 32 */	fmul f0, f1, f0
/* 804AAA34  FC 03 00 28 */	fsub f0, f3, f0
/* 804AAA38  FC 02 00 32 */	fmul f0, f2, f0
/* 804AAA3C  FC 44 00 32 */	fmul f2, f4, f0
/* 804AAA40  FC 00 00 32 */	fmul f0, f0, f0
/* 804AAA44  FC 01 00 32 */	fmul f0, f1, f0
/* 804AAA48  FC 03 00 28 */	fsub f0, f3, f0
/* 804AAA4C  FC 02 00 32 */	fmul f0, f2, f0
/* 804AAA50  FC 44 00 32 */	fmul f2, f4, f0
/* 804AAA54  FC 00 00 32 */	fmul f0, f0, f0
/* 804AAA58  FC 01 00 32 */	fmul f0, f1, f0
/* 804AAA5C  FC 03 00 28 */	fsub f0, f3, f0
/* 804AAA60  FC 02 00 32 */	fmul f0, f2, f0
/* 804AAA64  FC 01 00 32 */	fmul f0, f1, f0
/* 804AAA68  FC 00 00 18 */	frsp f0, f0
/* 804AAA6C  48 00 00 90 */	b lbl_804AAAFC
lbl_804AAA70:
/* 804AAA70  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 804AAA74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AAA78  40 80 00 10 */	bge lbl_804AAA88
/* 804AAA7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AAA80  C0 03 0A E0 */	lfs f0, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804AAA84  48 00 00 78 */	b lbl_804AAAFC
lbl_804AAA88:
/* 804AAA88  D0 21 00 08 */	stfs f1, 8(r1)
/* 804AAA8C  80 81 00 08 */	lwz r4, 8(r1)
/* 804AAA90  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804AAA94  3C 00 7F 80 */	lis r0, 0x7f80
/* 804AAA98  7C 03 00 00 */	cmpw r3, r0
/* 804AAA9C  41 82 00 14 */	beq lbl_804AAAB0
/* 804AAAA0  40 80 00 40 */	bge lbl_804AAAE0
/* 804AAAA4  2C 03 00 00 */	cmpwi r3, 0
/* 804AAAA8  41 82 00 20 */	beq lbl_804AAAC8
/* 804AAAAC  48 00 00 34 */	b lbl_804AAAE0
lbl_804AAAB0:
/* 804AAAB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AAAB4  41 82 00 0C */	beq lbl_804AAAC0
/* 804AAAB8  38 00 00 01 */	li r0, 1
/* 804AAABC  48 00 00 28 */	b lbl_804AAAE4
lbl_804AAAC0:
/* 804AAAC0  38 00 00 02 */	li r0, 2
/* 804AAAC4  48 00 00 20 */	b lbl_804AAAE4
lbl_804AAAC8:
/* 804AAAC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AAACC  41 82 00 0C */	beq lbl_804AAAD8
/* 804AAAD0  38 00 00 05 */	li r0, 5
/* 804AAAD4  48 00 00 10 */	b lbl_804AAAE4
lbl_804AAAD8:
/* 804AAAD8  38 00 00 03 */	li r0, 3
/* 804AAADC  48 00 00 08 */	b lbl_804AAAE4
lbl_804AAAE0:
/* 804AAAE0  38 00 00 04 */	li r0, 4
lbl_804AAAE4:
/* 804AAAE4  2C 00 00 01 */	cmpwi r0, 1
/* 804AAAE8  40 82 00 10 */	bne lbl_804AAAF8
/* 804AAAEC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AAAF0  C0 03 0A E0 */	lfs f0, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804AAAF4  48 00 00 08 */	b lbl_804AAAFC
lbl_804AAAF8:
/* 804AAAF8  FC 00 08 90 */	fmr f0, f1
lbl_804AAAFC:
/* 804AAAFC  FC 20 E0 90 */	fmr f1, f28
/* 804AAB00  FC 40 E0 90 */	fmr f2, f28
/* 804AAB04  EC 7B 00 32 */	fmuls f3, f27, f0
/* 804AAB08  4B B6 23 31 */	bl scaleM__14mDoMtx_stack_cFfff
/* 804AAB0C  7E C3 B3 78 */	mr r3, r22
/* 804AAB10  38 17 06 64 */	addi r0, r23, 0x664
/* 804AAB14  7C 9E 00 2E */	lwzx r4, r30, r0
/* 804AAB18  38 84 00 24 */	addi r4, r4, 0x24
/* 804AAB1C  4B E9 B9 95 */	bl PSMTXCopy
/* 804AAB20  3B 18 00 01 */	addi r24, r24, 1
/* 804AAB24  2C 18 00 0F */	cmpwi r24, 0xf
/* 804AAB28  3A F7 00 04 */	addi r23, r23, 4
/* 804AAB2C  3B 5A 00 01 */	addi r26, r26, 1
/* 804AAB30  3B 39 00 0C */	addi r25, r25, 0xc
/* 804AAB34  41 80 FE 30 */	blt lbl_804AA964
lbl_804AAB38:
/* 804AAB38  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 804AAB3C  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 804AAB40  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 804AAB44  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 804AAB48  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, 0 /* qr0 */
/* 804AAB4C  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 804AAB50  E3 81 00 E8 */	psq_l f28, 232(r1), 0, 0 /* qr0 */
/* 804AAB54  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 804AAB58  E3 61 00 D8 */	psq_l f27, 216(r1), 0, 0 /* qr0 */
/* 804AAB5C  CB 61 00 D0 */	lfd f27, 0xd0(r1)
/* 804AAB60  39 61 00 D0 */	addi r11, r1, 0xd0
/* 804AAB64  4B EB 76 A9 */	bl _restgpr_22
/* 804AAB68  80 01 01 24 */	lwz r0, 0x124(r1)
/* 804AAB6C  7C 08 03 A6 */	mtlr r0
/* 804AAB70  38 21 01 20 */	addi r1, r1, 0x120
/* 804AAB74  4E 80 00 20 */	blr 
