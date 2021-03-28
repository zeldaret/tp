lbl_809E24A4:
/* 809E24A4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 809E24A8  7C 08 02 A6 */	mflr r0
/* 809E24AC  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 809E24B0  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 809E24B4  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 809E24B8  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 809E24BC  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 809E24C0  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 809E24C4  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 809E24C8  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 809E24CC  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 809E24D0  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 809E24D4  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 809E24D8  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 809E24DC  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 809E24E0  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 809E24E4  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 809E24E8  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 809E24EC  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 809E24F0  39 61 00 60 */	addi r11, r1, 0x60
/* 809E24F4  4B 97 FC E0 */	b _savegpr_27
/* 809E24F8  7C 7B 1B 78 */	mr r27, r3
/* 809E24FC  3C 60 80 9E */	lis r3, m__17daNpc_grR_Param_c@ha
/* 809E2500  3B E3 38 D8 */	addi r31, r3, m__17daNpc_grR_Param_c@l
/* 809E2504  38 60 00 00 */	li r3, 0
/* 809E2508  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 809E250C  83 C4 00 04 */	lwz r30, 4(r4)
/* 809E2510  3B A0 00 00 */	li r29, 0
/* 809E2514  38 9F 00 00 */	addi r4, r31, 0
/* 809E2518  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 809E251C  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 809E2520  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 809E2524  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 809E2528  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 809E252C  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 809E2530  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 809E2534  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 809E2538  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 809E253C  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 809E2540  7C 04 00 50 */	subf r0, r4, r0
/* 809E2544  7C 1C 07 34 */	extsh r28, r0
/* 809E2548  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 809E254C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809E2550  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 809E2554  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809E2558  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 809E255C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809E2560  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 809E2564  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809E2568  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 809E256C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809E2570  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 809E2574  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809E2578  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 809E257C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809E2580  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 809E2584  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809E2588  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 809E258C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809E2590  80 9F 02 DC */	lwz r4, 0x2dc(r31)
/* 809E2594  80 1F 02 E0 */	lwz r0, 0x2e0(r31)
/* 809E2598  90 81 00 18 */	stw r4, 0x18(r1)
/* 809E259C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809E25A0  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 809E25A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 809E25A8  38 1B 09 1A */	addi r0, r27, 0x91a
/* 809E25AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 809E25B0  38 1B 09 20 */	addi r0, r27, 0x920
/* 809E25B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809E25B8  38 1B 09 26 */	addi r0, r27, 0x926
/* 809E25BC  90 01 00 20 */	stw r0, 0x20(r1)
/* 809E25C0  A8 1B 0E 0C */	lha r0, 0xe0c(r27)
/* 809E25C4  2C 00 00 01 */	cmpwi r0, 1
/* 809E25C8  41 82 00 1C */	beq lbl_809E25E4
/* 809E25CC  40 80 00 08 */	bge lbl_809E25D4
/* 809E25D0  48 00 00 44 */	b lbl_809E2614
lbl_809E25D4:
/* 809E25D4  2C 00 00 04 */	cmpwi r0, 4
/* 809E25D8  41 82 00 34 */	beq lbl_809E260C
/* 809E25DC  40 80 00 38 */	bge lbl_809E2614
/* 809E25E0  48 00 00 0C */	b lbl_809E25EC
lbl_809E25E4:
/* 809E25E4  3B A0 00 01 */	li r29, 1
/* 809E25E8  48 00 00 2C */	b lbl_809E2614
lbl_809E25EC:
/* 809E25EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E25F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809E25F4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809E25F8  2C 00 00 03 */	cmpwi r0, 3
/* 809E25FC  40 82 00 18 */	bne lbl_809E2614
/* 809E2600  C3 3F 02 E8 */	lfs f25, 0x2e8(r31)
/* 809E2604  C3 1F 02 EC */	lfs f24, 0x2ec(r31)
/* 809E2608  48 00 00 0C */	b lbl_809E2614
lbl_809E260C:
/* 809E260C  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 809E2610  4B 76 E0 DC */	b getActorP__18daNpcF_ActorMngr_cFv
lbl_809E2614:
/* 809E2614  28 03 00 00 */	cmplwi r3, 0
/* 809E2618  41 82 00 54 */	beq lbl_809E266C
/* 809E261C  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 809E2620  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 809E2624  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 809E2628  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 809E262C  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 809E2630  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 809E2634  A8 1B 0E 0C */	lha r0, 0xe0c(r27)
/* 809E2638  2C 00 00 02 */	cmpwi r0, 2
/* 809E263C  41 82 00 24 */	beq lbl_809E2660
/* 809E2640  2C 00 00 03 */	cmpwi r0, 3
/* 809E2644  41 82 00 1C */	beq lbl_809E2660
/* 809E2648  2C 00 00 04 */	cmpwi r0, 4
/* 809E264C  41 82 00 14 */	beq lbl_809E2660
/* 809E2650  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 809E2654  C0 1F 02 F0 */	lfs f0, 0x2f0(r31)
/* 809E2658  EC 01 00 28 */	fsubs f0, f1, f0
/* 809E265C  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_809E2660:
/* 809E2660  38 1B 08 78 */	addi r0, r27, 0x878
/* 809E2664  90 1B 0C 0C */	stw r0, 0xc0c(r27)
/* 809E2668  48 00 00 0C */	b lbl_809E2674
lbl_809E266C:
/* 809E266C  38 00 00 00 */	li r0, 0
/* 809E2670  90 1B 0C 0C */	stw r0, 0xc0c(r27)
lbl_809E2674:
/* 809E2674  D3 61 00 08 */	stfs f27, 8(r1)
/* 809E2678  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 809E267C  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 809E2680  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 809E2684  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 809E2688  FC 20 F8 90 */	fmr f1, f31
/* 809E268C  FC 40 F0 90 */	fmr f2, f30
/* 809E2690  FC 60 E8 90 */	fmr f3, f29
/* 809E2694  FC 80 E0 90 */	fmr f4, f28
/* 809E2698  C0 BF 00 90 */	lfs f5, 0x90(r31)
/* 809E269C  FC C0 28 90 */	fmr f6, f5
/* 809E26A0  FC E0 28 90 */	fmr f7, f5
/* 809E26A4  FD 00 28 90 */	fmr f8, f5
/* 809E26A8  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 809E26AC  38 A1 00 24 */	addi r5, r1, 0x24
/* 809E26B0  4B 76 EA 08 */	b setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 809E26B4  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 809E26B8  7F 64 DB 78 */	mr r4, r27
/* 809E26BC  38 BE 00 24 */	addi r5, r30, 0x24
/* 809E26C0  38 C1 00 18 */	addi r6, r1, 0x18
/* 809E26C4  7F A7 EB 78 */	mr r7, r29
/* 809E26C8  7F 88 E3 78 */	mr r8, r28
/* 809E26CC  39 20 00 00 */	li r9, 0
/* 809E26D0  4B 76 EC 80 */	b calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 809E26D4  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 809E26D8  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 809E26DC  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 809E26E0  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 809E26E4  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 809E26E8  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 809E26EC  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 809E26F0  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 809E26F4  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 809E26F8  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 809E26FC  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 809E2700  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 809E2704  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 809E2708  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 809E270C  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 809E2710  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 809E2714  39 61 00 60 */	addi r11, r1, 0x60
/* 809E2718  4B 97 FB 08 */	b _restgpr_27
/* 809E271C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 809E2720  7C 08 03 A6 */	mtlr r0
/* 809E2724  38 21 00 E0 */	addi r1, r1, 0xe0
/* 809E2728  4E 80 00 20 */	blr 
