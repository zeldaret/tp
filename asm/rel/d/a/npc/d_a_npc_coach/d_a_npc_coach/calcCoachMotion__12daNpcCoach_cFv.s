lbl_8099FCF4:
/* 8099FCF4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8099FCF8  7C 08 02 A6 */	mflr r0
/* 8099FCFC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8099FD00  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8099FD04  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8099FD08  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8099FD0C  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 8099FD10  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8099FD14  4B 9C 24 B8 */	b _savegpr_25
/* 8099FD18  7C 7F 1B 78 */	mr r31, r3
/* 8099FD1C  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha
/* 8099FD20  3B C3 4E D0 */	addi r30, r3, M_attr__12daNpcCoach_c@l
/* 8099FD24  38 61 00 38 */	addi r3, r1, 0x38
/* 8099FD28  38 9F 1B B0 */	addi r4, r31, 0x1bb0
/* 8099FD2C  38 BF 1B BC */	addi r5, r31, 0x1bbc
/* 8099FD30  4B 8C 6E 04 */	b __mi__4cXyzCFRC3Vec
/* 8099FD34  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8099FD38  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8099FD3C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8099FD40  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8099FD44  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8099FD48  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8099FD4C  C0 1F 1B B0 */	lfs f0, 0x1bb0(r31)
/* 8099FD50  D0 1F 1B BC */	stfs f0, 0x1bbc(r31)
/* 8099FD54  C0 1F 1B B4 */	lfs f0, 0x1bb4(r31)
/* 8099FD58  D0 1F 1B C0 */	stfs f0, 0x1bc0(r31)
/* 8099FD5C  C0 1F 1B B8 */	lfs f0, 0x1bb8(r31)
/* 8099FD60  D0 1F 1B C4 */	stfs f0, 0x1bc4(r31)
/* 8099FD64  A8 1F 1D 6A */	lha r0, 0x1d6a(r31)
/* 8099FD68  B0 1F 1D 70 */	sth r0, 0x1d70(r31)
/* 8099FD6C  A8 1F 1D 6C */	lha r0, 0x1d6c(r31)
/* 8099FD70  B0 1F 1D 72 */	sth r0, 0x1d72(r31)
/* 8099FD74  A8 1F 1D 6E */	lha r0, 0x1d6e(r31)
/* 8099FD78  B0 1F 1D 74 */	sth r0, 0x1d74(r31)
/* 8099FD7C  C0 3F 1B 9C */	lfs f1, 0x1b9c(r31)
/* 8099FD80  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 8099FD84  EC 01 00 2A */	fadds f0, f1, f0
/* 8099FD88  D0 1F 1B 9C */	stfs f0, 0x1b9c(r31)
/* 8099FD8C  C0 1F 1B 9C */	lfs f0, 0x1b9c(r31)
/* 8099FD90  C0 3F 1D 54 */	lfs f1, 0x1d54(r31)
/* 8099FD94  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8099FD98  40 80 00 08 */	bge lbl_8099FDA0
/* 8099FD9C  D0 3F 1B 9C */	stfs f1, 0x1b9c(r31)
lbl_8099FDA0:
/* 8099FDA0  C0 3F 1B B4 */	lfs f1, 0x1bb4(r31)
/* 8099FDA4  C0 1F 1B 9C */	lfs f0, 0x1b9c(r31)
/* 8099FDA8  EC 01 00 2A */	fadds f0, f1, f0
/* 8099FDAC  D0 1F 1B B4 */	stfs f0, 0x1bb4(r31)
/* 8099FDB0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8099FDB4  D0 1F 1B 98 */	stfs f0, 0x1b98(r31)
/* 8099FDB8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8099FDBC  D0 1F 1B A0 */	stfs f0, 0x1ba0(r31)
/* 8099FDC0  38 7F 19 5C */	addi r3, r31, 0x195c
/* 8099FDC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8099FDC8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8099FDCC  3B 84 0F 38 */	addi r28, r4, 0xf38
/* 8099FDD0  7F 84 E3 78 */	mr r4, r28
/* 8099FDD4  4B 6D 6C D8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8099FDD8  C0 3F 1B B4 */	lfs f1, 0x1bb4(r31)
/* 8099FDDC  C0 1F 19 F4 */	lfs f0, 0x19f4(r31)
/* 8099FDE0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8099FDE4  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 8099FDE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8099FDEC  40 81 00 10 */	ble lbl_8099FDFC
/* 8099FDF0  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 8099FDF4  D0 1F 1D 54 */	stfs f0, 0x1d54(r31)
/* 8099FDF8  48 00 00 10 */	b lbl_8099FE08
lbl_8099FDFC:
/* 8099FDFC  38 7E 00 00 */	addi r3, r30, 0
/* 8099FE00  C0 03 00 04 */	lfs f0, 4(r3)
/* 8099FE04  D0 1F 1D 54 */	stfs f0, 0x1d54(r31)
lbl_8099FE08:
/* 8099FE08  7F 83 E3 78 */	mr r3, r28
/* 8099FE0C  38 9F 1A 4C */	addi r4, r31, 0x1a4c
/* 8099FE10  4B 6D 52 F0 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 8099FE14  80 9F 1B 34 */	lwz r4, 0x1b34(r31)
/* 8099FE18  98 64 00 09 */	stb r3, 9(r4)
/* 8099FE1C  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8099FE20  28 00 00 00 */	cmplwi r0, 0
/* 8099FE24  41 82 00 34 */	beq lbl_8099FE58
/* 8099FE28  80 1F 1D 4C */	lwz r0, 0x1d4c(r31)
/* 8099FE2C  2C 00 00 00 */	cmpwi r0, 0
/* 8099FE30  40 82 00 28 */	bne lbl_8099FE58
/* 8099FE34  38 7F 1D 38 */	addi r3, r31, 0x1d38
/* 8099FE38  38 9F 05 38 */	addi r4, r31, 0x538
/* 8099FE3C  4B 8C F8 0C */	b SetC__8cM3dGSphFRC4cXyz
/* 8099FE40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8099FE44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8099FE48  38 63 23 3C */	addi r3, r3, 0x233c
/* 8099FE4C  38 9F 1C 14 */	addi r4, r31, 0x1c14
/* 8099FE50  4B 8C 4D 58 */	b Set__4cCcSFP8cCcD_Obj
/* 8099FE54  48 00 00 18 */	b lbl_8099FE6C
lbl_8099FE58:
/* 8099FE58  38 7F 1C 14 */	addi r3, r31, 0x1c14
/* 8099FE5C  81 9F 1C 50 */	lwz r12, 0x1c50(r31)
/* 8099FE60  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8099FE64  7D 89 03 A6 */	mtctr r12
/* 8099FE68  4E 80 04 21 */	bctrl 
lbl_8099FE6C:
/* 8099FE6C  A8 1F 1D 6C */	lha r0, 0x1d6c(r31)
/* 8099FE70  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8099FE74  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8099FE78  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8099FE7C  7F C3 04 2E */	lfsx f30, r3, r0
/* 8099FE80  7C 63 02 14 */	add r3, r3, r0
/* 8099FE84  C3 E3 00 04 */	lfs f31, 4(r3)
/* 8099FE88  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 8099FE8C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8099FE90  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 8099FE94  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8099FE98  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 8099FE9C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8099FEA0  38 7F 24 5C */	addi r3, r31, 0x245c
/* 8099FEA4  4B 66 CE C0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8099FEA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099FEAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099FEB0  A8 9F 1D 6C */	lha r4, 0x1d6c(r31)
/* 8099FEB4  4B 66 C5 80 */	b mDoMtx_YrotM__FPA4_fs
/* 8099FEB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8099FEBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8099FEC0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8099FEC4  7C 85 23 78 */	mr r5, r4
/* 8099FEC8  4B 9A 6E A4 */	b PSMTXMultVec
/* 8099FECC  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 8099FED0  EF DE 00 32 */	fmuls f30, f30, f0
/* 8099FED4  EF FF 00 32 */	fmuls f31, f31, f0
/* 8099FED8  3B 60 00 00 */	li r27, 0
/* 8099FEDC  7F 7D DB 78 */	mr r29, r27
/* 8099FEE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8099FEE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8099FEE8  3B 43 23 3C */	addi r26, r3, 0x233c
lbl_8099FEEC:
/* 8099FEEC  7F 3F EA 14 */	add r25, r31, r29
/* 8099FEF0  38 79 23 08 */	addi r3, r25, 0x2308
/* 8099FEF4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8099FEF8  4B 8C F2 E4 */	b SetC__8cM3dGCylFRC4cXyz
/* 8099FEFC  7F 43 D3 78 */	mr r3, r26
/* 8099FF00  38 99 21 E4 */	addi r4, r25, 0x21e4
/* 8099FF04  4B 8C 4C A4 */	b Set__4cCcSFP8cCcD_Obj
/* 8099FF08  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8099FF0C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8099FF10  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8099FF14  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8099FF18  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8099FF1C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8099FF20  3B 7B 00 01 */	addi r27, r27, 1
/* 8099FF24  2C 1B 00 02 */	cmpwi r27, 2
/* 8099FF28  3B BD 01 3C */	addi r29, r29, 0x13c
/* 8099FF2C  41 80 FF C0 */	blt lbl_8099FEEC
/* 8099FF30  80 7F 19 88 */	lwz r3, 0x1988(r31)
/* 8099FF34  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8099FF38  41 82 00 DC */	beq lbl_809A0014
/* 8099FF3C  C0 3F 1B 9C */	lfs f1, 0x1b9c(r31)
/* 8099FF40  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 8099FF44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8099FF48  40 80 00 30 */	bge lbl_8099FF78
/* 8099FF4C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060050@ha */
/* 8099FF50  38 03 00 50 */	addi r0, r3, 0x0050 /* 0x00060050@l */
/* 8099FF54  90 01 00 10 */	stw r0, 0x10(r1)
/* 8099FF58  38 7F 1B F0 */	addi r3, r31, 0x1bf0
/* 8099FF5C  38 81 00 10 */	addi r4, r1, 0x10
/* 8099FF60  38 A0 00 00 */	li r5, 0
/* 8099FF64  38 C0 FF FF */	li r6, -1
/* 8099FF68  81 9F 1C 00 */	lwz r12, 0x1c00(r31)
/* 8099FF6C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8099FF70  7D 89 03 A6 */	mtctr r12
/* 8099FF74  4E 80 04 21 */	bctrl 
lbl_8099FF78:
/* 8099FF78  4B 8C 78 F4 */	b cM_rnd__Fv
/* 8099FF7C  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 8099FF80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8099FF84  40 80 00 38 */	bge lbl_8099FFBC
/* 8099FF88  C0 5F 1D 64 */	lfs f2, 0x1d64(r31)
/* 8099FF8C  38 7E 00 00 */	addi r3, r30, 0
/* 8099FF90  A8 03 00 64 */	lha r0, 0x64(r3)
/* 8099FF94  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 8099FF98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8099FF9C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8099FFA0  3C 00 43 30 */	lis r0, 0x4330
/* 8099FFA4  90 01 00 70 */	stw r0, 0x70(r1)
/* 8099FFA8  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8099FFAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8099FFB0  EC 02 00 2A */	fadds f0, f2, f0
/* 8099FFB4  D0 1F 1D 64 */	stfs f0, 0x1d64(r31)
/* 8099FFB8  48 00 00 34 */	b lbl_8099FFEC
lbl_8099FFBC:
/* 8099FFBC  C0 5F 1D 64 */	lfs f2, 0x1d64(r31)
/* 8099FFC0  38 7E 00 00 */	addi r3, r30, 0
/* 8099FFC4  A8 03 00 64 */	lha r0, 0x64(r3)
/* 8099FFC8  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 8099FFCC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8099FFD0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8099FFD4  3C 00 43 30 */	lis r0, 0x4330
/* 8099FFD8  90 01 00 70 */	stw r0, 0x70(r1)
/* 8099FFDC  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8099FFE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8099FFE4  EC 02 00 28 */	fsubs f0, f2, f0
/* 8099FFE8  D0 1F 1D 64 */	stfs f0, 0x1d64(r31)
lbl_8099FFEC:
/* 8099FFEC  C0 3F 1D 60 */	lfs f1, 0x1d60(r31)
/* 8099FFF0  38 7E 00 00 */	addi r3, r30, 0
/* 8099FFF4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8099FFF8  EC 01 00 2A */	fadds f0, f1, f0
/* 8099FFFC  D0 1F 1D 60 */	stfs f0, 0x1d60(r31)
/* 809A0000  C0 3F 1B 9C */	lfs f1, 0x1b9c(r31)
/* 809A0004  C0 03 00 08 */	lfs f0, 8(r3)
/* 809A0008  EC 01 00 32 */	fmuls f0, f1, f0
/* 809A000C  D0 1F 1B 9C */	stfs f0, 0x1b9c(r31)
/* 809A0010  48 00 00 14 */	b lbl_809A0024
lbl_809A0014:
/* 809A0014  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 809A0018  41 82 00 0C */	beq lbl_809A0024
/* 809A001C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809A0020  D0 1F 1B 9C */	stfs f0, 0x1b9c(r31)
lbl_809A0024:
/* 809A0024  80 7F 0E 7C */	lwz r3, 0xe7c(r31)
/* 809A0028  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809A002C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809A0030  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809A0034  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809A0038  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809A003C  4B 9A 64 74 */	b PSMTXCopy
/* 809A0040  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A0044  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 809A0048  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 809A004C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809A0050  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 809A0054  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809A0058  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 809A005C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809A0060  C0 1F 15 60 */	lfs f0, 0x1560(r31)
/* 809A0064  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809A0068  38 61 00 44 */	addi r3, r1, 0x44
/* 809A006C  38 9F 1B B0 */	addi r4, r31, 0x1bb0
/* 809A0070  4B 8D 0C 04 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 809A0074  B0 7F 1D 6A */	sth r3, 0x1d6a(r31)
/* 809A0078  38 7F 1B B0 */	addi r3, r31, 0x1bb0
/* 809A007C  38 81 00 44 */	addi r4, r1, 0x44
/* 809A0080  4B 8D 0B 84 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809A0084  B0 7F 1D 6C */	sth r3, 0x1d6c(r31)
/* 809A0088  A8 7F 1D 6C */	lha r3, 0x1d6c(r31)
/* 809A008C  38 03 C0 00 */	addi r0, r3, -16384
/* 809A0090  7C 1B 07 34 */	extsh r27, r0
/* 809A0094  3C 60 80 9A */	lis r3, __vt__8cM3dGPla@ha
/* 809A0098  38 03 52 80 */	addi r0, r3, __vt__8cM3dGPla@l
/* 809A009C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 809A00A0  7F 83 E3 78 */	mr r3, r28
/* 809A00A4  38 9F 1A 4C */	addi r4, r31, 0x1a4c
/* 809A00A8  38 A1 00 5C */	addi r5, r1, 0x5c
/* 809A00AC  4B 6D 46 98 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 809A00B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809A00B4  41 82 00 24 */	beq lbl_809A00D8
/* 809A00B8  38 61 00 5C */	addi r3, r1, 0x5c
/* 809A00BC  7F 64 DB 78 */	mr r4, r27
/* 809A00C0  4B 67 DB 18 */	b fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 809A00C4  3C 80 80 9A */	lis r4, __vt__8cM3dGPla@ha
/* 809A00C8  38 04 52 80 */	addi r0, r4, __vt__8cM3dGPla@l
/* 809A00CC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 809A00D0  7C 64 1B 78 */	mr r4, r3
/* 809A00D4  48 00 00 14 */	b lbl_809A00E8
lbl_809A00D8:
/* 809A00D8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 809A00DC  3C 60 80 9A */	lis r3, __vt__8cM3dGPla@ha
/* 809A00E0  38 03 52 80 */	addi r0, r3, __vt__8cM3dGPla@l
/* 809A00E4  90 01 00 6C */	stw r0, 0x6c(r1)
lbl_809A00E8:
/* 809A00E8  38 7F 1D 6E */	addi r3, r31, 0x1d6e
/* 809A00EC  38 A0 00 0F */	li r5, 0xf
/* 809A00F0  38 C0 02 00 */	li r6, 0x200
/* 809A00F4  38 E0 00 40 */	li r7, 0x40
/* 809A00F8  4B 8D 04 48 */	b cLib_addCalcAngleS__FPsssss
/* 809A00FC  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 809A0100  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809A0104  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A0108  40 81 00 D8 */	ble lbl_809A01E0
/* 809A010C  38 61 00 44 */	addi r3, r1, 0x44
/* 809A0110  4B 66 CC 54 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809A0114  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A0118  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A011C  A8 9F 1D 6C */	lha r4, 0x1d6c(r31)
/* 809A0120  4B 66 C3 14 */	b mDoMtx_YrotM__FPA4_fs
/* 809A0124  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A0128  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A012C  A8 9F 1D 6A */	lha r4, 0x1d6a(r31)
/* 809A0130  4B 66 C2 6C */	b mDoMtx_XrotM__FPA4_fs
/* 809A0134  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A0138  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A013C  A8 9F 1D 6E */	lha r4, 0x1d6e(r31)
/* 809A0140  4B 66 C3 8C */	b mDoMtx_ZrotM__FPA4_fs
/* 809A0144  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809A0148  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809A014C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809A0150  3B 3E 00 00 */	addi r25, r30, 0
/* 809A0154  C0 19 00 10 */	lfs f0, 0x10(r25)
/* 809A0158  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809A015C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A0160  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A0164  38 81 00 44 */	addi r4, r1, 0x44
/* 809A0168  7C 85 23 78 */	mr r5, r4
/* 809A016C  4B 9A 6C 00 */	b PSMTXMultVec
/* 809A0170  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 809A0174  D0 1F 1B B0 */	stfs f0, 0x1bb0(r31)
/* 809A0178  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 809A017C  D0 1F 1B B8 */	stfs f0, 0x1bb8(r31)
/* 809A0180  7F 3A CB 78 */	mr r26, r25
/* 809A0184  C0 19 00 18 */	lfs f0, 0x18(r25)
/* 809A0188  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809A018C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809A0190  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809A0194  C0 19 00 10 */	lfs f0, 0x10(r25)
/* 809A0198  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809A019C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A01A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A01A4  38 81 00 44 */	addi r4, r1, 0x44
/* 809A01A8  38 BF 1D 78 */	addi r5, r31, 0x1d78
/* 809A01AC  4B 9A 6B C0 */	b PSMTXMultVec
/* 809A01B0  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 809A01B4  FC 00 00 50 */	fneg f0, f0
/* 809A01B8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809A01BC  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809A01C0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809A01C4  C0 19 00 10 */	lfs f0, 0x10(r25)
/* 809A01C8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809A01CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A01D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A01D4  38 81 00 44 */	addi r4, r1, 0x44
/* 809A01D8  38 BF 1D 9C */	addi r5, r31, 0x1d9c
/* 809A01DC  4B 9A 6B 90 */	b PSMTXMultVec
lbl_809A01E0:
/* 809A01E0  C0 3F 1B A0 */	lfs f1, 0x1ba0(r31)
/* 809A01E4  C0 1F 1B 98 */	lfs f0, 0x1b98(r31)
/* 809A01E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809A01EC  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809A01F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809A01F4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 809A01F8  38 61 00 14 */	addi r3, r1, 0x14
/* 809A01FC  4B 9A 6F 3C */	b PSVECSquareMag
/* 809A0200  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809A0204  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A0208  40 81 00 58 */	ble lbl_809A0260
/* 809A020C  FC 00 08 34 */	frsqrte f0, f1
/* 809A0210  C8 9E 01 30 */	lfd f4, 0x130(r30)
/* 809A0214  FC 44 00 32 */	fmul f2, f4, f0
/* 809A0218  C8 7E 01 38 */	lfd f3, 0x138(r30)
/* 809A021C  FC 00 00 32 */	fmul f0, f0, f0
/* 809A0220  FC 01 00 32 */	fmul f0, f1, f0
/* 809A0224  FC 03 00 28 */	fsub f0, f3, f0
/* 809A0228  FC 02 00 32 */	fmul f0, f2, f0
/* 809A022C  FC 44 00 32 */	fmul f2, f4, f0
/* 809A0230  FC 00 00 32 */	fmul f0, f0, f0
/* 809A0234  FC 01 00 32 */	fmul f0, f1, f0
/* 809A0238  FC 03 00 28 */	fsub f0, f3, f0
/* 809A023C  FC 02 00 32 */	fmul f0, f2, f0
/* 809A0240  FC 44 00 32 */	fmul f2, f4, f0
/* 809A0244  FC 00 00 32 */	fmul f0, f0, f0
/* 809A0248  FC 01 00 32 */	fmul f0, f1, f0
/* 809A024C  FC 03 00 28 */	fsub f0, f3, f0
/* 809A0250  FC 02 00 32 */	fmul f0, f2, f0
/* 809A0254  FC 21 00 32 */	fmul f1, f1, f0
/* 809A0258  FC 20 08 18 */	frsp f1, f1
/* 809A025C  48 00 00 88 */	b lbl_809A02E4
lbl_809A0260:
/* 809A0260  C8 1E 01 40 */	lfd f0, 0x140(r30)
/* 809A0264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A0268  40 80 00 10 */	bge lbl_809A0278
/* 809A026C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809A0270  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 809A0274  48 00 00 70 */	b lbl_809A02E4
lbl_809A0278:
/* 809A0278  D0 21 00 08 */	stfs f1, 8(r1)
/* 809A027C  80 81 00 08 */	lwz r4, 8(r1)
/* 809A0280  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809A0284  3C 00 7F 80 */	lis r0, 0x7f80
/* 809A0288  7C 03 00 00 */	cmpw r3, r0
/* 809A028C  41 82 00 14 */	beq lbl_809A02A0
/* 809A0290  40 80 00 40 */	bge lbl_809A02D0
/* 809A0294  2C 03 00 00 */	cmpwi r3, 0
/* 809A0298  41 82 00 20 */	beq lbl_809A02B8
/* 809A029C  48 00 00 34 */	b lbl_809A02D0
lbl_809A02A0:
/* 809A02A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A02A4  41 82 00 0C */	beq lbl_809A02B0
/* 809A02A8  38 00 00 01 */	li r0, 1
/* 809A02AC  48 00 00 28 */	b lbl_809A02D4
lbl_809A02B0:
/* 809A02B0  38 00 00 02 */	li r0, 2
/* 809A02B4  48 00 00 20 */	b lbl_809A02D4
lbl_809A02B8:
/* 809A02B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809A02BC  41 82 00 0C */	beq lbl_809A02C8
/* 809A02C0  38 00 00 05 */	li r0, 5
/* 809A02C4  48 00 00 10 */	b lbl_809A02D4
lbl_809A02C8:
/* 809A02C8  38 00 00 03 */	li r0, 3
/* 809A02CC  48 00 00 08 */	b lbl_809A02D4
lbl_809A02D0:
/* 809A02D0  38 00 00 04 */	li r0, 4
lbl_809A02D4:
/* 809A02D4  2C 00 00 01 */	cmpwi r0, 1
/* 809A02D8  40 82 00 0C */	bne lbl_809A02E4
/* 809A02DC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809A02E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_809A02E4:
/* 809A02E4  C0 1F 1D 58 */	lfs f0, 0x1d58(r31)
/* 809A02E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A02EC  D0 1F 1D 58 */	stfs f0, 0x1d58(r31)
/* 809A02F0  C0 3F 1D 58 */	lfs f1, 0x1d58(r31)
/* 809A02F4  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809A02F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A02FC  4C 40 13 82 */	cror 2, 0, 2
/* 809A0300  40 82 00 CC */	bne lbl_809A03CC
/* 809A0304  4B 8C 75 68 */	b cM_rnd__Fv
/* 809A0308  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 809A030C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A0310  40 80 00 38 */	bge lbl_809A0348
/* 809A0314  C0 5F 1D 64 */	lfs f2, 0x1d64(r31)
/* 809A0318  38 7E 00 00 */	addi r3, r30, 0
/* 809A031C  A8 03 00 64 */	lha r0, 0x64(r3)
/* 809A0320  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 809A0324  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A0328  90 01 00 74 */	stw r0, 0x74(r1)
/* 809A032C  3C 00 43 30 */	lis r0, 0x4330
/* 809A0330  90 01 00 70 */	stw r0, 0x70(r1)
/* 809A0334  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 809A0338  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A033C  EC 02 00 2A */	fadds f0, f2, f0
/* 809A0340  D0 1F 1D 64 */	stfs f0, 0x1d64(r31)
/* 809A0344  48 00 00 34 */	b lbl_809A0378
lbl_809A0348:
/* 809A0348  C0 5F 1D 64 */	lfs f2, 0x1d64(r31)
/* 809A034C  38 7E 00 00 */	addi r3, r30, 0
/* 809A0350  A8 03 00 64 */	lha r0, 0x64(r3)
/* 809A0354  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 809A0358  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A035C  90 01 00 74 */	stw r0, 0x74(r1)
/* 809A0360  3C 00 43 30 */	lis r0, 0x4330
/* 809A0364  90 01 00 70 */	stw r0, 0x70(r1)
/* 809A0368  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 809A036C  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A0370  EC 02 00 28 */	fsubs f0, f2, f0
/* 809A0374  D0 1F 1D 64 */	stfs f0, 0x1d64(r31)
lbl_809A0378:
/* 809A0378  4B 8C 74 F4 */	b cM_rnd__Fv
/* 809A037C  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 809A0380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A0384  40 80 00 1C */	bge lbl_809A03A0
/* 809A0388  C0 3F 1D 60 */	lfs f1, 0x1d60(r31)
/* 809A038C  38 7E 00 00 */	addi r3, r30, 0
/* 809A0390  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 809A0394  EC 01 00 2A */	fadds f0, f1, f0
/* 809A0398  D0 1F 1D 60 */	stfs f0, 0x1d60(r31)
/* 809A039C  48 00 00 18 */	b lbl_809A03B4
lbl_809A03A0:
/* 809A03A0  C0 3F 1D 60 */	lfs f1, 0x1d60(r31)
/* 809A03A4  38 7E 00 00 */	addi r3, r30, 0
/* 809A03A8  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 809A03AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 809A03B0  D0 1F 1D 60 */	stfs f0, 0x1d60(r31)
lbl_809A03B4:
/* 809A03B4  3B 3E 00 00 */	addi r25, r30, 0
/* 809A03B8  C0 39 00 3C */	lfs f1, 0x3c(r25)
/* 809A03BC  4B 8C 75 98 */	b cM_rndF__Ff
/* 809A03C0  C0 19 00 3C */	lfs f0, 0x3c(r25)
/* 809A03C4  EC 00 08 2A */	fadds f0, f0, f1
/* 809A03C8  D0 1F 1D 58 */	stfs f0, 0x1d58(r31)
lbl_809A03CC:
/* 809A03CC  C0 5F 1D 60 */	lfs f2, 0x1d60(r31)
/* 809A03D0  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809A03D4  C0 1F 1D 5C */	lfs f0, 0x1d5c(r31)
/* 809A03D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 809A03DC  38 7E 00 00 */	addi r3, r30, 0
/* 809A03E0  C0 83 00 20 */	lfs f4, 0x20(r3)
/* 809A03E4  EC 00 01 32 */	fmuls f0, f0, f4
/* 809A03E8  EC 02 00 2A */	fadds f0, f2, f0
/* 809A03EC  C0 63 00 24 */	lfs f3, 0x24(r3)
/* 809A03F0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 809A03F4  D0 1F 1D 60 */	stfs f0, 0x1d60(r31)
/* 809A03F8  C0 3F 1D 5C */	lfs f1, 0x1d5c(r31)
/* 809A03FC  C0 1F 1D 60 */	lfs f0, 0x1d60(r31)
/* 809A0400  EC 01 00 2A */	fadds f0, f1, f0
/* 809A0404  D0 1F 1D 5C */	stfs f0, 0x1d5c(r31)
/* 809A0408  C0 5F 1D 64 */	lfs f2, 0x1d64(r31)
/* 809A040C  A8 1F 1D 68 */	lha r0, 0x1d68(r31)
/* 809A0410  7C 00 00 D0 */	neg r0, r0
/* 809A0414  C8 3E 01 78 */	lfd f1, 0x178(r30)
/* 809A0418  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A041C  90 01 00 74 */	stw r0, 0x74(r1)
/* 809A0420  3C 60 43 30 */	lis r3, 0x4330
/* 809A0424  90 61 00 70 */	stw r3, 0x70(r1)
/* 809A0428  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 809A042C  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A0430  EC 00 01 32 */	fmuls f0, f0, f4
/* 809A0434  EC 02 00 2A */	fadds f0, f2, f0
/* 809A0438  EC 00 00 F2 */	fmuls f0, f0, f3
/* 809A043C  D0 1F 1D 64 */	stfs f0, 0x1d64(r31)
/* 809A0440  A8 1F 1D 68 */	lha r0, 0x1d68(r31)
/* 809A0444  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A0448  90 01 00 7C */	stw r0, 0x7c(r1)
/* 809A044C  90 61 00 78 */	stw r3, 0x78(r1)
/* 809A0450  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 809A0454  EC 20 08 28 */	fsubs f1, f0, f1
/* 809A0458  C0 1F 1D 64 */	lfs f0, 0x1d64(r31)
/* 809A045C  EC 01 00 2A */	fadds f0, f1, f0
/* 809A0460  FC 00 00 1E */	fctiwz f0, f0
/* 809A0464  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 809A0468  80 01 00 84 */	lwz r0, 0x84(r1)
/* 809A046C  B0 1F 1D 68 */	sth r0, 0x1d68(r31)
/* 809A0470  80 7F 0E 7C */	lwz r3, 0xe7c(r31)
/* 809A0474  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809A0478  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809A047C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809A0480  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809A0484  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809A0488  4B 9A 60 28 */	b PSMTXCopy
/* 809A048C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 809A0490  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809A0494  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 809A0498  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809A049C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 809A04A0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809A04A4  38 61 00 20 */	addi r3, r1, 0x20
/* 809A04A8  4B 66 C8 BC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809A04AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A04B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A04B4  A8 9F 1D 6C */	lha r4, 0x1d6c(r31)
/* 809A04B8  4B 66 BF 7C */	b mDoMtx_YrotM__FPA4_fs
/* 809A04BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A04C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A04C4  A8 9F 1D 6A */	lha r4, 0x1d6a(r31)
/* 809A04C8  4B 66 BE D4 */	b mDoMtx_XrotM__FPA4_fs
/* 809A04CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A04D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A04D4  A8 9F 1D 6E */	lha r4, 0x1d6e(r31)
/* 809A04D8  4B 66 BF F4 */	b mDoMtx_ZrotM__FPA4_fs
/* 809A04DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A04E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A04E4  80 9F 15 D0 */	lwz r4, 0x15d0(r31)
/* 809A04E8  38 84 00 24 */	addi r4, r4, 0x24
/* 809A04EC  4B 9A 5F C4 */	b PSMTXCopy
/* 809A04F0  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809A04F4  C0 5F 1D 5C */	lfs f2, 0x1d5c(r31)
/* 809A04F8  FC 60 08 90 */	fmr f3, f1
/* 809A04FC  4B 66 C8 A0 */	b transM__14mDoMtx_stack_cFfff
/* 809A0500  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A0504  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A0508  A8 9F 1D 68 */	lha r4, 0x1d68(r31)
/* 809A050C  4B 66 BF C0 */	b mDoMtx_ZrotM__FPA4_fs
/* 809A0510  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A0514  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A0518  38 9F 1B 38 */	addi r4, r31, 0x1b38
/* 809A051C  4B 9A 5F 94 */	b PSMTXCopy
/* 809A0520  80 7F 1B 34 */	lwz r3, 0x1b34(r31)
/* 809A0524  4B 6D B4 9C */	b Move__4dBgWFv
/* 809A0528  80 7F 15 D0 */	lwz r3, 0x15d0(r31)
/* 809A052C  81 83 00 00 */	lwz r12, 0(r3)
/* 809A0530  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 809A0534  7D 89 03 A6 */	mtctr r12
/* 809A0538  4E 80 04 21 */	bctrl 
/* 809A053C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A0540  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A0544  38 9F 24 90 */	addi r4, r31, 0x2490
/* 809A0548  4B 9A 5F 68 */	b PSMTXCopy
/* 809A054C  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 809A0550  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 809A0554  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 809A0558  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809A055C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 809A0560  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A0564  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A0568  38 9F 05 38 */	addi r4, r31, 0x538
/* 809A056C  7C 85 23 78 */	mr r5, r4
/* 809A0570  4B 9A 67 FC */	b PSMTXMultVec
/* 809A0574  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 809A0578  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 809A057C  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 809A0580  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 809A0584  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809A0588  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 809A058C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A0590  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A0594  38 9F 05 50 */	addi r4, r31, 0x550
/* 809A0598  7C 85 23 78 */	mr r5, r4
/* 809A059C  4B 9A 67 D0 */	b PSMTXMultVec
/* 809A05A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A05A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A05A8  7C 64 1B 78 */	mr r4, r3
/* 809A05AC  4B 9A 60 04 */	b PSMTXInverse
/* 809A05B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A05B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A05B8  38 9F 1B 68 */	addi r4, r31, 0x1b68
/* 809A05BC  4B 9A 5E F4 */	b PSMTXCopy
/* 809A05C0  38 7F 1B F0 */	addi r3, r31, 0x1bf0
/* 809A05C4  38 80 00 00 */	li r4, 0
/* 809A05C8  38 A0 00 00 */	li r5, 0
/* 809A05CC  81 9F 1C 00 */	lwz r12, 0x1c00(r31)
/* 809A05D0  81 8C 00 08 */	lwz r12, 8(r12)
/* 809A05D4  7D 89 03 A6 */	mtctr r12
/* 809A05D8  4E 80 04 21 */	bctrl 
/* 809A05DC  7F E3 FB 78 */	mr r3, r31
/* 809A05E0  48 00 01 49 */	bl calcRearWheelRotate__12daNpcCoach_cFv
/* 809A05E4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 809A05E8  28 00 00 00 */	cmplwi r0, 0
/* 809A05EC  41 82 01 14 */	beq lbl_809A0700
/* 809A05F0  80 7F 1D 4C */	lwz r3, 0x1d4c(r31)
/* 809A05F4  2C 03 00 00 */	cmpwi r3, 0
/* 809A05F8  40 81 00 0C */	ble lbl_809A0604
/* 809A05FC  38 03 FF FF */	addi r0, r3, -1
/* 809A0600  90 1F 1D 4C */	stw r0, 0x1d4c(r31)
lbl_809A0604:
/* 809A0604  38 7F 1C 14 */	addi r3, r31, 0x1c14
/* 809A0608  4B 6E 3E 58 */	b ChkTgHit__12dCcD_GObjInfFv
/* 809A060C  28 03 00 00 */	cmplwi r3, 0
/* 809A0610  41 82 00 F0 */	beq lbl_809A0700
/* 809A0614  80 1F 1D 4C */	lwz r0, 0x1d4c(r31)
/* 809A0618  2C 00 00 00 */	cmpwi r0, 0
/* 809A061C  40 82 00 E4 */	bne lbl_809A0700
/* 809A0620  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060053@ha */
/* 809A0624  38 03 00 53 */	addi r0, r3, 0x0053 /* 0x00060053@l */
/* 809A0628  90 01 00 0C */	stw r0, 0xc(r1)
/* 809A062C  38 7F 1B F0 */	addi r3, r31, 0x1bf0
/* 809A0630  38 81 00 0C */	addi r4, r1, 0xc
/* 809A0634  38 A0 00 00 */	li r5, 0
/* 809A0638  38 C0 FF FF */	li r6, -1
/* 809A063C  81 9F 1C 00 */	lwz r12, 0x1c00(r31)
/* 809A0640  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 809A0644  7D 89 03 A6 */	mtctr r12
/* 809A0648  4E 80 04 21 */	bctrl 
/* 809A064C  38 7E 00 00 */	addi r3, r30, 0
/* 809A0650  80 03 00 74 */	lwz r0, 0x74(r3)
/* 809A0654  3B A0 00 14 */	li r29, 0x14
/* 809A0658  7C 80 EB D6 */	divw r4, r0, r29
/* 809A065C  88 63 00 78 */	lbz r3, 0x78(r3)
/* 809A0660  80 1F 24 C4 */	lwz r0, 0x24c4(r31)
/* 809A0664  7C 00 23 D6 */	divw r0, r0, r4
/* 809A0668  7C 03 00 50 */	subf r0, r3, r0
/* 809A066C  7C 04 01 D6 */	mullw r0, r4, r0
/* 809A0670  90 1F 24 C4 */	stw r0, 0x24c4(r31)
/* 809A0674  80 1F 24 C4 */	lwz r0, 0x24c4(r31)
/* 809A0678  2C 00 00 00 */	cmpwi r0, 0
/* 809A067C  41 81 00 4C */	bgt lbl_809A06C8
/* 809A0680  38 00 00 00 */	li r0, 0
/* 809A0684  90 1F 24 C4 */	stw r0, 0x24c4(r31)
/* 809A0688  90 1F 24 C0 */	stw r0, 0x24c0(r31)
/* 809A068C  3B 40 00 00 */	li r26, 0
/* 809A0690  3B 80 00 00 */	li r28, 0
/* 809A0694  3B A0 FF FF */	li r29, -1
lbl_809A0698:
/* 809A0698  3B 3C 24 7C */	addi r25, r28, 0x247c
/* 809A069C  7C 7F C8 2E */	lwzx r3, r31, r25
/* 809A06A0  3C 03 00 01 */	addis r0, r3, 1
/* 809A06A4  28 00 FF FF */	cmplwi r0, 0xffff
/* 809A06A8  41 82 00 0C */	beq lbl_809A06B4
/* 809A06AC  4B 67 96 0C */	b fopAcM_delete__FUi
/* 809A06B0  7F BF C9 2E */	stwx r29, r31, r25
lbl_809A06B4:
/* 809A06B4  3B 5A 00 01 */	addi r26, r26, 1
/* 809A06B8  2C 1A 00 05 */	cmpwi r26, 5
/* 809A06BC  3B 9C 00 04 */	addi r28, r28, 4
/* 809A06C0  41 80 FF D8 */	blt lbl_809A0698
/* 809A06C4  48 00 00 3C */	b lbl_809A0700
lbl_809A06C8:
/* 809A06C8  93 BF 1D 4C */	stw r29, 0x1d4c(r31)
/* 809A06CC  3B 20 00 00 */	li r25, 0
/* 809A06D0  3B 80 00 00 */	li r28, 0
lbl_809A06D4:
/* 809A06D4  38 1C 24 7C */	addi r0, r28, 0x247c
/* 809A06D8  7C 7F 00 2E */	lwzx r3, r31, r0
/* 809A06DC  3C 03 00 01 */	addis r0, r3, 1
/* 809A06E0  28 00 FF FF */	cmplwi r0, 0xffff
/* 809A06E4  41 82 00 0C */	beq lbl_809A06F0
/* 809A06E8  4B 68 0C 70 */	b fpcEx_SearchByID__FUi
/* 809A06EC  93 A3 07 10 */	stw r29, 0x710(r3)
lbl_809A06F0:
/* 809A06F0  3B 39 00 01 */	addi r25, r25, 1
/* 809A06F4  2C 19 00 05 */	cmpwi r25, 5
/* 809A06F8  3B 9C 00 04 */	addi r28, r28, 4
/* 809A06FC  41 80 FF D8 */	blt lbl_809A06D4
lbl_809A0700:
/* 809A0700  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 809A0704  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 809A0708  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 809A070C  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 809A0710  39 61 00 B0 */	addi r11, r1, 0xb0
/* 809A0714  4B 9C 1B 04 */	b _restgpr_25
/* 809A0718  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 809A071C  7C 08 03 A6 */	mtlr r0
/* 809A0720  38 21 00 D0 */	addi r1, r1, 0xd0
/* 809A0724  4E 80 00 20 */	blr 
