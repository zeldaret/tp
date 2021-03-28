lbl_8098D938:
/* 8098D938  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8098D93C  7C 08 02 A6 */	mflr r0
/* 8098D940  90 01 00 44 */	stw r0, 0x44(r1)
/* 8098D944  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8098D948  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8098D94C  39 61 00 30 */	addi r11, r1, 0x30
/* 8098D950  4B 9D 48 7C */	b _savegpr_25
/* 8098D954  7C 7A 1B 78 */	mr r26, r3
/* 8098D958  FF E0 08 90 */	fmr f31, f1
/* 8098D95C  3C 60 80 99 */	lis r3, cNullVec__6Z2Calc@ha
/* 8098D960  3B C3 1D DC */	addi r30, r3, cNullVec__6Z2Calc@l
/* 8098D964  3C 60 80 99 */	lis r3, sLoadResPat_Normal@ha
/* 8098D968  3B E3 18 F8 */	addi r31, r3, sLoadResPat_Normal@l
/* 8098D96C  38 04 FF F0 */	addi r0, r4, -16
/* 8098D970  28 00 00 0D */	cmplwi r0, 0xd
/* 8098D974  41 81 00 A4 */	bgt lbl_8098DA18
/* 8098D978  3C 60 80 99 */	lis r3, lit_4811@ha
/* 8098D97C  38 63 21 DC */	addi r3, r3, lit_4811@l
/* 8098D980  54 00 10 3A */	slwi r0, r0, 2
/* 8098D984  7C 03 00 2E */	lwzx r0, r3, r0
/* 8098D988  7C 09 03 A6 */	mtctr r0
/* 8098D98C  4E 80 04 20 */	bctr 
lbl_8098D990:
/* 8098D990  3B 20 00 01 */	li r25, 1
/* 8098D994  48 00 00 98 */	b lbl_8098DA2C
lbl_8098D998:
/* 8098D998  3B 20 00 05 */	li r25, 5
/* 8098D99C  48 00 00 90 */	b lbl_8098DA2C
lbl_8098D9A0:
/* 8098D9A0  3B 20 00 03 */	li r25, 3
/* 8098D9A4  48 00 00 88 */	b lbl_8098DA2C
lbl_8098D9A8:
/* 8098D9A8  3B 20 00 07 */	li r25, 7
/* 8098D9AC  48 00 00 80 */	b lbl_8098DA2C
lbl_8098D9B0:
/* 8098D9B0  3B 20 00 06 */	li r25, 6
/* 8098D9B4  48 00 00 78 */	b lbl_8098DA2C
lbl_8098D9B8:
/* 8098D9B8  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8098D9BC  D0 1A 0E 1C */	stfs f0, 0xe1c(r26)
/* 8098D9C0  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8098D9C4  D0 1A 0E 20 */	stfs f0, 0xe20(r26)
/* 8098D9C8  3B 20 00 00 */	li r25, 0
/* 8098D9CC  48 00 00 60 */	b lbl_8098DA2C
lbl_8098D9D0:
/* 8098D9D0  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8098D9D4  D0 1A 0E 1C */	stfs f0, 0xe1c(r26)
/* 8098D9D8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8098D9DC  D0 1A 0E 20 */	stfs f0, 0xe20(r26)
/* 8098D9E0  3B 20 00 00 */	li r25, 0
/* 8098D9E4  48 00 00 48 */	b lbl_8098DA2C
lbl_8098D9E8:
/* 8098D9E8  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8098D9EC  D0 1A 0E 1C */	stfs f0, 0xe1c(r26)
/* 8098D9F0  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8098D9F4  D0 1A 0E 20 */	stfs f0, 0xe20(r26)
/* 8098D9F8  3B 20 00 00 */	li r25, 0
/* 8098D9FC  48 00 00 30 */	b lbl_8098DA2C
lbl_8098DA00:
/* 8098DA00  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8098DA04  D0 1A 0E 1C */	stfs f0, 0xe1c(r26)
/* 8098DA08  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8098DA0C  D0 1A 0E 20 */	stfs f0, 0xe20(r26)
/* 8098DA10  3B 20 00 00 */	li r25, 0
/* 8098DA14  48 00 00 18 */	b lbl_8098DA2C
lbl_8098DA18:
/* 8098DA18  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8098DA1C  D0 1A 0E 1C */	stfs f0, 0xe1c(r26)
/* 8098DA20  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8098DA24  D0 1A 0E 20 */	stfs f0, 0xe20(r26)
/* 8098DA28  3B 20 00 00 */	li r25, 0
lbl_8098DA2C:
/* 8098DA2C  1F A4 00 0C */	mulli r29, r4, 0xc
/* 8098DA30  7F 43 D3 78 */	mr r3, r26
/* 8098DA34  38 BE 00 20 */	addi r5, r30, 0x20
/* 8098DA38  7C 85 EA 14 */	add r4, r5, r29
/* 8098DA3C  80 04 00 08 */	lwz r0, 8(r4)
/* 8098DA40  54 00 10 3A */	slwi r0, r0, 2
/* 8098DA44  38 9E 02 CC */	addi r4, r30, 0x2cc
/* 8098DA48  7C 84 00 2E */	lwzx r4, r4, r0
/* 8098DA4C  7C A5 E8 2E */	lwzx r5, r5, r29
/* 8098DA50  4B 7C 50 DC */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 8098DA54  7C 7C 1B 78 */	mr r28, r3
/* 8098DA58  1F 39 00 0C */	mulli r25, r25, 0xc
/* 8098DA5C  7F 43 D3 78 */	mr r3, r26
/* 8098DA60  38 BE 02 60 */	addi r5, r30, 0x260
/* 8098DA64  7C 85 CA 14 */	add r4, r5, r25
/* 8098DA68  80 04 00 08 */	lwz r0, 8(r4)
/* 8098DA6C  54 00 10 3A */	slwi r0, r0, 2
/* 8098DA70  38 9E 02 CC */	addi r4, r30, 0x2cc
/* 8098DA74  7C 84 00 2E */	lwzx r4, r4, r0
/* 8098DA78  7C A5 C8 2E */	lwzx r5, r5, r25
/* 8098DA7C  4B 7C 51 28 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 8098DA80  7C 7B 1B 78 */	mr r27, r3
/* 8098DA84  38 1E 00 20 */	addi r0, r30, 0x20
/* 8098DA88  7C 60 EA 14 */	add r3, r0, r29
/* 8098DA8C  80 A3 00 04 */	lwz r5, 4(r3)
/* 8098DA90  38 1E 02 60 */	addi r0, r30, 0x260
/* 8098DA94  7C 60 CA 14 */	add r3, r0, r25
/* 8098DA98  83 23 00 04 */	lwz r25, 4(r3)
/* 8098DA9C  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 8098DAA0  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 8098DAA4  90 1A 09 9C */	stw r0, 0x99c(r26)
/* 8098DAA8  28 1C 00 00 */	cmplwi r28, 0
/* 8098DAAC  41 82 00 3C */	beq lbl_8098DAE8
/* 8098DAB0  7F 43 D3 78 */	mr r3, r26
/* 8098DAB4  7F 84 E3 78 */	mr r4, r28
/* 8098DAB8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8098DABC  FC 40 F8 90 */	fmr f2, f31
/* 8098DAC0  38 C0 00 00 */	li r6, 0
/* 8098DAC4  38 E0 FF FF */	li r7, -1
/* 8098DAC8  4B 7C 51 54 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 8098DACC  2C 03 00 00 */	cmpwi r3, 0
/* 8098DAD0  41 82 00 18 */	beq lbl_8098DAE8
/* 8098DAD4  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 8098DAD8  60 00 00 09 */	ori r0, r0, 9
/* 8098DADC  90 1A 09 9C */	stw r0, 0x99c(r26)
/* 8098DAE0  38 00 00 00 */	li r0, 0
/* 8098DAE4  B0 1A 09 E2 */	sth r0, 0x9e2(r26)
lbl_8098DAE8:
/* 8098DAE8  28 1B 00 00 */	cmplwi r27, 0
/* 8098DAEC  41 82 00 38 */	beq lbl_8098DB24
/* 8098DAF0  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 8098DAF4  80 63 00 04 */	lwz r3, 4(r3)
/* 8098DAF8  80 A3 00 04 */	lwz r5, 4(r3)
/* 8098DAFC  7F 43 D3 78 */	mr r3, r26
/* 8098DB00  7F 64 DB 78 */	mr r4, r27
/* 8098DB04  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8098DB08  7F 26 CB 78 */	mr r6, r25
/* 8098DB0C  4B 7C 51 F8 */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 8098DB10  2C 03 00 00 */	cmpwi r3, 0
/* 8098DB14  41 82 00 10 */	beq lbl_8098DB24
/* 8098DB18  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 8098DB1C  60 00 00 12 */	ori r0, r0, 0x12
/* 8098DB20  90 1A 09 9C */	stw r0, 0x99c(r26)
lbl_8098DB24:
/* 8098DB24  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8098DB28  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8098DB2C  39 61 00 30 */	addi r11, r1, 0x30
/* 8098DB30  4B 9D 46 E8 */	b _restgpr_25
/* 8098DB34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8098DB38  7C 08 03 A6 */	mtlr r0
/* 8098DB3C  38 21 00 40 */	addi r1, r1, 0x40
/* 8098DB40  4E 80 00 20 */	blr 
