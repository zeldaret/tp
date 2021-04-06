lbl_80B96EA0:
/* 80B96EA0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80B96EA4  7C 08 02 A6 */	mflr r0
/* 80B96EA8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80B96EAC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80B96EB0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80B96EB4  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80B96EB8  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80B96EBC  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80B96EC0  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 80B96EC4  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 80B96EC8  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 80B96ECC  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 80B96ED0  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 80B96ED4  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 80B96ED8  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 80B96EDC  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 80B96EE0  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 80B96EE4  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 80B96EE8  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 80B96EEC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B96EF0  4B 7C B2 E5 */	bl _savegpr_27
/* 80B96EF4  7C 7B 1B 78 */	mr r27, r3
/* 80B96EF8  3C 60 80 BA */	lis r3, m__17daNpc_zrZ_Param_c@ha /* 0x80B9AFEC@ha */
/* 80B96EFC  3B E3 AF EC */	addi r31, r3, m__17daNpc_zrZ_Param_c@l /* 0x80B9AFEC@l */
/* 80B96F00  38 60 00 00 */	li r3, 0
/* 80B96F04  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 80B96F08  83 C4 00 04 */	lwz r30, 4(r4)
/* 80B96F0C  3B A0 00 00 */	li r29, 0
/* 80B96F10  38 9F 00 00 */	addi r4, r31, 0
/* 80B96F14  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 80B96F18  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 80B96F1C  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 80B96F20  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 80B96F24  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 80B96F28  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 80B96F2C  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 80B96F30  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 80B96F34  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 80B96F38  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80B96F3C  7C 04 00 50 */	subf r0, r4, r0
/* 80B96F40  7C 1C 07 34 */	extsh r28, r0
/* 80B96F44  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 80B96F48  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B96F4C  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 80B96F50  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B96F54  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 80B96F58  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B96F5C  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 80B96F60  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B96F64  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 80B96F68  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B96F6C  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 80B96F70  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B96F74  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 80B96F78  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B96F7C  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 80B96F80  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B96F84  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 80B96F88  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B96F8C  80 9F 01 70 */	lwz r4, 0x170(r31)
/* 80B96F90  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80B96F94  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B96F98  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B96F9C  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 80B96FA0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B96FA4  38 1B 09 1A */	addi r0, r27, 0x91a
/* 80B96FA8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B96FAC  38 1B 09 20 */	addi r0, r27, 0x920
/* 80B96FB0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B96FB4  38 1B 09 26 */	addi r0, r27, 0x926
/* 80B96FB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B96FBC  A8 1B 14 48 */	lha r0, 0x1448(r27)
/* 80B96FC0  2C 00 00 01 */	cmpwi r0, 1
/* 80B96FC4  41 82 00 1C */	beq lbl_80B96FE0
/* 80B96FC8  40 80 00 08 */	bge lbl_80B96FD0
/* 80B96FCC  48 00 00 44 */	b lbl_80B97010
lbl_80B96FD0:
/* 80B96FD0  2C 00 00 04 */	cmpwi r0, 4
/* 80B96FD4  41 82 00 34 */	beq lbl_80B97008
/* 80B96FD8  40 80 00 38 */	bge lbl_80B97010
/* 80B96FDC  48 00 00 0C */	b lbl_80B96FE8
lbl_80B96FE0:
/* 80B96FE0  3B A0 00 01 */	li r29, 1
/* 80B96FE4  48 00 00 2C */	b lbl_80B97010
lbl_80B96FE8:
/* 80B96FE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B96FEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B96FF0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B96FF4  2C 00 00 03 */	cmpwi r0, 3
/* 80B96FF8  40 82 00 18 */	bne lbl_80B97010
/* 80B96FFC  C3 3F 01 7C */	lfs f25, 0x17c(r31)
/* 80B97000  C3 1F 01 80 */	lfs f24, 0x180(r31)
/* 80B97004  48 00 00 0C */	b lbl_80B97010
lbl_80B97008:
/* 80B97008  38 7B 0C 88 */	addi r3, r27, 0xc88
/* 80B9700C  4B 5B 96 E1 */	bl getActorP__18daNpcF_ActorMngr_cFv
lbl_80B97010:
/* 80B97010  28 03 00 00 */	cmplwi r3, 0
/* 80B97014  41 82 00 54 */	beq lbl_80B97068
/* 80B97018  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 80B9701C  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 80B97020  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 80B97024  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 80B97028  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 80B9702C  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 80B97030  A8 1B 14 48 */	lha r0, 0x1448(r27)
/* 80B97034  2C 00 00 02 */	cmpwi r0, 2
/* 80B97038  41 82 00 24 */	beq lbl_80B9705C
/* 80B9703C  2C 00 00 03 */	cmpwi r0, 3
/* 80B97040  41 82 00 1C */	beq lbl_80B9705C
/* 80B97044  2C 00 00 04 */	cmpwi r0, 4
/* 80B97048  41 82 00 14 */	beq lbl_80B9705C
/* 80B9704C  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 80B97050  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 80B97054  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B97058  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_80B9705C:
/* 80B9705C  38 1B 08 78 */	addi r0, r27, 0x878
/* 80B97060  90 1B 0C 14 */	stw r0, 0xc14(r27)
/* 80B97064  48 00 00 0C */	b lbl_80B97070
lbl_80B97068:
/* 80B97068  38 00 00 00 */	li r0, 0
/* 80B9706C  90 1B 0C 14 */	stw r0, 0xc14(r27)
lbl_80B97070:
/* 80B97070  D3 61 00 08 */	stfs f27, 8(r1)
/* 80B97074  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 80B97078  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 80B9707C  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 80B97080  38 7B 0B E4 */	addi r3, r27, 0xbe4
/* 80B97084  FC 20 F8 90 */	fmr f1, f31
/* 80B97088  FC 40 F0 90 */	fmr f2, f30
/* 80B9708C  FC 60 E8 90 */	fmr f3, f29
/* 80B97090  FC 80 E0 90 */	fmr f4, f28
/* 80B97094  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 80B97098  FC C0 28 90 */	fmr f6, f5
/* 80B9709C  FC E0 28 90 */	fmr f7, f5
/* 80B970A0  FD 00 28 90 */	fmr f8, f5
/* 80B970A4  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B970A8  38 A1 00 24 */	addi r5, r1, 0x24
/* 80B970AC  4B 5B A0 0D */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80B970B0  38 7B 0B E4 */	addi r3, r27, 0xbe4
/* 80B970B4  7F 64 DB 78 */	mr r4, r27
/* 80B970B8  38 BE 00 24 */	addi r5, r30, 0x24
/* 80B970BC  38 C1 00 18 */	addi r6, r1, 0x18
/* 80B970C0  7F A7 EB 78 */	mr r7, r29
/* 80B970C4  7F 88 E3 78 */	mr r8, r28
/* 80B970C8  39 20 00 00 */	li r9, 0
/* 80B970CC  4B 5B A2 85 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80B970D0  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80B970D4  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80B970D8  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80B970DC  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80B970E0  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 80B970E4  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80B970E8  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 80B970EC  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 80B970F0  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 80B970F4  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 80B970F8  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 80B970FC  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 80B97100  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 80B97104  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 80B97108  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 80B9710C  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 80B97110  39 61 00 60 */	addi r11, r1, 0x60
/* 80B97114  4B 7C B1 0D */	bl _restgpr_27
/* 80B97118  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80B9711C  7C 08 03 A6 */	mtlr r0
/* 80B97120  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80B97124  4E 80 00 20 */	blr 
