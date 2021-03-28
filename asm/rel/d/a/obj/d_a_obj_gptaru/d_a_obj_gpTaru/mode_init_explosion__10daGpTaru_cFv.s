lbl_8057EE2C:
/* 8057EE2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057EE30  7C 08 02 A6 */	mflr r0
/* 8057EE34  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057EE38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057EE3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8057EE40  7C 7F 1B 78 */	mr r31, r3
/* 8057EE44  3C 60 80 58 */	lis r3, lit_3656@ha
/* 8057EE48  3B C3 F5 70 */	addi r30, r3, lit_3656@l
/* 8057EE4C  C0 1F 09 A4 */	lfs f0, 0x9a4(r31)
/* 8057EE50  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 8057EE54  88 1F 09 A8 */	lbz r0, 0x9a8(r31)
/* 8057EE58  2C 00 00 01 */	cmpwi r0, 1
/* 8057EE5C  41 82 00 50 */	beq lbl_8057EEAC
/* 8057EE60  40 80 00 84 */	bge lbl_8057EEE4
/* 8057EE64  2C 00 00 00 */	cmpwi r0, 0
/* 8057EE68  40 80 00 08 */	bge lbl_8057EE70
/* 8057EE6C  48 00 00 78 */	b lbl_8057EEE4
lbl_8057EE70:
/* 8057EE70  38 7F 09 A4 */	addi r3, r31, 0x9a4
/* 8057EE74  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8057EE78  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 8057EE7C  C0 7E 00 CC */	lfs f3, 0xcc(r30)
/* 8057EE80  C0 9E 00 D0 */	lfs f4, 0xd0(r30)
/* 8057EE84  4B CF 0A F8 */	b cLib_addCalc__FPfffff
/* 8057EE88  C0 3F 09 A4 */	lfs f1, 0x9a4(r31)
/* 8057EE8C  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 8057EE90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057EE94  4C 41 13 82 */	cror 2, 1, 2
/* 8057EE98  40 82 00 4C */	bne lbl_8057EEE4
/* 8057EE9C  88 7F 09 A8 */	lbz r3, 0x9a8(r31)
/* 8057EEA0  38 03 00 01 */	addi r0, r3, 1
/* 8057EEA4  98 1F 09 A8 */	stb r0, 0x9a8(r31)
/* 8057EEA8  48 00 00 3C */	b lbl_8057EEE4
lbl_8057EEAC:
/* 8057EEAC  38 7F 09 A4 */	addi r3, r31, 0x9a4
/* 8057EEB0  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8057EEB4  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 8057EEB8  C0 7E 00 DC */	lfs f3, 0xdc(r30)
/* 8057EEBC  C0 9E 00 E0 */	lfs f4, 0xe0(r30)
/* 8057EEC0  4B CF 0A BC */	b cLib_addCalc__FPfffff
/* 8057EEC4  C0 3F 09 A4 */	lfs f1, 0x9a4(r31)
/* 8057EEC8  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8057EECC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057EED0  4C 40 13 82 */	cror 2, 0, 2
/* 8057EED4  40 82 00 10 */	bne lbl_8057EEE4
/* 8057EED8  88 7F 09 A8 */	lbz r3, 0x9a8(r31)
/* 8057EEDC  38 03 00 01 */	addi r0, r3, 1
/* 8057EEE0  98 1F 09 A8 */	stb r0, 0x9a8(r31)
lbl_8057EEE4:
/* 8057EEE4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8057EEE8  7C 03 07 74 */	extsb r3, r0
/* 8057EEEC  4B AA E1 80 */	b dComIfGp_getReverb__Fi
/* 8057EEF0  7C 67 1B 78 */	mr r7, r3
/* 8057EEF4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008013B@ha */
/* 8057EEF8  38 03 01 3B */	addi r0, r3, 0x013B /* 0x0008013B@l */
/* 8057EEFC  90 01 00 08 */	stw r0, 8(r1)
/* 8057EF00  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8057EF04  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8057EF08  80 63 00 00 */	lwz r3, 0(r3)
/* 8057EF0C  38 81 00 08 */	addi r4, r1, 8
/* 8057EF10  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8057EF14  38 C0 00 00 */	li r6, 0
/* 8057EF18  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8057EF1C  FC 40 08 90 */	fmr f2, f1
/* 8057EF20  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 8057EF24  FC 80 18 90 */	fmr f4, f3
/* 8057EF28  39 00 00 00 */	li r8, 0
/* 8057EF2C  4B D2 CA 58 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8057EF30  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8057EF34  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8057EF38  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8057EF3C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8057EF40  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8057EF44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057EF48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057EF4C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8057EF50  3C 80 80 58 */	lis r4, l_HIO@ha
/* 8057EF54  38 84 F8 E4 */	addi r4, r4, l_HIO@l
/* 8057EF58  88 84 00 11 */	lbz r4, 0x11(r4)
/* 8057EF5C  38 A0 00 0F */	li r5, 0xf
/* 8057EF60  38 C1 00 0C */	addi r6, r1, 0xc
/* 8057EF64  4B AF 0A C0 */	b StartShock__12dVibration_cFii4cXyz
/* 8057EF68  7F E3 FB 78 */	mr r3, r31
/* 8057EF6C  48 00 01 99 */	bl breakEffSet__10daGpTaru_cFv
/* 8057EF70  38 00 00 20 */	li r0, 0x20
/* 8057EF74  90 1F 08 08 */	stw r0, 0x808(r31)
/* 8057EF78  38 00 00 04 */	li r0, 4
/* 8057EF7C  98 1F 08 0C */	stb r0, 0x80c(r31)
/* 8057EF80  3C 60 80 58 */	lis r3, l_HIO@ha
/* 8057EF84  38 63 F8 E4 */	addi r3, r3, l_HIO@l
/* 8057EF88  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8057EF8C  D0 1F 09 48 */	stfs f0, 0x948(r31)
/* 8057EF90  38 00 00 05 */	li r0, 5
/* 8057EF94  98 1F 05 78 */	stb r0, 0x578(r31)
/* 8057EF98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057EF9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8057EFA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057EFA4  7C 08 03 A6 */	mtlr r0
/* 8057EFA8  38 21 00 20 */	addi r1, r1, 0x20
/* 8057EFAC  4E 80 00 20 */	blr 
