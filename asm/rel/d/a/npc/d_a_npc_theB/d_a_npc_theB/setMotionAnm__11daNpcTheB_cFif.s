lbl_80AFE1BC:
/* 80AFE1BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AFE1C0  7C 08 02 A6 */	mflr r0
/* 80AFE1C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AFE1C8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80AFE1CC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80AFE1D0  39 61 00 30 */	addi r11, r1, 0x30
/* 80AFE1D4  4B 86 3F F8 */	b _savegpr_25
/* 80AFE1D8  7C 7D 1B 78 */	mr r29, r3
/* 80AFE1DC  7C 99 23 78 */	mr r25, r4
/* 80AFE1E0  FF E0 08 90 */	fmr f31, f1
/* 80AFE1E4  3C 80 80 B0 */	lis r4, cNullVec__6Z2Calc@ha
/* 80AFE1E8  3B 84 10 28 */	addi r28, r4, cNullVec__6Z2Calc@l
/* 80AFE1EC  3B E0 00 00 */	li r31, 0
/* 80AFE1F0  3B C0 00 02 */	li r30, 2
/* 80AFE1F4  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80AFE1F8  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80AFE1FC  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80AFE200  57 3B 18 38 */	slwi r27, r25, 3
/* 80AFE204  38 9C 00 24 */	addi r4, r28, 0x24
/* 80AFE208  7C A4 D8 2E */	lwzx r5, r4, r27
/* 80AFE20C  2C 05 00 00 */	cmpwi r5, 0
/* 80AFE210  41 80 00 1C */	blt lbl_80AFE22C
/* 80AFE214  80 9C 00 BC */	lwz r4, 0xbc(r28)
/* 80AFE218  4B 65 49 14 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AFE21C  7C 7F 1B 78 */	mr r31, r3
/* 80AFE220  38 1C 00 24 */	addi r0, r28, 0x24
/* 80AFE224  7C 60 DA 14 */	add r3, r0, r27
/* 80AFE228  83 C3 00 04 */	lwz r30, 4(r3)
lbl_80AFE22C:
/* 80AFE22C  3B 60 00 00 */	li r27, 0
/* 80AFE230  3B 40 00 02 */	li r26, 2
/* 80AFE234  2C 19 00 0C */	cmpwi r25, 0xc
/* 80AFE238  41 82 00 4C */	beq lbl_80AFE284
/* 80AFE23C  40 80 00 1C */	bge lbl_80AFE258
/* 80AFE240  2C 19 00 09 */	cmpwi r25, 9
/* 80AFE244  41 82 00 20 */	beq lbl_80AFE264
/* 80AFE248  40 80 00 84 */	bge lbl_80AFE2CC
/* 80AFE24C  2C 19 00 08 */	cmpwi r25, 8
/* 80AFE250  40 80 00 7C */	bge lbl_80AFE2CC
/* 80AFE254  48 00 00 70 */	b lbl_80AFE2C4
lbl_80AFE258:
/* 80AFE258  2C 19 00 0E */	cmpwi r25, 0xe
/* 80AFE25C  40 80 00 68 */	bge lbl_80AFE2C4
/* 80AFE260  48 00 00 44 */	b lbl_80AFE2A4
lbl_80AFE264:
/* 80AFE264  7F A3 EB 78 */	mr r3, r29
/* 80AFE268  38 80 00 05 */	li r4, 5
/* 80AFE26C  38 A0 00 01 */	li r5, 1
/* 80AFE270  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFE274  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80AFE278  7D 89 03 A6 */	mtctr r12
/* 80AFE27C  4E 80 04 21 */	bctrl 
/* 80AFE280  48 00 00 4C */	b lbl_80AFE2CC
lbl_80AFE284:
/* 80AFE284  7F A3 EB 78 */	mr r3, r29
/* 80AFE288  38 80 00 07 */	li r4, 7
/* 80AFE28C  38 A0 00 01 */	li r5, 1
/* 80AFE290  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFE294  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80AFE298  7D 89 03 A6 */	mtctr r12
/* 80AFE29C  4E 80 04 21 */	bctrl 
/* 80AFE2A0  48 00 00 2C */	b lbl_80AFE2CC
lbl_80AFE2A4:
/* 80AFE2A4  7F A3 EB 78 */	mr r3, r29
/* 80AFE2A8  38 80 00 04 */	li r4, 4
/* 80AFE2AC  38 A0 00 01 */	li r5, 1
/* 80AFE2B0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFE2B4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80AFE2B8  7D 89 03 A6 */	mtctr r12
/* 80AFE2BC  4E 80 04 21 */	bctrl 
/* 80AFE2C0  48 00 00 0C */	b lbl_80AFE2CC
lbl_80AFE2C4:
/* 80AFE2C4  3B E0 00 00 */	li r31, 0
/* 80AFE2C8  3B 60 00 00 */	li r27, 0
lbl_80AFE2CC:
/* 80AFE2CC  80 BC 00 9C */	lwz r5, 0x9c(r28)
/* 80AFE2D0  2C 05 00 00 */	cmpwi r5, 0
/* 80AFE2D4  41 80 00 1C */	blt lbl_80AFE2F0
/* 80AFE2D8  7F A3 EB 78 */	mr r3, r29
/* 80AFE2DC  80 9C 00 BC */	lwz r4, 0xbc(r28)
/* 80AFE2E0  4B 65 48 C4 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80AFE2E4  7C 7B 1B 78 */	mr r27, r3
/* 80AFE2E8  38 7C 00 9C */	addi r3, r28, 0x9c
/* 80AFE2EC  83 43 00 04 */	lwz r26, 4(r3)
lbl_80AFE2F0:
/* 80AFE2F0  28 1B 00 00 */	cmplwi r27, 0
/* 80AFE2F4  41 82 00 3C */	beq lbl_80AFE330
/* 80AFE2F8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFE2FC  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFE300  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AFE304  7F A3 EB 78 */	mr r3, r29
/* 80AFE308  7F 64 DB 78 */	mr r4, r27
/* 80AFE30C  3C C0 80 B0 */	lis r6, lit_4247@ha
/* 80AFE310  C0 26 0D EC */	lfs f1, lit_4247@l(r6)
/* 80AFE314  7F 46 D3 78 */	mr r6, r26
/* 80AFE318  4B 65 49 EC */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80AFE31C  2C 03 00 00 */	cmpwi r3, 0
/* 80AFE320  41 82 00 10 */	beq lbl_80AFE330
/* 80AFE324  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80AFE328  60 00 00 12 */	ori r0, r0, 0x12
/* 80AFE32C  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_80AFE330:
/* 80AFE330  28 1F 00 00 */	cmplwi r31, 0
/* 80AFE334  41 82 00 44 */	beq lbl_80AFE378
/* 80AFE338  7F A3 EB 78 */	mr r3, r29
/* 80AFE33C  7F E4 FB 78 */	mr r4, r31
/* 80AFE340  3C A0 80 B0 */	lis r5, lit_4247@ha
/* 80AFE344  C0 25 0D EC */	lfs f1, lit_4247@l(r5)
/* 80AFE348  FC 40 F8 90 */	fmr f2, f31
/* 80AFE34C  7F C5 F3 78 */	mr r5, r30
/* 80AFE350  38 C0 00 00 */	li r6, 0
/* 80AFE354  38 E0 FF FF */	li r7, -1
/* 80AFE358  4B 65 48 C4 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80AFE35C  2C 03 00 00 */	cmpwi r3, 0
/* 80AFE360  41 82 00 18 */	beq lbl_80AFE378
/* 80AFE364  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80AFE368  60 00 00 09 */	ori r0, r0, 9
/* 80AFE36C  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80AFE370  38 00 00 00 */	li r0, 0
/* 80AFE374  B0 1D 09 E2 */	sth r0, 0x9e2(r29)
lbl_80AFE378:
/* 80AFE378  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80AFE37C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80AFE380  39 61 00 30 */	addi r11, r1, 0x30
/* 80AFE384  4B 86 3E 94 */	b _restgpr_25
/* 80AFE388  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AFE38C  7C 08 03 A6 */	mtlr r0
/* 80AFE390  38 21 00 40 */	addi r1, r1, 0x40
/* 80AFE394  4E 80 00 20 */	blr 
