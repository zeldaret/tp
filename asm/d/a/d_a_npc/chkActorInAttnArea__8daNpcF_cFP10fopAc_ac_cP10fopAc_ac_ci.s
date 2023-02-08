lbl_80153BDC:
/* 80153BDC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80153BE0  7C 08 02 A6 */	mflr r0
/* 80153BE4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80153BE8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80153BEC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80153BF0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80153BF4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80153BF8  39 61 00 50 */	addi r11, r1, 0x50
/* 80153BFC  48 20 E5 D9 */	bl _savegpr_27
/* 80153C00  7C 7B 1B 78 */	mr r27, r3
/* 80153C04  7C 9C 23 78 */	mr r28, r4
/* 80153C08  7C BD 2B 78 */	mr r29, r5
/* 80153C0C  7C DE 33 78 */	mr r30, r6
/* 80153C10  3B E0 00 00 */	li r31, 0
/* 80153C14  7F C3 F3 78 */	mr r3, r30
/* 80153C18  4B FF 73 F9 */	bl getDistTable__12dAttention_cFi
/* 80153C1C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80153C20  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 80153C24  EF E0 00 72 */	fmuls f31, f0, f1
/* 80153C28  7F C3 F3 78 */	mr r3, r30
/* 80153C2C  4B FF 73 E5 */	bl getDistTable__12dAttention_cFi
/* 80153C30  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80153C34  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 80153C38  EF C0 00 72 */	fmuls f30, f0, f1
/* 80153C3C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80153C40  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80153C44  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80153C48  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80153C4C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80153C50  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80153C54  7F C3 F3 78 */	mr r3, r30
/* 80153C58  4B FF 73 B9 */	bl getDistTable__12dAttention_cFi
/* 80153C5C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80153C60  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80153C64  FC 00 F2 10 */	fabs f0, f30
/* 80153C68  FC 20 FA 10 */	fabs f1, f31
/* 80153C6C  FC 20 08 18 */	frsp f1, f1
/* 80153C70  FC 00 00 18 */	frsp f0, f0
/* 80153C74  EC 21 00 2A */	fadds f1, f1, f0
/* 80153C78  C0 02 9A AC */	lfs f0, lit_11253(r2)
/* 80153C7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80153C80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80153C84  7F C3 F3 78 */	mr r3, r30
/* 80153C88  4B FF 73 89 */	bl getDistTable__12dAttention_cFi
/* 80153C8C  C0 43 00 00 */	lfs f2, 0(r3)
/* 80153C90  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80153C94  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80153C98  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80153C9C  EC 00 F0 2A */	fadds f0, f0, f30
/* 80153CA0  EC 23 00 2A */	fadds f1, f3, f0
/* 80153CA4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80153CA8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80153CAC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80153CB0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80153CB4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80153CB8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80153CBC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80153CC0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80153CC4  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80153CC8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80153CCC  7F 63 DB 78 */	mr r3, r27
/* 80153CD0  7F 84 E3 78 */	mr r4, r28
/* 80153CD4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80153CD8  38 C1 00 08 */	addi r6, r1, 8
/* 80153CDC  A8 FD 04 E6 */	lha r7, 0x4e6(r29)
/* 80153CE0  4B FF FD 99 */	bl chkActorInArea__8daNpcF_cFP10fopAc_ac_c4cXyz4cXyzs
/* 80153CE4  2C 03 00 00 */	cmpwi r3, 0
/* 80153CE8  41 82 00 08 */	beq lbl_80153CF0
/* 80153CEC  3B E0 00 01 */	li r31, 1
lbl_80153CF0:
/* 80153CF0  7F E3 FB 78 */	mr r3, r31
/* 80153CF4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80153CF8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80153CFC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80153D00  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80153D04  39 61 00 50 */	addi r11, r1, 0x50
/* 80153D08  48 20 E5 19 */	bl _restgpr_27
/* 80153D0C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80153D10  7C 08 03 A6 */	mtlr r0
/* 80153D14  38 21 00 70 */	addi r1, r1, 0x70
/* 80153D18  4E 80 00 20 */	blr 
