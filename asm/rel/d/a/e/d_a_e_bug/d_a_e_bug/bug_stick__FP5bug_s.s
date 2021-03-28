lbl_806958E8:
/* 806958E8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806958EC  7C 08 02 A6 */	mflr r0
/* 806958F0  90 01 00 74 */	stw r0, 0x74(r1)
/* 806958F4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 806958F8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 806958FC  39 61 00 60 */	addi r11, r1, 0x60
/* 80695900  4B CC C8 DC */	b _savegpr_29
/* 80695904  7C 7D 1B 78 */	mr r29, r3
/* 80695908  3C 60 80 69 */	lis r3, lit_3829@ha
/* 8069590C  3B C3 7C A0 */	addi r30, r3, lit_3829@l
/* 80695910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80695914  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80695918  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8069591C  38 80 00 01 */	li r4, 1
/* 80695920  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80695924  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80695928  7D 89 03 A6 */	mtctr r12
/* 8069592C  4E 80 04 21 */	bctrl 
/* 80695930  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80695934  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80695938  80 84 00 00 */	lwz r4, 0(r4)
/* 8069593C  4B CB 0B 74 */	b PSMTXCopy
/* 80695940  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80695944  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80695948  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8069594C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80695950  38 61 00 30 */	addi r3, r1, 0x30
/* 80695954  38 81 00 18 */	addi r4, r1, 0x18
/* 80695958  4B BD B5 94 */	b MtxPosition__FP4cXyzP4cXyz
/* 8069595C  88 1D 00 52 */	lbz r0, 0x52(r29)
/* 80695960  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80695964  40 82 00 94 */	bne lbl_806959F8
/* 80695968  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8069596C  4B BD 1F E8 */	b cM_rndF__Ff
/* 80695970  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80695974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80695978  40 80 00 28 */	bge lbl_806959A0
/* 8069597C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80695980  4B BD 1F D4 */	b cM_rndF__Ff
/* 80695984  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80695988  EC 00 08 2A */	fadds f0, f0, f1
/* 8069598C  FC 00 00 1E */	fctiwz f0, f0
/* 80695990  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80695994  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80695998  B0 1D 00 4A */	sth r0, 0x4a(r29)
/* 8069599C  48 00 00 28 */	b lbl_806959C4
lbl_806959A0:
/* 806959A0  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 806959A4  4B BD 1F B0 */	b cM_rndF__Ff
/* 806959A8  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 806959AC  EC 00 08 2A */	fadds f0, f0, f1
/* 806959B0  FC 00 00 50 */	fneg f0, f0
/* 806959B4  FC 00 00 1E */	fctiwz f0, f0
/* 806959B8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806959BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806959C0  B0 1D 00 4A */	sth r0, 0x4a(r29)
lbl_806959C4:
/* 806959C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806959C8  4B BD 1F 8C */	b cM_rndF__Ff
/* 806959CC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806959D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806959D4  40 80 00 24 */	bge lbl_806959F8
/* 806959D8  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 806959DC  4B BD 1F 78 */	b cM_rndF__Ff
/* 806959E0  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 806959E4  EC 00 08 2A */	fadds f0, f0, f1
/* 806959E8  FC 00 00 1E */	fctiwz f0, f0
/* 806959EC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806959F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806959F4  B0 1D 00 4E */	sth r0, 0x4e(r29)
lbl_806959F8:
/* 806959F8  A8 7D 00 48 */	lha r3, 0x48(r29)
/* 806959FC  A8 1D 00 4A */	lha r0, 0x4a(r29)
/* 80695A00  7C 03 02 14 */	add r0, r3, r0
/* 80695A04  B0 1D 00 48 */	sth r0, 0x48(r29)
/* 80695A08  A8 7D 00 4C */	lha r3, 0x4c(r29)
/* 80695A0C  A8 1D 00 4E */	lha r0, 0x4e(r29)
/* 80695A10  7C 03 02 14 */	add r0, r3, r0
/* 80695A14  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 80695A18  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 80695A1C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80695A20  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80695A24  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80695A28  7F E3 04 2E */	lfsx f31, r3, r0
/* 80695A2C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80695A30  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80695A34  80 63 00 00 */	lwz r3, 0(r3)
/* 80695A38  A8 9D 00 48 */	lha r4, 0x48(r29)
/* 80695A3C  4B 97 69 A0 */	b mDoMtx_YrotS__FPA4_fs
/* 80695A40  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80695A44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80695A48  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80695A4C  EC 60 07 F2 */	fmuls f3, f0, f31
/* 80695A50  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80695A54  FC 00 FA 10 */	fabs f0, f31
/* 80695A58  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 80695A5C  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80695A60  FC 00 00 18 */	frsp f0, f0
/* 80695A64  EC 01 00 32 */	fmuls f0, f1, f0
/* 80695A68  EC 22 00 2A */	fadds f1, f2, f0
/* 80695A6C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80695A70  FC 00 1A 10 */	fabs f0, f3
/* 80695A74  FC 40 00 18 */	frsp f2, f0
/* 80695A78  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80695A7C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80695A80  40 81 00 10 */	ble lbl_80695A90
/* 80695A84  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80695A88  EC 01 00 32 */	fmuls f0, f1, f0
/* 80695A8C  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_80695A90:
/* 80695A90  38 61 00 30 */	addi r3, r1, 0x30
/* 80695A94  38 81 00 24 */	addi r4, r1, 0x24
/* 80695A98  4B BD B4 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 80695A9C  38 61 00 0C */	addi r3, r1, 0xc
/* 80695AA0  38 81 00 18 */	addi r4, r1, 0x18
/* 80695AA4  38 A1 00 24 */	addi r5, r1, 0x24
/* 80695AA8  4B BD 10 3C */	b __pl__4cXyzCFRC3Vec
/* 80695AAC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80695AB0  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80695AB4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80695AB8  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80695ABC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80695AC0  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80695AC4  A8 7D 00 48 */	lha r3, 0x48(r29)
/* 80695AC8  3C 63 00 01 */	addis r3, r3, 1
/* 80695ACC  38 03 80 00 */	addi r0, r3, -32768
/* 80695AD0  B0 1D 00 3E */	sth r0, 0x3e(r29)
/* 80695AD4  88 1D 00 52 */	lbz r0, 0x52(r29)
/* 80695AD8  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80695ADC  40 82 00 E8 */	bne lbl_80695BC4
/* 80695AE0  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 80695AE4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80695AE8  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 80695AEC  7D 89 03 A6 */	mtctr r12
/* 80695AF0  4E 80 04 21 */	bctrl 
/* 80695AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80695AF8  40 82 00 48 */	bne lbl_80695B40
/* 80695AFC  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 80695B00  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80695B04  81 8C 02 78 */	lwz r12, 0x278(r12)
/* 80695B08  7D 89 03 A6 */	mtctr r12
/* 80695B0C  4E 80 04 21 */	bctrl 
/* 80695B10  2C 03 00 00 */	cmpwi r3, 0
/* 80695B14  40 82 00 2C */	bne lbl_80695B40
/* 80695B18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80695B1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80695B20  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80695B24  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80695B28  28 00 00 03 */	cmplwi r0, 3
/* 80695B2C  41 82 00 14 */	beq lbl_80695B40
/* 80695B30  3C 60 80 69 */	lis r3, data_80697EAC@ha
/* 80695B34  88 03 7E AC */	lbz r0, data_80697EAC@l(r3)
/* 80695B38  7C 00 07 75 */	extsb. r0, r0
/* 80695B3C  41 82 00 88 */	beq lbl_80695BC4
lbl_80695B40:
/* 80695B40  38 00 00 01 */	li r0, 1
/* 80695B44  98 1D 00 50 */	stb r0, 0x50(r29)
/* 80695B48  A8 1D 00 48 */	lha r0, 0x48(r29)
/* 80695B4C  B0 1D 00 3E */	sth r0, 0x3e(r29)
/* 80695B50  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80695B54  4B BD 1E 00 */	b cM_rndF__Ff
/* 80695B58  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80695B5C  EC 00 08 2A */	fadds f0, f0, f1
/* 80695B60  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 80695B64  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80695B68  4B BD 1D EC */	b cM_rndF__Ff
/* 80695B6C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80695B70  EC 00 08 2A */	fadds f0, f0, f1
/* 80695B74  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80695B78  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070379@ha */
/* 80695B7C  38 03 03 79 */	addi r0, r3, 0x0379 /* 0x00070379@l */
/* 80695B80  90 01 00 08 */	stw r0, 8(r1)
/* 80695B84  38 7D 00 58 */	addi r3, r29, 0x58
/* 80695B88  38 81 00 08 */	addi r4, r1, 8
/* 80695B8C  38 A0 00 00 */	li r5, 0
/* 80695B90  38 C0 FF FF */	li r6, -1
/* 80695B94  81 9D 00 68 */	lwz r12, 0x68(r29)
/* 80695B98  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80695B9C  7D 89 03 A6 */	mtctr r12
/* 80695BA0  4E 80 04 21 */	bctrl 
/* 80695BA4  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 80695BA8  4B BD 1D AC */	b cM_rndF__Ff
/* 80695BAC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80695BB0  EC 00 08 2A */	fadds f0, f0, f1
/* 80695BB4  FC 00 00 1E */	fctiwz f0, f0
/* 80695BB8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80695BBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80695BC0  98 1D 00 56 */	stb r0, 0x56(r29)
lbl_80695BC4:
/* 80695BC4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80695BC8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80695BCC  39 61 00 60 */	addi r11, r1, 0x60
/* 80695BD0  4B CC C6 58 */	b _restgpr_29
/* 80695BD4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80695BD8  7C 08 03 A6 */	mtlr r0
/* 80695BDC  38 21 00 70 */	addi r1, r1, 0x70
/* 80695BE0  4E 80 00 20 */	blr 
