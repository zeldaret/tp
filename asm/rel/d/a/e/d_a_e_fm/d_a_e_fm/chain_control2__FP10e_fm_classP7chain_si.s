lbl_804F5990:
/* 804F5990  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 804F5994  7C 08 02 A6 */	mflr r0
/* 804F5998  90 01 01 14 */	stw r0, 0x114(r1)
/* 804F599C  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 804F59A0  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 804F59A4  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 804F59A8  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 804F59AC  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 804F59B0  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 804F59B4  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 804F59B8  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 804F59BC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 804F59C0  4B E6 C8 09 */	bl _savegpr_24
/* 804F59C4  7C 79 1B 78 */	mr r25, r3
/* 804F59C8  7C 98 23 78 */	mr r24, r4
/* 804F59CC  3C 60 80 50 */	lis r3, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F59D0  3B E3 A6 BC */	addi r31, r3, lit_3777@l /* 0x804FA6BC@l */
/* 804F59D4  88 04 61 7C */	lbz r0, 0x617c(r4)
/* 804F59D8  7C 00 07 75 */	extsb. r0, r0
/* 804F59DC  40 82 00 1C */	bne lbl_804F59F8
/* 804F59E0  88 18 61 9C */	lbz r0, 0x619c(r24)
/* 804F59E4  7C 00 07 75 */	extsb. r0, r0
/* 804F59E8  40 82 00 10 */	bne lbl_804F59F8
/* 804F59EC  88 18 61 7E */	lbz r0, 0x617e(r24)
/* 804F59F0  7C 00 07 75 */	extsb. r0, r0
/* 804F59F4  41 82 04 C8 */	beq lbl_804F5EBC
lbl_804F59F8:
/* 804F59F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F59FC  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F5A00  83 DA 5D AC */	lwz r30, 0x5dac(r26)
/* 804F5A04  38 61 00 50 */	addi r3, r1, 0x50
/* 804F5A08  4B B8 1B 75 */	bl __ct__11dBgS_GndChkFv
/* 804F5A0C  88 18 61 7C */	lbz r0, 0x617c(r24)
/* 804F5A10  7C 00 07 75 */	extsb. r0, r0
/* 804F5A14  41 82 01 B8 */	beq lbl_804F5BCC
/* 804F5A18  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 804F5A1C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804F5A20  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 804F5A24  7D 89 03 A6 */	mtctr r12
/* 804F5A28  4E 80 04 21 */	bctrl 
/* 804F5A2C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804F5A30  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804F5A34  80 84 00 00 */	lwz r4, 0(r4)
/* 804F5A38  4B E5 0A 79 */	bl PSMTXCopy
/* 804F5A3C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F5A40  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804F5A44  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804F5A48  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804F5A4C  38 61 00 44 */	addi r3, r1, 0x44
/* 804F5A50  38 81 00 2C */	addi r4, r1, 0x2c
/* 804F5A54  4B D7 B4 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F5A58  C0 3F 02 04 */	lfs f1, 0x204(r31)
/* 804F5A5C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 804F5A60  C0 58 61 74 */	lfs f2, 0x6174(r24)
/* 804F5A64  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804F5A68  EC 01 00 2A */	fadds f0, f1, f0
/* 804F5A6C  FC 00 00 1E */	fctiwz f0, f0
/* 804F5A70  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 804F5A74  80 81 00 AC */	lwz r4, 0xac(r1)
/* 804F5A78  7C 80 07 34 */	extsh r0, r4
/* 804F5A7C  2C 00 F0 60 */	cmpwi r0, -4000
/* 804F5A80  40 81 00 08 */	ble lbl_804F5A88
/* 804F5A84  38 80 F0 60 */	li r4, -4000
lbl_804F5A88:
/* 804F5A88  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 804F5A8C  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 804F5A90  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804F5A94  EF 81 00 2A */	fadds f28, f1, f0
/* 804F5A98  C0 1F 02 08 */	lfs f0, 0x208(r31)
/* 804F5A9C  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 804F5AA0  40 81 00 08 */	ble lbl_804F5AA8
/* 804F5AA4  FF 80 00 90 */	fmr f28, f0
lbl_804F5AA8:
/* 804F5AA8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 804F5AAC  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 804F5AB0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804F5AB4  EF A1 00 2A */	fadds f29, f1, f0
/* 804F5AB8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804F5ABC  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 804F5AC0  40 81 00 08 */	ble lbl_804F5AC8
/* 804F5AC4  FF A0 00 90 */	fmr f29, f0
lbl_804F5AC8:
/* 804F5AC8  38 78 61 9E */	addi r3, r24, 0x619e
/* 804F5ACC  38 A0 00 02 */	li r5, 2
/* 804F5AD0  38 C0 03 E8 */	li r6, 0x3e8
/* 804F5AD4  4B D7 AB 35 */	bl cLib_addCalcAngleS2__FPssss
/* 804F5AD8  38 78 61 A0 */	addi r3, r24, 0x61a0
/* 804F5ADC  FC 20 E0 90 */	fmr f1, f28
/* 804F5AE0  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 804F5AE4  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 804F5AE8  4B D7 9F 55 */	bl cLib_addCalc2__FPffff
/* 804F5AEC  38 78 61 A4 */	addi r3, r24, 0x61a4
/* 804F5AF0  FC 20 E8 90 */	fmr f1, f29
/* 804F5AF4  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 804F5AF8  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 804F5AFC  4B D7 9F 41 */	bl cLib_addCalc2__FPffff
/* 804F5B00  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804F5B04  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804F5B08  80 63 00 00 */	lwz r3, 0(r3)
/* 804F5B0C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804F5B10  4B B1 68 CD */	bl mDoMtx_YrotS__FPA4_fs
/* 804F5B14  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 804F5B18  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804F5B1C  C0 3F 02 14 */	lfs f1, 0x214(r31)
/* 804F5B20  C0 18 61 A0 */	lfs f0, 0x61a0(r24)
/* 804F5B24  EC 21 00 2A */	fadds f1, f1, f0
/* 804F5B28  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 804F5B2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F5B30  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804F5B34  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 804F5B38  C0 18 61 A4 */	lfs f0, 0x61a4(r24)
/* 804F5B3C  EC 21 00 2A */	fadds f1, f1, f0
/* 804F5B40  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 804F5B44  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F5B48  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804F5B4C  38 61 00 44 */	addi r3, r1, 0x44
/* 804F5B50  38 81 00 38 */	addi r4, r1, 0x38
/* 804F5B54  4B D7 B3 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F5B58  38 61 00 20 */	addi r3, r1, 0x20
/* 804F5B5C  38 81 00 2C */	addi r4, r1, 0x2c
/* 804F5B60  38 A1 00 38 */	addi r5, r1, 0x38
/* 804F5B64  4B D7 0F 81 */	bl __pl__4cXyzCFRC3Vec
/* 804F5B68  80 78 61 D0 */	lwz r3, 0x61d0(r24)
/* 804F5B6C  38 03 FF FF */	addi r0, r3, -1
/* 804F5B70  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804F5B74  38 63 00 74 */	addi r3, r3, 0x74
/* 804F5B78  7C 78 1A 14 */	add r3, r24, r3
/* 804F5B7C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804F5B80  D0 03 00 00 */	stfs f0, 0(r3)
/* 804F5B84  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804F5B88  D0 03 00 04 */	stfs f0, 4(r3)
/* 804F5B8C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804F5B90  D0 03 00 08 */	stfs f0, 8(r3)
/* 804F5B94  80 78 61 D0 */	lwz r3, 0x61d0(r24)
/* 804F5B98  38 03 FF FF */	addi r0, r3, -1
/* 804F5B9C  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804F5BA0  38 63 00 74 */	addi r3, r3, 0x74
/* 804F5BA4  7C 78 1A 14 */	add r3, r24, r3
/* 804F5BA8  C0 03 00 00 */	lfs f0, 0(r3)
/* 804F5BAC  D0 18 61 8C */	stfs f0, 0x618c(r24)
/* 804F5BB0  C0 03 00 04 */	lfs f0, 4(r3)
/* 804F5BB4  D0 18 61 90 */	stfs f0, 0x6190(r24)
/* 804F5BB8  C0 03 00 08 */	lfs f0, 8(r3)
/* 804F5BBC  D0 18 61 94 */	stfs f0, 0x6194(r24)
/* 804F5BC0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F5BC4  D0 18 61 98 */	stfs f0, 0x6198(r24)
/* 804F5BC8  48 00 01 2C */	b lbl_804F5CF4
lbl_804F5BCC:
/* 804F5BCC  88 18 61 7E */	lbz r0, 0x617e(r24)
/* 804F5BD0  7C 00 07 75 */	extsb. r0, r0
/* 804F5BD4  41 82 00 88 */	beq lbl_804F5C5C
/* 804F5BD8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804F5BDC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804F5BE0  80 63 00 00 */	lwz r3, 0(r3)
/* 804F5BE4  80 18 61 D0 */	lwz r0, 0x61d0(r24)
/* 804F5BE8  1C 00 00 06 */	mulli r0, r0, 6
/* 804F5BEC  7C 98 02 14 */	add r4, r24, r0
/* 804F5BF0  A8 84 04 12 */	lha r4, 0x412(r4)
/* 804F5BF4  4B B1 67 E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 804F5BF8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F5BFC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804F5C00  C0 1F 02 1C */	lfs f0, 0x21c(r31)
/* 804F5C04  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804F5C08  C0 1F 02 20 */	lfs f0, 0x220(r31)
/* 804F5C0C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804F5C10  38 61 00 44 */	addi r3, r1, 0x44
/* 804F5C14  38 81 00 38 */	addi r4, r1, 0x38
/* 804F5C18  4B D7 B2 D5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F5C1C  38 61 00 14 */	addi r3, r1, 0x14
/* 804F5C20  38 98 61 80 */	addi r4, r24, 0x6180
/* 804F5C24  38 A1 00 38 */	addi r5, r1, 0x38
/* 804F5C28  4B D7 0E BD */	bl __pl__4cXyzCFRC3Vec
/* 804F5C2C  80 78 61 D0 */	lwz r3, 0x61d0(r24)
/* 804F5C30  38 03 FF FF */	addi r0, r3, -1
/* 804F5C34  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804F5C38  38 63 00 74 */	addi r3, r3, 0x74
/* 804F5C3C  7C 78 1A 14 */	add r3, r24, r3
/* 804F5C40  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804F5C44  D0 03 00 00 */	stfs f0, 0(r3)
/* 804F5C48  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804F5C4C  D0 03 00 04 */	stfs f0, 4(r3)
/* 804F5C50  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804F5C54  D0 03 00 08 */	stfs f0, 8(r3)
/* 804F5C58  48 00 00 9C */	b lbl_804F5CF4
lbl_804F5C5C:
/* 804F5C5C  88 78 61 9C */	lbz r3, 0x619c(r24)
/* 804F5C60  7C 60 07 75 */	extsb. r0, r3
/* 804F5C64  41 82 00 90 */	beq lbl_804F5CF4
/* 804F5C68  38 03 FF FF */	addi r0, r3, -1
/* 804F5C6C  98 18 61 9C */	stb r0, 0x619c(r24)
/* 804F5C70  88 18 61 9C */	lbz r0, 0x619c(r24)
/* 804F5C74  7C 00 07 75 */	extsb. r0, r0
/* 804F5C78  40 82 00 10 */	bne lbl_804F5C88
/* 804F5C7C  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020013@ha */
/* 804F5C80  38 63 00 13 */	addi r3, r3, 0x0013 /* 0x00020013@l */
/* 804F5C84  4B C6 98 9D */	bl setPlayerSe__9daPy_py_cFUl
lbl_804F5C88:
/* 804F5C88  C0 38 61 90 */	lfs f1, 0x6190(r24)
/* 804F5C8C  C0 18 61 98 */	lfs f0, 0x6198(r24)
/* 804F5C90  EC 01 00 2A */	fadds f0, f1, f0
/* 804F5C94  D0 18 61 90 */	stfs f0, 0x6190(r24)
/* 804F5C98  C0 38 61 98 */	lfs f1, 0x6198(r24)
/* 804F5C9C  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 804F5CA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F5CA4  D0 18 61 98 */	stfs f0, 0x6198(r24)
/* 804F5CA8  C0 58 61 90 */	lfs f2, 0x6190(r24)
/* 804F5CAC  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 804F5CB0  C0 19 08 E4 */	lfs f0, 0x8e4(r25)
/* 804F5CB4  EC 01 00 2A */	fadds f0, f1, f0
/* 804F5CB8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804F5CBC  4C 40 13 82 */	cror 2, 0, 2
/* 804F5CC0  40 82 00 08 */	bne lbl_804F5CC8
/* 804F5CC4  D0 18 61 90 */	stfs f0, 0x6190(r24)
lbl_804F5CC8:
/* 804F5CC8  80 78 61 D0 */	lwz r3, 0x61d0(r24)
/* 804F5CCC  38 03 FF FF */	addi r0, r3, -1
/* 804F5CD0  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804F5CD4  38 63 00 74 */	addi r3, r3, 0x74
/* 804F5CD8  7C 78 1A 14 */	add r3, r24, r3
/* 804F5CDC  C0 18 61 8C */	lfs f0, 0x618c(r24)
/* 804F5CE0  D0 03 00 00 */	stfs f0, 0(r3)
/* 804F5CE4  C0 18 61 90 */	lfs f0, 0x6190(r24)
/* 804F5CE8  D0 03 00 04 */	stfs f0, 4(r3)
/* 804F5CEC  C0 18 61 94 */	lfs f0, 0x6194(r24)
/* 804F5CF0  D0 03 00 08 */	stfs f0, 8(r3)
lbl_804F5CF4:
/* 804F5CF4  80 78 61 D0 */	lwz r3, 0x61d0(r24)
/* 804F5CF8  38 03 FF FE */	addi r0, r3, -2
/* 804F5CFC  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804F5D00  3B 43 00 74 */	addi r26, r3, 0x74
/* 804F5D04  7F 58 D2 14 */	add r26, r24, r26
/* 804F5D08  1C 60 00 06 */	mulli r3, r0, 6
/* 804F5D0C  3B 23 04 1C */	addi r25, r3, 0x41c
/* 804F5D10  7F 38 CA 14 */	add r25, r24, r25
/* 804F5D14  C3 FF 00 3C */	lfs f31, 0x3c(r31)
/* 804F5D18  D3 E1 00 44 */	stfs f31, 0x44(r1)
/* 804F5D1C  D3 E1 00 48 */	stfs f31, 0x48(r1)
/* 804F5D20  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x804FAEA4@ha */
/* 804F5D24  38 63 AE A4 */	addi r3, r3, l_HIO@l /* 0x804FAEA4@l */
/* 804F5D28  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 804F5D2C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804F5D30  7C 1D 03 78 */	mr r29, r0
/* 804F5D34  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804F5D38  3B E3 07 68 */	addi r31, r3, calc_mtx@l /* 0x80450768@l */
/* 804F5D3C  48 00 01 68 */	b lbl_804F5EA4
lbl_804F5D40:
/* 804F5D40  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F5D44  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 804F5D48  EF C1 00 28 */	fsubs f30, f1, f0
/* 804F5D4C  C0 3A 00 04 */	lfs f1, 4(r26)
/* 804F5D50  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 804F5D54  EF A1 00 28 */	fsubs f29, f1, f0
/* 804F5D58  C0 3A 00 08 */	lfs f1, 8(r26)
/* 804F5D5C  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 804F5D60  EF 81 00 28 */	fsubs f28, f1, f0
/* 804F5D64  FC 20 F0 90 */	fmr f1, f30
/* 804F5D68  FC 40 E0 90 */	fmr f2, f28
/* 804F5D6C  4B D7 19 09 */	bl cM_atan2s__Fff
/* 804F5D70  7C 7B 07 34 */	extsh r27, r3
/* 804F5D74  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 804F5D78  EC 1C 07 32 */	fmuls f0, f28, f28
/* 804F5D7C  EC 41 00 2A */	fadds f2, f1, f0
/* 804F5D80  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 804F5D84  40 81 00 0C */	ble lbl_804F5D90
/* 804F5D88  FC 00 10 34 */	frsqrte f0, f2
/* 804F5D8C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804F5D90:
/* 804F5D90  FC 20 E8 90 */	fmr f1, f29
/* 804F5D94  4B D7 18 E1 */	bl cM_atan2s__Fff
/* 804F5D98  7C 03 00 D0 */	neg r0, r3
/* 804F5D9C  7C 1C 07 34 */	extsh r28, r0
/* 804F5DA0  80 7F 00 00 */	lwz r3, 0(r31)
/* 804F5DA4  7F 64 DB 78 */	mr r4, r27
/* 804F5DA8  4B B1 66 35 */	bl mDoMtx_YrotS__FPA4_fs
/* 804F5DAC  80 7F 00 00 */	lwz r3, 0(r31)
/* 804F5DB0  7F 84 E3 78 */	mr r4, r28
/* 804F5DB4  4B B1 65 E9 */	bl mDoMtx_XrotM__FPA4_fs
/* 804F5DB8  38 61 00 44 */	addi r3, r1, 0x44
/* 804F5DBC  38 81 00 38 */	addi r4, r1, 0x38
/* 804F5DC0  4B D7 B1 2D */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F5DC4  80 78 61 D0 */	lwz r3, 0x61d0(r24)
/* 804F5DC8  38 03 FF FE */	addi r0, r3, -2
/* 804F5DCC  7C 1D 00 00 */	cmpw r29, r0
/* 804F5DD0  40 82 00 38 */	bne lbl_804F5E08
/* 804F5DD4  88 18 61 7C */	lbz r0, 0x617c(r24)
/* 804F5DD8  7C 00 07 75 */	extsb. r0, r0
/* 804F5DDC  40 82 00 10 */	bne lbl_804F5DEC
/* 804F5DE0  88 18 61 9C */	lbz r0, 0x619c(r24)
/* 804F5DE4  7C 00 07 75 */	extsb. r0, r0
/* 804F5DE8  41 82 00 20 */	beq lbl_804F5E08
lbl_804F5DEC:
/* 804F5DEC  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 804F5DF0  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804F5DF4  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 804F5DF8  D0 1A 00 04 */	stfs f0, 4(r26)
/* 804F5DFC  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 804F5E00  D0 1A 00 08 */	stfs f0, 8(r26)
/* 804F5E04  48 00 00 2C */	b lbl_804F5E30
lbl_804F5E08:
/* 804F5E08  38 61 00 08 */	addi r3, r1, 8
/* 804F5E0C  38 9A 00 0C */	addi r4, r26, 0xc
/* 804F5E10  38 A1 00 38 */	addi r5, r1, 0x38
/* 804F5E14  4B D7 0C D1 */	bl __pl__4cXyzCFRC3Vec
/* 804F5E18  C0 01 00 08 */	lfs f0, 8(r1)
/* 804F5E1C  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804F5E20  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804F5E24  D0 1A 00 04 */	stfs f0, 4(r26)
/* 804F5E28  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804F5E2C  D0 1A 00 08 */	stfs f0, 8(r26)
lbl_804F5E30:
/* 804F5E30  88 18 61 7C */	lbz r0, 0x617c(r24)
/* 804F5E34  7C 00 07 75 */	extsb. r0, r0
/* 804F5E38  41 82 00 4C */	beq lbl_804F5E84
/* 804F5E3C  80 78 61 D0 */	lwz r3, 0x61d0(r24)
/* 804F5E40  38 03 FF FE */	addi r0, r3, -2
/* 804F5E44  7C 1D 00 00 */	cmpw r29, r0
/* 804F5E48  40 82 00 3C */	bne lbl_804F5E84
/* 804F5E4C  38 79 00 02 */	addi r3, r25, 2
/* 804F5E50  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804F5E54  3C 84 00 01 */	addis r4, r4, 1
/* 804F5E58  38 04 80 00 */	addi r0, r4, -32768
/* 804F5E5C  7C 04 07 34 */	extsh r4, r0
/* 804F5E60  38 A0 00 02 */	li r5, 2
/* 804F5E64  38 C0 20 00 */	li r6, 0x2000
/* 804F5E68  4B D7 A7 A1 */	bl cLib_addCalcAngleS2__FPssss
/* 804F5E6C  7F 23 CB 78 */	mr r3, r25
/* 804F5E70  A8 98 61 9E */	lha r4, 0x619e(r24)
/* 804F5E74  38 A0 00 02 */	li r5, 2
/* 804F5E78  38 C0 20 00 */	li r6, 0x2000
/* 804F5E7C  4B D7 A7 8D */	bl cLib_addCalcAngleS2__FPssss
/* 804F5E80  48 00 00 18 */	b lbl_804F5E98
lbl_804F5E84:
/* 804F5E84  7C 1C 00 D0 */	neg r0, r28
/* 804F5E88  B0 19 00 00 */	sth r0, 0(r25)
/* 804F5E8C  3C 7B 00 01 */	addis r3, r27, 1
/* 804F5E90  38 03 80 00 */	addi r0, r3, -32768
/* 804F5E94  B0 19 00 02 */	sth r0, 2(r25)
lbl_804F5E98:
/* 804F5E98  3B BD FF FF */	addi r29, r29, -1
/* 804F5E9C  3B 5A FF F4 */	addi r26, r26, -12
/* 804F5EA0  3B 39 FF FA */	addi r25, r25, -6
lbl_804F5EA4:
/* 804F5EA4  80 18 61 70 */	lwz r0, 0x6170(r24)
/* 804F5EA8  7C 1D 00 00 */	cmpw r29, r0
/* 804F5EAC  40 80 FE 94 */	bge lbl_804F5D40
/* 804F5EB0  38 61 00 50 */	addi r3, r1, 0x50
/* 804F5EB4  38 80 FF FF */	li r4, -1
/* 804F5EB8  4B B8 17 39 */	bl __dt__11dBgS_GndChkFv
lbl_804F5EBC:
/* 804F5EBC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 804F5EC0  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 804F5EC4  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 804F5EC8  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 804F5ECC  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 804F5ED0  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 804F5ED4  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 804F5ED8  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 804F5EDC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 804F5EE0  4B E6 C3 35 */	bl _restgpr_24
/* 804F5EE4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 804F5EE8  7C 08 03 A6 */	mtlr r0
/* 804F5EEC  38 21 01 10 */	addi r1, r1, 0x110
/* 804F5EF0  4E 80 00 20 */	blr 
