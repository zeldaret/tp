lbl_800937AC:
/* 800937AC  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800937B0  7C 08 02 A6 */	mflr r0
/* 800937B4  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 800937B8  DB E1 02 D0 */	stfd f31, 0x2d0(r1)
/* 800937BC  F3 E1 02 D8 */	psq_st f31, 728(r1), 0, 0 /* qr0 */
/* 800937C0  DB C1 02 C0 */	stfd f30, 0x2c0(r1)
/* 800937C4  F3 C1 02 C8 */	psq_st f30, 712(r1), 0, 0 /* qr0 */
/* 800937C8  39 61 02 C0 */	addi r11, r1, 0x2c0
/* 800937CC  48 2C EA 01 */	bl _savegpr_25
/* 800937D0  7C 7D 1B 78 */	mr r29, r3
/* 800937D4  80 03 01 74 */	lwz r0, 0x174(r3)
/* 800937D8  28 00 00 00 */	cmplwi r0, 0
/* 800937DC  40 82 00 98 */	bne lbl_80093874
/* 800937E0  38 9D 03 F0 */	addi r4, r29, 0x3f0
/* 800937E4  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800937E8  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800937EC  38 A5 01 7B */	addi r5, r5, 0x17b
/* 800937F0  38 C0 00 00 */	li r6, 0
/* 800937F4  4B FF 58 99 */	bl getEvIntData__9dCamera_cFPiPci
/* 800937F8  80 1D 03 F0 */	lwz r0, 0x3f0(r29)
/* 800937FC  2C 00 00 00 */	cmpwi r0, 0
/* 80093800  40 82 00 74 */	bne lbl_80093874
/* 80093804  38 61 01 94 */	addi r3, r1, 0x194
/* 80093808  7F A4 EB 78 */	mr r4, r29
/* 8009380C  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 80093810  48 00 3F 0D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80093814  38 61 01 88 */	addi r3, r1, 0x188
/* 80093818  38 9D 00 64 */	addi r4, r29, 0x64
/* 8009381C  38 A1 01 94 */	addi r5, r1, 0x194
/* 80093820  48 1D 33 15 */	bl __mi__4cXyzCFRC3Vec
/* 80093824  C0 01 01 88 */	lfs f0, 0x188(r1)
/* 80093828  D0 1D 04 14 */	stfs f0, 0x414(r29)
/* 8009382C  C0 01 01 8C */	lfs f0, 0x18c(r1)
/* 80093830  D0 1D 04 18 */	stfs f0, 0x418(r29)
/* 80093834  C0 01 01 90 */	lfs f0, 0x190(r1)
/* 80093838  D0 1D 04 1C */	stfs f0, 0x41c(r29)
/* 8009383C  38 61 01 7C */	addi r3, r1, 0x17c
/* 80093840  7F A4 EB 78 */	mr r4, r29
/* 80093844  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 80093848  48 00 3E D5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8009384C  38 61 01 70 */	addi r3, r1, 0x170
/* 80093850  38 9D 00 70 */	addi r4, r29, 0x70
/* 80093854  38 A1 01 7C */	addi r5, r1, 0x17c
/* 80093858  48 1D 32 DD */	bl __mi__4cXyzCFRC3Vec
/* 8009385C  C0 01 01 70 */	lfs f0, 0x170(r1)
/* 80093860  D0 1D 04 20 */	stfs f0, 0x420(r29)
/* 80093864  C0 01 01 74 */	lfs f0, 0x174(r1)
/* 80093868  D0 1D 04 24 */	stfs f0, 0x424(r29)
/* 8009386C  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 80093870  D0 1D 04 28 */	stfs f0, 0x428(r29)
lbl_80093874:
/* 80093874  80 1D 03 F0 */	lwz r0, 0x3f0(r29)
/* 80093878  2C 00 00 00 */	cmpwi r0, 0
/* 8009387C  40 82 01 94 */	bne lbl_80093A10
/* 80093880  C0 3D 04 18 */	lfs f1, 0x418(r29)
/* 80093884  C0 02 8F B4 */	lfs f0, lit_8206(r2)
/* 80093888  EC 00 08 28 */	fsubs f0, f0, f1
/* 8009388C  C0 42 91 44 */	lfs f2, lit_9798(r2)
/* 80093890  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80093894  EC 01 00 2A */	fadds f0, f1, f0
/* 80093898  D0 1D 04 18 */	stfs f0, 0x418(r29)
/* 8009389C  C0 3D 04 14 */	lfs f1, 0x414(r29)
/* 800938A0  FC 00 08 50 */	fneg f0, f1
/* 800938A4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800938A8  EC 01 00 2A */	fadds f0, f1, f0
/* 800938AC  D0 1D 04 14 */	stfs f0, 0x414(r29)
/* 800938B0  C0 3D 04 1C */	lfs f1, 0x41c(r29)
/* 800938B4  FC 00 08 50 */	fneg f0, f1
/* 800938B8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800938BC  EC 01 00 2A */	fadds f0, f1, f0
/* 800938C0  D0 1D 04 1C */	stfs f0, 0x41c(r29)
/* 800938C4  C3 FD 00 5C */	lfs f31, 0x5c(r29)
/* 800938C8  38 61 01 64 */	addi r3, r1, 0x164
/* 800938CC  7F A4 EB 78 */	mr r4, r29
/* 800938D0  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 800938D4  48 00 3E 49 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 800938D8  38 61 01 58 */	addi r3, r1, 0x158
/* 800938DC  38 81 01 64 */	addi r4, r1, 0x164
/* 800938E0  38 BD 04 14 */	addi r5, r29, 0x414
/* 800938E4  48 1D 32 01 */	bl __pl__4cXyzCFRC3Vec
/* 800938E8  C0 01 01 58 */	lfs f0, 0x158(r1)
/* 800938EC  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 800938F0  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 800938F4  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 800938F8  C0 01 01 60 */	lfs f0, 0x160(r1)
/* 800938FC  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 80093900  38 61 01 4C */	addi r3, r1, 0x14c
/* 80093904  38 9D 00 70 */	addi r4, r29, 0x70
/* 80093908  38 BD 00 64 */	addi r5, r29, 0x64
/* 8009390C  48 1D 32 29 */	bl __mi__4cXyzCFRC3Vec
/* 80093910  38 7D 00 5C */	addi r3, r29, 0x5c
/* 80093914  38 81 01 4C */	addi r4, r1, 0x14c
/* 80093918  48 1D E1 59 */	bl Val__7cSGlobeFRC4cXyz
/* 8009391C  D3 FD 00 5C */	stfs f31, 0x5c(r29)
/* 80093920  38 61 00 2C */	addi r3, r1, 0x2c
/* 80093924  C0 22 8F 34 */	lfs f1, lit_7345(r2)
/* 80093928  48 1D D6 A1 */	bl __ct__7cSAngleFf
/* 8009392C  A8 9D 00 60 */	lha r4, 0x60(r29)
/* 80093930  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 80093934  7C 80 02 78 */	xor r0, r4, r0
/* 80093938  7C 03 0E 70 */	srawi r3, r0, 1
/* 8009393C  7C 00 20 38 */	and r0, r0, r4
/* 80093940  7C 00 18 50 */	subf r0, r0, r3
/* 80093944  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80093948  41 82 00 24 */	beq lbl_8009396C
/* 8009394C  38 61 00 28 */	addi r3, r1, 0x28
/* 80093950  C0 22 8F 34 */	lfs f1, lit_7345(r2)
/* 80093954  48 1D D6 75 */	bl __ct__7cSAngleFf
/* 80093958  38 61 00 0C */	addi r3, r1, 0xc
/* 8009395C  A8 81 00 28 */	lha r4, 0x28(r1)
/* 80093960  48 1D D6 39 */	bl __ct__7cSAngleFs
/* 80093964  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80093968  B0 1D 00 60 */	sth r0, 0x60(r29)
lbl_8009396C:
/* 8009396C  38 61 00 24 */	addi r3, r1, 0x24
/* 80093970  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 80093974  48 1D D6 55 */	bl __ct__7cSAngleFf
/* 80093978  A8 1D 00 60 */	lha r0, 0x60(r29)
/* 8009397C  A8 81 00 24 */	lha r4, 0x24(r1)
/* 80093980  7C 80 02 78 */	xor r0, r4, r0
/* 80093984  7C 03 0E 70 */	srawi r3, r0, 1
/* 80093988  7C 00 20 38 */	and r0, r0, r4
/* 8009398C  7C 00 18 50 */	subf r0, r0, r3
/* 80093990  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80093994  41 82 00 24 */	beq lbl_800939B8
/* 80093998  38 61 00 20 */	addi r3, r1, 0x20
/* 8009399C  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 800939A0  48 1D D6 29 */	bl __ct__7cSAngleFf
/* 800939A4  38 61 00 08 */	addi r3, r1, 8
/* 800939A8  A8 81 00 20 */	lha r4, 0x20(r1)
/* 800939AC  48 1D D5 ED */	bl __ct__7cSAngleFs
/* 800939B0  A8 01 00 08 */	lha r0, 8(r1)
/* 800939B4  B0 1D 00 60 */	sth r0, 0x60(r29)
lbl_800939B8:
/* 800939B8  38 61 01 40 */	addi r3, r1, 0x140
/* 800939BC  38 9D 00 5C */	addi r4, r29, 0x5c
/* 800939C0  48 1D E0 F5 */	bl Xyz__7cSGlobeCFv
/* 800939C4  38 61 01 34 */	addi r3, r1, 0x134
/* 800939C8  38 9D 00 64 */	addi r4, r29, 0x64
/* 800939CC  38 A1 01 40 */	addi r5, r1, 0x140
/* 800939D0  48 1D 31 15 */	bl __pl__4cXyzCFRC3Vec
/* 800939D4  C0 01 01 34 */	lfs f0, 0x134(r1)
/* 800939D8  D0 1D 00 70 */	stfs f0, 0x70(r29)
/* 800939DC  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 800939E0  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 800939E4  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 800939E8  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 800939EC  C0 5D 00 80 */	lfs f2, 0x80(r29)
/* 800939F0  C0 02 8F B4 */	lfs f0, lit_8206(r2)
/* 800939F4  EC 20 10 28 */	fsubs f1, f0, f2
/* 800939F8  C0 02 91 44 */	lfs f0, lit_9798(r2)
/* 800939FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80093A00  EC 02 00 2A */	fadds f0, f2, f0
/* 80093A04  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 80093A08  38 60 00 01 */	li r3, 1
/* 80093A0C  48 00 08 0C */	b lbl_80094218
lbl_80093A10:
/* 80093A10  C0 42 8E B8 */	lfs f2, lit_5141(r2)
/* 80093A14  D0 41 02 00 */	stfs f2, 0x200(r1)
/* 80093A18  D0 41 02 04 */	stfs f2, 0x204(r1)
/* 80093A1C  D0 41 02 08 */	stfs f2, 0x208(r1)
/* 80093A20  D0 41 01 F4 */	stfs f2, 0x1f4(r1)
/* 80093A24  C0 02 8F 6C */	lfs f0, lit_8188(r2)
/* 80093A28  D0 01 01 F8 */	stfs f0, 0x1f8(r1)
/* 80093A2C  C0 22 8F 34 */	lfs f1, lit_7345(r2)
/* 80093A30  D0 21 01 FC */	stfs f1, 0x1fc(r1)
/* 80093A34  D0 41 01 E8 */	stfs f2, 0x1e8(r1)
/* 80093A38  C0 02 90 80 */	lfs f0, lit_8752(r2)
/* 80093A3C  D0 01 01 EC */	stfs f0, 0x1ec(r1)
/* 80093A40  D0 21 01 F0 */	stfs f1, 0x1f0(r1)
/* 80093A44  3B E1 02 00 */	addi r31, r1, 0x200
/* 80093A48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80093A4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80093A50  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80093A54  80 8D 8A 98 */	lwz r4, m_midnaActor__9daPy_py_c(r13)
/* 80093A58  80 1D 01 90 */	lwz r0, 0x190(r29)
/* 80093A5C  2C 00 00 01 */	cmpwi r0, 1
/* 80093A60  40 82 00 28 */	bne lbl_80093A88
/* 80093A64  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80093A68  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80093A6C  41 82 00 18 */	beq lbl_80093A84
/* 80093A70  80 04 08 90 */	lwz r0, 0x890(r4)
/* 80093A74  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80093A78  41 82 00 0C */	beq lbl_80093A84
/* 80093A7C  3B E1 01 E8 */	addi r31, r1, 0x1e8
/* 80093A80  48 00 00 08 */	b lbl_80093A88
lbl_80093A84:
/* 80093A84  3B E1 01 F4 */	addi r31, r1, 0x1f4
lbl_80093A88:
/* 80093A88  C0 02 8F 1C */	lfs f0, lit_7339(r2)
/* 80093A8C  D0 01 01 D0 */	stfs f0, 0x1d0(r1)
/* 80093A90  C0 02 8F 98 */	lfs f0, lit_8199(r2)
/* 80093A94  D0 01 01 D4 */	stfs f0, 0x1d4(r1)
/* 80093A98  C0 A2 8E B8 */	lfs f5, lit_5141(r2)
/* 80093A9C  D0 A1 01 D8 */	stfs f5, 0x1d8(r1)
/* 80093AA0  C0 42 91 48 */	lfs f2, lit_9799(r2)
/* 80093AA4  D0 41 01 28 */	stfs f2, 0x128(r1)
/* 80093AA8  C0 22 8F B4 */	lfs f1, lit_8206(r2)
/* 80093AAC  D0 21 01 2C */	stfs f1, 0x12c(r1)
/* 80093AB0  C0 02 8F DC */	lfs f0, lit_8216(r2)
/* 80093AB4  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 80093AB8  D0 41 02 44 */	stfs f2, 0x244(r1)
/* 80093ABC  D0 21 02 48 */	stfs f1, 0x248(r1)
/* 80093AC0  D0 01 02 4C */	stfs f0, 0x24c(r1)
/* 80093AC4  C0 42 8F CC */	lfs f2, lit_8212(r2)
/* 80093AC8  D0 41 01 1C */	stfs f2, 0x11c(r1)
/* 80093ACC  C0 22 8F E4 */	lfs f1, lit_8218(r2)
/* 80093AD0  D0 21 01 20 */	stfs f1, 0x120(r1)
/* 80093AD4  C0 02 91 4C */	lfs f0, lit_9800(r2)
/* 80093AD8  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80093ADC  D0 41 02 50 */	stfs f2, 0x250(r1)
/* 80093AE0  D0 21 02 54 */	stfs f1, 0x254(r1)
/* 80093AE4  D0 01 02 58 */	stfs f0, 0x258(r1)
/* 80093AE8  C0 02 8F 5C */	lfs f0, lit_8184(r2)
/* 80093AEC  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80093AF0  C0 82 8F D4 */	lfs f4, lit_8214(r2)
/* 80093AF4  D0 81 01 14 */	stfs f4, 0x114(r1)
/* 80093AF8  C0 62 8F 50 */	lfs f3, lit_8181(r2)
/* 80093AFC  D0 61 01 18 */	stfs f3, 0x118(r1)
/* 80093B00  D0 01 02 5C */	stfs f0, 0x25c(r1)
/* 80093B04  D0 81 02 60 */	stfs f4, 0x260(r1)
/* 80093B08  D0 61 02 64 */	stfs f3, 0x264(r1)
/* 80093B0C  C0 42 8F B0 */	lfs f2, lit_8205(r2)
/* 80093B10  D0 41 01 04 */	stfs f2, 0x104(r1)
/* 80093B14  C0 22 8F 3C */	lfs f1, lit_7347(r2)
/* 80093B18  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 80093B1C  C0 02 91 50 */	lfs f0, lit_9801(r2)
/* 80093B20  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80093B24  D0 41 02 68 */	stfs f2, 0x268(r1)
/* 80093B28  D0 21 02 6C */	stfs f1, 0x26c(r1)
/* 80093B2C  D0 01 02 70 */	stfs f0, 0x270(r1)
/* 80093B30  D0 A1 00 F8 */	stfs f5, 0xf8(r1)
/* 80093B34  C0 02 8F 60 */	lfs f0, lit_8185(r2)
/* 80093B38  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80093B3C  D0 61 01 00 */	stfs f3, 0x100(r1)
/* 80093B40  D0 A1 02 74 */	stfs f5, 0x274(r1)
/* 80093B44  D0 01 02 78 */	stfs f0, 0x278(r1)
/* 80093B48  D0 61 02 7C */	stfs f3, 0x27c(r1)
/* 80093B4C  C0 22 8F 68 */	lfs f1, lit_8187(r2)
/* 80093B50  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 80093B54  D0 81 00 F0 */	stfs f4, 0xf0(r1)
/* 80093B58  C0 02 90 B4 */	lfs f0, lit_9406(r2)
/* 80093B5C  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80093B60  D0 21 02 80 */	stfs f1, 0x280(r1)
/* 80093B64  D0 81 02 84 */	stfs f4, 0x284(r1)
/* 80093B68  D0 01 02 88 */	stfs f0, 0x288(r1)
/* 80093B6C  38 A1 02 08 */	addi r5, r1, 0x208
/* 80093B70  3C 60 80 38 */	lis r3, lit_9468@ha
/* 80093B74  38 63 AA 08 */	addi r3, r3, lit_9468@l
/* 80093B78  38 83 FF FC */	addi r4, r3, -4
/* 80093B7C  38 00 00 07 */	li r0, 7
/* 80093B80  7C 09 03 A6 */	mtctr r0
lbl_80093B84:
/* 80093B84  80 64 00 04 */	lwz r3, 4(r4)
/* 80093B88  84 04 00 08 */	lwzu r0, 8(r4)
/* 80093B8C  90 65 00 04 */	stw r3, 4(r5)
/* 80093B90  94 05 00 08 */	stwu r0, 8(r5)
/* 80093B94  42 00 FF F0 */	bdnz lbl_80093B84
/* 80093B98  38 01 01 D0 */	addi r0, r1, 0x1d0
/* 80093B9C  90 01 02 0C */	stw r0, 0x20c(r1)
/* 80093BA0  38 01 02 44 */	addi r0, r1, 0x244
/* 80093BA4  90 01 02 10 */	stw r0, 0x210(r1)
/* 80093BA8  38 00 00 06 */	li r0, 6
/* 80093BAC  90 01 02 14 */	stw r0, 0x214(r1)
/* 80093BB0  3B C0 00 00 */	li r30, 0
/* 80093BB4  80 1D 01 74 */	lwz r0, 0x174(r29)
/* 80093BB8  28 00 00 00 */	cmplwi r0, 0
/* 80093BBC  40 82 00 44 */	bne lbl_80093C00
/* 80093BC0  38 00 00 00 */	li r0, 0
/* 80093BC4  90 1D 03 E8 */	stw r0, 0x3e8(r29)
/* 80093BC8  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80093BCC  D0 1D 04 2C */	stfs f0, 0x42c(r29)
/* 80093BD0  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80093BD4  D0 1D 04 30 */	stfs f0, 0x430(r29)
/* 80093BD8  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 80093BDC  D0 1D 04 34 */	stfs f0, 0x434(r29)
/* 80093BE0  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80093BE4  D0 1D 04 38 */	stfs f0, 0x438(r29)
/* 80093BE8  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80093BEC  D0 1D 04 3C */	stfs f0, 0x43c(r29)
/* 80093BF0  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 80093BF4  D0 1D 04 40 */	stfs f0, 0x440(r29)
/* 80093BF8  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 80093BFC  D0 1D 04 44 */	stfs f0, 0x444(r29)
lbl_80093C00:
/* 80093C00  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80093C04  7F A4 EB 78 */	mr r4, r29
/* 80093C08  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 80093C0C  48 00 3B 11 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80093C10  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80093C14  D0 01 01 B8 */	stfs f0, 0x1b8(r1)
/* 80093C18  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80093C1C  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 80093C20  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80093C24  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 80093C28  80 1D 03 E8 */	lwz r0, 0x3e8(r29)
/* 80093C2C  2C 00 00 03 */	cmpwi r0, 3
/* 80093C30  41 82 05 14 */	beq lbl_80094144
/* 80093C34  40 80 00 1C */	bge lbl_80093C50
/* 80093C38  2C 00 00 01 */	cmpwi r0, 1
/* 80093C3C  41 82 00 30 */	beq lbl_80093C6C
/* 80093C40  40 80 03 74 */	bge lbl_80093FB4
/* 80093C44  2C 00 00 00 */	cmpwi r0, 0
/* 80093C48  40 80 00 14 */	bge lbl_80093C5C
/* 80093C4C  48 00 05 B0 */	b lbl_800941FC
lbl_80093C50:
/* 80093C50  2C 00 00 63 */	cmpwi r0, 0x63
/* 80093C54  41 82 05 A8 */	beq lbl_800941FC
/* 80093C58  48 00 05 A4 */	b lbl_800941FC
lbl_80093C5C:
/* 80093C5C  38 00 00 00 */	li r0, 0
/* 80093C60  90 1D 04 04 */	stw r0, 0x404(r29)
/* 80093C64  38 00 00 01 */	li r0, 1
/* 80093C68  90 1D 03 E8 */	stw r0, 0x3e8(r29)
lbl_80093C6C:
/* 80093C6C  80 1D 03 F0 */	lwz r0, 0x3f0(r29)
/* 80093C70  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80093C74  38 61 02 18 */	addi r3, r1, 0x218
/* 80093C78  80 1D 04 04 */	lwz r0, 0x404(r29)
/* 80093C7C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80093C80  7C 04 02 14 */	add r0, r4, r0
/* 80093C84  7C 03 04 2E */	lfsx f0, r3, r0
/* 80093C88  D0 1D 04 00 */	stfs f0, 0x400(r29)
/* 80093C8C  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 80093C90  D0 1D 03 F4 */	stfs f0, 0x3f4(r29)
/* 80093C94  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 80093C98  D0 1D 03 F8 */	stfs f0, 0x3f8(r29)
/* 80093C9C  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80093CA0  D0 1D 03 FC */	stfs f0, 0x3fc(r29)
/* 80093CA4  80 1D 03 F0 */	lwz r0, 0x3f0(r29)
/* 80093CA8  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80093CAC  38 61 02 0C */	addi r3, r1, 0x20c
/* 80093CB0  80 1D 04 04 */	lwz r0, 0x404(r29)
/* 80093CB4  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80093CB8  7C 04 02 14 */	add r0, r4, r0
/* 80093CBC  7C 83 00 2E */	lwzx r4, r3, r0
/* 80093CC0  28 04 00 00 */	cmplwi r4, 0
/* 80093CC4  41 82 01 2C */	beq lbl_80093DF0
/* 80093CC8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80093CCC  7F E5 FB 78 */	mr r5, r31
/* 80093CD0  48 1D 2E 15 */	bl __pl__4cXyzCFRC3Vec
/* 80093CD4  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80093CD8  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 80093CDC  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80093CE0  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
/* 80093CE4  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80093CE8  D0 01 01 E4 */	stfs f0, 0x1e4(r1)
/* 80093CEC  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80093CF0  7F A4 EB 78 */	mr r4, r29
/* 80093CF4  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 80093CF8  38 C1 01 DC */	addi r6, r1, 0x1dc
/* 80093CFC  48 0D 10 71 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80093D00  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80093D04  D0 1D 03 F4 */	stfs f0, 0x3f4(r29)
/* 80093D08  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80093D0C  D0 1D 03 F8 */	stfs f0, 0x3f8(r29)
/* 80093D10  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80093D14  D0 1D 03 FC */	stfs f0, 0x3fc(r29)
/* 80093D18  80 BD 00 A8 */	lwz r5, 0xa8(r29)
/* 80093D1C  80 1D 03 F0 */	lwz r0, 0x3f0(r29)
/* 80093D20  1C 60 00 38 */	mulli r3, r0, 0x38
/* 80093D24  38 81 02 24 */	addi r4, r1, 0x224
/* 80093D28  80 1D 04 04 */	lwz r0, 0x404(r29)
/* 80093D2C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80093D30  7C 63 02 14 */	add r3, r3, r0
/* 80093D34  7C 04 18 2E */	lwzx r0, r4, r3
/* 80093D38  7C A0 00 39 */	and. r0, r5, r0
/* 80093D3C  40 82 00 60 */	bne lbl_80093D9C
/* 80093D40  38 81 02 10 */	addi r4, r1, 0x210
/* 80093D44  7C 64 18 2E */	lwzx r3, r4, r3
/* 80093D48  C0 63 00 00 */	lfs f3, 0(r3)
/* 80093D4C  D0 61 01 A0 */	stfs f3, 0x1a0(r1)
/* 80093D50  C0 43 00 04 */	lfs f2, 4(r3)
/* 80093D54  D0 41 01 A4 */	stfs f2, 0x1a4(r1)
/* 80093D58  C0 23 00 08 */	lfs f1, 8(r3)
/* 80093D5C  D0 21 01 A8 */	stfs f1, 0x1a8(r1)
/* 80093D60  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80093D64  D0 03 00 00 */	stfs f0, 0(r3)
/* 80093D68  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80093D6C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80093D70  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80093D74  D0 03 00 08 */	stfs f0, 8(r3)
/* 80093D78  80 1D 03 F0 */	lwz r0, 0x3f0(r29)
/* 80093D7C  1C 60 00 38 */	mulli r3, r0, 0x38
/* 80093D80  80 1D 04 04 */	lwz r0, 0x404(r29)
/* 80093D84  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80093D88  7C 03 02 14 */	add r0, r3, r0
/* 80093D8C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80093D90  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 80093D94  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 80093D98  D0 23 00 14 */	stfs f1, 0x14(r3)
lbl_80093D9C:
/* 80093D9C  7F A3 EB 78 */	mr r3, r29
/* 80093DA0  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 80093DA4  38 BD 03 F4 */	addi r5, r29, 0x3f4
/* 80093DA8  38 C1 01 AC */	addi r6, r1, 0x1ac
/* 80093DAC  38 E0 40 B7 */	li r7, 0x40b7
/* 80093DB0  48 0D 1C 45 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP4cXyzUl
/* 80093DB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80093DB8  41 82 00 38 */	beq lbl_80093DF0
/* 80093DBC  38 61 00 BC */	addi r3, r1, 0xbc
/* 80093DC0  38 9D 00 5C */	addi r4, r29, 0x5c
/* 80093DC4  48 1D DD 6D */	bl Norm__7cSGlobeCFv
/* 80093DC8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80093DCC  38 81 01 AC */	addi r4, r1, 0x1ac
/* 80093DD0  38 A1 00 BC */	addi r5, r1, 0xbc
/* 80093DD4  48 1D 2D 11 */	bl __pl__4cXyzCFRC3Vec
/* 80093DD8  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80093DDC  D0 1D 03 F4 */	stfs f0, 0x3f4(r29)
/* 80093DE0  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80093DE4  D0 1D 03 F8 */	stfs f0, 0x3f8(r29)
/* 80093DE8  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80093DEC  D0 1D 03 FC */	stfs f0, 0x3fc(r29)
lbl_80093DF0:
/* 80093DF0  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80093DF4  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80093DF8  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80093DFC  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80093E00  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80093E04  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 80093E08  80 1D 03 F0 */	lwz r0, 0x3f0(r29)
/* 80093E0C  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80093E10  38 61 02 10 */	addi r3, r1, 0x210
/* 80093E14  80 1D 04 04 */	lwz r0, 0x404(r29)
/* 80093E18  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80093E1C  7C 04 02 14 */	add r0, r4, r0
/* 80093E20  7C 03 00 2E */	lwzx r0, r3, r0
/* 80093E24  28 00 00 00 */	cmplwi r0, 0
/* 80093E28  41 82 01 40 */	beq lbl_80093F68
/* 80093E2C  3B E0 00 00 */	li r31, 0
/* 80093E30  3B 80 00 00 */	li r28, 0
/* 80093E34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80093E38  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80093E3C  3B 61 02 0C */	addi r27, r1, 0x20c
/* 80093E40  48 00 00 C8 */	b lbl_80093F08
lbl_80093E44:
/* 80093E44  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80093E48  7F A4 EB 78 */	mr r4, r29
/* 80093E4C  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 80093E50  80 06 00 04 */	lwz r0, 4(r6)
/* 80093E54  7C C0 E2 14 */	add r6, r0, r28
/* 80093E58  48 0D 0F 15 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80093E5C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80093E60  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80093E64  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80093E68  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80093E6C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80093E70  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 80093E74  83 3A 5D B8 */	lwz r25, 0x5db8(r26)
/* 80093E78  7F A3 EB 78 */	mr r3, r29
/* 80093E7C  38 9D 03 F4 */	addi r4, r29, 0x3f4
/* 80093E80  38 A1 01 C4 */	addi r5, r1, 0x1c4
/* 80093E84  38 C0 40 07 */	li r6, 0x4007
/* 80093E88  48 0D 1C 69 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80093E8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80093E90  40 82 00 70 */	bne lbl_80093F00
/* 80093E94  7F A3 EB 78 */	mr r3, r29
/* 80093E98  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 80093E9C  38 A1 01 C4 */	addi r5, r1, 0x1c4
/* 80093EA0  38 C0 40 07 */	li r6, 0x4007
/* 80093EA4  48 0D 1C 4D */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80093EA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80093EAC  40 82 00 54 */	bne lbl_80093F00
/* 80093EB0  C0 1D 03 F4 */	lfs f0, 0x3f4(r29)
/* 80093EB4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80093EB8  C0 1D 03 F8 */	lfs f0, 0x3f8(r29)
/* 80093EBC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80093EC0  C0 1D 03 FC */	lfs f0, 0x3fc(r29)
/* 80093EC4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80093EC8  C0 01 01 C4 */	lfs f0, 0x1c4(r1)
/* 80093ECC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80093ED0  C0 01 01 C8 */	lfs f0, 0x1c8(r1)
/* 80093ED4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80093ED8  C0 01 01 CC */	lfs f0, 0x1cc(r1)
/* 80093EDC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80093EE0  38 61 00 98 */	addi r3, r1, 0x98
/* 80093EE4  38 81 00 8C */	addi r4, r1, 0x8c
/* 80093EE8  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 80093EEC  7F 26 CB 78 */	mr r6, r25
/* 80093EF0  38 E0 00 00 */	li r7, 0
/* 80093EF4  4B FF BB A1 */	bl func_8008FA94
/* 80093EF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80093EFC  41 82 00 30 */	beq lbl_80093F2C
lbl_80093F00:
/* 80093F00  3B FF 00 01 */	addi r31, r31, 1
/* 80093F04  3B 9C 00 0C */	addi r28, r28, 0xc
lbl_80093F08:
/* 80093F08  80 1D 03 F0 */	lwz r0, 0x3f0(r29)
/* 80093F0C  1C 60 00 38 */	mulli r3, r0, 0x38
/* 80093F10  80 1D 04 04 */	lwz r0, 0x404(r29)
/* 80093F14  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80093F18  7C C3 02 14 */	add r6, r3, r0
/* 80093F1C  7C DB 32 14 */	add r6, r27, r6
/* 80093F20  80 06 00 08 */	lwz r0, 8(r6)
/* 80093F24  7C 1F 00 00 */	cmpw r31, r0
/* 80093F28  41 80 FF 1C */	blt lbl_80093E44
lbl_80093F2C:
/* 80093F2C  80 1D 03 F0 */	lwz r0, 0x3f0(r29)
/* 80093F30  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80093F34  38 61 02 14 */	addi r3, r1, 0x214
/* 80093F38  80 1D 04 04 */	lwz r0, 0x404(r29)
/* 80093F3C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80093F40  7C 04 02 14 */	add r0, r4, r0
/* 80093F44  7C 03 00 2E */	lwzx r0, r3, r0
/* 80093F48  7C 1F 00 00 */	cmpw r31, r0
/* 80093F4C  41 80 00 1C */	blt lbl_80093F68
/* 80093F50  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80093F54  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80093F58  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80093F5C  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80093F60  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80093F64  D0 01 01 CC */	stfs f0, 0x1cc(r1)
lbl_80093F68:
/* 80093F68  38 61 00 80 */	addi r3, r1, 0x80
/* 80093F6C  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 80093F70  38 BD 03 F4 */	addi r5, r29, 0x3f4
/* 80093F74  48 1D 2B C1 */	bl __mi__4cXyzCFRC3Vec
/* 80093F78  38 7D 04 0C */	addi r3, r29, 0x40c
/* 80093F7C  38 81 00 80 */	addi r4, r1, 0x80
/* 80093F80  48 1D DA F1 */	bl Val__7cSGlobeFRC4cXyz
/* 80093F84  38 00 00 02 */	li r0, 2
/* 80093F88  90 1D 03 E8 */	stw r0, 0x3e8(r29)
/* 80093F8C  80 1D 03 F0 */	lwz r0, 0x3f0(r29)
/* 80093F90  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80093F94  38 61 02 1C */	addi r3, r1, 0x21c
/* 80093F98  80 1D 04 04 */	lwz r0, 0x404(r29)
/* 80093F9C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80093FA0  7C 04 02 14 */	add r0, r4, r0
/* 80093FA4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80093FA8  90 1D 03 EC */	stw r0, 0x3ec(r29)
/* 80093FAC  38 00 00 01 */	li r0, 1
/* 80093FB0  90 1D 04 08 */	stw r0, 0x408(r29)
lbl_80093FB4:
/* 80093FB4  80 9D 03 EC */	lwz r4, 0x3ec(r29)
/* 80093FB8  2C 04 00 01 */	cmpwi r4, 1
/* 80093FBC  40 81 01 58 */	ble lbl_80094114
/* 80093FC0  80 1D 04 08 */	lwz r0, 0x408(r29)
/* 80093FC4  C8 42 8E F8 */	lfd f2, lit_5962(r2)
/* 80093FC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80093FCC  90 01 02 94 */	stw r0, 0x294(r1)
/* 80093FD0  3C 60 43 30 */	lis r3, 0x4330
/* 80093FD4  90 61 02 90 */	stw r3, 0x290(r1)
/* 80093FD8  C8 01 02 90 */	lfd f0, 0x290(r1)
/* 80093FDC  EC 20 10 28 */	fsubs f1, f0, f2
/* 80093FE0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80093FE4  90 01 02 9C */	stw r0, 0x29c(r1)
/* 80093FE8  90 61 02 98 */	stw r3, 0x298(r1)
/* 80093FEC  C8 01 02 98 */	lfd f0, 0x298(r1)
/* 80093FF0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80093FF4  EF E1 00 24 */	fdivs f31, f1, f0
/* 80093FF8  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 80093FFC  C0 1D 04 00 */	lfs f0, 0x400(r29)
/* 80094000  EC 00 08 28 */	fsubs f0, f0, f1
/* 80094004  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80094008  EC 01 00 2A */	fadds f0, f1, f0
/* 8009400C  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 80094010  38 61 00 74 */	addi r3, r1, 0x74
/* 80094014  38 9D 03 F4 */	addi r4, r29, 0x3f4
/* 80094018  38 BD 00 64 */	addi r5, r29, 0x64
/* 8009401C  48 1D 2B 19 */	bl __mi__4cXyzCFRC3Vec
/* 80094020  38 61 00 68 */	addi r3, r1, 0x68
/* 80094024  38 81 00 74 */	addi r4, r1, 0x74
/* 80094028  FC 20 F8 90 */	fmr f1, f31
/* 8009402C  48 1D 2B 59 */	bl __ml__4cXyzCFf
/* 80094030  38 7D 00 64 */	addi r3, r29, 0x64
/* 80094034  38 81 00 68 */	addi r4, r1, 0x68
/* 80094038  7C 65 1B 78 */	mr r5, r3
/* 8009403C  48 2B 30 55 */	bl PSVECAdd
/* 80094040  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80094044  A8 1D 00 60 */	lha r0, 0x60(r29)
/* 80094048  B0 01 00 30 */	sth r0, 0x30(r1)
/* 8009404C  A8 1D 00 62 */	lha r0, 0x62(r29)
/* 80094050  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80094054  C0 1D 04 0C */	lfs f0, 0x40c(r29)
/* 80094058  EC 00 08 28 */	fsubs f0, f0, f1
/* 8009405C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80094060  EF C1 00 2A */	fadds f30, f1, f0
/* 80094064  38 61 00 1C */	addi r3, r1, 0x1c
/* 80094068  38 9D 04 10 */	addi r4, r29, 0x410
/* 8009406C  38 A1 00 30 */	addi r5, r1, 0x30
/* 80094070  48 1D D1 35 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80094074  38 61 00 18 */	addi r3, r1, 0x18
/* 80094078  38 81 00 1C */	addi r4, r1, 0x1c
/* 8009407C  FC 20 F8 90 */	fmr f1, f31
/* 80094080  48 1D D1 E5 */	bl __ml__7cSAngleCFf
/* 80094084  38 61 00 30 */	addi r3, r1, 0x30
/* 80094088  38 81 00 18 */	addi r4, r1, 0x18
/* 8009408C  48 1D D1 49 */	bl __apl__7cSAngleFRC7cSAngle
/* 80094090  38 61 00 14 */	addi r3, r1, 0x14
/* 80094094  38 9D 04 12 */	addi r4, r29, 0x412
/* 80094098  38 A1 00 34 */	addi r5, r1, 0x34
/* 8009409C  48 1D D1 09 */	bl __mi__7cSAngleCFRC7cSAngle
/* 800940A0  38 61 00 10 */	addi r3, r1, 0x10
/* 800940A4  38 81 00 14 */	addi r4, r1, 0x14
/* 800940A8  FC 20 F8 90 */	fmr f1, f31
/* 800940AC  48 1D D1 B9 */	bl __ml__7cSAngleCFf
/* 800940B0  38 61 00 34 */	addi r3, r1, 0x34
/* 800940B4  38 81 00 10 */	addi r4, r1, 0x10
/* 800940B8  48 1D D1 1D */	bl __apl__7cSAngleFRC7cSAngle
/* 800940BC  38 7D 00 5C */	addi r3, r29, 0x5c
/* 800940C0  FC 20 F0 90 */	fmr f1, f30
/* 800940C4  38 81 00 30 */	addi r4, r1, 0x30
/* 800940C8  38 A1 00 34 */	addi r5, r1, 0x34
/* 800940CC  48 1D D9 3D */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 800940D0  38 61 00 5C */	addi r3, r1, 0x5c
/* 800940D4  38 9D 00 5C */	addi r4, r29, 0x5c
/* 800940D8  48 1D D9 DD */	bl Xyz__7cSGlobeCFv
/* 800940DC  38 61 00 50 */	addi r3, r1, 0x50
/* 800940E0  38 9D 00 64 */	addi r4, r29, 0x64
/* 800940E4  38 A1 00 5C */	addi r5, r1, 0x5c
/* 800940E8  48 1D 29 FD */	bl __pl__4cXyzCFRC3Vec
/* 800940EC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800940F0  D0 1D 00 70 */	stfs f0, 0x70(r29)
/* 800940F4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800940F8  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 800940FC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80094100  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 80094104  80 7D 04 08 */	lwz r3, 0x408(r29)
/* 80094108  80 1D 03 EC */	lwz r0, 0x3ec(r29)
/* 8009410C  7C 03 00 00 */	cmpw r3, r0
/* 80094110  41 80 00 F8 */	blt lbl_80094208
lbl_80094114:
/* 80094114  38 00 00 03 */	li r0, 3
/* 80094118  90 1D 03 E8 */	stw r0, 0x3e8(r29)
/* 8009411C  80 1D 03 F0 */	lwz r0, 0x3f0(r29)
/* 80094120  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80094124  38 61 02 20 */	addi r3, r1, 0x220
/* 80094128  80 1D 04 04 */	lwz r0, 0x404(r29)
/* 8009412C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80094130  7C 04 02 14 */	add r0, r4, r0
/* 80094134  7C 03 00 2E */	lwzx r0, r3, r0
/* 80094138  90 1D 03 EC */	stw r0, 0x3ec(r29)
/* 8009413C  38 00 00 01 */	li r0, 1
/* 80094140  90 1D 04 08 */	stw r0, 0x408(r29)
lbl_80094144:
/* 80094144  C0 1D 03 F4 */	lfs f0, 0x3f4(r29)
/* 80094148  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 8009414C  C0 1D 03 F8 */	lfs f0, 0x3f8(r29)
/* 80094150  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 80094154  C0 1D 03 FC */	lfs f0, 0x3fc(r29)
/* 80094158  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 8009415C  38 61 00 44 */	addi r3, r1, 0x44
/* 80094160  38 9D 04 0C */	addi r4, r29, 0x40c
/* 80094164  48 1D D9 51 */	bl Xyz__7cSGlobeCFv
/* 80094168  38 61 00 38 */	addi r3, r1, 0x38
/* 8009416C  38 9D 00 64 */	addi r4, r29, 0x64
/* 80094170  38 A1 00 44 */	addi r5, r1, 0x44
/* 80094174  48 1D 29 71 */	bl __pl__4cXyzCFRC3Vec
/* 80094178  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8009417C  D0 1D 00 70 */	stfs f0, 0x70(r29)
/* 80094180  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80094184  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 80094188  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8009418C  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 80094190  C0 1D 04 0C */	lfs f0, 0x40c(r29)
/* 80094194  D0 1D 00 5C */	stfs f0, 0x5c(r29)
/* 80094198  A8 1D 04 10 */	lha r0, 0x410(r29)
/* 8009419C  B0 1D 00 60 */	sth r0, 0x60(r29)
/* 800941A0  A8 1D 04 12 */	lha r0, 0x412(r29)
/* 800941A4  B0 1D 00 62 */	sth r0, 0x62(r29)
/* 800941A8  C0 1D 04 00 */	lfs f0, 0x400(r29)
/* 800941AC  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 800941B0  80 7D 04 08 */	lwz r3, 0x408(r29)
/* 800941B4  80 1D 03 EC */	lwz r0, 0x3ec(r29)
/* 800941B8  7C 03 00 00 */	cmpw r3, r0
/* 800941BC  41 80 00 4C */	blt lbl_80094208
/* 800941C0  80 1D 03 F0 */	lwz r0, 0x3f0(r29)
/* 800941C4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800941C8  38 61 02 30 */	addi r3, r1, 0x230
/* 800941CC  7C 03 00 2E */	lwzx r0, r3, r0
/* 800941D0  2C 00 00 00 */	cmpwi r0, 0
/* 800941D4  41 82 00 20 */	beq lbl_800941F4
/* 800941D8  80 1D 04 04 */	lwz r0, 0x404(r29)
/* 800941DC  2C 00 00 00 */	cmpwi r0, 0
/* 800941E0  40 82 00 14 */	bne lbl_800941F4
/* 800941E4  38 00 00 01 */	li r0, 1
/* 800941E8  90 1D 04 04 */	stw r0, 0x404(r29)
/* 800941EC  90 1D 03 E8 */	stw r0, 0x3e8(r29)
/* 800941F0  48 00 00 18 */	b lbl_80094208
lbl_800941F4:
/* 800941F4  38 00 00 63 */	li r0, 0x63
/* 800941F8  90 1D 03 E8 */	stw r0, 0x3e8(r29)
lbl_800941FC:
/* 800941FC  38 00 00 01 */	li r0, 1
/* 80094200  98 1D 01 58 */	stb r0, 0x158(r29)
/* 80094204  3B C0 00 01 */	li r30, 1
lbl_80094208:
/* 80094208  80 7D 04 08 */	lwz r3, 0x408(r29)
/* 8009420C  38 03 00 01 */	addi r0, r3, 1
/* 80094210  90 1D 04 08 */	stw r0, 0x408(r29)
/* 80094214  7F C3 F3 78 */	mr r3, r30
lbl_80094218:
/* 80094218  E3 E1 02 D8 */	psq_l f31, 728(r1), 0, 0 /* qr0 */
/* 8009421C  CB E1 02 D0 */	lfd f31, 0x2d0(r1)
/* 80094220  E3 C1 02 C8 */	psq_l f30, 712(r1), 0, 0 /* qr0 */
/* 80094224  CB C1 02 C0 */	lfd f30, 0x2c0(r1)
/* 80094228  39 61 02 C0 */	addi r11, r1, 0x2c0
/* 8009422C  48 2C DF ED */	bl _restgpr_25
/* 80094230  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 80094234  7C 08 03 A6 */	mtlr r0
/* 80094238  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8009423C  4E 80 00 20 */	blr 
