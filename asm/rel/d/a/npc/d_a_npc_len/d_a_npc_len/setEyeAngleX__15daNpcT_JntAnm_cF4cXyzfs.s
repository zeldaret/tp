lbl_80A688EC:
/* 80A688EC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A688F0  7C 08 02 A6 */	mflr r0
/* 80A688F4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A688F8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A688FC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A68900  39 61 00 60 */	addi r11, r1, 0x60
/* 80A68904  4B 8F 98 D9 */	bl _savegpr_29
/* 80A68908  7C 7F 1B 78 */	mr r31, r3
/* 80A6890C  7C 80 23 78 */	mr r0, r4
/* 80A68910  FF E0 08 90 */	fmr f31, f1
/* 80A68914  7C BD 2B 78 */	mr r29, r5
/* 80A68918  3C 60 80 A7 */	lis r3, m__17daNpc_Len_Param_c@ha /* 0x80A68EA4@ha */
/* 80A6891C  3B C3 8E A4 */	addi r30, r3, m__17daNpc_Len_Param_c@l /* 0x80A68EA4@l */
/* 80A68920  38 A0 00 00 */	li r5, 0
/* 80A68924  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80A68928  28 04 00 00 */	cmplwi r4, 0
/* 80A6892C  41 82 01 40 */	beq lbl_80A68A6C
/* 80A68930  38 61 00 18 */	addi r3, r1, 0x18
/* 80A68934  7C 05 03 78 */	mr r5, r0
/* 80A68938  4B 7F E1 FD */	bl __mi__4cXyzCFRC3Vec
/* 80A6893C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A68940  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A68944  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A68948  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A6894C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80A68950  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A68954  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80A68958  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80A6895C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A68960  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A68964  38 61 00 0C */	addi r3, r1, 0xc
/* 80A68968  4B 8D E7 D1 */	bl PSVECSquareMag
/* 80A6896C  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80A68970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A68974  40 81 00 58 */	ble lbl_80A689CC
/* 80A68978  FC 00 08 34 */	frsqrte f0, f1
/* 80A6897C  C8 9E 01 10 */	lfd f4, 0x110(r30)
/* 80A68980  FC 44 00 32 */	fmul f2, f4, f0
/* 80A68984  C8 7E 01 18 */	lfd f3, 0x118(r30)
/* 80A68988  FC 00 00 32 */	fmul f0, f0, f0
/* 80A6898C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A68990  FC 03 00 28 */	fsub f0, f3, f0
/* 80A68994  FC 02 00 32 */	fmul f0, f2, f0
/* 80A68998  FC 44 00 32 */	fmul f2, f4, f0
/* 80A6899C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A689A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A689A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A689A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A689AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A689B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A689B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A689B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A689BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A689C0  FC 41 00 32 */	fmul f2, f1, f0
/* 80A689C4  FC 40 10 18 */	frsp f2, f2
/* 80A689C8  48 00 00 90 */	b lbl_80A68A58
lbl_80A689CC:
/* 80A689CC  C8 1E 01 20 */	lfd f0, 0x120(r30)
/* 80A689D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A689D4  40 80 00 10 */	bge lbl_80A689E4
/* 80A689D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A689DC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A689E0  48 00 00 78 */	b lbl_80A68A58
lbl_80A689E4:
/* 80A689E4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A689E8  80 81 00 08 */	lwz r4, 8(r1)
/* 80A689EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A689F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A689F4  7C 03 00 00 */	cmpw r3, r0
/* 80A689F8  41 82 00 14 */	beq lbl_80A68A0C
/* 80A689FC  40 80 00 40 */	bge lbl_80A68A3C
/* 80A68A00  2C 03 00 00 */	cmpwi r3, 0
/* 80A68A04  41 82 00 20 */	beq lbl_80A68A24
/* 80A68A08  48 00 00 34 */	b lbl_80A68A3C
lbl_80A68A0C:
/* 80A68A0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A68A10  41 82 00 0C */	beq lbl_80A68A1C
/* 80A68A14  38 00 00 01 */	li r0, 1
/* 80A68A18  48 00 00 28 */	b lbl_80A68A40
lbl_80A68A1C:
/* 80A68A1C  38 00 00 02 */	li r0, 2
/* 80A68A20  48 00 00 20 */	b lbl_80A68A40
lbl_80A68A24:
/* 80A68A24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A68A28  41 82 00 0C */	beq lbl_80A68A34
/* 80A68A2C  38 00 00 05 */	li r0, 5
/* 80A68A30  48 00 00 10 */	b lbl_80A68A40
lbl_80A68A34:
/* 80A68A34  38 00 00 03 */	li r0, 3
/* 80A68A38  48 00 00 08 */	b lbl_80A68A40
lbl_80A68A3C:
/* 80A68A3C  38 00 00 04 */	li r0, 4
lbl_80A68A40:
/* 80A68A40  2C 00 00 01 */	cmpwi r0, 1
/* 80A68A44  40 82 00 10 */	bne lbl_80A68A54
/* 80A68A48  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A68A4C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A68A50  48 00 00 08 */	b lbl_80A68A58
lbl_80A68A54:
/* 80A68A54  FC 40 08 90 */	fmr f2, f1
lbl_80A68A58:
/* 80A68A58  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A68A5C  4B 7F EC 19 */	bl cM_atan2s__Fff
/* 80A68A60  7C 03 00 D0 */	neg r0, r3
/* 80A68A64  7C 05 07 34 */	extsh r5, r0
/* 80A68A68  7C A5 EA 14 */	add r5, r5, r29
lbl_80A68A6C:
/* 80A68A6C  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80A68A70  7C A5 02 14 */	add r5, r5, r0
/* 80A68A74  C0 7E 00 DC */	lfs f3, 0xdc(r30)
/* 80A68A78  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A68A7C  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80A68A80  C8 5E 00 E8 */	lfd f2, 0xe8(r30)
/* 80A68A84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A68A88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A68A8C  3C 60 43 30 */	lis r3, 0x4330
/* 80A68A90  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A68A94  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A68A98  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A68A9C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A68AA0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A68AA4  7C A0 07 34 */	extsh r0, r5
/* 80A68AA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A68AAC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A68AB0  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A68AB4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A68AB8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A68ABC  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A68AC0  EC 01 00 2A */	fadds f0, f1, f0
/* 80A68AC4  FC 00 00 1E */	fctiwz f0, f0
/* 80A68AC8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A68ACC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A68AD0  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80A68AD4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A68AD8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A68ADC  39 61 00 60 */	addi r11, r1, 0x60
/* 80A68AE0  4B 8F 97 49 */	bl _restgpr_29
/* 80A68AE4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A68AE8  7C 08 03 A6 */	mtlr r0
/* 80A68AEC  38 21 00 70 */	addi r1, r1, 0x70
/* 80A68AF0  4E 80 00 20 */	blr 
