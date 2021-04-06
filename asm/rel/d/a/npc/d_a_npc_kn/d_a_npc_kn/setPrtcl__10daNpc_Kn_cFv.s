lbl_80A372D0:
/* 80A372D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A372D4  7C 08 02 A6 */	mflr r0
/* 80A372D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A372DC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A372E0  4B 92 AE F1 */	bl _savegpr_26
/* 80A372E4  7C 7E 1B 78 */	mr r30, r3
/* 80A372E8  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A372EC  3B 63 08 C8 */	addi r27, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A372F0  3B E0 00 00 */	li r31, 0
/* 80A372F4  3B A0 00 00 */	li r29, 0
/* 80A372F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A372FC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80A37300:
/* 80A37300  20 1F 00 02 */	subfic r0, r31, 2
/* 80A37304  7C 00 00 34 */	cntlzw r0, r0
/* 80A37308  54 06 D9 7E */	srwi r6, r0, 5
/* 80A3730C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A37310  7C 00 07 74 */	extsb r0, r0
/* 80A37314  7F 5E EA 14 */	add r26, r30, r29
/* 80A37318  89 1A 15 E0 */	lbz r8, 0x15e0(r26)
/* 80A3731C  28 08 00 01 */	cmplwi r8, 1
/* 80A37320  40 82 00 0C */	bne lbl_80A3732C
/* 80A37324  39 3A 15 F0 */	addi r9, r26, 0x15f0
/* 80A37328  48 00 00 08 */	b lbl_80A37330
lbl_80A3732C:
/* 80A3732C  39 20 00 00 */	li r9, 0
lbl_80A37330:
/* 80A37330  90 01 00 08 */	stw r0, 8(r1)
/* 80A37334  38 7A 16 04 */	addi r3, r26, 0x1604
/* 80A37338  38 9E 01 0C */	addi r4, r30, 0x10c
/* 80A3733C  38 BA 15 E4 */	addi r5, r26, 0x15e4
/* 80A37340  38 E0 00 00 */	li r7, 0
/* 80A37344  28 08 00 01 */	cmplwi r8, 1
/* 80A37348  40 82 00 0C */	bne lbl_80A37354
/* 80A3734C  7C A8 2B 78 */	mr r8, r5
/* 80A37350  48 00 00 08 */	b lbl_80A37358
lbl_80A37354:
/* 80A37354  39 00 00 00 */	li r8, 0
lbl_80A37358:
/* 80A37358  39 40 00 00 */	li r10, 0
/* 80A3735C  C0 3B 00 38 */	lfs f1, 0x38(r27)
/* 80A37360  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80A37364  4B 61 9C A5 */	bl setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff
/* 80A37368  88 1A 15 E0 */	lbz r0, 0x15e0(r26)
/* 80A3736C  28 00 00 00 */	cmplwi r0, 0
/* 80A37370  41 82 00 8C */	beq lbl_80A373FC
/* 80A37374  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80A37378  38 63 02 10 */	addi r3, r3, 0x210
/* 80A3737C  80 9A 16 0C */	lwz r4, 0x160c(r26)
/* 80A37380  4B 61 45 99 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80A37384  28 03 00 00 */	cmplwi r3, 0
/* 80A37388  41 82 00 74 */	beq lbl_80A373FC
/* 80A3738C  2C 1F 00 02 */	cmpwi r31, 2
/* 80A37390  41 82 00 5C */	beq lbl_80A373EC
/* 80A37394  40 80 00 68 */	bge lbl_80A373FC
/* 80A37398  2C 1F 00 00 */	cmpwi r31, 0
/* 80A3739C  40 80 00 08 */	bge lbl_80A373A4
/* 80A373A0  48 00 00 5C */	b lbl_80A373FC
lbl_80A373A4:
/* 80A373A4  C0 3B 00 44 */	lfs f1, 0x44(r27)
/* 80A373A8  D0 3A 15 F8 */	stfs f1, 0x15f8(r26)
/* 80A373AC  D0 3A 15 FC */	stfs f1, 0x15fc(r26)
/* 80A373B0  D0 3A 16 00 */	stfs f1, 0x1600(r26)
/* 80A373B4  C0 1B 00 38 */	lfs f0, 0x38(r27)
/* 80A373B8  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80A373BC  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80A373C0  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80A373C4  38 9A 15 F8 */	addi r4, r26, 0x15f8
/* 80A373C8  E0 24 00 00 */	psq_l f1, 0(r4), 0, 0 /* qr0 */
/* 80A373CC  C0 1A 16 00 */	lfs f0, 0x1600(r26)
/* 80A373D0  F0 21 00 10 */	psq_st f1, 16(r1), 0, 0 /* qr0 */
/* 80A373D4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A373D8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80A373DC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A373E0  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80A373E4  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 80A373E8  48 00 00 14 */	b lbl_80A373FC
lbl_80A373EC:
/* 80A373EC  C0 1B 01 D8 */	lfs f0, 0x1d8(r27)
/* 80A373F0  D0 1A 15 F8 */	stfs f0, 0x15f8(r26)
/* 80A373F4  D0 1A 15 FC */	stfs f0, 0x15fc(r26)
/* 80A373F8  D0 1A 16 00 */	stfs f0, 0x1600(r26)
lbl_80A373FC:
/* 80A373FC  38 00 00 00 */	li r0, 0
/* 80A37400  98 1A 15 E0 */	stb r0, 0x15e0(r26)
/* 80A37404  3B FF 00 01 */	addi r31, r31, 1
/* 80A37408  2C 1F 00 03 */	cmpwi r31, 3
/* 80A3740C  3B BD 00 5C */	addi r29, r29, 0x5c
/* 80A37410  41 80 FE F0 */	blt lbl_80A37300
/* 80A37414  38 60 00 01 */	li r3, 1
/* 80A37418  39 61 00 40 */	addi r11, r1, 0x40
/* 80A3741C  4B 92 AE 01 */	bl _restgpr_26
/* 80A37420  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A37424  7C 08 03 A6 */	mtlr r0
/* 80A37428  38 21 00 40 */	addi r1, r1, 0x40
/* 80A3742C  4E 80 00 20 */	blr 
