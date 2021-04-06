lbl_8060B544:
/* 8060B544  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8060B548  7C 08 02 A6 */	mflr r0
/* 8060B54C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8060B550  39 61 00 70 */	addi r11, r1, 0x70
/* 8060B554  4B D5 6C 85 */	bl _savegpr_28
/* 8060B558  7C 7F 1B 78 */	mr r31, r3
/* 8060B55C  3C 80 80 61 */	lis r4, lit_3928@ha /* 0x8060FDE0@ha */
/* 8060B560  3B A4 FD E0 */	addi r29, r4, lit_3928@l /* 0x8060FDE0@l */
/* 8060B564  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060B568  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060B56C  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 8060B570  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8060B574  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8060B578  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8060B57C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8060B580  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8060B584  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8060B588  88 03 0A FA */	lbz r0, 0xafa(r3)
/* 8060B58C  28 00 00 04 */	cmplwi r0, 4
/* 8060B590  41 80 00 08 */	blt lbl_8060B598
/* 8060B594  4B FF BD 09 */	bl setBloodEffect__9daB_MGN_cFv
lbl_8060B598:
/* 8060B598  88 1F 0A FA */	lbz r0, 0xafa(r31)
/* 8060B59C  28 00 00 0F */	cmplwi r0, 0xf
/* 8060B5A0  41 81 08 B4 */	bgt lbl_8060BE54
/* 8060B5A4  3C 60 80 61 */	lis r3, lit_6839@ha /* 0x806102C8@ha */
/* 8060B5A8  38 63 02 C8 */	addi r3, r3, lit_6839@l /* 0x806102C8@l */
/* 8060B5AC  54 00 10 3A */	slwi r0, r0, 2
/* 8060B5B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8060B5B4  7C 09 03 A6 */	mtctr r0
/* 8060B5B8  4E 80 04 20 */	bctr 
lbl_8060B5BC:
/* 8060B5BC  7F E3 FB 78 */	mr r3, r31
/* 8060B5C0  4B FF C7 49 */	bl onBodyCo__9daB_MGN_cFv
/* 8060B5C4  C0 3D 01 48 */	lfs f1, 0x148(r29)
/* 8060B5C8  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 8060B5CC  EC 61 00 32 */	fmuls f3, f1, f0
/* 8060B5D0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8060B5D4  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8060B5D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8060B5DC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8060B5E0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8060B5E4  7C 03 04 2E */	lfsx f0, r3, r0
/* 8060B5E8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8060B5EC  EC 41 00 2A */	fadds f2, f1, f0
/* 8060B5F0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8060B5F4  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 8060B5F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8060B5FC  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8060B600  7C 63 02 14 */	add r3, r3, r0
/* 8060B604  C0 03 00 04 */	lfs f0, 4(r3)
/* 8060B608  EC 03 00 32 */	fmuls f0, f3, f0
/* 8060B60C  EC 01 00 2A */	fadds f0, f1, f0
/* 8060B610  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8060B614  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8060B618  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8060B61C  40 81 00 08 */	ble lbl_8060B624
/* 8060B620  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8060B624:
/* 8060B624  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8060B628  C0 1D 01 4C */	lfs f0, 0x14c(r29)
/* 8060B62C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060B630  40 80 00 08 */	bge lbl_8060B638
/* 8060B634  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8060B638:
/* 8060B638  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8060B63C  C0 1D 01 50 */	lfs f0, 0x150(r29)
/* 8060B640  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060B644  40 81 00 08 */	ble lbl_8060B64C
/* 8060B648  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_8060B64C:
/* 8060B64C  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8060B650  C0 1D 01 54 */	lfs f0, 0x154(r29)
/* 8060B654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060B658  40 80 00 08 */	bge lbl_8060B660
/* 8060B65C  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_8060B660:
/* 8060B660  7F E3 FB 78 */	mr r3, r31
/* 8060B664  38 81 00 40 */	addi r4, r1, 0x40
/* 8060B668  38 A0 00 01 */	li r5, 1
/* 8060B66C  4B FF B6 01 */	bl setHideSmokeEffect__9daB_MGN_cFP4cXyzUc
/* 8060B670  90 7F 0B 10 */	stw r3, 0xb10(r31)
/* 8060B674  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8060B678  D0 1F 0A E8 */	stfs f0, 0xae8(r31)
/* 8060B67C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8060B680  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8060B684  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8060B688  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8060B68C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8060B690  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8060B694  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8060B698  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8060B69C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8060B6A0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8060B6A4  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8060B6A8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8060B6AC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8060B6B0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8060B6B4  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8060B6B8  7F E3 FB 78 */	mr r3, r31
/* 8060B6BC  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8060B6C0  4B A0 F0 51 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8060B6C4  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8060B6C8  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 8060B6CC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8060B6D0  B0 1F 0B 14 */	sth r0, 0xb14(r31)
/* 8060B6D4  B0 1F 0B 16 */	sth r0, 0xb16(r31)
/* 8060B6D8  38 00 00 01 */	li r0, 1
/* 8060B6DC  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060B6E0  38 00 00 3C */	li r0, 0x3c
/* 8060B6E4  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 8060B6E8  7F E3 FB 78 */	mr r3, r31
/* 8060B6EC  38 80 00 19 */	li r4, 0x19
/* 8060B6F0  38 A0 00 02 */	li r5, 2
/* 8060B6F4  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8060B6F8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8060B6FC  4B FF C2 29 */	bl setBck__9daB_MGN_cFiUcff
/* 8060B700  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060B704  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060B708  38 63 00 07 */	addi r3, r3, 7
/* 8060B70C  38 80 00 3A */	li r4, 0x3a
/* 8060B710  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060B714  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060B718  3C A5 00 02 */	addis r5, r5, 2
/* 8060B71C  38 C0 00 80 */	li r6, 0x80
/* 8060B720  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8060B724  4B A3 0B C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060B728  7C 65 1B 78 */	mr r5, r3
/* 8060B72C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060B730  80 63 00 04 */	lwz r3, 4(r3)
/* 8060B734  80 83 00 04 */	lwz r4, 4(r3)
/* 8060B738  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8060B73C  38 84 00 58 */	addi r4, r4, 0x58
/* 8060B740  38 C0 00 01 */	li r6, 1
/* 8060B744  38 E0 00 00 */	li r7, 0
/* 8060B748  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060B74C  39 00 00 00 */	li r8, 0
/* 8060B750  39 20 FF FF */	li r9, -1
/* 8060B754  4B A0 1E E9 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
lbl_8060B758:
/* 8060B758  38 7F 0A E8 */	addi r3, r31, 0xae8
/* 8060B75C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8060B760  C0 5D 01 58 */	lfs f2, 0x158(r29)
/* 8060B764  4B C6 4F DD */	bl cLib_chaseF__FPfff
/* 8060B768  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 8060B76C  2C 00 00 00 */	cmpwi r0, 0
/* 8060B770  40 82 00 60 */	bne lbl_8060B7D0
/* 8060B774  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 8060B778  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8060B77C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8060B780  38 00 00 00 */	li r0, 0
/* 8060B784  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8060B788  98 1F 0A FD */	stb r0, 0xafd(r31)
/* 8060B78C  C0 1D 01 5C */	lfs f0, 0x15c(r29)
/* 8060B790  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8060B794  38 00 00 04 */	li r0, 4
/* 8060B798  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060B79C  7F E3 FB 78 */	mr r3, r31
/* 8060B7A0  4B FF C5 11 */	bl onBodyFallAt__9daB_MGN_cFv
/* 8060B7A4  38 60 00 0A */	li r3, 0xa
/* 8060B7A8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8060B7AC  7C 04 07 74 */	extsb r4, r0
/* 8060B7B0  4B A2 22 ED */	bl dComIfGs_onOneZoneSwitch__Fii
/* 8060B7B4  80 7F 0B 10 */	lwz r3, 0xb10(r31)
/* 8060B7B8  2C 03 FF FF */	cmpwi r3, -1
/* 8060B7BC  41 82 06 98 */	beq lbl_8060BE54
/* 8060B7C0  38 00 00 07 */	li r0, 7
/* 8060B7C4  7C 7F 1A 14 */	add r3, r31, r3
/* 8060B7C8  98 03 26 B8 */	stb r0, 0x26b8(r3)
/* 8060B7CC  48 00 06 88 */	b lbl_8060BE54
lbl_8060B7D0:
/* 8060B7D0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8060B7D4  40 82 06 80 */	bne lbl_8060BE54
/* 8060B7D8  80 7F 0B 10 */	lwz r3, 0xb10(r31)
/* 8060B7DC  2C 03 FF FF */	cmpwi r3, -1
/* 8060B7E0  41 82 06 74 */	beq lbl_8060BE54
/* 8060B7E4  38 00 00 05 */	li r0, 5
/* 8060B7E8  7C 7F 1A 14 */	add r3, r31, r3
/* 8060B7EC  98 03 26 B8 */	stb r0, 0x26b8(r3)
/* 8060B7F0  48 00 06 64 */	b lbl_8060BE54
lbl_8060B7F4:
/* 8060B7F4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8060B7F8  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 8060B7FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060B800  40 80 00 24 */	bge lbl_8060B824
/* 8060B804  7F E3 FB 78 */	mr r3, r31
/* 8060B808  38 80 00 18 */	li r4, 0x18
/* 8060B80C  38 A0 00 00 */	li r5, 0
/* 8060B810  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 8060B814  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8060B818  4B FF C1 0D */	bl setBck__9daB_MGN_cFiUcff
/* 8060B81C  38 00 00 05 */	li r0, 5
/* 8060B820  98 1F 0A FA */	stb r0, 0xafa(r31)
lbl_8060B824:
/* 8060B824  80 1F 0B 88 */	lwz r0, 0xb88(r31)
/* 8060B828  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8060B82C  41 82 06 28 */	beq lbl_8060BE54
/* 8060B830  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060B834  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8060B838  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8060B83C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8060B840  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8060B844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060B848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060B84C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060B850  38 80 00 08 */	li r4, 8
/* 8060B854  38 A0 00 1F */	li r5, 0x1f
/* 8060B858  38 C1 00 34 */	addi r6, r1, 0x34
/* 8060B85C  4B A6 41 C9 */	bl StartShock__12dVibration_cFii4cXyz
/* 8060B860  38 60 00 0A */	li r3, 0xa
/* 8060B864  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8060B868  7C 04 07 74 */	extsb r4, r0
/* 8060B86C  4B A2 22 95 */	bl dComIfGs_offOneZoneSwitch__Fii
/* 8060B870  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F6@ha */
/* 8060B874  38 03 04 F6 */	addi r0, r3, 0x04F6 /* 0x000704F6@l */
/* 8060B878  90 01 00 18 */	stw r0, 0x18(r1)
/* 8060B87C  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 8060B880  38 81 00 18 */	addi r4, r1, 0x18
/* 8060B884  38 A0 00 00 */	li r5, 0
/* 8060B888  38 C0 FF FF */	li r6, -1
/* 8060B88C  81 9F 09 E0 */	lwz r12, 0x9e0(r31)
/* 8060B890  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8060B894  7D 89 03 A6 */	mtctr r12
/* 8060B898  4E 80 04 21 */	bctrl 
/* 8060B89C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8060B8A0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060B8A4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8060B8A8  88 1F 0A FF */	lbz r0, 0xaff(r31)
/* 8060B8AC  28 00 00 04 */	cmplwi r0, 4
/* 8060B8B0  41 80 00 10 */	blt lbl_8060B8C0
/* 8060B8B4  38 00 00 0F */	li r0, 0xf
/* 8060B8B8  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060B8BC  48 00 00 3C */	b lbl_8060B8F8
lbl_8060B8C0:
/* 8060B8C0  7F E3 FB 78 */	mr r3, r31
/* 8060B8C4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8060B8C8  4B A0 EE 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8060B8CC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8060B8D0  7C 03 00 50 */	subf r0, r3, r0
/* 8060B8D4  7C 03 07 34 */	extsh r3, r0
/* 8060B8D8  4B D5 97 F9 */	bl abs
/* 8060B8DC  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8060B8E0  40 80 00 10 */	bge lbl_8060B8F0
/* 8060B8E4  38 00 00 06 */	li r0, 6
/* 8060B8E8  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060B8EC  48 00 00 0C */	b lbl_8060B8F8
lbl_8060B8F0:
/* 8060B8F0  38 00 00 07 */	li r0, 7
/* 8060B8F4  98 1F 0A FA */	stb r0, 0xafa(r31)
lbl_8060B8F8:
/* 8060B8F8  38 00 00 05 */	li r0, 5
/* 8060B8FC  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 8060B900  7F E3 FB 78 */	mr r3, r31
/* 8060B904  4B FF AF 89 */	bl setFallAttackEffect__9daB_MGN_cFv
/* 8060B908  48 00 05 4C */	b lbl_8060BE54
lbl_8060B90C:
/* 8060B90C  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 8060B910  2C 00 00 00 */	cmpwi r0, 0
/* 8060B914  40 82 00 0C */	bne lbl_8060B920
/* 8060B918  7F E3 FB 78 */	mr r3, r31
/* 8060B91C  4B FF C3 C9 */	bl offBodyFallAt__9daB_MGN_cFv
lbl_8060B920:
/* 8060B920  7F E3 FB 78 */	mr r3, r31
/* 8060B924  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8060B928  4B A0 ED E9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8060B92C  7C 64 1B 78 */	mr r4, r3
/* 8060B930  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8060B934  38 A0 00 10 */	li r5, 0x10
/* 8060B938  38 C0 04 00 */	li r6, 0x400
/* 8060B93C  38 E0 00 80 */	li r7, 0x80
/* 8060B940  4B C6 4C 01 */	bl cLib_addCalcAngleS__FPsssss
/* 8060B944  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8060B948  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8060B94C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060B950  38 80 00 01 */	li r4, 1
/* 8060B954  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060B958  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060B95C  40 82 00 18 */	bne lbl_8060B974
/* 8060B960  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060B964  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060B968  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060B96C  41 82 00 08 */	beq lbl_8060B974
/* 8060B970  38 80 00 00 */	li r4, 0
lbl_8060B974:
/* 8060B974  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060B978  41 82 04 DC */	beq lbl_8060BE54
/* 8060B97C  38 00 00 0A */	li r0, 0xa
/* 8060B980  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060B984  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FD@ha */
/* 8060B988  38 03 04 FD */	addi r0, r3, 0x04FD /* 0x000704FD@l */
/* 8060B98C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060B990  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 8060B994  38 81 00 14 */	addi r4, r1, 0x14
/* 8060B998  38 A0 FF FF */	li r5, -1
/* 8060B99C  81 9F 09 E0 */	lwz r12, 0x9e0(r31)
/* 8060B9A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060B9A4  7D 89 03 A6 */	mtctr r12
/* 8060B9A8  4E 80 04 21 */	bctrl 
/* 8060B9AC  7F E3 FB 78 */	mr r3, r31
/* 8060B9B0  38 80 00 07 */	li r4, 7
/* 8060B9B4  38 A0 00 00 */	li r5, 0
/* 8060B9B8  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8060B9BC  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8060B9C0  4B FF BF 65 */	bl setBck__9daB_MGN_cFiUcff
/* 8060B9C4  48 00 04 90 */	b lbl_8060BE54
lbl_8060B9C8:
/* 8060B9C8  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 8060B9CC  2C 00 00 00 */	cmpwi r0, 0
/* 8060B9D0  40 82 00 0C */	bne lbl_8060B9DC
/* 8060B9D4  7F E3 FB 78 */	mr r3, r31
/* 8060B9D8  4B FF C3 0D */	bl offBodyFallAt__9daB_MGN_cFv
lbl_8060B9DC:
/* 8060B9DC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060B9E0  38 80 00 01 */	li r4, 1
/* 8060B9E4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060B9E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060B9EC  40 82 00 18 */	bne lbl_8060BA04
/* 8060B9F0  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060B9F4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060B9F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060B9FC  41 82 00 08 */	beq lbl_8060BA04
/* 8060BA00  38 80 00 00 */	li r4, 0
lbl_8060BA04:
/* 8060BA04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060BA08  41 82 04 4C */	beq lbl_8060BE54
/* 8060BA0C  38 00 00 08 */	li r0, 8
/* 8060BA10  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060BA14  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B4@ha */
/* 8060BA18  38 03 05 B4 */	addi r0, r3, 0x05B4 /* 0x000705B4@l */
/* 8060BA1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060BA20  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 8060BA24  38 81 00 10 */	addi r4, r1, 0x10
/* 8060BA28  38 A0 FF FF */	li r5, -1
/* 8060BA2C  81 9F 09 E0 */	lwz r12, 0x9e0(r31)
/* 8060BA30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060BA34  7D 89 03 A6 */	mtctr r12
/* 8060BA38  4E 80 04 21 */	bctrl 
/* 8060BA3C  7F E3 FB 78 */	mr r3, r31
/* 8060BA40  38 80 00 24 */	li r4, 0x24
/* 8060BA44  38 A0 00 00 */	li r5, 0
/* 8060BA48  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8060BA4C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8060BA50  4B FF BE D5 */	bl setBck__9daB_MGN_cFiUcff
/* 8060BA54  48 00 04 00 */	b lbl_8060BE54
lbl_8060BA58:
/* 8060BA58  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060BA5C  38 63 00 0C */	addi r3, r3, 0xc
/* 8060BA60  C0 3D 01 60 */	lfs f1, 0x160(r29)
/* 8060BA64  4B D1 C9 C9 */	bl checkPass__12J3DFrameCtrlFf
/* 8060BA68  2C 03 00 00 */	cmpwi r3, 0
/* 8060BA6C  41 82 00 0C */	beq lbl_8060BA78
/* 8060BA70  7F E3 FB 78 */	mr r3, r31
/* 8060BA74  4B FF C1 3D */	bl onBodySlideAt__9daB_MGN_cFv
lbl_8060BA78:
/* 8060BA78  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060BA7C  38 63 00 0C */	addi r3, r3, 0xc
/* 8060BA80  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 8060BA84  4B D1 C9 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 8060BA88  2C 03 00 00 */	cmpwi r3, 0
/* 8060BA8C  41 82 00 0C */	beq lbl_8060BA98
/* 8060BA90  7F E3 FB 78 */	mr r3, r31
/* 8060BA94  4B FF C1 69 */	bl offBodySlideAt__9daB_MGN_cFv
lbl_8060BA98:
/* 8060BA98  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060BA9C  38 63 00 0C */	addi r3, r3, 0xc
/* 8060BAA0  C0 3D 01 64 */	lfs f1, 0x164(r29)
/* 8060BAA4  4B D1 C9 89 */	bl checkPass__12J3DFrameCtrlFf
/* 8060BAA8  2C 03 00 00 */	cmpwi r3, 0
/* 8060BAAC  41 82 00 60 */	beq lbl_8060BB0C
/* 8060BAB0  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060BAB4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8060BAB8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8060BABC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8060BAC0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8060BAC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060BAC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060BACC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060BAD0  38 80 00 06 */	li r4, 6
/* 8060BAD4  38 A0 00 1F */	li r5, 0x1f
/* 8060BAD8  38 C1 00 28 */	addi r6, r1, 0x28
/* 8060BADC  4B A6 3F 49 */	bl StartShock__12dVibration_cFii4cXyz
/* 8060BAE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F6@ha */
/* 8060BAE4  38 03 04 F6 */	addi r0, r3, 0x04F6 /* 0x000704F6@l */
/* 8060BAE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060BAEC  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 8060BAF0  38 81 00 0C */	addi r4, r1, 0xc
/* 8060BAF4  38 A0 00 00 */	li r5, 0
/* 8060BAF8  38 C0 FF FF */	li r6, -1
/* 8060BAFC  81 9F 09 E0 */	lwz r12, 0x9e0(r31)
/* 8060BB00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8060BB04  7D 89 03 A6 */	mtctr r12
/* 8060BB08  4E 80 04 21 */	bctrl 
lbl_8060BB0C:
/* 8060BB0C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060BB10  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8060BB14  C0 1D 01 60 */	lfs f0, 0x160(r29)
/* 8060BB18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060BB1C  4C 41 13 82 */	cror 2, 1, 2
/* 8060BB20  40 82 00 40 */	bne lbl_8060BB60
/* 8060BB24  C0 1D 01 64 */	lfs f0, 0x164(r29)
/* 8060BB28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060BB2C  40 80 00 34 */	bge lbl_8060BB60
/* 8060BB30  7F E3 FB 78 */	mr r3, r31
/* 8060BB34  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8060BB38  4B A0 EB D9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8060BB3C  7C 64 1B 78 */	mr r4, r3
/* 8060BB40  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8060BB44  38 A0 00 10 */	li r5, 0x10
/* 8060BB48  38 C0 04 00 */	li r6, 0x400
/* 8060BB4C  38 E0 00 80 */	li r7, 0x80
/* 8060BB50  4B C6 49 F1 */	bl cLib_addCalcAngleS__FPsssss
/* 8060BB54  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8060BB58  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8060BB5C  48 00 00 1C */	b lbl_8060BB78
lbl_8060BB60:
/* 8060BB60  C0 1D 01 64 */	lfs f0, 0x164(r29)
/* 8060BB64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060BB68  4C 41 13 82 */	cror 2, 1, 2
/* 8060BB6C  40 82 00 0C */	bne lbl_8060BB78
/* 8060BB70  7F E3 FB 78 */	mr r3, r31
/* 8060BB74  4B FF AB E1 */	bl setStepEffect__9daB_MGN_cFv
lbl_8060BB78:
/* 8060BB78  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060BB7C  38 80 00 01 */	li r4, 1
/* 8060BB80  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060BB84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060BB88  40 82 00 18 */	bne lbl_8060BBA0
/* 8060BB8C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060BB90  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060BB94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060BB98  41 82 00 08 */	beq lbl_8060BBA0
/* 8060BB9C  38 80 00 00 */	li r4, 0
lbl_8060BBA0:
/* 8060BBA0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060BBA4  41 82 02 B0 */	beq lbl_8060BE54
/* 8060BBA8  38 00 00 0A */	li r0, 0xa
/* 8060BBAC  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060BBB0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FD@ha */
/* 8060BBB4  38 03 04 FD */	addi r0, r3, 0x04FD /* 0x000704FD@l */
/* 8060BBB8  90 01 00 08 */	stw r0, 8(r1)
/* 8060BBBC  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 8060BBC0  38 81 00 08 */	addi r4, r1, 8
/* 8060BBC4  38 A0 FF FF */	li r5, -1
/* 8060BBC8  81 9F 09 E0 */	lwz r12, 0x9e0(r31)
/* 8060BBCC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060BBD0  7D 89 03 A6 */	mtctr r12
/* 8060BBD4  4E 80 04 21 */	bctrl 
/* 8060BBD8  7F E3 FB 78 */	mr r3, r31
/* 8060BBDC  38 80 00 07 */	li r4, 7
/* 8060BBE0  38 A0 00 00 */	li r5, 0
/* 8060BBE4  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8060BBE8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8060BBEC  4B FF BD 39 */	bl setBck__9daB_MGN_cFiUcff
/* 8060BBF0  48 00 02 64 */	b lbl_8060BE54
lbl_8060BBF4:
/* 8060BBF4  7F E3 FB 78 */	mr r3, r31
/* 8060BBF8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8060BBFC  4B A0 EB 15 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8060BC00  7C 64 1B 78 */	mr r4, r3
/* 8060BC04  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8060BC08  38 A0 00 10 */	li r5, 0x10
/* 8060BC0C  38 C0 04 00 */	li r6, 0x400
/* 8060BC10  38 E0 00 80 */	li r7, 0x80
/* 8060BC14  4B C6 49 2D */	bl cLib_addCalcAngleS__FPsssss
/* 8060BC18  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060BC1C  38 63 00 0C */	addi r3, r3, 0xc
/* 8060BC20  C0 3D 01 3C */	lfs f1, 0x13c(r29)
/* 8060BC24  4B D1 C8 09 */	bl checkPass__12J3DFrameCtrlFf
/* 8060BC28  2C 03 00 00 */	cmpwi r3, 0
/* 8060BC2C  41 82 02 28 */	beq lbl_8060BE54
/* 8060BC30  C0 1D 01 14 */	lfs f0, 0x114(r29)
/* 8060BC34  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8060BC38  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 8060BC3C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8060BC40  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 8060BC44  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8060BC48  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8060BC4C  3C 63 00 01 */	addis r3, r3, 1
/* 8060BC50  38 03 80 00 */	addi r0, r3, -32768
/* 8060BC54  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8060BC58  38 00 00 0B */	li r0, 0xb
/* 8060BC5C  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060BC60  48 00 01 F4 */	b lbl_8060BE54
lbl_8060BC64:
/* 8060BC64  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060BC68  38 63 00 0C */	addi r3, r3, 0xc
/* 8060BC6C  C0 3D 01 68 */	lfs f1, 0x168(r29)
/* 8060BC70  4B D1 C7 BD */	bl checkPass__12J3DFrameCtrlFf
/* 8060BC74  2C 03 00 00 */	cmpwi r3, 0
/* 8060BC78  41 82 00 10 */	beq lbl_8060BC88
/* 8060BC7C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8060BC80  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060BC84  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_8060BC88:
/* 8060BC88  80 1F 0B 88 */	lwz r0, 0xb88(r31)
/* 8060BC8C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8060BC90  41 82 01 C4 */	beq lbl_8060BE54
/* 8060BC94  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060BC98  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 8060BC9C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8060BCA0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8060BCA4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8060BCA8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8060BCAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060BCB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060BCB4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060BCB8  38 80 00 04 */	li r4, 4
/* 8060BCBC  38 A0 00 1F */	li r5, 0x1f
/* 8060BCC0  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8060BCC4  4B A6 3D 61 */	bl StartShock__12dVibration_cFii4cXyz
/* 8060BCC8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8060BCCC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060BCD0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8060BCD4  38 00 00 0C */	li r0, 0xc
/* 8060BCD8  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060BCDC  48 00 01 78 */	b lbl_8060BE54
lbl_8060BCE0:
/* 8060BCE0  7F E3 FB 78 */	mr r3, r31
/* 8060BCE4  4B FF A3 39 */	bl setBackJumpEffect__9daB_MGN_cFv
/* 8060BCE8  7F E3 FB 78 */	mr r3, r31
/* 8060BCEC  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8060BCF0  4B A0 EA 21 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8060BCF4  7C 64 1B 78 */	mr r4, r3
/* 8060BCF8  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8060BCFC  38 A0 00 10 */	li r5, 0x10
/* 8060BD00  38 C0 04 00 */	li r6, 0x400
/* 8060BD04  38 E0 00 80 */	li r7, 0x80
/* 8060BD08  4B C6 48 39 */	bl cLib_addCalcAngleS__FPsssss
/* 8060BD0C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060BD10  38 80 00 01 */	li r4, 1
/* 8060BD14  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060BD18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060BD1C  40 82 00 18 */	bne lbl_8060BD34
/* 8060BD20  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060BD24  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060BD28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060BD2C  41 82 00 08 */	beq lbl_8060BD34
/* 8060BD30  38 80 00 00 */	li r4, 0
lbl_8060BD34:
/* 8060BD34  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060BD38  41 82 01 1C */	beq lbl_8060BE54
/* 8060BD3C  7F E3 FB 78 */	mr r3, r31
/* 8060BD40  38 80 00 25 */	li r4, 0x25
/* 8060BD44  38 A0 00 02 */	li r5, 2
/* 8060BD48  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8060BD4C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8060BD50  4B FF BB D5 */	bl setBck__9daB_MGN_cFiUcff
/* 8060BD54  38 00 00 1E */	li r0, 0x1e
/* 8060BD58  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 8060BD5C  38 00 00 0D */	li r0, 0xd
/* 8060BD60  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060BD64  38 00 00 02 */	li r0, 2
/* 8060BD68  98 1F 05 CC */	stb r0, 0x5cc(r31)
/* 8060BD6C  48 00 00 E8 */	b lbl_8060BE54
lbl_8060BD70:
/* 8060BD70  38 00 00 00 */	li r0, 0
/* 8060BD74  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8060BD78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060BD7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060BD80  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8060BD84  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8060BD88  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8060BD8C  41 82 00 10 */	beq lbl_8060BD9C
/* 8060BD90  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8060BD94  60 00 00 04 */	ori r0, r0, 4
/* 8060BD98  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8060BD9C:
/* 8060BD9C  7F E3 FB 78 */	mr r3, r31
/* 8060BDA0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8060BDA4  4B A0 E9 6D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8060BDA8  7C 64 1B 78 */	mr r4, r3
/* 8060BDAC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8060BDB0  38 A0 00 10 */	li r5, 0x10
/* 8060BDB4  38 C0 04 00 */	li r6, 0x400
/* 8060BDB8  38 E0 00 80 */	li r7, 0x80
/* 8060BDBC  4B C6 47 85 */	bl cLib_addCalcAngleS__FPsssss
/* 8060BDC0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8060BDC4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8060BDC8  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 8060BDCC  2C 00 00 00 */	cmpwi r0, 0
/* 8060BDD0  40 82 00 84 */	bne lbl_8060BE54
/* 8060BDD4  38 00 00 00 */	li r0, 0
/* 8060BDD8  98 1F 0A FD */	stb r0, 0xafd(r31)
/* 8060BDDC  7F E3 FB 78 */	mr r3, r31
/* 8060BDE0  38 80 00 02 */	li r4, 2
/* 8060BDE4  38 A0 00 02 */	li r5, 2
/* 8060BDE8  4B FF BC 45 */	bl setActionMode__9daB_MGN_cFii
/* 8060BDEC  38 00 00 02 */	li r0, 2
/* 8060BDF0  98 1F 05 CC */	stb r0, 0x5cc(r31)
/* 8060BDF4  48 00 00 60 */	b lbl_8060BE54
lbl_8060BDF8:
/* 8060BDF8  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 8060BDFC  2C 00 00 00 */	cmpwi r0, 0
/* 8060BE00  40 82 00 0C */	bne lbl_8060BE0C
/* 8060BE04  7F E3 FB 78 */	mr r3, r31
/* 8060BE08  4B FF BE DD */	bl offBodyFallAt__9daB_MGN_cFv
lbl_8060BE0C:
/* 8060BE0C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8060BE10  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8060BE14  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060BE18  38 80 00 01 */	li r4, 1
/* 8060BE1C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060BE20  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060BE24  40 82 00 18 */	bne lbl_8060BE3C
/* 8060BE28  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060BE2C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060BE30  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060BE34  41 82 00 08 */	beq lbl_8060BE3C
/* 8060BE38  38 80 00 00 */	li r4, 0
lbl_8060BE3C:
/* 8060BE3C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060BE40  41 82 00 14 */	beq lbl_8060BE54
/* 8060BE44  7F E3 FB 78 */	mr r3, r31
/* 8060BE48  38 80 00 01 */	li r4, 1
/* 8060BE4C  38 A0 00 0A */	li r5, 0xa
/* 8060BE50  4B FF BB DD */	bl setActionMode__9daB_MGN_cFii
lbl_8060BE54:
/* 8060BE54  39 61 00 70 */	addi r11, r1, 0x70
/* 8060BE58  4B D5 63 CD */	bl _restgpr_28
/* 8060BE5C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8060BE60  7C 08 03 A6 */	mtlr r0
/* 8060BE64  38 21 00 70 */	addi r1, r1, 0x70
/* 8060BE68  4E 80 00 20 */	blr 
