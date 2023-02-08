lbl_809DD3FC:
/* 809DD3FC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 809DD400  7C 08 02 A6 */	mflr r0
/* 809DD404  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 809DD408  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 809DD40C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 809DD410  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 809DD414  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 809DD418  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 809DD41C  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 809DD420  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 809DD424  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 809DD428  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 809DD42C  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 809DD430  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 809DD434  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 809DD438  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 809DD43C  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 809DD440  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 809DD444  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 809DD448  39 61 00 60 */	addi r11, r1, 0x60
/* 809DD44C  4B 98 4D 89 */	bl _savegpr_27
/* 809DD450  7C 7B 1B 78 */	mr r27, r3
/* 809DD454  3C 60 80 9E */	lis r3, m__17daNpc_grO_Param_c@ha /* 0x809DEF7C@ha */
/* 809DD458  3B E3 EF 7C */	addi r31, r3, m__17daNpc_grO_Param_c@l /* 0x809DEF7C@l */
/* 809DD45C  38 60 00 00 */	li r3, 0
/* 809DD460  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 809DD464  83 C4 00 04 */	lwz r30, 4(r4)
/* 809DD468  3B A0 00 00 */	li r29, 0
/* 809DD46C  38 9F 00 00 */	addi r4, r31, 0
/* 809DD470  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 809DD474  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 809DD478  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 809DD47C  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 809DD480  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 809DD484  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 809DD488  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 809DD48C  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 809DD490  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 809DD494  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 809DD498  7C 04 00 50 */	subf r0, r4, r0
/* 809DD49C  7C 1C 07 34 */	extsh r28, r0
/* 809DD4A0  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 809DD4A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809DD4A8  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 809DD4AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809DD4B0  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 809DD4B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809DD4B8  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 809DD4BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809DD4C0  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 809DD4C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809DD4C8  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 809DD4CC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809DD4D0  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 809DD4D4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809DD4D8  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 809DD4DC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809DD4E0  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 809DD4E4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809DD4E8  80 9F 03 1C */	lwz r4, 0x31c(r31)
/* 809DD4EC  80 1F 03 20 */	lwz r0, 0x320(r31)
/* 809DD4F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 809DD4F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809DD4F8  80 1F 03 24 */	lwz r0, 0x324(r31)
/* 809DD4FC  90 01 00 20 */	stw r0, 0x20(r1)
/* 809DD500  38 1B 09 1A */	addi r0, r27, 0x91a
/* 809DD504  90 01 00 18 */	stw r0, 0x18(r1)
/* 809DD508  38 1B 09 20 */	addi r0, r27, 0x920
/* 809DD50C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809DD510  38 1B 09 26 */	addi r0, r27, 0x926
/* 809DD514  90 01 00 20 */	stw r0, 0x20(r1)
/* 809DD518  A8 1B 0E 20 */	lha r0, 0xe20(r27)
/* 809DD51C  2C 00 00 01 */	cmpwi r0, 1
/* 809DD520  41 82 00 1C */	beq lbl_809DD53C
/* 809DD524  40 80 00 08 */	bge lbl_809DD52C
/* 809DD528  48 00 00 44 */	b lbl_809DD56C
lbl_809DD52C:
/* 809DD52C  2C 00 00 04 */	cmpwi r0, 4
/* 809DD530  41 82 00 34 */	beq lbl_809DD564
/* 809DD534  40 80 00 38 */	bge lbl_809DD56C
/* 809DD538  48 00 00 0C */	b lbl_809DD544
lbl_809DD53C:
/* 809DD53C  3B A0 00 01 */	li r29, 1
/* 809DD540  48 00 00 2C */	b lbl_809DD56C
lbl_809DD544:
/* 809DD544  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809DD548  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809DD54C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809DD550  2C 00 00 03 */	cmpwi r0, 3
/* 809DD554  40 82 00 18 */	bne lbl_809DD56C
/* 809DD558  C3 3F 03 28 */	lfs f25, 0x328(r31)
/* 809DD55C  C3 1F 03 2C */	lfs f24, 0x32c(r31)
/* 809DD560  48 00 00 0C */	b lbl_809DD56C
lbl_809DD564:
/* 809DD564  38 7B 0C 84 */	addi r3, r27, 0xc84
/* 809DD568  4B 77 31 85 */	bl getActorP__18daNpcF_ActorMngr_cFv
lbl_809DD56C:
/* 809DD56C  28 03 00 00 */	cmplwi r3, 0
/* 809DD570  41 82 00 54 */	beq lbl_809DD5C4
/* 809DD574  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 809DD578  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 809DD57C  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 809DD580  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 809DD584  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 809DD588  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 809DD58C  A8 1B 0E 20 */	lha r0, 0xe20(r27)
/* 809DD590  2C 00 00 02 */	cmpwi r0, 2
/* 809DD594  41 82 00 24 */	beq lbl_809DD5B8
/* 809DD598  2C 00 00 03 */	cmpwi r0, 3
/* 809DD59C  41 82 00 1C */	beq lbl_809DD5B8
/* 809DD5A0  2C 00 00 04 */	cmpwi r0, 4
/* 809DD5A4  41 82 00 14 */	beq lbl_809DD5B8
/* 809DD5A8  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 809DD5AC  C0 1F 03 30 */	lfs f0, 0x330(r31)
/* 809DD5B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 809DD5B4  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_809DD5B8:
/* 809DD5B8  38 1B 08 78 */	addi r0, r27, 0x878
/* 809DD5BC  90 1B 0C 10 */	stw r0, 0xc10(r27)
/* 809DD5C0  48 00 00 0C */	b lbl_809DD5CC
lbl_809DD5C4:
/* 809DD5C4  38 00 00 00 */	li r0, 0
/* 809DD5C8  90 1B 0C 10 */	stw r0, 0xc10(r27)
lbl_809DD5CC:
/* 809DD5CC  D3 61 00 08 */	stfs f27, 8(r1)
/* 809DD5D0  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 809DD5D4  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 809DD5D8  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 809DD5DC  38 7B 0B E0 */	addi r3, r27, 0xbe0
/* 809DD5E0  FC 20 F8 90 */	fmr f1, f31
/* 809DD5E4  FC 40 F0 90 */	fmr f2, f30
/* 809DD5E8  FC 60 E8 90 */	fmr f3, f29
/* 809DD5EC  FC 80 E0 90 */	fmr f4, f28
/* 809DD5F0  C0 BF 00 90 */	lfs f5, 0x90(r31)
/* 809DD5F4  FC C0 28 90 */	fmr f6, f5
/* 809DD5F8  FC E0 28 90 */	fmr f7, f5
/* 809DD5FC  FD 00 28 90 */	fmr f8, f5
/* 809DD600  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 809DD604  38 A1 00 24 */	addi r5, r1, 0x24
/* 809DD608  4B 77 3A B1 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 809DD60C  38 7B 0B E0 */	addi r3, r27, 0xbe0
/* 809DD610  7F 64 DB 78 */	mr r4, r27
/* 809DD614  38 BE 00 24 */	addi r5, r30, 0x24
/* 809DD618  38 C1 00 18 */	addi r6, r1, 0x18
/* 809DD61C  7F A7 EB 78 */	mr r7, r29
/* 809DD620  7F 88 E3 78 */	mr r8, r28
/* 809DD624  39 20 00 00 */	li r9, 0
/* 809DD628  4B 77 3D 29 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 809DD62C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 809DD630  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 809DD634  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 809DD638  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 809DD63C  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 809DD640  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 809DD644  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 809DD648  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 809DD64C  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 809DD650  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 809DD654  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 809DD658  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 809DD65C  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 809DD660  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 809DD664  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 809DD668  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 809DD66C  39 61 00 60 */	addi r11, r1, 0x60
/* 809DD670  4B 98 4B B1 */	bl _restgpr_27
/* 809DD674  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 809DD678  7C 08 03 A6 */	mtlr r0
/* 809DD67C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 809DD680  4E 80 00 20 */	blr 
