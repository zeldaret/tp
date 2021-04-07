lbl_809D2494:
/* 809D2494  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 809D2498  7C 08 02 A6 */	mflr r0
/* 809D249C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 809D24A0  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 809D24A4  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 809D24A8  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 809D24AC  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 809D24B0  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 809D24B4  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 809D24B8  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 809D24BC  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 809D24C0  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 809D24C4  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 809D24C8  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 809D24CC  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 809D24D0  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 809D24D4  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 809D24D8  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 809D24DC  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 809D24E0  39 61 00 60 */	addi r11, r1, 0x60
/* 809D24E4  4B 98 FC F1 */	bl _savegpr_27
/* 809D24E8  7C 7B 1B 78 */	mr r27, r3
/* 809D24EC  3C 60 80 9D */	lis r3, m__17daNpc_Grd_Param_c@ha /* 0x809D3A04@ha */
/* 809D24F0  3B E3 3A 04 */	addi r31, r3, m__17daNpc_Grd_Param_c@l /* 0x809D3A04@l */
/* 809D24F4  38 60 00 00 */	li r3, 0
/* 809D24F8  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 809D24FC  83 C4 00 04 */	lwz r30, 4(r4)
/* 809D2500  3B A0 00 00 */	li r29, 0
/* 809D2504  38 9F 00 00 */	addi r4, r31, 0
/* 809D2508  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 809D250C  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 809D2510  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 809D2514  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 809D2518  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 809D251C  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 809D2520  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 809D2524  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 809D2528  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 809D252C  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 809D2530  7C 04 00 50 */	subf r0, r4, r0
/* 809D2534  7C 1C 07 34 */	extsh r28, r0
/* 809D2538  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 809D253C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809D2540  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 809D2544  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809D2548  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 809D254C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809D2550  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 809D2554  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809D2558  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 809D255C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809D2560  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 809D2564  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809D2568  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 809D256C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809D2570  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 809D2574  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809D2578  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 809D257C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809D2580  80 9F 01 D8 */	lwz r4, 0x1d8(r31)
/* 809D2584  80 1F 01 DC */	lwz r0, 0x1dc(r31)
/* 809D2588  90 81 00 18 */	stw r4, 0x18(r1)
/* 809D258C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809D2590  80 1F 01 E0 */	lwz r0, 0x1e0(r31)
/* 809D2594  90 01 00 20 */	stw r0, 0x20(r1)
/* 809D2598  38 1B 09 1A */	addi r0, r27, 0x91a
/* 809D259C  90 01 00 18 */	stw r0, 0x18(r1)
/* 809D25A0  38 1B 09 20 */	addi r0, r27, 0x920
/* 809D25A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809D25A8  38 1B 09 26 */	addi r0, r27, 0x926
/* 809D25AC  90 01 00 20 */	stw r0, 0x20(r1)
/* 809D25B0  A8 1B 0E 14 */	lha r0, 0xe14(r27)
/* 809D25B4  2C 00 00 04 */	cmpwi r0, 4
/* 809D25B8  41 82 00 4C */	beq lbl_809D2604
/* 809D25BC  40 80 00 14 */	bge lbl_809D25D0
/* 809D25C0  2C 00 00 01 */	cmpwi r0, 1
/* 809D25C4  41 82 00 18 */	beq lbl_809D25DC
/* 809D25C8  40 80 00 1C */	bge lbl_809D25E4
/* 809D25CC  48 00 00 4C */	b lbl_809D2618
lbl_809D25D0:
/* 809D25D0  2C 00 00 06 */	cmpwi r0, 6
/* 809D25D4  40 80 00 44 */	bge lbl_809D2618
/* 809D25D8  48 00 00 38 */	b lbl_809D2610
lbl_809D25DC:
/* 809D25DC  3B A0 00 01 */	li r29, 1
/* 809D25E0  48 00 00 38 */	b lbl_809D2618
lbl_809D25E4:
/* 809D25E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D25E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D25EC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809D25F0  2C 00 00 03 */	cmpwi r0, 3
/* 809D25F4  40 82 00 24 */	bne lbl_809D2618
/* 809D25F8  C3 3F 01 E4 */	lfs f25, 0x1e4(r31)
/* 809D25FC  C3 1F 01 E8 */	lfs f24, 0x1e8(r31)
/* 809D2600  48 00 00 18 */	b lbl_809D2618
lbl_809D2604:
/* 809D2604  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 809D2608  4B 77 E0 E5 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809D260C  48 00 00 0C */	b lbl_809D2618
lbl_809D2610:
/* 809D2610  38 7B 0C 88 */	addi r3, r27, 0xc88
/* 809D2614  4B 77 E0 D9 */	bl getActorP__18daNpcF_ActorMngr_cFv
lbl_809D2618:
/* 809D2618  28 03 00 00 */	cmplwi r3, 0
/* 809D261C  41 82 00 54 */	beq lbl_809D2670
/* 809D2620  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 809D2624  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 809D2628  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 809D262C  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 809D2630  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 809D2634  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 809D2638  A8 1B 0E 14 */	lha r0, 0xe14(r27)
/* 809D263C  2C 00 00 02 */	cmpwi r0, 2
/* 809D2640  41 82 00 24 */	beq lbl_809D2664
/* 809D2644  2C 00 00 03 */	cmpwi r0, 3
/* 809D2648  41 82 00 1C */	beq lbl_809D2664
/* 809D264C  2C 00 00 04 */	cmpwi r0, 4
/* 809D2650  41 82 00 14 */	beq lbl_809D2664
/* 809D2654  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 809D2658  C0 1F 01 EC */	lfs f0, 0x1ec(r31)
/* 809D265C  EC 01 00 28 */	fsubs f0, f1, f0
/* 809D2660  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_809D2664:
/* 809D2664  38 1B 08 78 */	addi r0, r27, 0x878
/* 809D2668  90 1B 0C 0C */	stw r0, 0xc0c(r27)
/* 809D266C  48 00 00 0C */	b lbl_809D2678
lbl_809D2670:
/* 809D2670  38 00 00 00 */	li r0, 0
/* 809D2674  90 1B 0C 0C */	stw r0, 0xc0c(r27)
lbl_809D2678:
/* 809D2678  D3 61 00 08 */	stfs f27, 8(r1)
/* 809D267C  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 809D2680  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 809D2684  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 809D2688  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 809D268C  FC 20 F8 90 */	fmr f1, f31
/* 809D2690  FC 40 F0 90 */	fmr f2, f30
/* 809D2694  FC 60 E8 90 */	fmr f3, f29
/* 809D2698  FC 80 E0 90 */	fmr f4, f28
/* 809D269C  C0 BF 00 80 */	lfs f5, 0x80(r31)
/* 809D26A0  FC C0 28 90 */	fmr f6, f5
/* 809D26A4  FC E0 28 90 */	fmr f7, f5
/* 809D26A8  FD 00 28 90 */	fmr f8, f5
/* 809D26AC  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 809D26B0  38 A1 00 24 */	addi r5, r1, 0x24
/* 809D26B4  4B 77 EA 05 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 809D26B8  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 809D26BC  7F 64 DB 78 */	mr r4, r27
/* 809D26C0  38 BE 00 24 */	addi r5, r30, 0x24
/* 809D26C4  38 C1 00 18 */	addi r6, r1, 0x18
/* 809D26C8  7F A7 EB 78 */	mr r7, r29
/* 809D26CC  7F 88 E3 78 */	mr r8, r28
/* 809D26D0  39 20 00 00 */	li r9, 0
/* 809D26D4  4B 77 EC 7D */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 809D26D8  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 809D26DC  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 809D26E0  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 809D26E4  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 809D26E8  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 809D26EC  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 809D26F0  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 809D26F4  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 809D26F8  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 809D26FC  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 809D2700  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 809D2704  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 809D2708  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 809D270C  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 809D2710  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 809D2714  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 809D2718  39 61 00 60 */	addi r11, r1, 0x60
/* 809D271C  4B 98 FB 05 */	bl _restgpr_27
/* 809D2720  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 809D2724  7C 08 03 A6 */	mtlr r0
/* 809D2728  38 21 00 E0 */	addi r1, r1, 0xe0
/* 809D272C  4E 80 00 20 */	blr 
