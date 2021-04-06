lbl_8067C874:
/* 8067C874  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8067C878  7C 08 02 A6 */	mflr r0
/* 8067C87C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8067C880  39 61 00 70 */	addi r11, r1, 0x70
/* 8067C884  4B CE 59 3D */	bl _savegpr_22
/* 8067C888  7C 78 1B 78 */	mr r24, r3
/* 8067C88C  3C 60 80 68 */	lis r3, lit_3983@ha /* 0x8067E880@ha */
/* 8067C890  3B 83 E8 80 */	addi r28, r3, lit_3983@l /* 0x8067E880@l */
/* 8067C894  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8067C898  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8067C89C  80 63 00 00 */	lwz r3, 0(r3)
/* 8067C8A0  A8 98 04 E6 */	lha r4, 0x4e6(r24)
/* 8067C8A4  4B 98 FB 39 */	bl mDoMtx_YrotS__FPA4_fs
/* 8067C8A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8067C8AC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8067C8B0  80 63 00 00 */	lwz r3, 0(r3)
/* 8067C8B4  A8 98 04 E4 */	lha r4, 0x4e4(r24)
/* 8067C8B8  4B 98 FA E5 */	bl mDoMtx_XrotM__FPA4_fs
/* 8067C8BC  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8067C8C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8067C8C4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8067C8C8  A8 18 05 C2 */	lha r0, 0x5c2(r24)
/* 8067C8CC  2C 00 00 05 */	cmpwi r0, 5
/* 8067C8D0  40 82 00 10 */	bne lbl_8067C8E0
/* 8067C8D4  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 8067C8D8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8067C8DC  48 00 00 0C */	b lbl_8067C8E8
lbl_8067C8E0:
/* 8067C8E0  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 8067C8E4  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_8067C8E8:
/* 8067C8E8  38 61 00 34 */	addi r3, r1, 0x34
/* 8067C8EC  38 81 00 28 */	addi r4, r1, 0x28
/* 8067C8F0  4B BF 45 FD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8067C8F4  38 61 00 28 */	addi r3, r1, 0x28
/* 8067C8F8  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 8067C8FC  7C 65 1B 78 */	mr r5, r3
/* 8067C900  4B CC A7 91 */	bl PSVECAdd
/* 8067C904  88 18 05 B8 */	lbz r0, 0x5b8(r24)
/* 8067C908  28 00 00 02 */	cmplwi r0, 2
/* 8067C90C  40 82 00 20 */	bne lbl_8067C92C
/* 8067C910  3B 40 00 02 */	li r26, 2
/* 8067C914  3C 60 00 01 */	lis r3, 0x0001 /* 0x000086A5@ha */
/* 8067C918  38 03 86 A5 */	addi r0, r3, 0x86A5 /* 0x000086A5@l */
/* 8067C91C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8067C920  38 03 86 A6 */	addi r0, r3, -31066
/* 8067C924  B0 01 00 26 */	sth r0, 0x26(r1)
/* 8067C928  48 00 00 14 */	b lbl_8067C93C
lbl_8067C92C:
/* 8067C92C  3B 40 00 01 */	li r26, 1
/* 8067C930  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008113@ha */
/* 8067C934  38 03 81 13 */	addi r0, r3, 0x8113 /* 0x00008113@l */
/* 8067C938  B0 01 00 24 */	sth r0, 0x24(r1)
lbl_8067C93C:
/* 8067C93C  C0 38 04 F8 */	lfs f1, 0x4f8(r24)
/* 8067C940  C0 18 05 D0 */	lfs f0, 0x5d0(r24)
/* 8067C944  EC 01 00 2A */	fadds f0, f1, f0
/* 8067C948  D0 18 05 D8 */	stfs f0, 0x5d8(r24)
/* 8067C94C  C0 18 04 FC */	lfs f0, 0x4fc(r24)
/* 8067C950  D0 18 05 DC */	stfs f0, 0x5dc(r24)
/* 8067C954  C0 38 05 00 */	lfs f1, 0x500(r24)
/* 8067C958  C0 18 05 D4 */	lfs f0, 0x5d4(r24)
/* 8067C95C  EC 01 00 2A */	fadds f0, f1, f0
/* 8067C960  D0 18 05 E0 */	stfs f0, 0x5e0(r24)
/* 8067C964  88 18 05 B8 */	lbz r0, 0x5b8(r24)
/* 8067C968  28 00 00 01 */	cmplwi r0, 1
/* 8067C96C  40 82 00 18 */	bne lbl_8067C984
/* 8067C970  38 78 05 D8 */	addi r3, r24, 0x5d8
/* 8067C974  7C 64 1B 78 */	mr r4, r3
/* 8067C978  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 8067C97C  4B CC A7 5D */	bl PSVECScale
/* 8067C980  48 00 00 14 */	b lbl_8067C994
lbl_8067C984:
/* 8067C984  38 78 05 D8 */	addi r3, r24, 0x5d8
/* 8067C988  7C 64 1B 78 */	mr r4, r3
/* 8067C98C  C0 3C 00 1C */	lfs f1, 0x1c(r28)
/* 8067C990  4B CC A7 49 */	bl PSVECScale
lbl_8067C994:
/* 8067C994  3B 20 00 00 */	li r25, 0
/* 8067C998  3A E0 00 00 */	li r23, 0
/* 8067C99C  3A C0 00 00 */	li r22, 0
/* 8067C9A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067C9A4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067C9A8  3B 78 05 D8 */	addi r27, r24, 0x5d8
/* 8067C9AC  3B C1 00 24 */	addi r30, r1, 0x24
/* 8067C9B0  48 00 01 98 */	b lbl_8067CB48
lbl_8067C9B4:
/* 8067C9B4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8067C9B8  38 00 00 FF */	li r0, 0xff
/* 8067C9BC  90 01 00 08 */	stw r0, 8(r1)
/* 8067C9C0  38 80 00 00 */	li r4, 0
/* 8067C9C4  90 81 00 0C */	stw r4, 0xc(r1)
/* 8067C9C8  38 00 FF FF */	li r0, -1
/* 8067C9CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8067C9D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8067C9D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8067C9D8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8067C9DC  3B F6 09 E4 */	addi r31, r22, 0x9e4
/* 8067C9E0  7C 98 F8 2E */	lwzx r4, r24, r31
/* 8067C9E4  38 A0 00 00 */	li r5, 0
/* 8067C9E8  7C DE BA 2E */	lhzx r6, r30, r23
/* 8067C9EC  38 E1 00 28 */	addi r7, r1, 0x28
/* 8067C9F0  39 00 00 00 */	li r8, 0
/* 8067C9F4  39 38 04 E4 */	addi r9, r24, 0x4e4
/* 8067C9F8  39 40 00 00 */	li r10, 0
/* 8067C9FC  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 8067CA00  4B 9D 0A CD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8067CA04  7C 78 F9 2E */	stwx r3, r24, r31
/* 8067CA08  2C 19 00 00 */	cmpwi r25, 0
/* 8067CA0C  40 82 01 30 */	bne lbl_8067CB3C
/* 8067CA10  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8067CA14  38 63 02 10 */	addi r3, r3, 0x210
/* 8067CA18  7C 98 F8 2E */	lwzx r4, r24, r31
/* 8067CA1C  4B 9C EE FD */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8067CA20  7C 7F 1B 79 */	or. r31, r3, r3
/* 8067CA24  41 82 01 18 */	beq lbl_8067CB3C
/* 8067CA28  38 78 05 D8 */	addi r3, r24, 0x5d8
/* 8067CA2C  4B CC A7 0D */	bl PSVECSquareMag
/* 8067CA30  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8067CA34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067CA38  40 81 00 58 */	ble lbl_8067CA90
/* 8067CA3C  FC 00 08 34 */	frsqrte f0, f1
/* 8067CA40  C8 9C 00 28 */	lfd f4, 0x28(r28)
/* 8067CA44  FC 44 00 32 */	fmul f2, f4, f0
/* 8067CA48  C8 7C 00 30 */	lfd f3, 0x30(r28)
/* 8067CA4C  FC 00 00 32 */	fmul f0, f0, f0
/* 8067CA50  FC 01 00 32 */	fmul f0, f1, f0
/* 8067CA54  FC 03 00 28 */	fsub f0, f3, f0
/* 8067CA58  FC 02 00 32 */	fmul f0, f2, f0
/* 8067CA5C  FC 44 00 32 */	fmul f2, f4, f0
/* 8067CA60  FC 00 00 32 */	fmul f0, f0, f0
/* 8067CA64  FC 01 00 32 */	fmul f0, f1, f0
/* 8067CA68  FC 03 00 28 */	fsub f0, f3, f0
/* 8067CA6C  FC 02 00 32 */	fmul f0, f2, f0
/* 8067CA70  FC 44 00 32 */	fmul f2, f4, f0
/* 8067CA74  FC 00 00 32 */	fmul f0, f0, f0
/* 8067CA78  FC 01 00 32 */	fmul f0, f1, f0
/* 8067CA7C  FC 03 00 28 */	fsub f0, f3, f0
/* 8067CA80  FC 02 00 32 */	fmul f0, f2, f0
/* 8067CA84  FC 21 00 32 */	fmul f1, f1, f0
/* 8067CA88  FC 20 08 18 */	frsp f1, f1
/* 8067CA8C  48 00 00 88 */	b lbl_8067CB14
lbl_8067CA90:
/* 8067CA90  C8 1C 00 38 */	lfd f0, 0x38(r28)
/* 8067CA94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067CA98  40 80 00 10 */	bge lbl_8067CAA8
/* 8067CA9C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8067CAA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8067CAA4  48 00 00 70 */	b lbl_8067CB14
lbl_8067CAA8:
/* 8067CAA8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8067CAAC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8067CAB0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8067CAB4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8067CAB8  7C 03 00 00 */	cmpw r3, r0
/* 8067CABC  41 82 00 14 */	beq lbl_8067CAD0
/* 8067CAC0  40 80 00 40 */	bge lbl_8067CB00
/* 8067CAC4  2C 03 00 00 */	cmpwi r3, 0
/* 8067CAC8  41 82 00 20 */	beq lbl_8067CAE8
/* 8067CACC  48 00 00 34 */	b lbl_8067CB00
lbl_8067CAD0:
/* 8067CAD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8067CAD4  41 82 00 0C */	beq lbl_8067CAE0
/* 8067CAD8  38 00 00 01 */	li r0, 1
/* 8067CADC  48 00 00 28 */	b lbl_8067CB04
lbl_8067CAE0:
/* 8067CAE0  38 00 00 02 */	li r0, 2
/* 8067CAE4  48 00 00 20 */	b lbl_8067CB04
lbl_8067CAE8:
/* 8067CAE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8067CAEC  41 82 00 0C */	beq lbl_8067CAF8
/* 8067CAF0  38 00 00 05 */	li r0, 5
/* 8067CAF4  48 00 00 10 */	b lbl_8067CB04
lbl_8067CAF8:
/* 8067CAF8  38 00 00 03 */	li r0, 3
/* 8067CAFC  48 00 00 08 */	b lbl_8067CB04
lbl_8067CB00:
/* 8067CB00  38 00 00 04 */	li r0, 4
lbl_8067CB04:
/* 8067CB04  2C 00 00 01 */	cmpwi r0, 1
/* 8067CB08  40 82 00 0C */	bne lbl_8067CB14
/* 8067CB0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8067CB10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8067CB14:
/* 8067CB14  C0 1C 00 20 */	lfs f0, 0x20(r28)
/* 8067CB18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067CB1C  40 81 00 18 */	ble lbl_8067CB34
/* 8067CB20  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 8067CB24  38 03 0E C8 */	addi r0, r3, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
/* 8067CB28  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 8067CB2C  93 7F 00 C0 */	stw r27, 0xc0(r31)
/* 8067CB30  48 00 00 0C */	b lbl_8067CB3C
lbl_8067CB34:
/* 8067CB34  38 00 00 00 */	li r0, 0
/* 8067CB38  90 1F 00 F0 */	stw r0, 0xf0(r31)
lbl_8067CB3C:
/* 8067CB3C  3B 39 00 01 */	addi r25, r25, 1
/* 8067CB40  3A F7 00 02 */	addi r23, r23, 2
/* 8067CB44  3A D6 00 04 */	addi r22, r22, 4
lbl_8067CB48:
/* 8067CB48  7C 19 D0 00 */	cmpw r25, r26
/* 8067CB4C  41 80 FE 68 */	blt lbl_8067C9B4
/* 8067CB50  39 61 00 70 */	addi r11, r1, 0x70
/* 8067CB54  4B CE 56 B9 */	bl _restgpr_22
/* 8067CB58  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8067CB5C  7C 08 03 A6 */	mtlr r0
/* 8067CB60  38 21 00 70 */	addi r1, r1, 0x70
/* 8067CB64  4E 80 00 20 */	blr 
