lbl_80A6A650:
/* 80A6A650  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A6A654  7C 08 02 A6 */	mflr r0
/* 80A6A658  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A6A65C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A6A660  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A6A664  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6A668  4B 8F 7B 6D */	bl _savegpr_27
/* 80A6A66C  7C 7E 1B 78 */	mr r30, r3
/* 80A6A670  3C 80 80 A7 */	lis r4, lit_3769@ha /* 0x80A6A97C@ha */
/* 80A6A674  3B E4 A9 7C */	addi r31, r4, lit_3769@l /* 0x80A6A97C@l */
/* 80A6A678  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A6A67C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A6A680  40 82 00 40 */	bne lbl_80A6A6C0
/* 80A6A684  7F C0 F3 79 */	or. r0, r30, r30
/* 80A6A688  41 82 00 2C */	beq lbl_80A6A6B4
/* 80A6A68C  7C 1B 03 78 */	mr r27, r0
/* 80A6A690  4B 5A E4 D5 */	bl __ct__10fopAc_ac_cFv
/* 80A6A694  38 7B 05 BC */	addi r3, r27, 0x5bc
/* 80A6A698  3C 80 80 A7 */	lis r4, __ct__4lf_sFv@ha /* 0x80A6A8E0@ha */
/* 80A6A69C  38 84 A8 E0 */	addi r4, r4, __ct__4lf_sFv@l /* 0x80A6A8E0@l */
/* 80A6A6A0  3C A0 80 A7 */	lis r5, __dt__4lf_sFv@ha /* 0x80A6A8A4@ha */
/* 80A6A6A4  38 A5 A8 A4 */	addi r5, r5, __dt__4lf_sFv@l /* 0x80A6A8A4@l */
/* 80A6A6A8  38 C0 00 68 */	li r6, 0x68
/* 80A6A6AC  38 E0 00 40 */	li r7, 0x40
/* 80A6A6B0  4B 8F 76 B1 */	bl __construct_array
lbl_80A6A6B4:
/* 80A6A6B4  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80A6A6B8  60 00 00 08 */	ori r0, r0, 8
/* 80A6A6BC  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80A6A6C0:
/* 80A6A6C0  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80A6A6C4  3C 80 80 A7 */	lis r4, d_a_npc_lf__stringBase0@ha /* 0x80A6AA14@ha */
/* 80A6A6C8  38 84 AA 14 */	addi r4, r4, d_a_npc_lf__stringBase0@l /* 0x80A6AA14@l */
/* 80A6A6CC  4B 5C 27 F1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80A6A6D0  7C 7D 1B 78 */	mr r29, r3
/* 80A6A6D4  2C 1D 00 04 */	cmpwi r29, 4
/* 80A6A6D8  40 82 01 A8 */	bne lbl_80A6A880
/* 80A6A6DC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A6A6E0  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 80A6A6E4  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80A6A6E8  28 00 00 FF */	cmplwi r0, 0xff
/* 80A6A6EC  40 82 00 10 */	bne lbl_80A6A6FC
/* 80A6A6F0  38 00 00 20 */	li r0, 0x20
/* 80A6A6F4  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 80A6A6F8  48 00 00 1C */	b lbl_80A6A714
lbl_80A6A6FC:
/* 80A6A6FC  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 80A6A700  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80A6A704  2C 00 00 40 */	cmpwi r0, 0x40
/* 80A6A708  40 81 00 0C */	ble lbl_80A6A714
/* 80A6A70C  38 00 00 40 */	li r0, 0x40
/* 80A6A710  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80A6A714:
/* 80A6A714  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A6A718  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80A6A71C  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 80A6A720  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 80A6A724  28 00 00 01 */	cmplwi r0, 1
/* 80A6A728  40 82 00 5C */	bne lbl_80A6A784
/* 80A6A72C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80A6A730  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80A6A734  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80A6A738  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80A6A73C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80A6A740  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80A6A744  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80A6A748  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A6A74C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80A6A750  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A6A754  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80A6A758  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A6A75C  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 80A6A760  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80A6A764  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80A6A768  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A6A76C  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 80A6A770  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80A6A774  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80A6A778  98 1E 04 E2 */	stb r0, 0x4e2(r30)
/* 80A6A77C  88 1E 04 BB */	lbz r0, 0x4bb(r30)
/* 80A6A780  98 1E 04 E3 */	stb r0, 0x4e3(r30)
lbl_80A6A784:
/* 80A6A784  7F C3 F3 78 */	mr r3, r30
/* 80A6A788  3C 80 80 A7 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80A6A570@ha */
/* 80A6A78C  38 84 A5 70 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80A6A570@l */
/* 80A6A790  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80A6A794  1C A0 09 20 */	mulli r5, r0, 0x920
/* 80A6A798  4B 5A FD 19 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A6A79C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A6A7A0  40 82 00 0C */	bne lbl_80A6A7AC
/* 80A6A7A4  38 60 00 05 */	li r3, 5
/* 80A6A7A8  48 00 00 DC */	b lbl_80A6A884
lbl_80A6A7AC:
/* 80A6A7AC  3C 60 80 A7 */	lis r3, data_80A6AA90@ha /* 0x80A6AA90@ha */
/* 80A6A7B0  8C 03 AA 90 */	lbzu r0, data_80A6AA90@l(r3)  /* 0x80A6AA90@l */
/* 80A6A7B4  28 00 00 00 */	cmplwi r0, 0
/* 80A6A7B8  40 82 00 20 */	bne lbl_80A6A7D8
/* 80A6A7BC  38 00 00 01 */	li r0, 1
/* 80A6A7C0  98 1E 1F C0 */	stb r0, 0x1fc0(r30)
/* 80A6A7C4  98 03 00 00 */	stb r0, 0(r3)
/* 80A6A7C8  38 00 FF FF */	li r0, -1
/* 80A6A7CC  3C 60 80 A7 */	lis r3, l_HIO@ha /* 0x80A6AAA0@ha */
/* 80A6A7D0  38 63 AA A0 */	addi r3, r3, l_HIO@l /* 0x80A6AAA0@l */
/* 80A6A7D4  98 03 00 04 */	stb r0, 4(r3)
lbl_80A6A7D8:
/* 80A6A7D8  3B 9E 05 BC */	addi r28, r30, 0x5bc
/* 80A6A7DC  3B 60 00 00 */	li r27, 0
/* 80A6A7E0  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 80A6A7E4  48 00 00 88 */	b lbl_80A6A86C
lbl_80A6A7E8:
/* 80A6A7E8  38 00 00 00 */	li r0, 0
/* 80A6A7EC  B0 1C 00 1A */	sth r0, 0x1a(r28)
/* 80A6A7F0  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A6A7F4  4B 7F D1 99 */	bl cM_rndFX__Ff
/* 80A6A7F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A6A7FC  EC 00 08 2A */	fadds f0, f0, f1
/* 80A6A800  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80A6A804  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80A6A808  4B 7F D1 85 */	bl cM_rndFX__Ff
/* 80A6A80C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A6A810  EC 00 08 2A */	fadds f0, f0, f1
/* 80A6A814  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80A6A818  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A6A81C  4B 7F D1 71 */	bl cM_rndFX__Ff
/* 80A6A820  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A6A824  EC 00 08 2A */	fadds f0, f0, f1
/* 80A6A828  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 80A6A82C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A6A830  4B 7F D1 25 */	bl cM_rndF__Ff
/* 80A6A834  FC 00 08 1E */	fctiwz f0, f1
/* 80A6A838  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A6A83C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A6A840  B0 1C 00 12 */	sth r0, 0x12(r28)
/* 80A6A844  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A6A848  4B 7F D1 45 */	bl cM_rndFX__Ff
/* 80A6A84C  EC 1F 08 2A */	fadds f0, f31, f1
/* 80A6A850  D0 1C 00 48 */	stfs f0, 0x48(r28)
/* 80A6A854  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A6A858  4B 7F D1 35 */	bl cM_rndFX__Ff
/* 80A6A85C  EC 1F 08 2A */	fadds f0, f31, f1
/* 80A6A860  D0 1C 00 60 */	stfs f0, 0x60(r28)
/* 80A6A864  3B 7B 00 01 */	addi r27, r27, 1
/* 80A6A868  3B 9C 00 68 */	addi r28, r28, 0x68
lbl_80A6A86C:
/* 80A6A86C  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80A6A870  7C 1B 00 00 */	cmpw r27, r0
/* 80A6A874  41 80 FF 74 */	blt lbl_80A6A7E8
/* 80A6A878  7F C3 F3 78 */	mr r3, r30
/* 80A6A87C  4B FF FB A5 */	bl daNPC_LF_Execute__FP12npc_lf_class
lbl_80A6A880:
/* 80A6A880  7F A3 EB 78 */	mr r3, r29
lbl_80A6A884:
/* 80A6A884  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A6A888  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A6A88C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6A890  4B 8F 79 91 */	bl _restgpr_27
/* 80A6A894  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A6A898  7C 08 03 A6 */	mtlr r0
/* 80A6A89C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A6A8A0  4E 80 00 20 */	blr 
