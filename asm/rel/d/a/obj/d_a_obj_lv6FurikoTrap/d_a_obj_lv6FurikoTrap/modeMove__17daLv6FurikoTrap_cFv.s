lbl_80C72D38:
/* 80C72D38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C72D3C  7C 08 02 A6 */	mflr r0
/* 80C72D40  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C72D44  39 61 00 40 */	addi r11, r1, 0x40
/* 80C72D48  4B 6E F4 95 */	bl _savegpr_29
/* 80C72D4C  7C 7E 1B 78 */	mr r30, r3
/* 80C72D50  3C 60 80 C7 */	lis r3, lit_3625@ha /* 0x80C73130@ha */
/* 80C72D54  3B E3 31 30 */	addi r31, r3, lit_3625@l /* 0x80C73130@l */
/* 80C72D58  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80C72D5C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C72D60  3C 60 80 C7 */	lis r3, l_HIO@ha /* 0x80C732D4@ha */
/* 80C72D64  38 83 32 D4 */	addi r4, r3, l_HIO@l /* 0x80C732D4@l */
/* 80C72D68  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C72D6C  EC 41 00 32 */	fmuls f2, f1, f0
/* 80C72D70  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C72D74  C0 04 00 04 */	lfs f0, 4(r4)
/* 80C72D78  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C72D7C  EC 02 00 24 */	fdivs f0, f2, f0
/* 80C72D80  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C72D84  FC 00 00 1E */	fctiwz f0, f0
/* 80C72D88  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C72D8C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C72D90  B0 1E 05 AE */	sth r0, 0x5ae(r30)
/* 80C72D94  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C72D98  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C72D9C  38 A3 00 04 */	addi r5, r3, 4
/* 80C72DA0  A8 1E 05 B0 */	lha r0, 0x5b0(r30)
/* 80C72DA4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C72DA8  7C 25 04 2E */	lfsx f1, r5, r0
/* 80C72DAC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C72DB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C72DB4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C72DB8  FC 00 00 1E */	fctiwz f0, f0
/* 80C72DBC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C72DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C72DC4  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80C72DC8  A8 7E 05 B0 */	lha r3, 0x5b0(r30)
/* 80C72DCC  A8 1E 05 AE */	lha r0, 0x5ae(r30)
/* 80C72DD0  7C 03 02 14 */	add r0, r3, r0
/* 80C72DD4  B0 1E 05 B0 */	sth r0, 0x5b0(r30)
/* 80C72DD8  A8 1E 05 B0 */	lha r0, 0x5b0(r30)
/* 80C72DDC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C72DE0  7C 05 04 2E */	lfsx f0, r5, r0
/* 80C72DE4  FC 00 02 10 */	fabs f0, f0
/* 80C72DE8  FC 20 00 18 */	frsp f1, f0
/* 80C72DEC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C72DF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C72DF4  40 81 00 C0 */	ble lbl_80C72EB4
/* 80C72DF8  88 1E 05 B2 */	lbz r0, 0x5b2(r30)
/* 80C72DFC  28 00 00 00 */	cmplwi r0, 0
/* 80C72E00  40 82 00 B4 */	bne lbl_80C72EB4
/* 80C72E04  38 00 00 03 */	li r0, 3
/* 80C72E08  98 1E 05 B2 */	stb r0, 0x5b2(r30)
/* 80C72E0C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80C72E10  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C72E14  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C72E18  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C72E1C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C72E20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C72E24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C72E28  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80C72E2C  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C72E30  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C72E34  4B 39 93 D5 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80C72E38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C72E3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C72E40  38 81 00 0C */	addi r4, r1, 0xc
/* 80C72E44  7C 85 23 78 */	mr r5, r4
/* 80C72E48  4B 6D 3F 25 */	bl PSMTXMultVec
/* 80C72E4C  38 61 00 0C */	addi r3, r1, 0xc
/* 80C72E50  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C72E54  7C 65 1B 78 */	mr r5, r3
/* 80C72E58  4B 6D 42 39 */	bl PSVECAdd
/* 80C72E5C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C72E60  7C 03 07 74 */	extsb r3, r0
/* 80C72E64  4B 3B A2 09 */	bl dComIfGp_getReverb__Fi
/* 80C72E68  7C 7D 1B 78 */	mr r29, r3
/* 80C72E6C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C72E70  4B 6E F2 3D */	bl __cvt_fp2unsigned
/* 80C72E74  7C 66 1B 78 */	mr r6, r3
/* 80C72E78  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F6@ha */
/* 80C72E7C  38 03 01 F6 */	addi r0, r3, 0x01F6 /* 0x000801F6@l */
/* 80C72E80  90 01 00 08 */	stw r0, 8(r1)
/* 80C72E84  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C72E88  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C72E8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C72E90  38 81 00 08 */	addi r4, r1, 8
/* 80C72E94  38 A1 00 0C */	addi r5, r1, 0xc
/* 80C72E98  7F A7 EB 78 */	mr r7, r29
/* 80C72E9C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C72EA0  FC 40 08 90 */	fmr f2, f1
/* 80C72EA4  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 80C72EA8  FC 80 18 90 */	fmr f4, f3
/* 80C72EAC  39 00 00 00 */	li r8, 0
/* 80C72EB0  4B 63 8A D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C72EB4:
/* 80C72EB4  88 7E 05 B2 */	lbz r3, 0x5b2(r30)
/* 80C72EB8  28 03 00 00 */	cmplwi r3, 0
/* 80C72EBC  41 82 00 0C */	beq lbl_80C72EC8
/* 80C72EC0  38 03 FF FF */	addi r0, r3, -1
/* 80C72EC4  98 1E 05 B2 */	stb r0, 0x5b2(r30)
lbl_80C72EC8:
/* 80C72EC8  39 61 00 40 */	addi r11, r1, 0x40
/* 80C72ECC  4B 6E F3 5D */	bl _restgpr_29
/* 80C72ED0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C72ED4  7C 08 03 A6 */	mtlr r0
/* 80C72ED8  38 21 00 40 */	addi r1, r1, 0x40
/* 80C72EDC  4E 80 00 20 */	blr 
