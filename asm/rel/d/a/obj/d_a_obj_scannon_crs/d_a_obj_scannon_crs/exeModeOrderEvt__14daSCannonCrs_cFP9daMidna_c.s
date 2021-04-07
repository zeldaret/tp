lbl_80CC9F80:
/* 80CC9F80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CC9F84  7C 08 02 A6 */	mflr r0
/* 80CC9F88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CC9F8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC9F90  4B 69 82 49 */	bl _savegpr_28
/* 80CC9F94  7C 7E 1B 78 */	mr r30, r3
/* 80CC9F98  3C 60 80 CD */	lis r3, DISAP_PARTICLE_NAME@ha /* 0x80CCB080@ha */
/* 80CC9F9C  3B E3 B0 80 */	addi r31, r3, DISAP_PARTICLE_NAME@l /* 0x80CCB080@l */
/* 80CC9FA0  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80CC9FA4  28 00 00 01 */	cmplwi r0, 1
/* 80CC9FA8  40 82 01 5C */	bne lbl_80CCA104
/* 80CC9FAC  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 80CC9FB0  D0 04 09 AC */	stfs f0, 0x9ac(r4)
/* 80CC9FB4  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 80CC9FB8  D0 04 09 B0 */	stfs f0, 0x9b0(r4)
/* 80CC9FBC  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80CC9FC0  D0 04 09 B4 */	stfs f0, 0x9b4(r4)
/* 80CC9FC4  80 04 08 90 */	lwz r0, 0x890(r4)
/* 80CC9FC8  64 00 08 00 */	oris r0, r0, 0x800
/* 80CC9FCC  60 00 04 00 */	ori r0, r0, 0x400
/* 80CC9FD0  90 04 08 90 */	stw r0, 0x890(r4)
/* 80CC9FD4  38 64 04 D0 */	addi r3, r4, 0x4d0
/* 80CC9FD8  38 9E 05 74 */	addi r4, r30, 0x574
/* 80CC9FDC  4B 67 D3 C1 */	bl PSVECSquareDistance
/* 80CC9FE0  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80CC9FE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC9FE8  40 81 00 58 */	ble lbl_80CCA040
/* 80CC9FEC  FC 00 08 34 */	frsqrte f0, f1
/* 80CC9FF0  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80CC9FF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80CC9FF8  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80CC9FFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80CCA000  FC 01 00 32 */	fmul f0, f1, f0
/* 80CCA004  FC 03 00 28 */	fsub f0, f3, f0
/* 80CCA008  FC 02 00 32 */	fmul f0, f2, f0
/* 80CCA00C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CCA010  FC 00 00 32 */	fmul f0, f0, f0
/* 80CCA014  FC 01 00 32 */	fmul f0, f1, f0
/* 80CCA018  FC 03 00 28 */	fsub f0, f3, f0
/* 80CCA01C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CCA020  FC 44 00 32 */	fmul f2, f4, f0
/* 80CCA024  FC 00 00 32 */	fmul f0, f0, f0
/* 80CCA028  FC 01 00 32 */	fmul f0, f1, f0
/* 80CCA02C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CCA030  FC 02 00 32 */	fmul f0, f2, f0
/* 80CCA034  FC 21 00 32 */	fmul f1, f1, f0
/* 80CCA038  FC 20 08 18 */	frsp f1, f1
/* 80CCA03C  48 00 00 88 */	b lbl_80CCA0C4
lbl_80CCA040:
/* 80CCA040  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80CCA044  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CCA048  40 80 00 10 */	bge lbl_80CCA058
/* 80CCA04C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CCA050  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CCA054  48 00 00 70 */	b lbl_80CCA0C4
lbl_80CCA058:
/* 80CCA058  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CCA05C  80 81 00 08 */	lwz r4, 8(r1)
/* 80CCA060  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CCA064  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CCA068  7C 03 00 00 */	cmpw r3, r0
/* 80CCA06C  41 82 00 14 */	beq lbl_80CCA080
/* 80CCA070  40 80 00 40 */	bge lbl_80CCA0B0
/* 80CCA074  2C 03 00 00 */	cmpwi r3, 0
/* 80CCA078  41 82 00 20 */	beq lbl_80CCA098
/* 80CCA07C  48 00 00 34 */	b lbl_80CCA0B0
lbl_80CCA080:
/* 80CCA080  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CCA084  41 82 00 0C */	beq lbl_80CCA090
/* 80CCA088  38 00 00 01 */	li r0, 1
/* 80CCA08C  48 00 00 28 */	b lbl_80CCA0B4
lbl_80CCA090:
/* 80CCA090  38 00 00 02 */	li r0, 2
/* 80CCA094  48 00 00 20 */	b lbl_80CCA0B4
lbl_80CCA098:
/* 80CCA098  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CCA09C  41 82 00 0C */	beq lbl_80CCA0A8
/* 80CCA0A0  38 00 00 05 */	li r0, 5
/* 80CCA0A4  48 00 00 10 */	b lbl_80CCA0B4
lbl_80CCA0A8:
/* 80CCA0A8  38 00 00 03 */	li r0, 3
/* 80CCA0AC  48 00 00 08 */	b lbl_80CCA0B4
lbl_80CCA0B0:
/* 80CCA0B0  38 00 00 04 */	li r0, 4
lbl_80CCA0B4:
/* 80CCA0B4  2C 00 00 01 */	cmpwi r0, 1
/* 80CCA0B8  40 82 00 0C */	bne lbl_80CCA0C4
/* 80CCA0BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CCA0C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CCA0C4:
/* 80CCA0C4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80CCA0C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CCA0CC  40 80 01 5C */	bge lbl_80CCA228
/* 80CCA0D0  38 00 00 03 */	li r0, 3
/* 80CCA0D4  98 1E 06 4E */	stb r0, 0x64e(r30)
/* 80CCA0D8  38 7E 05 80 */	addi r3, r30, 0x580
/* 80CCA0DC  7F C4 F3 78 */	mr r4, r30
/* 80CCA0E0  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 80CCA0E4  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80CCA0E8  38 C0 00 00 */	li r6, 0
/* 80CCA0EC  38 E0 00 00 */	li r7, 0
/* 80CCA0F0  4B 57 FE A1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80CCA0F4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CCA0F8  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80CCA0FC  4B 36 59 9D */	bl dComIfGp_TargetWarpPt_set__FUc
/* 80CCA100  48 00 01 28 */	b lbl_80CCA228
lbl_80CCA104:
/* 80CCA104  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCA108  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCA10C  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 80CCA110  7F 83 E3 78 */	mr r3, r28
/* 80CCA114  A8 9E 06 4C */	lha r4, 0x64c(r30)
/* 80CCA118  4B 37 D8 E1 */	bl startCheck__16dEvent_manager_cFs
/* 80CCA11C  2C 03 00 00 */	cmpwi r3, 0
/* 80CCA120  41 82 00 84 */	beq lbl_80CCA1A4
/* 80CCA124  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80CCA128  7F C4 F3 78 */	mr r4, r30
/* 80CCA12C  4B 37 95 31 */	bl setPt2__14dEvt_control_cFPv
/* 80CCA130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCA134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCA138  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CCA13C  28 03 00 00 */	cmplwi r3, 0
/* 80CCA140  41 82 00 38 */	beq lbl_80CCA178
/* 80CCA144  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80CCA148  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CCA14C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80CCA150  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CCA154  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CCA158  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CCA15C  38 81 00 0C */	addi r4, r1, 0xc
/* 80CCA160  38 A0 40 00 */	li r5, 0x4000
/* 80CCA164  38 C0 00 00 */	li r6, 0
/* 80CCA168  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CCA16C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CCA170  7D 89 03 A6 */	mtctr r12
/* 80CCA174  4E 80 04 21 */	bctrl 
lbl_80CCA178:
/* 80CCA178  7F 83 E3 78 */	mr r3, r28
/* 80CCA17C  3C 80 80 CD */	lis r4, l_staffName@ha /* 0x80CCB184@ha */
/* 80CCA180  38 84 B1 84 */	addi r4, r4, l_staffName@l /* 0x80CCB184@l */
/* 80CCA184  80 84 00 00 */	lwz r4, 0(r4)
/* 80CCA188  38 A0 00 00 */	li r5, 0
/* 80CCA18C  38 C0 00 00 */	li r6, 0
/* 80CCA190  4B 37 D9 8D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80CCA194  90 7E 06 3C */	stw r3, 0x63c(r30)
/* 80CCA198  38 00 00 04 */	li r0, 4
/* 80CCA19C  98 1E 06 4E */	stb r0, 0x64e(r30)
/* 80CCA1A0  48 00 00 88 */	b lbl_80CCA228
lbl_80CCA1A4:
/* 80CCA1A4  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80CCA1A8  60 00 00 01 */	ori r0, r0, 1
/* 80CCA1AC  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 80CCA1B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCA1B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCA1B8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80CCA1BC  28 03 00 00 */	cmplwi r3, 0
/* 80CCA1C0  41 82 00 44 */	beq lbl_80CCA204
/* 80CCA1C4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CCA1C8  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80CCA1CC  7D 89 03 A6 */	mtctr r12
/* 80CCA1D0  4E 80 04 21 */	bctrl 
/* 80CCA1D4  28 03 00 00 */	cmplwi r3, 0
/* 80CCA1D8  40 82 00 2C */	bne lbl_80CCA204
/* 80CCA1DC  88 1E 06 52 */	lbz r0, 0x652(r30)
/* 80CCA1E0  28 00 00 00 */	cmplwi r0, 0
/* 80CCA1E4  41 82 00 10 */	beq lbl_80CCA1F4
/* 80CCA1E8  38 00 00 0A */	li r0, 0xa
/* 80CCA1EC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80CCA1F0  48 00 00 14 */	b lbl_80CCA204
lbl_80CCA1F4:
/* 80CCA1F4  38 7D 5B 48 */	addi r3, r29, 0x5b48
/* 80CCA1F8  7F C4 F3 78 */	mr r4, r30
/* 80CCA1FC  38 A0 01 FF */	li r5, 0x1ff
/* 80CCA200  4B 3A 96 FD */	bl request__10dAttHint_cFP10fopAc_ac_ci
lbl_80CCA204:
/* 80CCA204  7F C3 F3 78 */	mr r3, r30
/* 80CCA208  48 00 08 BD */	bl chkInTalkRange__14daSCannonCrs_cFv
/* 80CCA20C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CCA210  40 82 00 18 */	bne lbl_80CCA228
/* 80CCA214  38 00 00 00 */	li r0, 0
/* 80CCA218  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80CCA21C  98 1E 06 52 */	stb r0, 0x652(r30)
/* 80CCA220  38 00 00 01 */	li r0, 1
/* 80CCA224  98 1E 06 4E */	stb r0, 0x64e(r30)
lbl_80CCA228:
/* 80CCA228  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCA22C  4B 69 7F F9 */	bl _restgpr_28
/* 80CCA230  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CCA234  7C 08 03 A6 */	mtlr r0
/* 80CCA238  38 21 00 30 */	addi r1, r1, 0x30
/* 80CCA23C  4E 80 00 20 */	blr 
