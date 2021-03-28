lbl_80B7E718:
/* 80B7E718  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80B7E71C  7C 08 02 A6 */	mflr r0
/* 80B7E720  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80B7E724  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80B7E728  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80B7E72C  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80B7E730  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80B7E734  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80B7E738  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 80B7E73C  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 80B7E740  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 80B7E744  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 80B7E748  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 80B7E74C  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 80B7E750  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 80B7E754  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 80B7E758  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 80B7E75C  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 80B7E760  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 80B7E764  39 61 00 60 */	addi r11, r1, 0x60
/* 80B7E768  4B 7E 3A 6C */	b _savegpr_27
/* 80B7E76C  7C 7B 1B 78 */	mr r27, r3
/* 80B7E770  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B7E774  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l
/* 80B7E778  38 60 00 00 */	li r3, 0
/* 80B7E77C  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 80B7E780  83 C4 00 04 */	lwz r30, 4(r4)
/* 80B7E784  3B A0 00 00 */	li r29, 0
/* 80B7E788  38 9F 00 00 */	addi r4, r31, 0
/* 80B7E78C  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 80B7E790  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 80B7E794  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 80B7E798  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 80B7E79C  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 80B7E7A0  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 80B7E7A4  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 80B7E7A8  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 80B7E7AC  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 80B7E7B0  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80B7E7B4  7C 04 00 50 */	subf r0, r4, r0
/* 80B7E7B8  7C 1C 07 34 */	extsh r28, r0
/* 80B7E7BC  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 80B7E7C0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B7E7C4  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 80B7E7C8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B7E7CC  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 80B7E7D0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B7E7D4  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 80B7E7D8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B7E7DC  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 80B7E7E0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B7E7E4  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 80B7E7E8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B7E7EC  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 80B7E7F0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B7E7F4  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 80B7E7F8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B7E7FC  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 80B7E800  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B7E804  80 9F 07 50 */	lwz r4, 0x750(r31)
/* 80B7E808  80 1F 07 54 */	lwz r0, 0x754(r31)
/* 80B7E80C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B7E810  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B7E814  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 80B7E818  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B7E81C  38 1B 09 1A */	addi r0, r27, 0x91a
/* 80B7E820  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B7E824  38 1B 09 20 */	addi r0, r27, 0x920
/* 80B7E828  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B7E82C  38 1B 09 26 */	addi r0, r27, 0x926
/* 80B7E830  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B7E834  A8 1B 14 E4 */	lha r0, 0x14e4(r27)
/* 80B7E838  2C 00 00 04 */	cmpwi r0, 4
/* 80B7E83C  41 82 00 4C */	beq lbl_80B7E888
/* 80B7E840  40 80 00 14 */	bge lbl_80B7E854
/* 80B7E844  2C 00 00 01 */	cmpwi r0, 1
/* 80B7E848  41 82 00 18 */	beq lbl_80B7E860
/* 80B7E84C  40 80 00 1C */	bge lbl_80B7E868
/* 80B7E850  48 00 00 4C */	b lbl_80B7E89C
lbl_80B7E854:
/* 80B7E854  2C 00 00 06 */	cmpwi r0, 6
/* 80B7E858  40 80 00 44 */	bge lbl_80B7E89C
/* 80B7E85C  48 00 00 38 */	b lbl_80B7E894
lbl_80B7E860:
/* 80B7E860  3B A0 00 01 */	li r29, 1
/* 80B7E864  48 00 00 38 */	b lbl_80B7E89C
lbl_80B7E868:
/* 80B7E868  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B7E86C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B7E870  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B7E874  2C 00 00 03 */	cmpwi r0, 3
/* 80B7E878  40 82 00 24 */	bne lbl_80B7E89C
/* 80B7E87C  C3 3F 07 5C */	lfs f25, 0x75c(r31)
/* 80B7E880  C3 1F 07 60 */	lfs f24, 0x760(r31)
/* 80B7E884  48 00 00 18 */	b lbl_80B7E89C
lbl_80B7E888:
/* 80B7E888  38 7B 13 2C */	addi r3, r27, 0x132c
/* 80B7E88C  4B 5D 1E 60 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B7E890  48 00 00 0C */	b lbl_80B7E89C
lbl_80B7E894:
/* 80B7E894  38 7B 13 24 */	addi r3, r27, 0x1324
/* 80B7E898  4B 5D 1E 54 */	b getActorP__18daNpcF_ActorMngr_cFv
lbl_80B7E89C:
/* 80B7E89C  28 03 00 00 */	cmplwi r3, 0
/* 80B7E8A0  41 82 00 80 */	beq lbl_80B7E920
/* 80B7E8A4  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 80B7E8A8  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 80B7E8AC  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 80B7E8B0  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 80B7E8B4  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 80B7E8B8  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 80B7E8BC  A8 1B 14 E4 */	lha r0, 0x14e4(r27)
/* 80B7E8C0  2C 00 00 02 */	cmpwi r0, 2
/* 80B7E8C4  41 82 00 24 */	beq lbl_80B7E8E8
/* 80B7E8C8  2C 00 00 03 */	cmpwi r0, 3
/* 80B7E8CC  41 82 00 1C */	beq lbl_80B7E8E8
/* 80B7E8D0  2C 00 00 05 */	cmpwi r0, 5
/* 80B7E8D4  41 82 00 14 */	beq lbl_80B7E8E8
/* 80B7E8D8  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 80B7E8DC  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80B7E8E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B7E8E4  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_80B7E8E8:
/* 80B7E8E8  38 1B 08 78 */	addi r0, r27, 0x878
/* 80B7E8EC  90 1B 12 78 */	stw r0, 0x1278(r27)
/* 80B7E8F0  80 1B 14 EC */	lwz r0, 0x14ec(r27)
/* 80B7E8F4  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80B7E8F8  41 82 00 30 */	beq lbl_80B7E928
/* 80B7E8FC  2C 00 00 18 */	cmpwi r0, 0x18
/* 80B7E900  41 82 00 28 */	beq lbl_80B7E928
/* 80B7E904  2C 00 00 22 */	cmpwi r0, 0x22
/* 80B7E908  41 82 00 20 */	beq lbl_80B7E928
/* 80B7E90C  2C 00 00 39 */	cmpwi r0, 0x39
/* 80B7E910  41 82 00 18 */	beq lbl_80B7E928
/* 80B7E914  C3 FF 00 B0 */	lfs f31, 0xb0(r31)
/* 80B7E918  FF C0 F8 90 */	fmr f30, f31
/* 80B7E91C  48 00 00 0C */	b lbl_80B7E928
lbl_80B7E920:
/* 80B7E920  38 00 00 00 */	li r0, 0
/* 80B7E924  90 1B 12 78 */	stw r0, 0x1278(r27)
lbl_80B7E928:
/* 80B7E928  D3 61 00 08 */	stfs f27, 8(r1)
/* 80B7E92C  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 80B7E930  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 80B7E934  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 80B7E938  38 7B 12 48 */	addi r3, r27, 0x1248
/* 80B7E93C  FC 20 F8 90 */	fmr f1, f31
/* 80B7E940  FC 40 F0 90 */	fmr f2, f30
/* 80B7E944  FC 60 E8 90 */	fmr f3, f29
/* 80B7E948  FC 80 E0 90 */	fmr f4, f28
/* 80B7E94C  C0 BF 00 B0 */	lfs f5, 0xb0(r31)
/* 80B7E950  FC C0 28 90 */	fmr f6, f5
/* 80B7E954  FC E0 28 90 */	fmr f7, f5
/* 80B7E958  FD 00 28 90 */	fmr f8, f5
/* 80B7E95C  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B7E960  38 A1 00 24 */	addi r5, r1, 0x24
/* 80B7E964  4B 5D 27 54 */	b setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80B7E968  38 7B 12 48 */	addi r3, r27, 0x1248
/* 80B7E96C  7F 64 DB 78 */	mr r4, r27
/* 80B7E970  38 BE 00 24 */	addi r5, r30, 0x24
/* 80B7E974  38 C1 00 18 */	addi r6, r1, 0x18
/* 80B7E978  7F A7 EB 78 */	mr r7, r29
/* 80B7E97C  7F 88 E3 78 */	mr r8, r28
/* 80B7E980  39 20 00 00 */	li r9, 0
/* 80B7E984  4B 5D 29 CC */	b calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80B7E988  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80B7E98C  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80B7E990  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80B7E994  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80B7E998  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 80B7E99C  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80B7E9A0  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 80B7E9A4  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 80B7E9A8  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 80B7E9AC  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 80B7E9B0  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 80B7E9B4  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 80B7E9B8  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 80B7E9BC  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 80B7E9C0  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 80B7E9C4  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 80B7E9C8  39 61 00 60 */	addi r11, r1, 0x60
/* 80B7E9CC  4B 7E 38 54 */	b _restgpr_27
/* 80B7E9D0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80B7E9D4  7C 08 03 A6 */	mtlr r0
/* 80B7E9D8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80B7E9DC  4E 80 00 20 */	blr 
