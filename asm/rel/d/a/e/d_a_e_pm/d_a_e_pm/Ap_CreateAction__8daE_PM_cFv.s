lbl_80743D8C:
/* 80743D8C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80743D90  7C 08 02 A6 */	mflr r0
/* 80743D94  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80743D98  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80743D9C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80743DA0  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80743DA4  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80743DA8  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80743DAC  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 80743DB0  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 80743DB4  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 80743DB8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80743DBC  4B C1 E4 18 */	b _savegpr_27
/* 80743DC0  7C 7E 1B 78 */	mr r30, r3
/* 80743DC4  3C 80 80 75 */	lis r4, lit_3910@ha
/* 80743DC8  3B E4 BF 3C */	addi r31, r4, lit_3910@l
/* 80743DCC  C0 5F 01 00 */	lfs f2, 0x100(r31)
/* 80743DD0  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80743DD4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80743DD8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80743DDC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80743DE0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80743DE4  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80743DE8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80743DEC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80743DF0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80743DF4  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80743DF8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80743DFC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80743E00  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80743E04  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80743E08  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80743E0C  88 03 06 11 */	lbz r0, 0x611(r3)
/* 80743E10  2C 00 00 02 */	cmpwi r0, 2
/* 80743E14  41 82 03 8C */	beq lbl_807441A0
/* 80743E18  40 80 00 14 */	bge lbl_80743E2C
/* 80743E1C  2C 00 00 00 */	cmpwi r0, 0
/* 80743E20  41 82 00 18 */	beq lbl_80743E38
/* 80743E24  40 80 01 4C */	bge lbl_80743F70
/* 80743E28  48 00 06 80 */	b lbl_807444A8
lbl_80743E2C:
/* 80743E2C  2C 00 00 04 */	cmpwi r0, 4
/* 80743E30  40 80 06 78 */	bge lbl_807444A8
/* 80743E34  48 00 05 90 */	b lbl_807443C4
lbl_80743E38:
/* 80743E38  80 BE 06 1C */	lwz r5, 0x61c(r30)
/* 80743E3C  2C 05 00 0F */	cmpwi r5, 0xf
/* 80743E40  41 82 00 44 */	beq lbl_80743E84
/* 80743E44  38 80 00 0F */	li r4, 0xf
/* 80743E48  38 A0 00 00 */	li r5, 0
/* 80743E4C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80743E50  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80743E54  4B FF E8 21 */	bl SetAnm__8daE_PM_cFiiff
/* 80743E58  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700E5@ha */
/* 80743E5C  38 03 00 E5 */	addi r0, r3, 0x00E5 /* 0x000700E5@l */
/* 80743E60  90 01 00 18 */	stw r0, 0x18(r1)
/* 80743E64  38 7E 07 20 */	addi r3, r30, 0x720
/* 80743E68  38 81 00 18 */	addi r4, r1, 0x18
/* 80743E6C  38 A0 FF FF */	li r5, -1
/* 80743E70  81 9E 07 20 */	lwz r12, 0x720(r30)
/* 80743E74  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80743E78  7D 89 03 A6 */	mtctr r12
/* 80743E7C  4E 80 04 21 */	bctrl 
/* 80743E80  48 00 06 28 */	b lbl_807444A8
lbl_80743E84:
/* 80743E84  80 7E 07 04 */	lwz r3, 0x704(r30)
/* 80743E88  38 80 00 01 */	li r4, 1
/* 80743E8C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80743E90  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80743E94  40 82 00 14 */	bne lbl_80743EA8
/* 80743E98  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80743E9C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80743EA0  41 82 00 08 */	beq lbl_80743EA8
/* 80743EA4  38 80 00 00 */	li r4, 0
lbl_80743EA8:
/* 80743EA8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80743EAC  41 82 05 FC */	beq lbl_807444A8
/* 80743EB0  2C 05 00 0F */	cmpwi r5, 0xf
/* 80743EB4  40 82 05 F4 */	bne lbl_807444A8
/* 80743EB8  7F C3 F3 78 */	mr r3, r30
/* 80743EBC  38 80 00 0E */	li r4, 0xe
/* 80743EC0  38 A0 00 02 */	li r5, 2
/* 80743EC4  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80743EC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80743ECC  4B FF E7 A9 */	bl SetAnm__8daE_PM_cFiiff
/* 80743ED0  38 00 00 50 */	li r0, 0x50
/* 80743ED4  B0 1E 06 20 */	sth r0, 0x620(r30)
/* 80743ED8  88 7E 06 11 */	lbz r3, 0x611(r30)
/* 80743EDC  38 03 00 01 */	addi r0, r3, 1
/* 80743EE0  98 1E 06 11 */	stb r0, 0x611(r30)
/* 80743EE4  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80743EE8  38 63 C1 48 */	addi r3, r3, stringBase0@l
/* 80743EEC  38 80 00 19 */	li r4, 0x19
/* 80743EF0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80743EF4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80743EF8  3C A5 00 02 */	addis r5, r5, 2
/* 80743EFC  38 C0 00 80 */	li r6, 0x80
/* 80743F00  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80743F04  4B 8F 83 E8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80743F08  7C 64 1B 78 */	mr r4, r3
/* 80743F0C  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 80743F10  38 A0 00 02 */	li r5, 2
/* 80743F14  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80743F18  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80743F1C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80743F20  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80743F24  38 C0 00 00 */	li r6, 0
/* 80743F28  4B 8C C4 54 */	b setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 80743F2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80743F30  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80743F34  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80743F38  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80743F3C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80743F40  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 80743F44  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80743F48  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 80743F4C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80743F50  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 80743F54  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80743F58  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 80743F5C  38 81 00 40 */	addi r4, r1, 0x40
/* 80743F60  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80743F64  38 C1 00 64 */	addi r6, r1, 0x64
/* 80743F68  4B B2 CE 58 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80743F6C  48 00 05 3C */	b lbl_807444A8
lbl_80743F70:
/* 80743F70  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007005A@ha */
/* 80743F74  38 03 00 5A */	addi r0, r3, 0x005A /* 0x0007005A@l */
/* 80743F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80743F7C  38 7E 07 20 */	addi r3, r30, 0x720
/* 80743F80  38 81 00 14 */	addi r4, r1, 0x14
/* 80743F84  38 A0 00 00 */	li r5, 0
/* 80743F88  38 C0 FF FF */	li r6, -1
/* 80743F8C  81 9E 07 20 */	lwz r12, 0x720(r30)
/* 80743F90  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80743F94  7D 89 03 A6 */	mtctr r12
/* 80743F98  4E 80 04 21 */	bctrl 
/* 80743F9C  A8 1E 06 20 */	lha r0, 0x620(r30)
/* 80743FA0  2C 00 00 02 */	cmpwi r0, 2
/* 80743FA4  40 82 01 1C */	bne lbl_807440C0
/* 80743FA8  80 1E 06 1C */	lwz r0, 0x61c(r30)
/* 80743FAC  2C 00 00 0E */	cmpwi r0, 0xe
/* 80743FB0  40 82 01 10 */	bne lbl_807440C0
/* 80743FB4  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80743FB8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80743FBC  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80743FC0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80743FC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80743FC8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80743FCC  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80743FD0  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 80743FD4  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80743FD8  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 80743FDC  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80743FE0  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 80743FE4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80743FE8  D0 1E 06 A4 */	stfs f0, 0x6a4(r30)
/* 80743FEC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80743FF0  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 80743FF4  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80743FF8  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 80743FFC  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80744000  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 80744004  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80744008  D0 1E 06 9C */	stfs f0, 0x69c(r30)
/* 8074400C  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80744010  D0 1E 06 A0 */	stfs f0, 0x6a0(r30)
/* 80744014  C0 1E 06 98 */	lfs f0, 0x698(r30)
/* 80744018  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
/* 8074401C  C0 1E 06 9C */	lfs f0, 0x69c(r30)
/* 80744020  D0 1E 06 B4 */	stfs f0, 0x6b4(r30)
/* 80744024  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 80744028  D0 1E 06 B8 */	stfs f0, 0x6b8(r30)
/* 8074402C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80744030  4B 8C 8D 34 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80744034  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80744038  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8074403C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80744040  4B 8C 83 F4 */	b mDoMtx_YrotM__FPA4_fs
/* 80744044  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80744048  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8074404C  38 81 00 64 */	addi r4, r1, 0x64
/* 80744050  7C 85 23 78 */	mr r5, r4
/* 80744054  4B C0 2D 18 */	b PSMTXMultVec
/* 80744058  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8074405C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80744060  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80744064  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80744068  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8074406C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80744070  7F C3 F3 78 */	mr r3, r30
/* 80744074  38 81 00 34 */	addi r4, r1, 0x34
/* 80744078  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8074407C  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80744080  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80744084  4B FF F2 11 */	bl SetStopCam__8daE_PM_cF4cXyzffs
/* 80744088  38 00 00 0A */	li r0, 0xa
/* 8074408C  B0 1E 06 22 */	sth r0, 0x622(r30)
/* 80744090  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 80744094  38 80 00 00 */	li r4, 0
/* 80744098  4B 90 D7 18 */	b dPath_GetPnt__FPC5dPathi
/* 8074409C  C0 03 00 04 */	lfs f0, 4(r3)
/* 807440A0  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 807440A4  C0 03 00 08 */	lfs f0, 8(r3)
/* 807440A8  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 807440AC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807440B0  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 807440B4  38 00 00 00 */	li r0, 0
/* 807440B8  98 1E 05 DC */	stb r0, 0x5dc(r30)
/* 807440BC  48 00 00 D8 */	b lbl_80744194
lbl_807440C0:
/* 807440C0  A8 1E 06 22 */	lha r0, 0x622(r30)
/* 807440C4  2C 00 00 01 */	cmpwi r0, 1
/* 807440C8  40 82 00 CC */	bne lbl_80744194
/* 807440CC  3B 60 00 00 */	li r27, 0
/* 807440D0  3B A0 00 00 */	li r29, 0
/* 807440D4  C3 FF 01 00 */	lfs f31, 0x100(r31)
/* 807440D8  C3 DF 00 00 */	lfs f30, 0(r31)
/* 807440DC  CB BF 00 A0 */	lfd f29, 0xa0(r31)
/* 807440E0  3F 80 43 30 */	lis r28, 0x4330
/* 807440E4  C3 9F 01 04 */	lfs f28, 0x104(r31)
lbl_807440E8:
/* 807440E8  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 807440EC  90 01 00 84 */	stw r0, 0x84(r1)
/* 807440F0  93 81 00 80 */	stw r28, 0x80(r1)
/* 807440F4  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 807440F8  EC 00 E8 28 */	fsubs f0, f0, f29
/* 807440FC  EC 3E 00 32 */	fmuls f1, f30, f0
/* 80744100  EC 1F 08 2A */	fadds f0, f31, f1
/* 80744104  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80744108  D3 81 00 44 */	stfs f28, 0x44(r1)
/* 8074410C  FC 00 08 50 */	fneg f0, f1
/* 80744110  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80744114  38 61 00 64 */	addi r3, r1, 0x64
/* 80744118  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8074411C  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80744120  38 C1 00 40 */	addi r6, r1, 0x40
/* 80744124  4B B2 CC 9C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80744128  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8074412C  7C 07 07 74 */	extsb r7, r0
/* 80744130  38 00 00 00 */	li r0, 0
/* 80744134  90 01 00 08 */	stw r0, 8(r1)
/* 80744138  38 60 01 D8 */	li r3, 0x1d8
/* 8074413C  28 1E 00 00 */	cmplwi r30, 0
/* 80744140  41 82 00 0C */	beq lbl_8074414C
/* 80744144  80 9E 00 04 */	lwz r4, 4(r30)
/* 80744148  48 00 00 08 */	b lbl_80744150
lbl_8074414C:
/* 8074414C  38 80 FF FF */	li r4, -1
lbl_80744150:
/* 80744150  38 A0 00 00 */	li r5, 0
/* 80744154  38 C1 00 64 */	addi r6, r1, 0x64
/* 80744158  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8074415C  39 20 00 00 */	li r9, 0
/* 80744160  39 40 FF FF */	li r10, -1
/* 80744164  4B 8D 5D 8C */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80744168  38 1D 05 AC */	addi r0, r29, 0x5ac
/* 8074416C  7C 7E 01 2E */	stwx r3, r30, r0
/* 80744170  3B 7B 00 01 */	addi r27, r27, 1
/* 80744174  2C 1B 00 02 */	cmpwi r27, 2
/* 80744178  3B BD 00 04 */	addi r29, r29, 4
/* 8074417C  41 80 FF 6C */	blt lbl_807440E8
/* 80744180  38 00 00 64 */	li r0, 0x64
/* 80744184  B0 1E 06 20 */	sth r0, 0x620(r30)
/* 80744188  88 7E 06 11 */	lbz r3, 0x611(r30)
/* 8074418C  38 03 00 01 */	addi r0, r3, 1
/* 80744190  98 1E 06 11 */	stb r0, 0x611(r30)
lbl_80744194:
/* 80744194  7F C3 F3 78 */	mr r3, r30
/* 80744198  4B FF EE 1D */	bl SetGakkiEffect__8daE_PM_cFv
/* 8074419C  48 00 03 0C */	b lbl_807444A8
lbl_807441A0:
/* 807441A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007005A@ha */
/* 807441A4  38 03 00 5A */	addi r0, r3, 0x005A /* 0x0007005A@l */
/* 807441A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807441AC  38 7E 07 20 */	addi r3, r30, 0x720
/* 807441B0  38 81 00 10 */	addi r4, r1, 0x10
/* 807441B4  38 A0 00 00 */	li r5, 0
/* 807441B8  38 C0 FF FF */	li r6, -1
/* 807441BC  81 9E 07 20 */	lwz r12, 0x720(r30)
/* 807441C0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807441C4  7D 89 03 A6 */	mtctr r12
/* 807441C8  4E 80 04 21 */	bctrl 
/* 807441CC  A8 1E 06 20 */	lha r0, 0x620(r30)
/* 807441D0  2C 00 00 01 */	cmpwi r0, 1
/* 807441D4  40 82 00 D0 */	bne lbl_807442A4
/* 807441D8  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 807441DC  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 807441E0  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 807441E4  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 807441E8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807441EC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807441F0  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 807441F4  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 807441F8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807441FC  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80744200  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80744204  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80744208  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8074420C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80744210  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80744214  4B 8C 8B 50 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80744218  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8074421C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80744220  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80744224  4B 8C 82 10 */	b mDoMtx_YrotM__FPA4_fs
/* 80744228  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8074422C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80744230  38 81 00 64 */	addi r4, r1, 0x64
/* 80744234  7C 85 23 78 */	mr r5, r4
/* 80744238  4B C0 2B 34 */	b PSMTXMultVec
/* 8074423C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80744240  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80744244  38 81 00 4C */	addi r4, r1, 0x4c
/* 80744248  7C 85 23 78 */	mr r5, r4
/* 8074424C  4B C0 2B 20 */	b PSMTXMultVec
/* 80744250  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80744254  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80744258  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8074425C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80744260  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80744264  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80744268  7F C3 F3 78 */	mr r3, r30
/* 8074426C  38 81 00 28 */	addi r4, r1, 0x28
/* 80744270  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80744274  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80744278  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 8074427C  4B FF F0 19 */	bl SetStopCam__8daE_PM_cF4cXyzffs
/* 80744280  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80744284  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80744288  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8074428C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80744290  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80744294  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80744298  38 00 00 0A */	li r0, 0xa
/* 8074429C  B0 1E 06 22 */	sth r0, 0x622(r30)
/* 807442A0  48 00 01 14 */	b lbl_807443B4
lbl_807442A4:
/* 807442A4  A8 1E 06 22 */	lha r0, 0x622(r30)
/* 807442A8  2C 00 00 01 */	cmpwi r0, 1
/* 807442AC  40 82 01 08 */	bne lbl_807443B4
/* 807442B0  3B 60 00 02 */	li r27, 2
/* 807442B4  3B A0 00 08 */	li r29, 8
/* 807442B8  C3 9F 01 20 */	lfs f28, 0x120(r31)
/* 807442BC  C3 BF 00 00 */	lfs f29, 0(r31)
/* 807442C0  CB DF 00 A0 */	lfd f30, 0xa0(r31)
/* 807442C4  3F 80 43 30 */	lis r28, 0x4330
/* 807442C8  C3 FF 01 04 */	lfs f31, 0x104(r31)
lbl_807442CC:
/* 807442CC  38 1B FF FE */	addi r0, r27, -2
/* 807442D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807442D4  90 01 00 84 */	stw r0, 0x84(r1)
/* 807442D8  93 81 00 80 */	stw r28, 0x80(r1)
/* 807442DC  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 807442E0  EC 00 F0 28 */	fsubs f0, f0, f30
/* 807442E4  EC 3D 00 32 */	fmuls f1, f29, f0
/* 807442E8  EC 1C 08 28 */	fsubs f0, f28, f1
/* 807442EC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807442F0  D3 E1 00 44 */	stfs f31, 0x44(r1)
/* 807442F4  FC 00 08 50 */	fneg f0, f1
/* 807442F8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807442FC  38 61 00 64 */	addi r3, r1, 0x64
/* 80744300  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80744304  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80744308  38 C1 00 40 */	addi r6, r1, 0x40
/* 8074430C  4B B2 CA B4 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80744310  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80744314  7C 07 07 74 */	extsb r7, r0
/* 80744318  38 00 00 00 */	li r0, 0
/* 8074431C  90 01 00 08 */	stw r0, 8(r1)
/* 80744320  38 60 01 D8 */	li r3, 0x1d8
/* 80744324  28 1E 00 00 */	cmplwi r30, 0
/* 80744328  41 82 00 0C */	beq lbl_80744334
/* 8074432C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80744330  48 00 00 08 */	b lbl_80744338
lbl_80744334:
/* 80744334  38 80 FF FF */	li r4, -1
lbl_80744338:
/* 80744338  38 A0 00 00 */	li r5, 0
/* 8074433C  38 C1 00 64 */	addi r6, r1, 0x64
/* 80744340  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80744344  39 20 00 00 */	li r9, 0
/* 80744348  39 40 FF FF */	li r10, -1
/* 8074434C  4B 8D 5B A4 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80744350  38 1D 05 AC */	addi r0, r29, 0x5ac
/* 80744354  7C 7E 01 2E */	stwx r3, r30, r0
/* 80744358  3B 7B 00 01 */	addi r27, r27, 1
/* 8074435C  2C 1B 00 04 */	cmpwi r27, 4
/* 80744360  3B BD 00 04 */	addi r29, r29, 4
/* 80744364  41 80 FF 68 */	blt lbl_807442CC
/* 80744368  38 00 00 02 */	li r0, 2
/* 8074436C  98 1E 05 DC */	stb r0, 0x5dc(r30)
/* 80744370  C0 5E 05 EC */	lfs f2, 0x5ec(r30)
/* 80744374  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 80744378  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 8074437C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80744380  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 80744384  D0 5E 04 D8 */	stfs f2, 0x4d8(r30)
/* 80744388  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8074438C  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80744390  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80744394  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80744398  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8074439C  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 807443A0  38 00 00 64 */	li r0, 0x64
/* 807443A4  B0 1E 06 20 */	sth r0, 0x620(r30)
/* 807443A8  88 7E 06 11 */	lbz r3, 0x611(r30)
/* 807443AC  38 03 00 01 */	addi r0, r3, 1
/* 807443B0  98 1E 06 11 */	stb r0, 0x611(r30)
lbl_807443B4:
/* 807443B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807443B8  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 807443BC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807443C0  48 00 00 E8 */	b lbl_807444A8
lbl_807443C4:
/* 807443C4  A8 1E 06 20 */	lha r0, 0x620(r30)
/* 807443C8  2C 00 00 00 */	cmpwi r0, 0
/* 807443CC  40 82 00 DC */	bne lbl_807444A8
/* 807443D0  38 00 00 01 */	li r0, 1
/* 807443D4  98 1E 06 18 */	stb r0, 0x618(r30)
/* 807443D8  38 00 00 02 */	li r0, 2
/* 807443DC  98 1E 06 10 */	stb r0, 0x610(r30)
/* 807443E0  38 80 00 16 */	li r4, 0x16
/* 807443E4  38 A0 00 02 */	li r5, 2
/* 807443E8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807443EC  FC 40 08 90 */	fmr f2, f1
/* 807443F0  4B FF E2 85 */	bl SetAnm__8daE_PM_cFiiff
/* 807443F4  C0 5E 05 EC */	lfs f2, 0x5ec(r30)
/* 807443F8  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 807443FC  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 80744400  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80744404  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 80744408  D0 5E 04 D8 */	stfs f2, 0x4d8(r30)
/* 8074440C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80744410  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80744414  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80744418  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8074441C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80744420  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80744424  C0 5E 05 EC */	lfs f2, 0x5ec(r30)
/* 80744428  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 8074442C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80744430  EC 21 00 2A */	fadds f1, f1, f0
/* 80744434  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 80744438  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8074443C  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80744440  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80744444  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80744448  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8074444C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80744450  7F C3 F3 78 */	mr r3, r30
/* 80744454  38 81 00 1C */	addi r4, r1, 0x1c
/* 80744458  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8074445C  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 80744460  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80744464  38 05 10 00 */	addi r0, r5, 0x1000
/* 80744468  7C 05 07 34 */	extsh r5, r0
/* 8074446C  4B FF EE 29 */	bl SetStopCam__8daE_PM_cF4cXyzffs
/* 80744470  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80744474  38 03 C0 00 */	addi r0, r3, -16384
/* 80744478  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8074447C  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80744480  38 03 C0 00 */	addi r0, r3, -16384
/* 80744484  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80744488  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8074448C  B0 1E 06 02 */	sth r0, 0x602(r30)
/* 80744490  38 00 00 32 */	li r0, 0x32
/* 80744494  B0 1E 06 20 */	sth r0, 0x620(r30)
/* 80744498  38 00 00 00 */	li r0, 0
/* 8074449C  98 1E 06 11 */	stb r0, 0x611(r30)
/* 807444A0  38 00 00 02 */	li r0, 2
/* 807444A4  98 1E 05 DC */	stb r0, 0x5dc(r30)
lbl_807444A8:
/* 807444A8  7F C3 F3 78 */	mr r3, r30
/* 807444AC  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 807444B0  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 807444B4  4B FF F0 71 */	bl SetMoveCam__8daE_PM_cFff
/* 807444B8  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 807444BC  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 807444C0  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 807444C4  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 807444C8  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 807444CC  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 807444D0  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 807444D4  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 807444D8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807444DC  4B C1 DD 44 */	b _restgpr_27
/* 807444E0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 807444E4  7C 08 03 A6 */	mtlr r0
/* 807444E8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 807444EC  4E 80 00 20 */	blr 
