lbl_80CFF568:
/* 80CFF568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CFF56C  7C 08 02 A6 */	mflr r0
/* 80CFF570  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CFF574  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFF578  4B 66 2C 65 */	bl _savegpr_29
/* 80CFF57C  7C 7D 1B 78 */	mr r29, r3
/* 80CFF580  3C 60 80 D0 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80CFFDA0@ha */
/* 80CFF584  3B C3 FD A0 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80CFFDA0@l */
/* 80CFF588  3C 60 80 D0 */	lis r3, M_arcname__Q212daObjSwpush25Act_c@ha /* 0x80CFFBF4@ha */
/* 80CFF58C  3B E3 FB F4 */	addi r31, r3, M_arcname__Q212daObjSwpush25Act_c@l /* 0x80CFFBF4@l */
/* 80CFF590  3C 60 80 D0 */	lis r3, struct_80CFFEF8+0x0@ha /* 0x80CFFEF8@ha */
/* 80CFF594  38 A3 FE F8 */	addi r5, r3, struct_80CFFEF8+0x0@l /* 0x80CFFEF8@l */
/* 80CFF598  88 05 00 00 */	lbz r0, 0(r5)
/* 80CFF59C  7C 00 07 75 */	extsb. r0, r0
/* 80CFF5A0  40 82 00 88 */	bne lbl_80CFF628
/* 80CFF5A4  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80CFF5A8  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80CFF5AC  90 7E 00 5C */	stw r3, 0x5c(r30)
/* 80CFF5B0  90 1E 00 60 */	stw r0, 0x60(r30)
/* 80CFF5B4  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 80CFF5B8  90 1E 00 64 */	stw r0, 0x64(r30)
/* 80CFF5BC  38 9E 00 5C */	addi r4, r30, 0x5c
/* 80CFF5C0  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80CFF5C4  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80CFF5C8  90 64 00 0C */	stw r3, 0xc(r4)
/* 80CFF5CC  90 04 00 10 */	stw r0, 0x10(r4)
/* 80CFF5D0  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 80CFF5D4  90 04 00 14 */	stw r0, 0x14(r4)
/* 80CFF5D8  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80CFF5DC  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80CFF5E0  90 64 00 18 */	stw r3, 0x18(r4)
/* 80CFF5E4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80CFF5E8  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 80CFF5EC  90 04 00 20 */	stw r0, 0x20(r4)
/* 80CFF5F0  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 80CFF5F4  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 80CFF5F8  90 64 00 24 */	stw r3, 0x24(r4)
/* 80CFF5FC  90 04 00 28 */	stw r0, 0x28(r4)
/* 80CFF600  80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 80CFF604  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80CFF608  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 80CFF60C  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 80CFF610  90 64 00 30 */	stw r3, 0x30(r4)
/* 80CFF614  90 04 00 34 */	stw r0, 0x34(r4)
/* 80CFF618  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 80CFF61C  90 04 00 38 */	stw r0, 0x38(r4)
/* 80CFF620  38 00 00 01 */	li r0, 1
/* 80CFF624  98 05 00 00 */	stb r0, 0(r5)
lbl_80CFF628:
/* 80CFF628  7F A3 EB 78 */	mr r3, r29
/* 80CFF62C  80 1D 05 C8 */	lwz r0, 0x5c8(r29)
/* 80CFF630  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CFF634  39 9E 00 5C */	addi r12, r30, 0x5c
/* 80CFF638  7D 8C 02 14 */	add r12, r12, r0
/* 80CFF63C  4B 66 2A 49 */	bl __ptmf_scall
/* 80CFF640  60 00 00 00 */	nop 
/* 80CFF644  7F A3 EB 78 */	mr r3, r29
/* 80CFF648  4B FF F6 05 */	bl set_push_flag__Q212daObjSwpush25Act_cFv
/* 80CFF64C  3C 60 80 D0 */	lis r3, struct_80CFFEF8+0x1@ha /* 0x80CFFEF9@ha */
/* 80CFF650  38 A3 FE F9 */	addi r5, r3, struct_80CFFEF8+0x1@l /* 0x80CFFEF9@l */
/* 80CFF654  88 05 00 00 */	lbz r0, 0(r5)
/* 80CFF658  7C 00 07 75 */	extsb. r0, r0
/* 80CFF65C  40 82 00 70 */	bne lbl_80CFF6CC
/* 80CFF660  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 80CFF664  80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 80CFF668  90 7E 00 C8 */	stw r3, 0xc8(r30)
/* 80CFF66C  90 1E 00 CC */	stw r0, 0xcc(r30)
/* 80CFF670  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 80CFF674  90 1E 00 D0 */	stw r0, 0xd0(r30)
/* 80CFF678  38 9E 00 C8 */	addi r4, r30, 0xc8
/* 80CFF67C  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 80CFF680  80 1E 00 A8 */	lwz r0, 0xa8(r30)
/* 80CFF684  90 64 00 0C */	stw r3, 0xc(r4)
/* 80CFF688  90 04 00 10 */	stw r0, 0x10(r4)
/* 80CFF68C  80 1E 00 AC */	lwz r0, 0xac(r30)
/* 80CFF690  90 04 00 14 */	stw r0, 0x14(r4)
/* 80CFF694  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 80CFF698  80 1E 00 B4 */	lwz r0, 0xb4(r30)
/* 80CFF69C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80CFF6A0  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80CFF6A4  80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 80CFF6A8  90 04 00 20 */	stw r0, 0x20(r4)
/* 80CFF6AC  80 7E 00 BC */	lwz r3, 0xbc(r30)
/* 80CFF6B0  80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 80CFF6B4  90 64 00 24 */	stw r3, 0x24(r4)
/* 80CFF6B8  90 04 00 28 */	stw r0, 0x28(r4)
/* 80CFF6BC  80 1E 00 C4 */	lwz r0, 0xc4(r30)
/* 80CFF6C0  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80CFF6C4  38 00 00 01 */	li r0, 1
/* 80CFF6C8  98 05 00 00 */	stb r0, 0(r5)
lbl_80CFF6CC:
/* 80CFF6CC  7F A3 EB 78 */	mr r3, r29
/* 80CFF6D0  80 1D 05 C4 */	lwz r0, 0x5c4(r29)
/* 80CFF6D4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CFF6D8  39 9E 00 C8 */	addi r12, r30, 0xc8
/* 80CFF6DC  7D 8C 02 14 */	add r12, r12, r0
/* 80CFF6E0  4B 66 29 A5 */	bl __ptmf_scall
/* 80CFF6E4  60 00 00 00 */	nop 
/* 80CFF6E8  7F A3 EB 78 */	mr r3, r29
/* 80CFF6EC  4B FF F4 F9 */	bl calc_top_pos__Q212daObjSwpush25Act_cFv
/* 80CFF6F0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80CFF6F4  4B 30 DD 35 */	bl play__14mDoExt_baseAnmFv
/* 80CFF6F8  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 80CFF6FC  4B 30 DD 2D */	bl play__14mDoExt_baseAnmFv
/* 80CFF700  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80CFF704  4B 30 DD 25 */	bl play__14mDoExt_baseAnmFv
/* 80CFF708  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80CFF70C  4B 30 DD 1D */	bl play__14mDoExt_baseAnmFv
/* 80CFF710  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80CFF714  4B 30 DD 15 */	bl play__14mDoExt_baseAnmFv
/* 80CFF718  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80CFF71C  4B 30 DD 0D */	bl play__14mDoExt_baseAnmFv
/* 80CFF720  7F A3 EB 78 */	mr r3, r29
/* 80CFF724  38 80 00 08 */	li r4, 8
/* 80CFF728  38 A0 00 08 */	li r5, 8
/* 80CFF72C  48 00 04 A5 */	bl func_80CFFBD0
/* 80CFF730  7C 64 1B 78 */	mr r4, r3
/* 80CFF734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFF738  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFF73C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CFF740  7C 05 07 74 */	extsb r5, r0
/* 80CFF744  4B 33 5C 1D */	bl isSwitch__10dSv_info_cCFii
/* 80CFF748  2C 03 00 00 */	cmpwi r3, 0
/* 80CFF74C  40 82 01 38 */	bne lbl_80CFF884
/* 80CFF750  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFF754  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFF758  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CFF75C  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80CFF760  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CFF764  4B 64 7C 39 */	bl PSVECSquareDistance
/* 80CFF768  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80CFF76C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFF770  40 81 00 58 */	ble lbl_80CFF7C8
/* 80CFF774  FC 00 08 34 */	frsqrte f0, f1
/* 80CFF778  C8 9F 01 18 */	lfd f4, 0x118(r31)
/* 80CFF77C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CFF780  C8 7F 01 20 */	lfd f3, 0x120(r31)
/* 80CFF784  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFF788  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFF78C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CFF790  FC 02 00 32 */	fmul f0, f2, f0
/* 80CFF794  FC 44 00 32 */	fmul f2, f4, f0
/* 80CFF798  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFF79C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFF7A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80CFF7A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80CFF7A8  FC 44 00 32 */	fmul f2, f4, f0
/* 80CFF7AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80CFF7B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CFF7B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CFF7B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CFF7BC  FC 21 00 32 */	fmul f1, f1, f0
/* 80CFF7C0  FC 20 08 18 */	frsp f1, f1
/* 80CFF7C4  48 00 00 88 */	b lbl_80CFF84C
lbl_80CFF7C8:
/* 80CFF7C8  C8 1F 01 28 */	lfd f0, 0x128(r31)
/* 80CFF7CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFF7D0  40 80 00 10 */	bge lbl_80CFF7E0
/* 80CFF7D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CFF7D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CFF7DC  48 00 00 70 */	b lbl_80CFF84C
lbl_80CFF7E0:
/* 80CFF7E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CFF7E4  80 81 00 08 */	lwz r4, 8(r1)
/* 80CFF7E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CFF7EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CFF7F0  7C 03 00 00 */	cmpw r3, r0
/* 80CFF7F4  41 82 00 14 */	beq lbl_80CFF808
/* 80CFF7F8  40 80 00 40 */	bge lbl_80CFF838
/* 80CFF7FC  2C 03 00 00 */	cmpwi r3, 0
/* 80CFF800  41 82 00 20 */	beq lbl_80CFF820
/* 80CFF804  48 00 00 34 */	b lbl_80CFF838
lbl_80CFF808:
/* 80CFF808  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CFF80C  41 82 00 0C */	beq lbl_80CFF818
/* 80CFF810  38 00 00 01 */	li r0, 1
/* 80CFF814  48 00 00 28 */	b lbl_80CFF83C
lbl_80CFF818:
/* 80CFF818  38 00 00 02 */	li r0, 2
/* 80CFF81C  48 00 00 20 */	b lbl_80CFF83C
lbl_80CFF820:
/* 80CFF820  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CFF824  41 82 00 0C */	beq lbl_80CFF830
/* 80CFF828  38 00 00 05 */	li r0, 5
/* 80CFF82C  48 00 00 10 */	b lbl_80CFF83C
lbl_80CFF830:
/* 80CFF830  38 00 00 03 */	li r0, 3
/* 80CFF834  48 00 00 08 */	b lbl_80CFF83C
lbl_80CFF838:
/* 80CFF838  38 00 00 04 */	li r0, 4
lbl_80CFF83C:
/* 80CFF83C  2C 00 00 01 */	cmpwi r0, 1
/* 80CFF840  40 82 00 0C */	bne lbl_80CFF84C
/* 80CFF844  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CFF848  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CFF84C:
/* 80CFF84C  80 1D 05 C0 */	lwz r0, 0x5c0(r29)
/* 80CFF850  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80CFF854  38 7F 00 0C */	addi r3, r31, 0xc
/* 80CFF858  38 04 00 34 */	addi r0, r4, 0x34
/* 80CFF85C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CFF860  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFF864  40 80 00 14 */	bge lbl_80CFF878
/* 80CFF868  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80CFF86C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80CFF870  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CFF874  48 00 00 10 */	b lbl_80CFF884
lbl_80CFF878:
/* 80CFF878  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80CFF87C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80CFF880  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_80CFF884:
/* 80CFF884  88 7D 05 D4 */	lbz r3, 0x5d4(r29)
/* 80CFF888  30 03 FF FF */	addic r0, r3, -1
/* 80CFF88C  7C 00 19 10 */	subfe r0, r0, r3
/* 80CFF890  98 1D 05 D5 */	stb r0, 0x5d5(r29)
/* 80CFF894  88 1D 05 D9 */	lbz r0, 0x5d9(r29)
/* 80CFF898  98 1D 05 DA */	stb r0, 0x5da(r29)
/* 80CFF89C  38 00 00 00 */	li r0, 0
/* 80CFF8A0  98 1D 05 D4 */	stb r0, 0x5d4(r29)
/* 80CFF8A4  98 1D 05 D9 */	stb r0, 0x5d9(r29)
/* 80CFF8A8  7F A3 EB 78 */	mr r3, r29
/* 80CFF8AC  4B FF F2 09 */	bl set_mtx__Q212daObjSwpush25Act_cFv
/* 80CFF8B0  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80CFF8B4  4B 37 C1 0D */	bl Move__4dBgWFv
/* 80CFF8B8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CFF8BC  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80CFF8C0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80CFF8C4  C0 1D 05 E4 */	lfs f0, 0x5e4(r29)
/* 80CFF8C8  EC 21 00 2A */	fadds f1, f1, f0
/* 80CFF8CC  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80CFF8D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CFF8D4  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80CFF8D8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CFF8DC  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80CFF8E0  38 60 00 01 */	li r3, 1
/* 80CFF8E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFF8E8  4B 66 29 41 */	bl _restgpr_29
/* 80CFF8EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CFF8F0  7C 08 03 A6 */	mtlr r0
/* 80CFF8F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CFF8F8  4E 80 00 20 */	blr 
