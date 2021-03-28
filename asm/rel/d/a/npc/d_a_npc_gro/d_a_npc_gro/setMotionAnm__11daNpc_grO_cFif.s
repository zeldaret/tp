lbl_809DC144:
/* 809DC144  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809DC148  7C 08 02 A6 */	mflr r0
/* 809DC14C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809DC150  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 809DC154  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 809DC158  39 61 00 20 */	addi r11, r1, 0x20
/* 809DC15C  4B 98 60 74 */	b _savegpr_26
/* 809DC160  7C 7B 1B 78 */	mr r27, r3
/* 809DC164  7C 9A 23 78 */	mr r26, r4
/* 809DC168  FF E0 08 90 */	fmr f31, f1
/* 809DC16C  3C 80 80 9E */	lis r4, cNullVec__6Z2Calc@ha
/* 809DC170  3B E4 F2 F8 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 809DC174  3B C0 00 00 */	li r30, 0
/* 809DC178  3B A0 00 00 */	li r29, 0
/* 809DC17C  3B 80 00 02 */	li r28, 2
/* 809DC180  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809DC184  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 809DC188  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809DC18C  57 40 18 38 */	slwi r0, r26, 3
/* 809DC190  38 9F 00 44 */	addi r4, r31, 0x44
/* 809DC194  7C A4 00 2E */	lwzx r5, r4, r0
/* 809DC198  2C 05 00 00 */	cmpwi r5, 0
/* 809DC19C  41 80 00 20 */	blt lbl_809DC1BC
/* 809DC1A0  7C 84 02 14 */	add r4, r4, r0
/* 809DC1A4  80 04 00 04 */	lwz r0, 4(r4)
/* 809DC1A8  54 00 10 3A */	slwi r0, r0, 2
/* 809DC1AC  38 9F 01 AC */	addi r4, r31, 0x1ac
/* 809DC1B0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809DC1B4  4B 77 69 78 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809DC1B8  7C 7E 1B 78 */	mr r30, r3
lbl_809DC1BC:
/* 809DC1BC  38 1A FF F3 */	addi r0, r26, -13
/* 809DC1C0  28 00 00 09 */	cmplwi r0, 9
/* 809DC1C4  41 81 00 44 */	bgt lbl_809DC208
/* 809DC1C8  3C 60 80 9E */	lis r3, lit_5058@ha
/* 809DC1CC  38 63 F5 48 */	addi r3, r3, lit_5058@l
/* 809DC1D0  54 00 10 3A */	slwi r0, r0, 2
/* 809DC1D4  7C 03 00 2E */	lwzx r0, r3, r0
/* 809DC1D8  7C 09 03 A6 */	mtctr r0
/* 809DC1DC  4E 80 04 20 */	bctr 
lbl_809DC1E0:
/* 809DC1E0  3B 80 00 00 */	li r28, 0
/* 809DC1E4  48 00 00 2C */	b lbl_809DC210
lbl_809DC1E8:
/* 809DC1E8  3B 80 00 00 */	li r28, 0
/* 809DC1EC  48 00 00 24 */	b lbl_809DC210
lbl_809DC1F0:
/* 809DC1F0  3B 80 00 00 */	li r28, 0
/* 809DC1F4  48 00 00 1C */	b lbl_809DC210
lbl_809DC1F8:
/* 809DC1F8  3B 80 00 00 */	li r28, 0
/* 809DC1FC  48 00 00 14 */	b lbl_809DC210
lbl_809DC200:
/* 809DC200  3B 80 00 00 */	li r28, 0
/* 809DC204  48 00 00 0C */	b lbl_809DC210
lbl_809DC208:
/* 809DC208  3B C0 00 00 */	li r30, 0
/* 809DC20C  3B A0 00 00 */	li r29, 0
lbl_809DC210:
/* 809DC210  80 BF 01 2C */	lwz r5, 0x12c(r31)
/* 809DC214  2C 05 00 00 */	cmpwi r5, 0
/* 809DC218  41 80 00 24 */	blt lbl_809DC23C
/* 809DC21C  7F 63 DB 78 */	mr r3, r27
/* 809DC220  38 9F 01 2C */	addi r4, r31, 0x12c
/* 809DC224  80 04 00 04 */	lwz r0, 4(r4)
/* 809DC228  54 00 10 3A */	slwi r0, r0, 2
/* 809DC22C  38 9F 01 AC */	addi r4, r31, 0x1ac
/* 809DC230  7C 84 00 2E */	lwzx r4, r4, r0
/* 809DC234  4B 77 69 70 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809DC238  7C 7D 1B 78 */	mr r29, r3
lbl_809DC23C:
/* 809DC23C  28 1D 00 00 */	cmplwi r29, 0
/* 809DC240  41 82 00 3C */	beq lbl_809DC27C
/* 809DC244  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 809DC248  80 63 00 04 */	lwz r3, 4(r3)
/* 809DC24C  80 A3 00 04 */	lwz r5, 4(r3)
/* 809DC250  7F 63 DB 78 */	mr r3, r27
/* 809DC254  7F A4 EB 78 */	mr r4, r29
/* 809DC258  3C C0 80 9E */	lis r6, lit_4552@ha
/* 809DC25C  C0 26 F0 08 */	lfs f1, lit_4552@l(r6)
/* 809DC260  38 C0 00 02 */	li r6, 2
/* 809DC264  4B 77 6A A0 */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 809DC268  2C 03 00 00 */	cmpwi r3, 0
/* 809DC26C  41 82 00 10 */	beq lbl_809DC27C
/* 809DC270  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 809DC274  60 00 00 12 */	ori r0, r0, 0x12
/* 809DC278  90 1B 09 9C */	stw r0, 0x99c(r27)
lbl_809DC27C:
/* 809DC27C  28 1E 00 00 */	cmplwi r30, 0
/* 809DC280  41 82 00 44 */	beq lbl_809DC2C4
/* 809DC284  7F 63 DB 78 */	mr r3, r27
/* 809DC288  7F C4 F3 78 */	mr r4, r30
/* 809DC28C  3C A0 80 9E */	lis r5, lit_4552@ha
/* 809DC290  C0 25 F0 08 */	lfs f1, lit_4552@l(r5)
/* 809DC294  FC 40 F8 90 */	fmr f2, f31
/* 809DC298  7F 85 E3 78 */	mr r5, r28
/* 809DC29C  38 C0 00 00 */	li r6, 0
/* 809DC2A0  38 E0 FF FF */	li r7, -1
/* 809DC2A4  4B 77 69 78 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 809DC2A8  2C 03 00 00 */	cmpwi r3, 0
/* 809DC2AC  41 82 00 18 */	beq lbl_809DC2C4
/* 809DC2B0  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 809DC2B4  60 00 00 09 */	ori r0, r0, 9
/* 809DC2B8  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 809DC2BC  38 00 00 00 */	li r0, 0
/* 809DC2C0  B0 1B 09 E2 */	sth r0, 0x9e2(r27)
lbl_809DC2C4:
/* 809DC2C4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809DC2C8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809DC2CC  39 61 00 20 */	addi r11, r1, 0x20
/* 809DC2D0  4B 98 5F 4C */	b _restgpr_26
/* 809DC2D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809DC2D8  7C 08 03 A6 */	mtlr r0
/* 809DC2DC  38 21 00 30 */	addi r1, r1, 0x30
/* 809DC2E0  4E 80 00 20 */	blr 
