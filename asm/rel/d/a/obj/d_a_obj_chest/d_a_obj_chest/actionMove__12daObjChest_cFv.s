lbl_80BC9BF0:
/* 80BC9BF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BC9BF4  7C 08 02 A6 */	mflr r0
/* 80BC9BF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BC9BFC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BC9C00  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BC9C04  7C 7E 1B 78 */	mr r30, r3
/* 80BC9C08  3C 60 80 BD */	lis r3, l_cyl_src@ha /* 0x80BC9FFC@ha */
/* 80BC9C0C  3B E3 9F FC */	addi r31, r3, l_cyl_src@l /* 0x80BC9FFC@l */
/* 80BC9C10  38 7E 0A 91 */	addi r3, r30, 0xa91
/* 80BC9C14  48 00 03 99 */	bl func_80BC9FAC
/* 80BC9C18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC9C1C  40 82 01 C8 */	bne lbl_80BC9DE4
/* 80BC9C20  A8 7E 0A 8A */	lha r3, 0xa8a(r30)
/* 80BC9C24  38 03 00 80 */	addi r0, r3, 0x80
/* 80BC9C28  B0 1E 0A 8A */	sth r0, 0xa8a(r30)
/* 80BC9C2C  38 7E 0A 84 */	addi r3, r30, 0xa84
/* 80BC9C30  38 9E 0A 8A */	addi r4, r30, 0xa8a
/* 80BC9C34  4B 69 D8 29 */	bl __apl__5csXyzFR5csXyz
/* 80BC9C38  A8 1E 0A 84 */	lha r0, 0xa84(r30)
/* 80BC9C3C  C8 3F 00 48 */	lfd f1, 0x48(r31)
/* 80BC9C40  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BC9C44  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BC9C48  3C 00 43 30 */	lis r0, 0x4330
/* 80BC9C4C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BC9C50  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BC9C54  EC 20 08 28 */	fsubs f1, f0, f1
/* 80BC9C58  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80BC9C5C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BC9C60  D0 1E 0A A0 */	stfs f0, 0xaa0(r30)
/* 80BC9C64  C0 3E 0A A0 */	lfs f1, 0xaa0(r30)
/* 80BC9C68  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BC9C6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC9C70  40 81 00 08 */	ble lbl_80BC9C78
/* 80BC9C74  D0 1E 0A A0 */	stfs f0, 0xaa0(r30)
lbl_80BC9C78:
/* 80BC9C78  A8 1E 0A 84 */	lha r0, 0xa84(r30)
/* 80BC9C7C  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80BC9C80  40 81 01 64 */	ble lbl_80BC9DE4
/* 80BC9C84  38 00 40 00 */	li r0, 0x4000
/* 80BC9C88  B0 1E 0A 84 */	sth r0, 0xa84(r30)
/* 80BC9C8C  38 00 00 00 */	li r0, 0
/* 80BC9C90  B0 1E 0A 8A */	sth r0, 0xa8a(r30)
/* 80BC9C94  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80BC9C98  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BC9C9C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BC9CA0  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80BC9CA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BC9CA8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BC9CAC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BC9CB0  D0 3E 0A 78 */	stfs f1, 0xa78(r30)
/* 80BC9CB4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80BC9CB8  D0 1E 0A 7C */	stfs f0, 0xa7c(r30)
/* 80BC9CBC  D0 3E 0A 80 */	stfs f1, 0xa80(r30)
/* 80BC9CC0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BC9CC4  4B 44 30 A1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BC9CC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC9CCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC9CD0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BC9CD4  4B 44 27 61 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BC9CD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC9CDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC9CE0  A8 9E 0A 84 */	lha r4, 0xa84(r30)
/* 80BC9CE4  4B 44 26 B9 */	bl mDoMtx_XrotM__FPA4_fs
/* 80BC9CE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC9CEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC9CF0  38 9E 0A 78 */	addi r4, r30, 0xa78
/* 80BC9CF4  7C 85 23 78 */	mr r5, r4
/* 80BC9CF8  4B 77 D0 75 */	bl PSMTXMultVec
/* 80BC9CFC  38 7E 0A 78 */	addi r3, r30, 0xa78
/* 80BC9D00  4B 45 3F BD */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80BC9D04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC9D08  41 82 00 DC */	beq lbl_80BC9DE4
/* 80BC9D0C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80BC9D10  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80BC9D14  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BC9D18  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BC9D1C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BC9D20  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80BC9D24  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BC9D28  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BC9D2C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BC9D30  38 61 00 0C */	addi r3, r1, 0xc
/* 80BC9D34  7C 64 1B 78 */	mr r4, r3
/* 80BC9D38  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80BC9D3C  4B 77 D3 9D */	bl PSVECScale
/* 80BC9D40  38 60 03 01 */	li r3, 0x301
/* 80BC9D44  38 80 00 03 */	li r4, 3
/* 80BC9D48  38 BE 0A 78 */	addi r5, r30, 0xa78
/* 80BC9D4C  38 C0 FF FF */	li r6, -1
/* 80BC9D50  38 E0 00 00 */	li r7, 0
/* 80BC9D54  39 01 00 0C */	addi r8, r1, 0xc
/* 80BC9D58  39 20 FF FF */	li r9, -1
/* 80BC9D5C  4B 45 00 3D */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80BC9D60  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BC9D64  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BC9D68  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BC9D6C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BC9D70  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BC9D74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC9D78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC9D7C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BC9D80  38 80 00 04 */	li r4, 4
/* 80BC9D84  38 A0 00 1F */	li r5, 0x1f
/* 80BC9D88  38 C1 00 18 */	addi r6, r1, 0x18
/* 80BC9D8C  4B 4A 5C 99 */	bl StartShock__12dVibration_cFii4cXyz
/* 80BC9D90  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BC9D94  7C 03 07 74 */	extsb r3, r0
/* 80BC9D98  4B 46 32 D5 */	bl dComIfGp_getReverb__Fi
/* 80BC9D9C  7C 67 1B 78 */	mr r7, r3
/* 80BC9DA0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080111@ha */
/* 80BC9DA4  38 03 01 11 */	addi r0, r3, 0x0111 /* 0x00080111@l */
/* 80BC9DA8  90 01 00 08 */	stw r0, 8(r1)
/* 80BC9DAC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BC9DB0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BC9DB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC9DB8  38 81 00 08 */	addi r4, r1, 8
/* 80BC9DBC  38 BE 0A 78 */	addi r5, r30, 0xa78
/* 80BC9DC0  38 C0 00 00 */	li r6, 0
/* 80BC9DC4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BC9DC8  FC 40 08 90 */	fmr f2, f1
/* 80BC9DCC  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80BC9DD0  FC 80 18 90 */	fmr f4, f3
/* 80BC9DD4  39 00 00 00 */	li r8, 0
/* 80BC9DD8  4B 6E 1B AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC9DDC  38 00 00 02 */	li r0, 2
/* 80BC9DE0  98 1E 0A 90 */	stb r0, 0xa90(r30)
lbl_80BC9DE4:
/* 80BC9DE4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BC9DE8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BC9DEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BC9DF0  7C 08 03 A6 */	mtlr r0
/* 80BC9DF4  38 21 00 40 */	addi r1, r1, 0x40
/* 80BC9DF8  4E 80 00 20 */	blr 
