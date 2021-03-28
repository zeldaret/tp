lbl_809E6878:
/* 809E6878  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 809E687C  7C 08 02 A6 */	mflr r0
/* 809E6880  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 809E6884  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 809E6888  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 809E688C  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 809E6890  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 809E6894  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 809E6898  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 809E689C  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 809E68A0  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 809E68A4  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 809E68A8  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 809E68AC  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 809E68B0  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 809E68B4  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 809E68B8  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 809E68BC  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 809E68C0  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 809E68C4  39 61 00 60 */	addi r11, r1, 0x60
/* 809E68C8  4B 97 B9 0C */	b _savegpr_27
/* 809E68CC  7C 7B 1B 78 */	mr r27, r3
/* 809E68D0  3C 60 80 9E */	lis r3, m__17daNpc_grS_Param_c@ha
/* 809E68D4  3B E3 7D CC */	addi r31, r3, m__17daNpc_grS_Param_c@l
/* 809E68D8  38 60 00 00 */	li r3, 0
/* 809E68DC  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 809E68E0  83 C4 00 04 */	lwz r30, 4(r4)
/* 809E68E4  3B A0 00 00 */	li r29, 0
/* 809E68E8  38 9F 00 00 */	addi r4, r31, 0
/* 809E68EC  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 809E68F0  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 809E68F4  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 809E68F8  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 809E68FC  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 809E6900  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 809E6904  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 809E6908  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 809E690C  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 809E6910  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 809E6914  7C 04 00 50 */	subf r0, r4, r0
/* 809E6918  7C 1C 07 34 */	extsh r28, r0
/* 809E691C  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 809E6920  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809E6924  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 809E6928  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809E692C  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 809E6930  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809E6934  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 809E6938  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809E693C  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 809E6940  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809E6944  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 809E6948  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809E694C  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 809E6950  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809E6954  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 809E6958  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809E695C  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 809E6960  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809E6964  80 9F 01 90 */	lwz r4, 0x190(r31)
/* 809E6968  80 1F 01 94 */	lwz r0, 0x194(r31)
/* 809E696C  90 81 00 18 */	stw r4, 0x18(r1)
/* 809E6970  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809E6974  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 809E6978  90 01 00 20 */	stw r0, 0x20(r1)
/* 809E697C  38 1B 09 1A */	addi r0, r27, 0x91a
/* 809E6980  90 01 00 18 */	stw r0, 0x18(r1)
/* 809E6984  38 1B 09 20 */	addi r0, r27, 0x920
/* 809E6988  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809E698C  38 1B 09 26 */	addi r0, r27, 0x926
/* 809E6990  90 01 00 20 */	stw r0, 0x20(r1)
/* 809E6994  A8 1B 0E 10 */	lha r0, 0xe10(r27)
/* 809E6998  2C 00 00 01 */	cmpwi r0, 1
/* 809E699C  41 82 00 1C */	beq lbl_809E69B8
/* 809E69A0  40 80 00 08 */	bge lbl_809E69A8
/* 809E69A4  48 00 00 44 */	b lbl_809E69E8
lbl_809E69A8:
/* 809E69A8  2C 00 00 04 */	cmpwi r0, 4
/* 809E69AC  41 82 00 34 */	beq lbl_809E69E0
/* 809E69B0  40 80 00 38 */	bge lbl_809E69E8
/* 809E69B4  48 00 00 0C */	b lbl_809E69C0
lbl_809E69B8:
/* 809E69B8  3B A0 00 01 */	li r29, 1
/* 809E69BC  48 00 00 2C */	b lbl_809E69E8
lbl_809E69C0:
/* 809E69C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E69C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809E69C8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809E69CC  2C 00 00 03 */	cmpwi r0, 3
/* 809E69D0  40 82 00 18 */	bne lbl_809E69E8
/* 809E69D4  C3 3F 01 9C */	lfs f25, 0x19c(r31)
/* 809E69D8  C3 1F 01 A0 */	lfs f24, 0x1a0(r31)
/* 809E69DC  48 00 00 0C */	b lbl_809E69E8
lbl_809E69E0:
/* 809E69E0  38 7B 0C 84 */	addi r3, r27, 0xc84
/* 809E69E4  4B 76 9D 08 */	b getActorP__18daNpcF_ActorMngr_cFv
lbl_809E69E8:
/* 809E69E8  28 03 00 00 */	cmplwi r3, 0
/* 809E69EC  41 82 00 54 */	beq lbl_809E6A40
/* 809E69F0  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 809E69F4  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 809E69F8  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 809E69FC  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 809E6A00  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 809E6A04  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 809E6A08  A8 1B 0E 10 */	lha r0, 0xe10(r27)
/* 809E6A0C  2C 00 00 02 */	cmpwi r0, 2
/* 809E6A10  41 82 00 24 */	beq lbl_809E6A34
/* 809E6A14  2C 00 00 03 */	cmpwi r0, 3
/* 809E6A18  41 82 00 1C */	beq lbl_809E6A34
/* 809E6A1C  2C 00 00 04 */	cmpwi r0, 4
/* 809E6A20  41 82 00 14 */	beq lbl_809E6A34
/* 809E6A24  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 809E6A28  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 809E6A2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 809E6A30  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_809E6A34:
/* 809E6A34  38 1B 08 78 */	addi r0, r27, 0x878
/* 809E6A38  90 1B 0C 10 */	stw r0, 0xc10(r27)
/* 809E6A3C  48 00 00 0C */	b lbl_809E6A48
lbl_809E6A40:
/* 809E6A40  38 00 00 00 */	li r0, 0
/* 809E6A44  90 1B 0C 10 */	stw r0, 0xc10(r27)
lbl_809E6A48:
/* 809E6A48  D3 61 00 08 */	stfs f27, 8(r1)
/* 809E6A4C  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 809E6A50  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 809E6A54  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 809E6A58  38 7B 0B E0 */	addi r3, r27, 0xbe0
/* 809E6A5C  FC 20 F8 90 */	fmr f1, f31
/* 809E6A60  FC 40 F0 90 */	fmr f2, f30
/* 809E6A64  FC 60 E8 90 */	fmr f3, f29
/* 809E6A68  FC 80 E0 90 */	fmr f4, f28
/* 809E6A6C  C0 BF 00 80 */	lfs f5, 0x80(r31)
/* 809E6A70  FC C0 28 90 */	fmr f6, f5
/* 809E6A74  FC E0 28 90 */	fmr f7, f5
/* 809E6A78  FD 00 28 90 */	fmr f8, f5
/* 809E6A7C  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 809E6A80  38 A1 00 24 */	addi r5, r1, 0x24
/* 809E6A84  4B 76 A6 34 */	b setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 809E6A88  38 7B 0B E0 */	addi r3, r27, 0xbe0
/* 809E6A8C  7F 64 DB 78 */	mr r4, r27
/* 809E6A90  38 BE 00 24 */	addi r5, r30, 0x24
/* 809E6A94  38 C1 00 18 */	addi r6, r1, 0x18
/* 809E6A98  7F A7 EB 78 */	mr r7, r29
/* 809E6A9C  7F 88 E3 78 */	mr r8, r28
/* 809E6AA0  39 20 00 00 */	li r9, 0
/* 809E6AA4  4B 76 A8 AC */	b calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 809E6AA8  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 809E6AAC  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 809E6AB0  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 809E6AB4  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 809E6AB8  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 809E6ABC  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 809E6AC0  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 809E6AC4  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 809E6AC8  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 809E6ACC  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 809E6AD0  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 809E6AD4  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 809E6AD8  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 809E6ADC  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 809E6AE0  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 809E6AE4  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 809E6AE8  39 61 00 60 */	addi r11, r1, 0x60
/* 809E6AEC  4B 97 B7 34 */	b _restgpr_27
/* 809E6AF0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 809E6AF4  7C 08 03 A6 */	mtlr r0
/* 809E6AF8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 809E6AFC  4E 80 00 20 */	blr 
