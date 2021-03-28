lbl_8095C9BC:
/* 8095C9BC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8095C9C0  7C 08 02 A6 */	mflr r0
/* 8095C9C4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8095C9C8  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8095C9CC  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 8095C9D0  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8095C9D4  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 8095C9D8  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 8095C9DC  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 8095C9E0  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 8095C9E4  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 8095C9E8  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 8095C9EC  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 8095C9F0  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 8095C9F4  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 8095C9F8  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 8095C9FC  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 8095CA00  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 8095CA04  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 8095CA08  39 61 00 60 */	addi r11, r1, 0x60
/* 8095CA0C  4B A0 57 C8 */	b _savegpr_27
/* 8095CA10  7C 7B 1B 78 */	mr r27, r3
/* 8095CA14  3C 60 80 96 */	lis r3, m__16daNpcAsh_Param_c@ha
/* 8095CA18  3B E3 D6 40 */	addi r31, r3, m__16daNpcAsh_Param_c@l
/* 8095CA1C  38 60 00 00 */	li r3, 0
/* 8095CA20  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 8095CA24  83 C4 00 04 */	lwz r30, 4(r4)
/* 8095CA28  3B A0 00 00 */	li r29, 0
/* 8095CA2C  38 9F 00 00 */	addi r4, r31, 0
/* 8095CA30  C3 64 00 24 */	lfs f27, 0x24(r4)
/* 8095CA34  C3 44 00 20 */	lfs f26, 0x20(r4)
/* 8095CA38  A8 BB 09 E0 */	lha r5, 0x9e0(r27)
/* 8095CA3C  7C A0 07 35 */	extsh. r0, r5
/* 8095CA40  40 82 00 0C */	bne lbl_8095CA4C
/* 8095CA44  C3 FF 02 C0 */	lfs f31, 0x2c0(r31)
/* 8095CA48  48 00 00 08 */	b lbl_8095CA50
lbl_8095CA4C:
/* 8095CA4C  C3 E4 00 2C */	lfs f31, 0x2c(r4)
lbl_8095CA50:
/* 8095CA50  7C A0 07 35 */	extsh. r0, r5
/* 8095CA54  40 82 00 0C */	bne lbl_8095CA60
/* 8095CA58  C3 DF 02 4C */	lfs f30, 0x24c(r31)
/* 8095CA5C  48 00 00 0C */	b lbl_8095CA68
lbl_8095CA60:
/* 8095CA60  38 9F 00 00 */	addi r4, r31, 0
/* 8095CA64  C3 C4 00 28 */	lfs f30, 0x28(r4)
lbl_8095CA68:
/* 8095CA68  38 9F 00 00 */	addi r4, r31, 0
/* 8095CA6C  C3 24 00 34 */	lfs f25, 0x34(r4)
/* 8095CA70  C3 04 00 30 */	lfs f24, 0x30(r4)
/* 8095CA74  7C A0 07 35 */	extsh. r0, r5
/* 8095CA78  40 82 00 0C */	bne lbl_8095CA84
/* 8095CA7C  C3 BF 02 C4 */	lfs f29, 0x2c4(r31)
/* 8095CA80  48 00 00 08 */	b lbl_8095CA88
lbl_8095CA84:
/* 8095CA84  C3 A4 00 3C */	lfs f29, 0x3c(r4)
lbl_8095CA88:
/* 8095CA88  7C A0 07 35 */	extsh. r0, r5
/* 8095CA8C  40 82 00 0C */	bne lbl_8095CA98
/* 8095CA90  C3 9F 02 C8 */	lfs f28, 0x2c8(r31)
/* 8095CA94  48 00 00 0C */	b lbl_8095CAA0
lbl_8095CA98:
/* 8095CA98  38 9F 00 00 */	addi r4, r31, 0
/* 8095CA9C  C3 84 00 38 */	lfs f28, 0x38(r4)
lbl_8095CAA0:
/* 8095CAA0  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 8095CAA4  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 8095CAA8  7C 04 00 50 */	subf r0, r4, r0
/* 8095CAAC  7C 1C 07 34 */	extsh r28, r0
/* 8095CAB0  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 8095CAB4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8095CAB8  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 8095CABC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8095CAC0  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 8095CAC4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8095CAC8  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 8095CACC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8095CAD0  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 8095CAD4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8095CAD8  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 8095CADC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8095CAE0  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 8095CAE4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8095CAE8  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 8095CAEC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8095CAF0  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 8095CAF4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8095CAF8  80 9F 02 38 */	lwz r4, 0x238(r31)
/* 8095CAFC  80 1F 02 3C */	lwz r0, 0x23c(r31)
/* 8095CB00  90 81 00 18 */	stw r4, 0x18(r1)
/* 8095CB04  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8095CB08  80 1F 02 40 */	lwz r0, 0x240(r31)
/* 8095CB0C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8095CB10  38 1B 09 1A */	addi r0, r27, 0x91a
/* 8095CB14  90 01 00 18 */	stw r0, 0x18(r1)
/* 8095CB18  38 1B 09 20 */	addi r0, r27, 0x920
/* 8095CB1C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8095CB20  38 1B 09 26 */	addi r0, r27, 0x926
/* 8095CB24  90 01 00 20 */	stw r0, 0x20(r1)
/* 8095CB28  A8 1B 0F 5A */	lha r0, 0xf5a(r27)
/* 8095CB2C  2C 00 00 04 */	cmpwi r0, 4
/* 8095CB30  41 82 00 3C */	beq lbl_8095CB6C
/* 8095CB34  40 80 00 14 */	bge lbl_8095CB48
/* 8095CB38  2C 00 00 01 */	cmpwi r0, 1
/* 8095CB3C  41 82 00 18 */	beq lbl_8095CB54
/* 8095CB40  40 80 00 1C */	bge lbl_8095CB5C
/* 8095CB44  48 00 00 38 */	b lbl_8095CB7C
lbl_8095CB48:
/* 8095CB48  2C 00 00 06 */	cmpwi r0, 6
/* 8095CB4C  40 80 00 30 */	bge lbl_8095CB7C
/* 8095CB50  48 00 00 28 */	b lbl_8095CB78
lbl_8095CB54:
/* 8095CB54  3B A0 00 01 */	li r29, 1
/* 8095CB58  48 00 00 24 */	b lbl_8095CB7C
lbl_8095CB5C:
/* 8095CB5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8095CB60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8095CB64  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8095CB68  48 00 00 14 */	b lbl_8095CB7C
lbl_8095CB6C:
/* 8095CB6C  38 7B 0C A0 */	addi r3, r27, 0xca0
/* 8095CB70  4B 7F 3B 7C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 8095CB74  48 00 00 08 */	b lbl_8095CB7C
lbl_8095CB78:
/* 8095CB78  80 7B 0C B0 */	lwz r3, 0xcb0(r27)
lbl_8095CB7C:
/* 8095CB7C  28 03 00 00 */	cmplwi r3, 0
/* 8095CB80  41 82 00 4C */	beq lbl_8095CBCC
/* 8095CB84  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 8095CB88  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 8095CB8C  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 8095CB90  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 8095CB94  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 8095CB98  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 8095CB9C  A8 1B 0F 5A */	lha r0, 0xf5a(r27)
/* 8095CBA0  2C 00 00 02 */	cmpwi r0, 2
/* 8095CBA4  41 82 00 1C */	beq lbl_8095CBC0
/* 8095CBA8  2C 00 00 03 */	cmpwi r0, 3
/* 8095CBAC  41 82 00 14 */	beq lbl_8095CBC0
/* 8095CBB0  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 8095CBB4  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 8095CBB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8095CBBC  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_8095CBC0:
/* 8095CBC0  38 1B 08 78 */	addi r0, r27, 0x878
/* 8095CBC4  90 1B 0C 14 */	stw r0, 0xc14(r27)
/* 8095CBC8  48 00 00 0C */	b lbl_8095CBD4
lbl_8095CBCC:
/* 8095CBCC  38 00 00 00 */	li r0, 0
/* 8095CBD0  90 1B 0C 14 */	stw r0, 0xc14(r27)
lbl_8095CBD4:
/* 8095CBD4  D3 21 00 08 */	stfs f25, 8(r1)
/* 8095CBD8  D3 01 00 0C */	stfs f24, 0xc(r1)
/* 8095CBDC  D3 A1 00 10 */	stfs f29, 0x10(r1)
/* 8095CBE0  D3 81 00 14 */	stfs f28, 0x14(r1)
/* 8095CBE4  38 7B 0B E4 */	addi r3, r27, 0xbe4
/* 8095CBE8  FC 20 D8 90 */	fmr f1, f27
/* 8095CBEC  FC 40 D0 90 */	fmr f2, f26
/* 8095CBF0  FC 60 F8 90 */	fmr f3, f31
/* 8095CBF4  FC 80 F0 90 */	fmr f4, f30
/* 8095CBF8  C0 BF 00 80 */	lfs f5, 0x80(r31)
/* 8095CBFC  FC C0 28 90 */	fmr f6, f5
/* 8095CC00  FC E0 28 90 */	fmr f7, f5
/* 8095CC04  FD 00 28 90 */	fmr f8, f5
/* 8095CC08  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 8095CC0C  38 A1 00 24 */	addi r5, r1, 0x24
/* 8095CC10  4B 7F 44 A8 */	b setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 8095CC14  38 7B 0B E4 */	addi r3, r27, 0xbe4
/* 8095CC18  7F 64 DB 78 */	mr r4, r27
/* 8095CC1C  38 BE 00 24 */	addi r5, r30, 0x24
/* 8095CC20  38 C1 00 18 */	addi r6, r1, 0x18
/* 8095CC24  7F A7 EB 78 */	mr r7, r29
/* 8095CC28  7F 88 E3 78 */	mr r8, r28
/* 8095CC2C  39 20 00 00 */	li r9, 0
/* 8095CC30  4B 7F 47 20 */	b calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 8095CC34  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 8095CC38  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8095CC3C  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 8095CC40  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8095CC44  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 8095CC48  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 8095CC4C  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 8095CC50  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 8095CC54  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 8095CC58  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 8095CC5C  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 8095CC60  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 8095CC64  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 8095CC68  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 8095CC6C  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 8095CC70  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 8095CC74  39 61 00 60 */	addi r11, r1, 0x60
/* 8095CC78  4B A0 55 A8 */	b _restgpr_27
/* 8095CC7C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8095CC80  7C 08 03 A6 */	mtlr r0
/* 8095CC84  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8095CC88  4E 80 00 20 */	blr 
