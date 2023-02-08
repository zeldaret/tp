lbl_80B5571C:
/* 80B5571C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B55720  7C 08 02 A6 */	mflr r0
/* 80B55724  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B55728  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80B5572C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80B55730  39 61 00 70 */	addi r11, r1, 0x70
/* 80B55734  4B 80 CA A9 */	bl _savegpr_29
/* 80B55738  7C 7E 1B 78 */	mr r30, r3
/* 80B5573C  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha /* 0x80B5D794@ha */
/* 80B55740  3B E3 D7 94 */	addi r31, r3, m__17daNpc_ykM_Param_c@l /* 0x80B5D794@l */
/* 80B55744  88 1E 15 7B */	lbz r0, 0x157b(r30)
/* 80B55748  28 00 00 00 */	cmplwi r0, 0
/* 80B5574C  41 82 02 F8 */	beq lbl_80B55A44
/* 80B55750  88 1E 15 7E */	lbz r0, 0x157e(r30)
/* 80B55754  28 00 00 00 */	cmplwi r0, 0
/* 80B55758  40 82 02 EC */	bne lbl_80B55A44
/* 80B5575C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B55760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B55764  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B55768  38 9E 07 7C */	addi r4, r30, 0x77c
/* 80B5576C  4B 51 F6 E5 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80B55770  2C 03 00 0D */	cmpwi r3, 0xd
/* 80B55774  40 82 01 3C */	bne lbl_80B558B0
/* 80B55778  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 80B5577C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80B55780  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B55784  40 80 01 2C */	bge lbl_80B558B0
/* 80B55788  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B5578C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B55790  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B55794  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80B55798  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B5579C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B557A0  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80B557A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B557A8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B557AC  38 60 00 00 */	li r3, 0
/* 80B557B0  90 61 00 08 */	stw r3, 8(r1)
/* 80B557B4  90 61 00 0C */	stw r3, 0xc(r1)
/* 80B557B8  38 00 FF FF */	li r0, -1
/* 80B557BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B557C0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B557C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B557C8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B557CC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B557D0  80 9E 15 70 */	lwz r4, 0x1570(r30)
/* 80B557D4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B8F@ha */
/* 80B557D8  38 A5 8B 8F */	addi r5, r5, 0x8B8F /* 0x00008B8F@l */
/* 80B557DC  38 DE 07 7C */	addi r6, r30, 0x77c
/* 80B557E0  38 E1 00 4C */	addi r7, r1, 0x4c
/* 80B557E4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80B557E8  39 3E 0D 78 */	addi r9, r30, 0xd78
/* 80B557EC  39 40 00 00 */	li r10, 0
/* 80B557F0  4B 4F 7E B5 */	bl setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80B557F4  90 7E 15 70 */	stw r3, 0x1570(r30)
/* 80B557F8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B557FC  38 63 02 10 */	addi r3, r3, 0x210
/* 80B55800  80 9E 15 70 */	lwz r4, 0x1570(r30)
/* 80B55804  4B 4F 61 15 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80B55808  28 03 00 00 */	cmplwi r3, 0
/* 80B5580C  41 82 00 A4 */	beq lbl_80B558B0
/* 80B55810  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80B55814  38 9F 00 00 */	addi r4, r31, 0
/* 80B55818  C0 04 00 B4 */	lfs f0, 0xb4(r4)
/* 80B5581C  EC 41 00 24 */	fdivs f2, f1, f0
/* 80B55820  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80B55824  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B55828  40 81 00 08 */	ble lbl_80B55830
/* 80B5582C  FC 40 00 90 */	fmr f2, f0
lbl_80B55830:
/* 80B55830  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80B55834  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80B55838  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B5583C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B55840  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80B55844  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80B55848  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B5584C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B55850  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80B55854  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 80B55858  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 80B5585C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B55860  EC 01 00 2A */	fadds f0, f1, f0
/* 80B55864  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B55868  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B5586C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B55870  E0 21 00 40 */	psq_l f1, 64(r1), 0, 0 /* qr0 */
/* 80B55874  FC 00 00 18 */	frsp f0, f0
/* 80B55878  F0 21 00 34 */	psq_st f1, 52(r1), 0, 0 /* qr0 */
/* 80B5587C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B55880  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80B55884  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B55888  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80B5588C  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 80B55890  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 80B55894  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 80B55898  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B5589C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B558A0  FC 00 00 1E */	fctiwz f0, f0
/* 80B558A4  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80B558A8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80B558AC  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_80B558B0:
/* 80B558B0  C0 3E 0D F4 */	lfs f1, 0xdf4(r30)
/* 80B558B4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B558B8  EF E1 00 28 */	fsubs f31, f1, f0
/* 80B558BC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80B558C0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B558C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B558C8  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80B558CC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B558D0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B558D4  C0 5E 04 C4 */	lfs f2, 0x4c4(r30)
/* 80B558D8  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80B558DC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B558E0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B558E4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80B558E8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B558EC  38 81 00 28 */	addi r4, r1, 0x28
/* 80B558F0  4B 7F 1A AD */	bl PSVECSquareDistance
/* 80B558F4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B558F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B558FC  40 81 00 58 */	ble lbl_80B55954
/* 80B55900  FC 00 08 34 */	frsqrte f0, f1
/* 80B55904  C8 9F 01 60 */	lfd f4, 0x160(r31)
/* 80B55908  FC 44 00 32 */	fmul f2, f4, f0
/* 80B5590C  C8 7F 01 68 */	lfd f3, 0x168(r31)
/* 80B55910  FC 00 00 32 */	fmul f0, f0, f0
/* 80B55914  FC 01 00 32 */	fmul f0, f1, f0
/* 80B55918  FC 03 00 28 */	fsub f0, f3, f0
/* 80B5591C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B55920  FC 44 00 32 */	fmul f2, f4, f0
/* 80B55924  FC 00 00 32 */	fmul f0, f0, f0
/* 80B55928  FC 01 00 32 */	fmul f0, f1, f0
/* 80B5592C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B55930  FC 02 00 32 */	fmul f0, f2, f0
/* 80B55934  FC 44 00 32 */	fmul f2, f4, f0
/* 80B55938  FC 00 00 32 */	fmul f0, f0, f0
/* 80B5593C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B55940  FC 03 00 28 */	fsub f0, f3, f0
/* 80B55944  FC 02 00 32 */	fmul f0, f2, f0
/* 80B55948  FC 21 00 32 */	fmul f1, f1, f0
/* 80B5594C  FC 20 08 18 */	frsp f1, f1
/* 80B55950  48 00 00 88 */	b lbl_80B559D8
lbl_80B55954:
/* 80B55954  C8 1F 01 70 */	lfd f0, 0x170(r31)
/* 80B55958  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B5595C  40 80 00 10 */	bge lbl_80B5596C
/* 80B55960  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B55964  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B55968  48 00 00 70 */	b lbl_80B559D8
lbl_80B5596C:
/* 80B5596C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B55970  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80B55974  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B55978  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B5597C  7C 03 00 00 */	cmpw r3, r0
/* 80B55980  41 82 00 14 */	beq lbl_80B55994
/* 80B55984  40 80 00 40 */	bge lbl_80B559C4
/* 80B55988  2C 03 00 00 */	cmpwi r3, 0
/* 80B5598C  41 82 00 20 */	beq lbl_80B559AC
/* 80B55990  48 00 00 34 */	b lbl_80B559C4
lbl_80B55994:
/* 80B55994  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B55998  41 82 00 0C */	beq lbl_80B559A4
/* 80B5599C  38 00 00 01 */	li r0, 1
/* 80B559A0  48 00 00 28 */	b lbl_80B559C8
lbl_80B559A4:
/* 80B559A4  38 00 00 02 */	li r0, 2
/* 80B559A8  48 00 00 20 */	b lbl_80B559C8
lbl_80B559AC:
/* 80B559AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B559B0  41 82 00 0C */	beq lbl_80B559BC
/* 80B559B4  38 00 00 05 */	li r0, 5
/* 80B559B8  48 00 00 10 */	b lbl_80B559C8
lbl_80B559BC:
/* 80B559BC  38 00 00 03 */	li r0, 3
/* 80B559C0  48 00 00 08 */	b lbl_80B559C8
lbl_80B559C4:
/* 80B559C4  38 00 00 04 */	li r0, 4
lbl_80B559C8:
/* 80B559C8  2C 00 00 01 */	cmpwi r0, 1
/* 80B559CC  40 82 00 0C */	bne lbl_80B559D8
/* 80B559D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B559D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B559D8:
/* 80B559D8  A8 1E 0D CA */	lha r0, 0xdca(r30)
/* 80B559DC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B559E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B559E4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B559E8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80B559EC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B559F0  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B559F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B559F8  40 80 00 08 */	bge lbl_80B55A00
/* 80B559FC  FC 20 00 90 */	fmr f1, f0
lbl_80B55A00:
/* 80B55A00  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 80B55A04  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B55A08  4C 40 13 82 */	cror 2, 0, 2
/* 80B55A0C  40 82 00 38 */	bne lbl_80B55A44
/* 80B55A10  C0 1E 08 D0 */	lfs f0, 0x8d0(r30)
/* 80B55A14  FC 00 00 50 */	fneg f0, f0
/* 80B55A18  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B55A1C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B55A20  4C 41 13 82 */	cror 2, 1, 2
/* 80B55A24  40 82 00 20 */	bne lbl_80B55A44
/* 80B55A28  C0 1E 0D F4 */	lfs f0, 0xdf4(r30)
/* 80B55A2C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B55A30  80 1E 06 B8 */	lwz r0, 0x6b8(r30)
/* 80B55A34  60 00 00 20 */	ori r0, r0, 0x20
/* 80B55A38  90 1E 06 B8 */	stw r0, 0x6b8(r30)
/* 80B55A3C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B55A40  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80B55A44:
/* 80B55A44  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80B55A48  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80B55A4C  39 61 00 70 */	addi r11, r1, 0x70
/* 80B55A50  4B 80 C7 D9 */	bl _restgpr_29
/* 80B55A54  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B55A58  7C 08 03 A6 */	mtlr r0
/* 80B55A5C  38 21 00 80 */	addi r1, r1, 0x80
/* 80B55A60  4E 80 00 20 */	blr 
