lbl_80997D94:
/* 80997D94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80997D98  7C 08 02 A6 */	mflr r0
/* 80997D9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80997DA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80997DA4  7C 7F 1B 78 */	mr r31, r3
/* 80997DA8  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80997DAC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80997DB0  FC 00 02 10 */	fabs f0, f0
/* 80997DB4  FC 20 00 18 */	frsp f1, f0
/* 80997DB8  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80997DBC  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80997DC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80997DC4  7C 00 00 26 */	mfcr r0
/* 80997DC8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80997DCC  40 82 00 74 */	bne lbl_80997E40
/* 80997DD0  3C 60 80 9A */	lis r3, l_motionAnmData@ha
/* 80997DD4  38 83 9C 00 */	addi r4, r3, l_motionAnmData@l
/* 80997DD8  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80997DDC  54 00 10 3A */	slwi r0, r0, 2
/* 80997DE0  3C 60 80 9A */	lis r3, l_resNameList@ha
/* 80997DE4  38 63 9A F0 */	addi r3, r3, l_resNameList@l
/* 80997DE8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80997DEC  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 80997DF0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80997DF4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80997DF8  3C A5 00 02 */	addis r5, r5, 2
/* 80997DFC  38 C0 00 80 */	li r6, 0x80
/* 80997E00  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80997E04  4B 6A 44 E8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80997E08  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80997E0C  80 04 00 08 */	lwz r0, 8(r4)
/* 80997E10  7C 03 00 40 */	cmplw r3, r0
/* 80997E14  40 82 00 2C */	bne lbl_80997E40
/* 80997E18  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500F7@ha */
/* 80997E1C  38 03 00 F7 */	addi r0, r3, 0x00F7 /* 0x000500F7@l */
/* 80997E20  90 01 00 08 */	stw r0, 8(r1)
/* 80997E24  38 7F 05 80 */	addi r3, r31, 0x580
/* 80997E28  38 81 00 08 */	addi r4, r1, 8
/* 80997E2C  38 A0 FF FF */	li r5, -1
/* 80997E30  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80997E34  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80997E38  7D 89 03 A6 */	mtctr r12
/* 80997E3C  4E 80 04 21 */	bctrl 
lbl_80997E40:
/* 80997E40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80997E44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80997E48  7C 08 03 A6 */	mtlr r0
/* 80997E4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80997E50  4E 80 00 20 */	blr 
