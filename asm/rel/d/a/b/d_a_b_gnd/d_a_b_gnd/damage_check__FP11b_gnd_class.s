lbl_805F98F8:
/* 805F98F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805F98FC  7C 08 02 A6 */	mflr r0
/* 805F9900  90 01 00 64 */	stw r0, 0x64(r1)
/* 805F9904  39 61 00 60 */	addi r11, r1, 0x60
/* 805F9908  4B D6 88 BC */	b _savegpr_23
/* 805F990C  7C 7C 1B 78 */	mr r28, r3
/* 805F9910  3C 60 80 60 */	lis r3, lit_3815@ha
/* 805F9914  3B A3 26 64 */	addi r29, r3, lit_3815@l
/* 805F9918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F991C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 805F9920  83 7E 5D AC */	lwz r27, 0x5dac(r30)
/* 805F9924  38 7C 16 70 */	addi r3, r28, 0x1670
/* 805F9928  4B A8 9F 08 */	b Move__10dCcD_GSttsFv
/* 805F992C  88 7C 1E 09 */	lbz r3, 0x1e09(r28)
/* 805F9930  28 03 00 00 */	cmplwi r3, 0
/* 805F9934  41 82 00 0C */	beq lbl_805F9940
/* 805F9938  38 03 FF FF */	addi r0, r3, -1
/* 805F993C  98 1C 1E 09 */	stb r0, 0x1e09(r28)
lbl_805F9940:
/* 805F9940  A8 1C 0C 58 */	lha r0, 0xc58(r28)
/* 805F9944  2C 00 00 00 */	cmpwi r0, 0
/* 805F9948  40 82 02 84 */	bne lbl_805F9BCC
/* 805F994C  80 1C 1F B4 */	lwz r0, 0x1fb4(r28)
/* 805F9950  90 01 00 08 */	stw r0, 8(r1)
/* 805F9954  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805F9958  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805F995C  38 81 00 08 */	addi r4, r1, 8
/* 805F9960  4B A1 FE 98 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805F9964  7C 7F 1B 78 */	mr r31, r3
/* 805F9968  3B 40 00 00 */	li r26, 0
/* 805F996C  3A E0 00 00 */	li r23, 0
/* 805F9970  3B 20 00 00 */	li r25, 0
lbl_805F9974:
/* 805F9974  3B 19 16 90 */	addi r24, r25, 0x1690
/* 805F9978  7F 1C C2 14 */	add r24, r28, r24
/* 805F997C  7F 03 C3 78 */	mr r3, r24
/* 805F9980  4B A8 AA E0 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805F9984  28 03 00 00 */	cmplwi r3, 0
/* 805F9988  41 82 02 34 */	beq lbl_805F9BBC
/* 805F998C  7F 03 C3 78 */	mr r3, r24
/* 805F9990  4B A8 AB 68 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805F9994  90 7C 1D E4 */	stw r3, 0x1de4(r28)
/* 805F9998  7F 83 E3 78 */	mr r3, r28
/* 805F999C  38 9C 1D E4 */	addi r4, r28, 0x1de4
/* 805F99A0  4B A8 E2 64 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 805F99A4  80 7C 1D E4 */	lwz r3, 0x1de4(r28)
/* 805F99A8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805F99AC  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 805F99B0  41 82 00 44 */	beq lbl_805F99F4
/* 805F99B4  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 805F99B8  D0 1F 39 5C */	stfs f0, 0x395c(r31)
/* 805F99BC  38 00 00 06 */	li r0, 6
/* 805F99C0  B0 1C 0C 58 */	sth r0, 0xc58(r28)
/* 805F99C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053A@ha */
/* 805F99C8  38 03 05 3A */	addi r0, r3, 0x053A /* 0x0007053A@l */
/* 805F99CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F99D0  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 805F99D4  38 81 00 0C */	addi r4, r1, 0xc
/* 805F99D8  38 A0 00 00 */	li r5, 0
/* 805F99DC  38 C0 FF FF */	li r6, -1
/* 805F99E0  81 9C 05 DC */	lwz r12, 0x5dc(r28)
/* 805F99E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805F99E8  7D 89 03 A6 */	mtctr r12
/* 805F99EC  4E 80 04 21 */	bctrl 
/* 805F99F0  48 00 01 DC */	b lbl_805F9BCC
lbl_805F99F4:
/* 805F99F4  88 1C 1E 09 */	lbz r0, 0x1e09(r28)
/* 805F99F8  28 00 00 00 */	cmplwi r0, 0
/* 805F99FC  41 82 00 08 */	beq lbl_805F9A04
/* 805F9A00  3B 40 00 01 */	li r26, 1
lbl_805F9A04:
/* 805F9A04  A8 1C 05 62 */	lha r0, 0x562(r28)
/* 805F9A08  2C 00 00 00 */	cmpwi r0, 0
/* 805F9A0C  40 81 00 20 */	ble lbl_805F9A2C
/* 805F9A10  A0 1C 1E 0A */	lhz r0, 0x1e0a(r28)
/* 805F9A14  28 00 00 03 */	cmplwi r0, 3
/* 805F9A18  41 80 00 1C */	blt lbl_805F9A34
/* 805F9A1C  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805F9A20  88 03 05 69 */	lbz r0, 0x569(r3)
/* 805F9A24  28 00 00 04 */	cmplwi r0, 4
/* 805F9A28  41 80 00 0C */	blt lbl_805F9A34
lbl_805F9A2C:
/* 805F9A2C  3B 40 00 01 */	li r26, 1
/* 805F9A30  48 00 00 AC */	b lbl_805F9ADC
lbl_805F9A34:
/* 805F9A34  38 00 00 14 */	li r0, 0x14
/* 805F9A38  B0 1C 0A FE */	sth r0, 0xafe(r28)
/* 805F9A3C  38 00 00 00 */	li r0, 0
/* 805F9A40  B0 1C 05 BC */	sth r0, 0x5bc(r28)
/* 805F9A44  38 00 00 01 */	li r0, 1
/* 805F9A48  98 1C 26 98 */	stb r0, 0x2698(r28)
/* 805F9A4C  88 1C 1E 03 */	lbz r0, 0x1e03(r28)
/* 805F9A50  7C 00 07 75 */	extsb. r0, r0
/* 805F9A54  41 82 00 10 */	beq lbl_805F9A64
/* 805F9A58  38 00 00 03 */	li r0, 3
/* 805F9A5C  98 1F 39 67 */	stb r0, 0x3967(r31)
/* 805F9A60  48 00 00 0C */	b lbl_805F9A6C
lbl_805F9A64:
/* 805F9A64  38 00 00 02 */	li r0, 2
/* 805F9A68  98 1F 39 67 */	stb r0, 0x3967(r31)
lbl_805F9A6C:
/* 805F9A6C  88 1B 05 68 */	lbz r0, 0x568(r27)
/* 805F9A70  28 00 00 0A */	cmplwi r0, 0xa
/* 805F9A74  40 82 00 34 */	bne lbl_805F9AA8
/* 805F9A78  7F 63 DB 78 */	mr r3, r27
/* 805F9A7C  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 805F9A80  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 805F9A84  7D 89 03 A6 */	mtctr r12
/* 805F9A88  4E 80 04 21 */	bctrl 
/* 805F9A8C  2C 03 00 00 */	cmpwi r3, 0
/* 805F9A90  41 82 00 18 */	beq lbl_805F9AA8
/* 805F9A94  38 00 00 03 */	li r0, 3
/* 805F9A98  B0 1C 0C 58 */	sth r0, 0xc58(r28)
/* 805F9A9C  38 00 00 0A */	li r0, 0xa
/* 805F9AA0  98 1C 1E 09 */	stb r0, 0x1e09(r28)
/* 805F9AA4  48 00 00 38 */	b lbl_805F9ADC
lbl_805F9AA8:
/* 805F9AA8  38 00 00 0A */	li r0, 0xa
/* 805F9AAC  B0 1C 0C 58 */	sth r0, 0xc58(r28)
/* 805F9AB0  A0 7C 1E 0A */	lhz r3, 0x1e0a(r28)
/* 805F9AB4  38 03 00 01 */	addi r0, r3, 1
/* 805F9AB8  B0 1C 1E 0A */	sth r0, 0x1e0a(r28)
/* 805F9ABC  88 1C 0C 7C */	lbz r0, 0xc7c(r28)
/* 805F9AC0  28 00 00 00 */	cmplwi r0, 0
/* 805F9AC4  40 82 00 18 */	bne lbl_805F9ADC
/* 805F9AC8  A0 1C 1E 0A */	lhz r0, 0x1e0a(r28)
/* 805F9ACC  28 00 00 03 */	cmplwi r0, 3
/* 805F9AD0  41 80 00 0C */	blt lbl_805F9ADC
/* 805F9AD4  38 00 00 64 */	li r0, 0x64
/* 805F9AD8  B0 1C 0C 58 */	sth r0, 0xc58(r28)
lbl_805F9ADC:
/* 805F9ADC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 805F9AE0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805F9AE4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805F9AE8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805F9AEC  2C 1A 00 00 */	cmpwi r26, 0
/* 805F9AF0  3B 20 00 01 */	li r25, 1
/* 805F9AF4  41 82 00 08 */	beq lbl_805F9AFC
/* 805F9AF8  3B 20 00 03 */	li r25, 3
lbl_805F9AFC:
/* 805F9AFC  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 805F9B00  80 63 00 04 */	lwz r3, 4(r3)
/* 805F9B04  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805F9B08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805F9B0C  38 63 00 60 */	addi r3, r3, 0x60
/* 805F9B10  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805F9B14  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805F9B18  80 84 00 00 */	lwz r4, 0(r4)
/* 805F9B1C  4B D4 C9 94 */	b PSMTXCopy
/* 805F9B20  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 805F9B24  4B C6 DE 68 */	b cM_rndFX__Ff
/* 805F9B28  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805F9B2C  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 805F9B30  4B C6 DE 5C */	b cM_rndFX__Ff
/* 805F9B34  C0 1D 00 F0 */	lfs f0, 0xf0(r29)
/* 805F9B38  EC 00 08 2A */	fadds f0, f0, f1
/* 805F9B3C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805F9B40  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 805F9B44  4B C6 DE 48 */	b cM_rndFX__Ff
/* 805F9B48  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805F9B4C  38 61 00 10 */	addi r3, r1, 0x10
/* 805F9B50  38 81 00 1C */	addi r4, r1, 0x1c
/* 805F9B54  4B C7 73 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 805F9B58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F9B5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F9B60  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805F9B64  7F 24 CB 78 */	mr r4, r25
/* 805F9B68  7F 85 E3 78 */	mr r5, r28
/* 805F9B6C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 805F9B70  38 E0 00 00 */	li r7, 0
/* 805F9B74  39 01 00 28 */	addi r8, r1, 0x28
/* 805F9B78  39 20 00 00 */	li r9, 0
/* 805F9B7C  4B A5 26 9C */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 805F9B80  2C 1A 00 00 */	cmpwi r26, 0
/* 805F9B84  41 82 00 48 */	beq lbl_805F9BCC
/* 805F9B88  38 00 00 15 */	li r0, 0x15
/* 805F9B8C  B0 1C 0A FE */	sth r0, 0xafe(r28)
/* 805F9B90  38 60 00 00 */	li r3, 0
/* 805F9B94  B0 7C 05 BC */	sth r3, 0x5bc(r28)
/* 805F9B98  38 00 00 0A */	li r0, 0xa
/* 805F9B9C  B0 1C 0C 58 */	sth r0, 0xc58(r28)
/* 805F9BA0  98 7C 0C 7C */	stb r3, 0xc7c(r28)
/* 805F9BA4  38 00 00 07 */	li r0, 7
/* 805F9BA8  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 805F9BAC  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)
/* 805F9BB0  38 00 00 64 */	li r0, 0x64
/* 805F9BB4  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 805F9BB8  48 00 00 14 */	b lbl_805F9BCC
lbl_805F9BBC:
/* 805F9BBC  3A F7 00 01 */	addi r23, r23, 1
/* 805F9BC0  2C 17 00 03 */	cmpwi r23, 3
/* 805F9BC4  3B 39 01 38 */	addi r25, r25, 0x138
/* 805F9BC8  41 80 FD AC */	blt lbl_805F9974
lbl_805F9BCC:
/* 805F9BCC  39 61 00 60 */	addi r11, r1, 0x60
/* 805F9BD0  4B D6 86 40 */	b _restgpr_23
/* 805F9BD4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805F9BD8  7C 08 03 A6 */	mtlr r0
/* 805F9BDC  38 21 00 60 */	addi r1, r1, 0x60
/* 805F9BE0  4E 80 00 20 */	blr 
