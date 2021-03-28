lbl_80C84EA0:
/* 80C84EA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C84EA4  7C 08 02 A6 */	mflr r0
/* 80C84EA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C84EAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C84EB0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C84EB4  7C 7E 1B 78 */	mr r30, r3
/* 80C84EB8  3C 60 80 C8 */	lis r3, lit_3628@ha
/* 80C84EBC  3B E3 52 10 */	addi r31, r3, lit_3628@l
/* 80C84EC0  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80C84EC4  28 00 00 00 */	cmplwi r0, 0
/* 80C84EC8  40 82 00 50 */	bne lbl_80C84F18
/* 80C84ECC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C84ED0  7C 03 07 74 */	extsb r3, r0
/* 80C84ED4  4B 3A 81 98 */	b dComIfGp_getReverb__Fi
/* 80C84ED8  7C 67 1B 78 */	mr r7, r3
/* 80C84EDC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080189@ha */
/* 80C84EE0  38 03 01 89 */	addi r0, r3, 0x0189 /* 0x00080189@l */
/* 80C84EE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C84EE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C84EEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C84EF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C84EF4  38 81 00 0C */	addi r4, r1, 0xc
/* 80C84EF8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C84EFC  38 C0 00 00 */	li r6, 0
/* 80C84F00  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C84F04  FC 40 08 90 */	fmr f2, f1
/* 80C84F08  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C84F0C  FC 80 18 90 */	fmr f4, f3
/* 80C84F10  39 00 00 00 */	li r8, 0
/* 80C84F14  4B 62 75 F8 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C84F18:
/* 80C84F18  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80C84F1C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C84F20  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80C84F24  3C 80 80 C8 */	lis r4, l_HIO@ha
/* 80C84F28  38 84 53 6C */	addi r4, r4, l_HIO@l
/* 80C84F2C  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C84F30  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 80C84F34  4B 5E AA 48 */	b cLib_addCalc__FPfffff
/* 80C84F38  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C84F3C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C84F40  40 82 00 9C */	bne lbl_80C84FDC
/* 80C84F44  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80C84F48  28 00 00 00 */	cmplwi r0, 0
/* 80C84F4C  40 82 00 50 */	bne lbl_80C84F9C
/* 80C84F50  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C84F54  7C 03 07 74 */	extsb r3, r0
/* 80C84F58  4B 3A 81 14 */	b dComIfGp_getReverb__Fi
/* 80C84F5C  7C 67 1B 78 */	mr r7, r3
/* 80C84F60  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008018A@ha */
/* 80C84F64  38 03 01 8A */	addi r0, r3, 0x018A /* 0x0008018A@l */
/* 80C84F68  90 01 00 08 */	stw r0, 8(r1)
/* 80C84F6C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C84F70  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C84F74  80 63 00 00 */	lwz r3, 0(r3)
/* 80C84F78  38 81 00 08 */	addi r4, r1, 8
/* 80C84F7C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C84F80  38 C0 00 00 */	li r6, 0
/* 80C84F84  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C84F88  FC 40 08 90 */	fmr f2, f1
/* 80C84F8C  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C84F90  FC 80 18 90 */	fmr f4, f3
/* 80C84F94  39 00 00 00 */	li r8, 0
/* 80C84F98  4B 62 69 EC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C84F9C:
/* 80C84F9C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C84FA0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C84FA4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C84FA8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C84FAC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C84FB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C84FB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C84FB8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C84FBC  3C 80 80 C8 */	lis r4, l_HIO@ha
/* 80C84FC0  38 84 53 6C */	addi r4, r4, l_HIO@l
/* 80C84FC4  88 84 00 0C */	lbz r4, 0xc(r4)
/* 80C84FC8  38 A0 00 0F */	li r5, 0xf
/* 80C84FCC  38 C1 00 10 */	addi r6, r1, 0x10
/* 80C84FD0  4B 3E AA 54 */	b StartShock__12dVibration_cFii4cXyz
/* 80C84FD4  7F C3 F3 78 */	mr r3, r30
/* 80C84FD8  4B FF FD 4D */	bl init_modeWait__13daLv7BsGate_cFv
lbl_80C84FDC:
/* 80C84FDC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C84FE0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C84FE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C84FE8  7C 08 03 A6 */	mtlr r0
/* 80C84FEC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C84FF0  4E 80 00 20 */	blr 
