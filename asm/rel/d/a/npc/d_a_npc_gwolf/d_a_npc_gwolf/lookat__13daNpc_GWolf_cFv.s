lbl_809F5B84:
/* 809F5B84  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 809F5B88  7C 08 02 A6 */	mflr r0
/* 809F5B8C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 809F5B90  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 809F5B94  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 809F5B98  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 809F5B9C  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 809F5BA0  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 809F5BA4  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 809F5BA8  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 809F5BAC  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 809F5BB0  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 809F5BB4  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 809F5BB8  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 809F5BBC  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 809F5BC0  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 809F5BC4  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 809F5BC8  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 809F5BCC  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 809F5BD0  39 61 00 60 */	addi r11, r1, 0x60
/* 809F5BD4  4B 96 C6 00 */	b _savegpr_27
/* 809F5BD8  7C 7B 1B 78 */	mr r27, r3
/* 809F5BDC  3C 60 80 A0 */	lis r3, m__19daNpc_GWolf_Param_c@ha
/* 809F5BE0  3B E3 84 F4 */	addi r31, r3, m__19daNpc_GWolf_Param_c@l
/* 809F5BE4  38 60 00 00 */	li r3, 0
/* 809F5BE8  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 809F5BEC  83 C4 00 04 */	lwz r30, 4(r4)
/* 809F5BF0  3B A0 00 00 */	li r29, 0
/* 809F5BF4  38 9F 00 00 */	addi r4, r31, 0
/* 809F5BF8  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 809F5BFC  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 809F5C00  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 809F5C04  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 809F5C08  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 809F5C0C  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 809F5C10  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 809F5C14  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 809F5C18  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 809F5C1C  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 809F5C20  7C 04 00 50 */	subf r0, r4, r0
/* 809F5C24  7C 1C 07 34 */	extsh r28, r0
/* 809F5C28  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 809F5C2C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809F5C30  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 809F5C34  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809F5C38  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 809F5C3C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809F5C40  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 809F5C44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809F5C48  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 809F5C4C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809F5C50  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 809F5C54  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809F5C58  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 809F5C5C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809F5C60  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 809F5C64  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809F5C68  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 809F5C6C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809F5C70  80 9F 01 C0 */	lwz r4, 0x1c0(r31)
/* 809F5C74  80 1F 01 C4 */	lwz r0, 0x1c4(r31)
/* 809F5C78  90 81 00 18 */	stw r4, 0x18(r1)
/* 809F5C7C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809F5C80  80 1F 01 C8 */	lwz r0, 0x1c8(r31)
/* 809F5C84  90 01 00 20 */	stw r0, 0x20(r1)
/* 809F5C88  38 1B 09 1A */	addi r0, r27, 0x91a
/* 809F5C8C  90 01 00 18 */	stw r0, 0x18(r1)
/* 809F5C90  38 1B 09 20 */	addi r0, r27, 0x920
/* 809F5C94  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809F5C98  38 1B 09 26 */	addi r0, r27, 0x926
/* 809F5C9C  90 01 00 20 */	stw r0, 0x20(r1)
/* 809F5CA0  A8 1B 0E 0C */	lha r0, 0xe0c(r27)
/* 809F5CA4  2C 00 00 01 */	cmpwi r0, 1
/* 809F5CA8  41 82 00 1C */	beq lbl_809F5CC4
/* 809F5CAC  40 80 00 08 */	bge lbl_809F5CB4
/* 809F5CB0  48 00 00 44 */	b lbl_809F5CF4
lbl_809F5CB4:
/* 809F5CB4  2C 00 00 04 */	cmpwi r0, 4
/* 809F5CB8  41 82 00 34 */	beq lbl_809F5CEC
/* 809F5CBC  40 80 00 38 */	bge lbl_809F5CF4
/* 809F5CC0  48 00 00 0C */	b lbl_809F5CCC
lbl_809F5CC4:
/* 809F5CC4  3B A0 00 01 */	li r29, 1
/* 809F5CC8  48 00 00 2C */	b lbl_809F5CF4
lbl_809F5CCC:
/* 809F5CCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809F5CD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809F5CD4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809F5CD8  2C 00 00 03 */	cmpwi r0, 3
/* 809F5CDC  40 82 00 18 */	bne lbl_809F5CF4
/* 809F5CE0  C3 3F 01 CC */	lfs f25, 0x1cc(r31)
/* 809F5CE4  C3 1F 01 D0 */	lfs f24, 0x1d0(r31)
/* 809F5CE8  48 00 00 0C */	b lbl_809F5CF4
lbl_809F5CEC:
/* 809F5CEC  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 809F5CF0  4B 75 A9 FC */	b getActorP__18daNpcF_ActorMngr_cFv
lbl_809F5CF4:
/* 809F5CF4  28 03 00 00 */	cmplwi r3, 0
/* 809F5CF8  41 82 00 54 */	beq lbl_809F5D4C
/* 809F5CFC  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 809F5D00  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 809F5D04  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 809F5D08  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 809F5D0C  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 809F5D10  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 809F5D14  A8 1B 0E 0C */	lha r0, 0xe0c(r27)
/* 809F5D18  2C 00 00 02 */	cmpwi r0, 2
/* 809F5D1C  41 82 00 24 */	beq lbl_809F5D40
/* 809F5D20  2C 00 00 03 */	cmpwi r0, 3
/* 809F5D24  41 82 00 1C */	beq lbl_809F5D40
/* 809F5D28  2C 00 00 04 */	cmpwi r0, 4
/* 809F5D2C  41 82 00 14 */	beq lbl_809F5D40
/* 809F5D30  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 809F5D34  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 809F5D38  EC 01 00 28 */	fsubs f0, f1, f0
/* 809F5D3C  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_809F5D40:
/* 809F5D40  38 1B 08 78 */	addi r0, r27, 0x878
/* 809F5D44  90 1B 0C 0C */	stw r0, 0xc0c(r27)
/* 809F5D48  48 00 00 0C */	b lbl_809F5D54
lbl_809F5D4C:
/* 809F5D4C  38 00 00 00 */	li r0, 0
/* 809F5D50  90 1B 0C 0C */	stw r0, 0xc0c(r27)
lbl_809F5D54:
/* 809F5D54  D3 61 00 08 */	stfs f27, 8(r1)
/* 809F5D58  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 809F5D5C  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 809F5D60  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 809F5D64  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 809F5D68  FC 20 F8 90 */	fmr f1, f31
/* 809F5D6C  FC 40 F0 90 */	fmr f2, f30
/* 809F5D70  FC 60 E8 90 */	fmr f3, f29
/* 809F5D74  FC 80 E0 90 */	fmr f4, f28
/* 809F5D78  C0 BF 00 A0 */	lfs f5, 0xa0(r31)
/* 809F5D7C  FC C0 28 90 */	fmr f6, f5
/* 809F5D80  FC E0 28 90 */	fmr f7, f5
/* 809F5D84  FD 00 28 90 */	fmr f8, f5
/* 809F5D88  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 809F5D8C  38 A1 00 24 */	addi r5, r1, 0x24
/* 809F5D90  4B 75 B3 28 */	b setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 809F5D94  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 809F5D98  7F 64 DB 78 */	mr r4, r27
/* 809F5D9C  38 BE 00 24 */	addi r5, r30, 0x24
/* 809F5DA0  38 C1 00 18 */	addi r6, r1, 0x18
/* 809F5DA4  7F A7 EB 78 */	mr r7, r29
/* 809F5DA8  7F 88 E3 78 */	mr r8, r28
/* 809F5DAC  39 20 00 00 */	li r9, 0
/* 809F5DB0  4B 75 B5 A0 */	b calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 809F5DB4  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 809F5DB8  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 809F5DBC  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 809F5DC0  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 809F5DC4  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 809F5DC8  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 809F5DCC  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 809F5DD0  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 809F5DD4  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 809F5DD8  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 809F5DDC  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 809F5DE0  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 809F5DE4  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 809F5DE8  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 809F5DEC  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 809F5DF0  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 809F5DF4  39 61 00 60 */	addi r11, r1, 0x60
/* 809F5DF8  4B 96 C4 28 */	b _restgpr_27
/* 809F5DFC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 809F5E00  7C 08 03 A6 */	mtlr r0
/* 809F5E04  38 21 00 E0 */	addi r1, r1, 0xe0
/* 809F5E08  4E 80 00 20 */	blr 
