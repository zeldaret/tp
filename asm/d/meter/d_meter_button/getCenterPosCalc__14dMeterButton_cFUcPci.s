lbl_80209D7C:
/* 80209D7C  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 80209D80  7C 08 02 A6 */	mflr r0
/* 80209D84  90 01 01 84 */	stw r0, 0x184(r1)
/* 80209D88  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 80209D8C  F3 E1 01 78 */	psq_st f31, 376(r1), 0, 0 /* qr0 */
/* 80209D90  DB C1 01 60 */	stfd f30, 0x160(r1)
/* 80209D94  F3 C1 01 68 */	psq_st f30, 360(r1), 0, 0 /* qr0 */
/* 80209D98  DB A1 01 50 */	stfd f29, 0x150(r1)
/* 80209D9C  F3 A1 01 58 */	psq_st f29, 344(r1), 0, 0 /* qr0 */
/* 80209DA0  39 61 01 50 */	addi r11, r1, 0x150
/* 80209DA4  48 15 84 2D */	bl _savegpr_26
/* 80209DA8  7C 7B 1B 78 */	mr r27, r3
/* 80209DAC  7C 9D 23 78 */	mr r29, r4
/* 80209DB0  7C DC 33 78 */	mr r28, r6
/* 80209DB4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80209DB8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80209DBC  80 9B 00 84 */	lwz r4, 0x84(r27)
/* 80209DC0  48 01 28 E5 */	bl getStringLength__13dMeter2Info_cFP10J2DTextBoxPc
/* 80209DC4  57 9A 10 3A */	slwi r26, r28, 2
/* 80209DC8  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80209DCC  7F FB D2 14 */	add r31, r27, r26
/* 80209DD0  C0 1F 06 10 */	lfs f0, 0x610(r31)
/* 80209DD4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80209DD8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80209DDC  D0 1F 01 E4 */	stfs f0, 0x1e4(r31)
/* 80209DE0  88 1B 04 D9 */	lbz r0, 0x4d9(r27)
/* 80209DE4  7C 00 E0 00 */	cmpw r0, r28
/* 80209DE8  40 82 00 50 */	bne lbl_80209E38
/* 80209DEC  7C 7B E2 14 */	add r3, r27, r28
/* 80209DF0  88 03 04 BE */	lbz r0, 0x4be(r3)
/* 80209DF4  28 00 00 01 */	cmplwi r0, 1
/* 80209DF8  40 82 00 40 */	bne lbl_80209E38
/* 80209DFC  80 7B 00 08 */	lwz r3, 8(r27)
/* 80209E00  3C 80 68 69 */	lis r4, 0x6869 /* 0x68696E67@ha */
/* 80209E04  38 C4 6E 67 */	addi r6, r4, 0x6E67 /* 0x68696E67@l */
/* 80209E08  3C 80 00 66 */	lis r4, 0x0066 /* 0x00666973@ha */
/* 80209E0C  38 A4 69 73 */	addi r5, r4, 0x6973 /* 0x00666973@l */
/* 80209E10  81 83 00 00 */	lwz r12, 0(r3)
/* 80209E14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80209E18  7D 89 03 A6 */	mtctr r12
/* 80209E1C  4E 80 04 21 */	bctrl 
/* 80209E20  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80209E24  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80209E28  EC 21 00 28 */	fsubs f1, f1, f0
/* 80209E2C  C0 1B 05 00 */	lfs f0, 0x500(r27)
/* 80209E30  EC 00 00 72 */	fmuls f0, f0, f1
/* 80209E34  D0 1F 01 E4 */	stfs f0, 0x1e4(r31)
lbl_80209E38:
/* 80209E38  C0 1F 01 E4 */	lfs f0, 0x1e4(r31)
/* 80209E3C  7C 7B D2 14 */	add r3, r27, r26
/* 80209E40  D0 03 02 9C */	stfs f0, 0x29c(r3)
/* 80209E44  80 9B 00 84 */	lwz r4, 0x84(r27)
/* 80209E48  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80209E4C  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80209E50  EC 61 00 28 */	fsubs f3, f1, f0
/* 80209E54  C0 43 02 E0 */	lfs f2, 0x2e0(r3)
/* 80209E58  C0 22 AD 70 */	lfs f1, lit_5628(r2)
/* 80209E5C  C0 1F 06 10 */	lfs f0, 0x610(r31)
/* 80209E60  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80209E64  EC 01 00 32 */	fmuls f0, f1, f0
/* 80209E68  EF E2 00 28 */	fsubs f31, f2, f0
/* 80209E6C  C0 1F 01 E4 */	lfs f0, 0x1e4(r31)
/* 80209E70  EF DF 00 2A */	fadds f30, f31, f0
/* 80209E74  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80209E78  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80209E7C  57 BD 15 BA */	rlwinm r29, r29, 2, 0x16, 0x1d
/* 80209E80  7F DB EA 14 */	add r30, r27, r29
/* 80209E84  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 80209E88  28 00 00 15 */	cmplwi r0, 0x15
/* 80209E8C  41 81 06 04 */	bgt lbl_8020A490
/* 80209E90  3C 60 80 3C */	lis r3, lit_7807@ha /* 0x803BF1A8@ha */
/* 80209E94  38 63 F1 A8 */	addi r3, r3, lit_7807@l /* 0x803BF1A8@l */
/* 80209E98  54 00 10 3A */	slwi r0, r0, 2
/* 80209E9C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80209EA0  7C 09 03 A6 */	mtctr r0
/* 80209EA4  4E 80 04 20 */	bctr 
/* 80209EA8  80 7B 00 08 */	lwz r3, 8(r27)
/* 80209EAC  3C 80 62 74 */	lis r4, 0x6274 /* 0x62746E31@ha */
/* 80209EB0  38 C4 6E 31 */	addi r6, r4, 0x6E31 /* 0x62746E31@l */
/* 80209EB4  38 A0 61 5F */	li r5, 0x615f
/* 80209EB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80209EBC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80209EC0  7D 89 03 A6 */	mtctr r12
/* 80209EC4  4E 80 04 21 */	bctrl 
/* 80209EC8  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80209ECC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80209ED0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80209ED4  C0 1B 04 F4 */	lfs f0, 0x4f4(r27)
/* 80209ED8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80209EDC  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 80209EE0  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 80209EE4  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 80209EE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80209EEC  D0 1E 03 04 */	stfs f0, 0x304(r30)
/* 80209EF0  48 00 05 A0 */	b lbl_8020A490
/* 80209EF4  80 7B 00 08 */	lwz r3, 8(r27)
/* 80209EF8  3C 80 5F 62 */	lis r4, 0x5F62 /* 0x5F62746E@ha */
/* 80209EFC  38 C4 74 6E */	addi r6, r4, 0x746E /* 0x5F62746E@l */
/* 80209F00  38 A0 00 62 */	li r5, 0x62
/* 80209F04  81 83 00 00 */	lwz r12, 0(r3)
/* 80209F08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80209F0C  7D 89 03 A6 */	mtctr r12
/* 80209F10  4E 80 04 21 */	bctrl 
/* 80209F14  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80209F18  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80209F1C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80209F20  C0 1B 05 00 */	lfs f0, 0x500(r27)
/* 80209F24  EC 00 00 72 */	fmuls f0, f0, f1
/* 80209F28  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 80209F2C  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 80209F30  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 80209F34  EC 01 00 2A */	fadds f0, f1, f0
/* 80209F38  D0 1E 03 04 */	stfs f0, 0x304(r30)
/* 80209F3C  48 00 05 54 */	b lbl_8020A490
/* 80209F40  80 7B 00 08 */	lwz r3, 8(r27)
/* 80209F44  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F62@ha */
/* 80209F48  38 C4 5F 62 */	addi r6, r4, 0x5F62 /* 0x746E5F62@l */
/* 80209F4C  3C 80 00 72 */	lis r4, 0x0072 /* 0x00725F62@ha */
/* 80209F50  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x00725F62@l */
/* 80209F54  81 83 00 00 */	lwz r12, 0(r3)
/* 80209F58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80209F5C  7D 89 03 A6 */	mtctr r12
/* 80209F60  4E 80 04 21 */	bctrl 
/* 80209F64  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80209F68  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80209F6C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80209F70  C0 1B 05 0C */	lfs f0, 0x50c(r27)
/* 80209F74  EC 00 00 72 */	fmuls f0, f0, f1
/* 80209F78  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 80209F7C  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 80209F80  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 80209F84  EC 01 00 2A */	fadds f0, f1, f0
/* 80209F88  D0 1E 03 04 */	stfs f0, 0x304(r30)
/* 80209F8C  48 00 05 04 */	b lbl_8020A490
/* 80209F90  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80209F94  48 04 99 9D */	bl __ct__8CPaneMgrFv
/* 80209F98  80 7B 00 08 */	lwz r3, 8(r27)
/* 80209F9C  3C 80 7A 62 */	lis r4, 0x7A62 /* 0x7A62746E@ha */
/* 80209FA0  38 C4 74 6E */	addi r6, r4, 0x746E /* 0x7A62746E@l */
/* 80209FA4  38 A0 00 00 */	li r5, 0
/* 80209FA8  81 83 00 00 */	lwz r12, 0(r3)
/* 80209FAC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80209FB0  7D 89 03 A6 */	mtctr r12
/* 80209FB4  4E 80 04 21 */	bctrl 
/* 80209FB8  7C 65 1B 78 */	mr r5, r3
/* 80209FBC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80209FC0  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80209FC4  38 C1 00 98 */	addi r6, r1, 0x98
/* 80209FC8  38 E0 00 00 */	li r7, 0
/* 80209FCC  39 00 00 00 */	li r8, 0
/* 80209FD0  39 20 00 00 */	li r9, 0
/* 80209FD4  48 04 AC BD */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 80209FD8  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80209FDC  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80209FE0  90 61 00 5C */	stw r3, 0x5c(r1)
/* 80209FE4  90 01 00 60 */	stw r0, 0x60(r1)
/* 80209FE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80209FEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80209FF0  80 7B 00 08 */	lwz r3, 8(r27)
/* 80209FF4  3C 80 7A 62 */	lis r4, 0x7A62 /* 0x7A62746E@ha */
/* 80209FF8  38 C4 74 6E */	addi r6, r4, 0x746E /* 0x7A62746E@l */
/* 80209FFC  38 A0 00 00 */	li r5, 0
/* 8020A000  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A004  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A008  7D 89 03 A6 */	mtctr r12
/* 8020A00C  4E 80 04 21 */	bctrl 
/* 8020A010  7C 65 1B 78 */	mr r5, r3
/* 8020A014  38 61 00 20 */	addi r3, r1, 0x20
/* 8020A018  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8020A01C  38 C1 00 98 */	addi r6, r1, 0x98
/* 8020A020  38 E0 00 03 */	li r7, 3
/* 8020A024  39 00 00 00 */	li r8, 0
/* 8020A028  39 20 00 00 */	li r9, 0
/* 8020A02C  48 04 AC 65 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 8020A030  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8020A034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020A038  90 61 00 50 */	stw r3, 0x50(r1)
/* 8020A03C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8020A040  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8020A044  90 01 00 58 */	stw r0, 0x58(r1)
/* 8020A048  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A04C  3C 80 64 6F */	lis r4, 0x646F /* 0x646F6E61@ha */
/* 8020A050  38 C4 6E 61 */	addi r6, r4, 0x6E61 /* 0x646F6E61@l */
/* 8020A054  38 A0 6D 69 */	li r5, 0x6d69
/* 8020A058  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A05C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A060  7D 89 03 A6 */	mtctr r12
/* 8020A064  4E 80 04 21 */	bctrl 
/* 8020A068  7C 65 1B 78 */	mr r5, r3
/* 8020A06C  38 61 00 14 */	addi r3, r1, 0x14
/* 8020A070  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8020A074  38 C1 00 68 */	addi r6, r1, 0x68
/* 8020A078  38 E0 00 00 */	li r7, 0
/* 8020A07C  39 00 00 00 */	li r8, 0
/* 8020A080  39 20 00 00 */	li r9, 0
/* 8020A084  48 04 AC 0D */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 8020A088  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8020A08C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8020A090  90 61 00 44 */	stw r3, 0x44(r1)
/* 8020A094  90 01 00 48 */	stw r0, 0x48(r1)
/* 8020A098  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8020A09C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8020A0A0  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A0A4  3C 80 64 6F */	lis r4, 0x646F /* 0x646F6E61@ha */
/* 8020A0A8  38 C4 6E 61 */	addi r6, r4, 0x6E61 /* 0x646F6E61@l */
/* 8020A0AC  38 A0 6D 69 */	li r5, 0x6d69
/* 8020A0B0  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A0B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A0B8  7D 89 03 A6 */	mtctr r12
/* 8020A0BC  4E 80 04 21 */	bctrl 
/* 8020A0C0  7C 65 1B 78 */	mr r5, r3
/* 8020A0C4  38 61 00 08 */	addi r3, r1, 8
/* 8020A0C8  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8020A0CC  38 C1 00 68 */	addi r6, r1, 0x68
/* 8020A0D0  38 E0 00 03 */	li r7, 3
/* 8020A0D4  39 00 00 00 */	li r8, 0
/* 8020A0D8  39 20 00 00 */	li r9, 0
/* 8020A0DC  48 04 AB B5 */	bl getGlobalVtx__8CPaneMgrFP7J2DPanePA3_A4_fUcbs
/* 8020A0E0  80 61 00 08 */	lwz r3, 8(r1)
/* 8020A0E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8020A0E8  90 61 00 38 */	stw r3, 0x38(r1)
/* 8020A0EC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8020A0F0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8020A0F4  90 01 00 40 */	stw r0, 0x40(r1)
/* 8020A0F8  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 8020A0FC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8020A100  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8020A104  40 81 00 0C */	ble lbl_8020A110
/* 8020A108  FC 40 00 90 */	fmr f2, f0
/* 8020A10C  48 00 00 08 */	b lbl_8020A114
lbl_8020A110:
/* 8020A110  FC 40 08 90 */	fmr f2, f1
lbl_8020A114:
/* 8020A114  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8020A118  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8020A11C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8020A120  40 81 00 08 */	ble lbl_8020A128
/* 8020A124  48 00 00 08 */	b lbl_8020A12C
lbl_8020A128:
/* 8020A128  FC 20 00 90 */	fmr f1, f0
lbl_8020A12C:
/* 8020A12C  EC 01 10 28 */	fsubs f0, f1, f2
/* 8020A130  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 8020A134  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8020A138  38 80 FF FF */	li r4, -1
/* 8020A13C  48 04 98 DD */	bl __dt__8CPaneMgrFv
/* 8020A140  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 8020A144  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 8020A148  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A14C  7C 7B EA 14 */	add r3, r27, r29
/* 8020A150  D0 03 03 04 */	stfs f0, 0x304(r3)
/* 8020A154  48 00 03 3C */	b lbl_8020A490
/* 8020A158  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A15C  3C 80 62 74 */	lis r4, 0x6274 /* 0x62746E31@ha */
/* 8020A160  38 C4 6E 31 */	addi r6, r4, 0x6E31 /* 0x62746E31@l */
/* 8020A164  3C 80 00 61 */	lis r4, 0x0061 /* 0x0061735F@ha */
/* 8020A168  38 A4 73 5F */	addi r5, r4, 0x735F /* 0x0061735F@l */
/* 8020A16C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A170  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A174  7D 89 03 A6 */	mtctr r12
/* 8020A178  4E 80 04 21 */	bctrl 
/* 8020A17C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020A180  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020A184  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020A188  C0 1B 05 24 */	lfs f0, 0x524(r27)
/* 8020A18C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8020A190  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 8020A194  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020A198  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020A19C  88 1A 5E 2D */	lbz r0, 0x5e2d(r26)
/* 8020A1A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020A1A4  41 82 00 44 */	beq lbl_8020A1E8
/* 8020A1A8  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A1AC  3C 80 6A 69 */	lis r4, 0x6A69 /* 0x6A693034@ha */
/* 8020A1B0  38 C4 30 34 */	addi r6, r4, 0x3034 /* 0x6A693034@l */
/* 8020A1B4  38 A0 79 61 */	li r5, 0x7961
/* 8020A1B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A1BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A1C0  7D 89 03 A6 */	mtctr r12
/* 8020A1C4  4E 80 04 21 */	bctrl 
/* 8020A1C8  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020A1CC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020A1D0  EC 41 00 28 */	fsubs f2, f1, f0
/* 8020A1D4  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 8020A1D8  C0 1B 05 24 */	lfs f0, 0x524(r27)
/* 8020A1DC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8020A1E0  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A1E4  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
lbl_8020A1E8:
/* 8020A1E8  88 1A 5E 2D */	lbz r0, 0x5e2d(r26)
/* 8020A1EC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8020A1F0  41 82 00 44 */	beq lbl_8020A234
/* 8020A1F4  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A1F8  3C 80 6A 69 */	lis r4, 0x6A69 /* 0x6A693032@ha */
/* 8020A1FC  38 C4 30 32 */	addi r6, r4, 0x3032 /* 0x6A693032@l */
/* 8020A200  38 A0 79 61 */	li r5, 0x7961
/* 8020A204  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A208  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A20C  7D 89 03 A6 */	mtctr r12
/* 8020A210  4E 80 04 21 */	bctrl 
/* 8020A214  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020A218  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020A21C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8020A220  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 8020A224  C0 1B 05 24 */	lfs f0, 0x524(r27)
/* 8020A228  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8020A22C  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A230  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
lbl_8020A234:
/* 8020A234  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 8020A238  7C 7B EA 14 */	add r3, r27, r29
/* 8020A23C  D0 03 03 04 */	stfs f0, 0x304(r3)
/* 8020A240  48 00 02 50 */	b lbl_8020A490
/* 8020A244  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020A248  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020A24C  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 8020A250  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8020A254  41 82 00 48 */	beq lbl_8020A29C
/* 8020A258  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A25C  3C 80 5F 62 */	lis r4, 0x5F62 /* 0x5F62746E@ha */
/* 8020A260  38 C4 74 6E */	addi r6, r4, 0x746E /* 0x5F62746E@l */
/* 8020A264  38 A0 00 63 */	li r5, 0x63
/* 8020A268  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A26C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A270  7D 89 03 A6 */	mtctr r12
/* 8020A274  4E 80 04 21 */	bctrl 
/* 8020A278  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020A27C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020A280  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020A284  C0 1B 05 30 */	lfs f0, 0x530(r27)
/* 8020A288  EC 00 00 72 */	fmuls f0, f0, f1
/* 8020A28C  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 8020A290  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 8020A294  D0 1E 03 04 */	stfs f0, 0x304(r30)
/* 8020A298  48 00 01 F8 */	b lbl_8020A490
lbl_8020A29C:
/* 8020A29C  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A2A0  3C 80 5F 62 */	lis r4, 0x5F62 /* 0x5F62746E@ha */
/* 8020A2A4  38 C4 74 6E */	addi r6, r4, 0x746E /* 0x5F62746E@l */
/* 8020A2A8  38 A0 00 63 */	li r5, 0x63
/* 8020A2AC  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A2B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A2B4  7D 89 03 A6 */	mtctr r12
/* 8020A2B8  4E 80 04 21 */	bctrl 
/* 8020A2BC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020A2C0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020A2C4  EF A1 00 28 */	fsubs f29, f1, f0
/* 8020A2C8  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A2CC  3C 80 69 5F */	lis r4, 0x695F /* 0x695F726E@ha */
/* 8020A2D0  38 C4 72 6E */	addi r6, r4, 0x726E /* 0x695F726E@l */
/* 8020A2D4  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 8020A2D8  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 8020A2DC  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A2E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A2E4  7D 89 03 A6 */	mtctr r12
/* 8020A2E8  4E 80 04 21 */	bctrl 
/* 8020A2EC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020A2F0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020A2F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020A2F8  C0 3B 05 30 */	lfs f1, 0x530(r27)
/* 8020A2FC  EC 00 E8 2A */	fadds f0, f0, f29
/* 8020A300  EC 01 00 32 */	fmuls f0, f1, f0
/* 8020A304  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 8020A308  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 8020A30C  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 8020A310  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A314  D0 1E 03 04 */	stfs f0, 0x304(r30)
/* 8020A318  48 00 01 78 */	b lbl_8020A490
/* 8020A31C  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A320  3C 80 62 74 */	lis r4, 0x6274 /* 0x62746E32@ha */
/* 8020A324  38 C4 6E 32 */	addi r6, r4, 0x6E32 /* 0x62746E32@l */
/* 8020A328  38 A0 61 5F */	li r5, 0x615f
/* 8020A32C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A330  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A334  7D 89 03 A6 */	mtctr r12
/* 8020A338  4E 80 04 21 */	bctrl 
/* 8020A33C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020A340  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020A344  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020A348  C0 1B 05 3C */	lfs f0, 0x53c(r27)
/* 8020A34C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8020A350  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 8020A354  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 8020A358  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 8020A35C  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A360  D0 1E 03 04 */	stfs f0, 0x304(r30)
/* 8020A364  48 00 01 2C */	b lbl_8020A490
/* 8020A368  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A36C  3C 80 5F 62 */	lis r4, 0x5F62 /* 0x5F62746E@ha */
/* 8020A370  38 C4 74 6E */	addi r6, r4, 0x746E /* 0x5F62746E@l */
/* 8020A374  38 A0 00 78 */	li r5, 0x78
/* 8020A378  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A37C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A380  7D 89 03 A6 */	mtctr r12
/* 8020A384  4E 80 04 21 */	bctrl 
/* 8020A388  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020A38C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020A390  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020A394  C0 1B 05 48 */	lfs f0, 0x548(r27)
/* 8020A398  EC 00 00 72 */	fmuls f0, f0, f1
/* 8020A39C  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 8020A3A0  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 8020A3A4  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 8020A3A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A3AC  D0 1E 03 04 */	stfs f0, 0x304(r30)
/* 8020A3B0  48 00 00 E0 */	b lbl_8020A490
/* 8020A3B4  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A3B8  3C 80 5F 62 */	lis r4, 0x5F62 /* 0x5F62746E@ha */
/* 8020A3BC  38 C4 74 6E */	addi r6, r4, 0x746E /* 0x5F62746E@l */
/* 8020A3C0  38 A0 00 79 */	li r5, 0x79
/* 8020A3C4  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A3C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A3CC  7D 89 03 A6 */	mtctr r12
/* 8020A3D0  4E 80 04 21 */	bctrl 
/* 8020A3D4  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020A3D8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020A3DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020A3E0  C0 1B 05 54 */	lfs f0, 0x554(r27)
/* 8020A3E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8020A3E8  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 8020A3EC  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 8020A3F0  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 8020A3F4  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A3F8  D0 1E 03 04 */	stfs f0, 0x304(r30)
/* 8020A3FC  48 00 00 94 */	b lbl_8020A490
/* 8020A400  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A404  3C 80 5F 62 */	lis r4, 0x5F62 /* 0x5F625F6E@ha */
/* 8020A408  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F625F6E@l */
/* 8020A40C  38 A0 61 73 */	li r5, 0x6173
/* 8020A410  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A414  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A418  7D 89 03 A6 */	mtctr r12
/* 8020A41C  4E 80 04 21 */	bctrl 
/* 8020A420  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020A424  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020A428  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020A42C  C0 1B 05 90 */	lfs f0, 0x590(r27)
/* 8020A430  EC 00 00 72 */	fmuls f0, f0, f1
/* 8020A434  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 8020A438  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 8020A43C  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 8020A440  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A444  D0 1E 03 04 */	stfs f0, 0x304(r30)
/* 8020A448  48 00 00 48 */	b lbl_8020A490
/* 8020A44C  80 7B 00 08 */	lwz r3, 8(r27)
/* 8020A450  3C 80 74 6C */	lis r4, 0x746C /* 0x746C5F6E@ha */
/* 8020A454  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746C5F6E@l */
/* 8020A458  3C 80 00 62 */	lis r4, 0x0062 /* 0x00626F74@ha */
/* 8020A45C  38 A4 6F 74 */	addi r5, r4, 0x6F74 /* 0x00626F74@l */
/* 8020A460  81 83 00 00 */	lwz r12, 0(r3)
/* 8020A464  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020A468  7D 89 03 A6 */	mtctr r12
/* 8020A46C  4E 80 04 21 */	bctrl 
/* 8020A470  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020A474  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020A478  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020A47C  C0 1B 05 F0 */	lfs f0, 0x5f0(r27)
/* 8020A480  EC 00 00 72 */	fmuls f0, f0, f1
/* 8020A484  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 8020A488  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 8020A48C  D0 1E 03 04 */	stfs f0, 0x304(r30)
lbl_8020A490:
/* 8020A490  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 8020A494  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 8020A498  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A49C  D0 1F 01 E4 */	stfs f0, 0x1e4(r31)
/* 8020A4A0  7C 7B EA 14 */	add r3, r27, r29
/* 8020A4A4  C0 23 02 44 */	lfs f1, 0x244(r3)
/* 8020A4A8  C0 03 03 04 */	lfs f0, 0x304(r3)
/* 8020A4AC  EC 21 00 2A */	fadds f1, f1, f0
/* 8020A4B0  C0 02 AD 70 */	lfs f0, lit_5628(r2)
/* 8020A4B4  C0 5E 01 EC */	lfs f2, 0x1ec(r30)
/* 8020A4B8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8020A4BC  EC 61 00 28 */	fsubs f3, f1, f0
/* 8020A4C0  EC 00 08 2A */	fadds f0, f0, f1
/* 8020A4C4  2C 1C 00 00 */	cmpwi r28, 0
/* 8020A4C8  40 82 00 1C */	bne lbl_8020A4E4
/* 8020A4CC  88 1B 04 BF */	lbz r0, 0x4bf(r27)
/* 8020A4D0  28 00 00 16 */	cmplwi r0, 0x16
/* 8020A4D4  40 82 00 10 */	bne lbl_8020A4E4
/* 8020A4D8  EC 7F 10 2A */	fadds f3, f31, f2
/* 8020A4DC  EC 1E 10 2A */	fadds f0, f30, f2
/* 8020A4E0  48 00 00 24 */	b lbl_8020A504
lbl_8020A4E4:
/* 8020A4E4  FC 03 F8 40 */	fcmpo cr0, f3, f31
/* 8020A4E8  40 80 00 08 */	bge lbl_8020A4F0
/* 8020A4EC  48 00 00 08 */	b lbl_8020A4F4
lbl_8020A4F0:
/* 8020A4F0  FC 60 F8 90 */	fmr f3, f31
lbl_8020A4F4:
/* 8020A4F4  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8020A4F8  40 81 00 08 */	ble lbl_8020A500
/* 8020A4FC  48 00 00 08 */	b lbl_8020A504
lbl_8020A500:
/* 8020A500  FC 00 F0 90 */	fmr f0, f30
lbl_8020A504:
/* 8020A504  C0 22 AD 70 */	lfs f1, lit_5628(r2)
/* 8020A508  EC 03 00 2A */	fadds f0, f3, f0
/* 8020A50C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8020A510  E3 E1 01 78 */	psq_l f31, 376(r1), 0, 0 /* qr0 */
/* 8020A514  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 8020A518  E3 C1 01 68 */	psq_l f30, 360(r1), 0, 0 /* qr0 */
/* 8020A51C  CB C1 01 60 */	lfd f30, 0x160(r1)
/* 8020A520  E3 A1 01 58 */	psq_l f29, 344(r1), 0, 0 /* qr0 */
/* 8020A524  CB A1 01 50 */	lfd f29, 0x150(r1)
/* 8020A528  39 61 01 50 */	addi r11, r1, 0x150
/* 8020A52C  48 15 7C F1 */	bl _restgpr_26
/* 8020A530  80 01 01 84 */	lwz r0, 0x184(r1)
/* 8020A534  7C 08 03 A6 */	mtlr r0
/* 8020A538  38 21 01 80 */	addi r1, r1, 0x180
/* 8020A53C  4E 80 00 20 */	blr 
