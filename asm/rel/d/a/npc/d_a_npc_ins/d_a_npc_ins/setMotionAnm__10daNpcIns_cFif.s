lbl_80A0F618:
/* 80A0F618  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A0F61C  7C 08 02 A6 */	mflr r0
/* 80A0F620  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A0F624  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80A0F628  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80A0F62C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0F630  4B 95 2B A0 */	b _savegpr_26
/* 80A0F634  7C 7C 1B 78 */	mr r28, r3
/* 80A0F638  FF E0 08 90 */	fmr f31, f1
/* 80A0F63C  3C 60 80 A1 */	lis r3, cNullVec__6Z2Calc@ha
/* 80A0F640  3B E3 41 9C */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80A0F644  2C 04 00 0A */	cmpwi r4, 0xa
/* 80A0F648  41 80 01 24 */	blt lbl_80A0F76C
/* 80A0F64C  2C 04 00 18 */	cmpwi r4, 0x18
/* 80A0F650  41 80 00 08 */	blt lbl_80A0F658
/* 80A0F654  48 00 01 18 */	b lbl_80A0F76C
lbl_80A0F658:
/* 80A0F658  3B 40 00 00 */	li r26, 0
/* 80A0F65C  2C 04 00 10 */	cmpwi r4, 0x10
/* 80A0F660  41 82 00 08 */	beq lbl_80A0F668
/* 80A0F664  48 00 00 08 */	b lbl_80A0F66C
lbl_80A0F668:
/* 80A0F668  3B 40 00 01 */	li r26, 1
lbl_80A0F66C:
/* 80A0F66C  1F 64 00 0C */	mulli r27, r4, 0xc
/* 80A0F670  7F 83 E3 78 */	mr r3, r28
/* 80A0F674  38 BF 00 20 */	addi r5, r31, 0x20
/* 80A0F678  7C 85 DA 14 */	add r4, r5, r27
/* 80A0F67C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A0F680  54 00 10 3A */	slwi r0, r0, 2
/* 80A0F684  38 9F 01 E8 */	addi r4, r31, 0x1e8
/* 80A0F688  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A0F68C  7C A5 D8 2E */	lwzx r5, r5, r27
/* 80A0F690  4B 74 34 9C */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A0F694  7C 7E 1B 78 */	mr r30, r3
/* 80A0F698  1F 5A 00 0C */	mulli r26, r26, 0xc
/* 80A0F69C  7F 83 E3 78 */	mr r3, r28
/* 80A0F6A0  38 BF 01 A0 */	addi r5, r31, 0x1a0
/* 80A0F6A4  7C 85 D2 14 */	add r4, r5, r26
/* 80A0F6A8  80 04 00 08 */	lwz r0, 8(r4)
/* 80A0F6AC  54 00 10 3A */	slwi r0, r0, 2
/* 80A0F6B0  38 9F 01 E8 */	addi r4, r31, 0x1e8
/* 80A0F6B4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A0F6B8  7C A5 D0 2E */	lwzx r5, r5, r26
/* 80A0F6BC  4B 74 34 E8 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80A0F6C0  7C 7D 1B 78 */	mr r29, r3
/* 80A0F6C4  38 1F 00 20 */	addi r0, r31, 0x20
/* 80A0F6C8  7C 60 DA 14 */	add r3, r0, r27
/* 80A0F6CC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A0F6D0  38 1F 01 A0 */	addi r0, r31, 0x1a0
/* 80A0F6D4  7C 60 D2 14 */	add r3, r0, r26
/* 80A0F6D8  83 43 00 04 */	lwz r26, 4(r3)
/* 80A0F6DC  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 80A0F6E0  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80A0F6E4  90 1C 09 9C */	stw r0, 0x99c(r28)
/* 80A0F6E8  28 1E 00 00 */	cmplwi r30, 0
/* 80A0F6EC  41 82 00 40 */	beq lbl_80A0F72C
/* 80A0F6F0  7F 83 E3 78 */	mr r3, r28
/* 80A0F6F4  7F C4 F3 78 */	mr r4, r30
/* 80A0F6F8  3C C0 80 A1 */	lis r6, lit_4414@ha
/* 80A0F6FC  C0 26 3E EC */	lfs f1, lit_4414@l(r6)
/* 80A0F700  FC 40 F8 90 */	fmr f2, f31
/* 80A0F704  38 C0 00 00 */	li r6, 0
/* 80A0F708  38 E0 FF FF */	li r7, -1
/* 80A0F70C  4B 74 35 10 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80A0F710  2C 03 00 00 */	cmpwi r3, 0
/* 80A0F714  41 82 00 18 */	beq lbl_80A0F72C
/* 80A0F718  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 80A0F71C  60 00 00 09 */	ori r0, r0, 9
/* 80A0F720  90 1C 09 9C */	stw r0, 0x99c(r28)
/* 80A0F724  38 00 00 00 */	li r0, 0
/* 80A0F728  B0 1C 09 E2 */	sth r0, 0x9e2(r28)
lbl_80A0F72C:
/* 80A0F72C  28 1D 00 00 */	cmplwi r29, 0
/* 80A0F730  41 82 00 3C */	beq lbl_80A0F76C
/* 80A0F734  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A0F738  80 63 00 04 */	lwz r3, 4(r3)
/* 80A0F73C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A0F740  7F 83 E3 78 */	mr r3, r28
/* 80A0F744  7F A4 EB 78 */	mr r4, r29
/* 80A0F748  3C C0 80 A1 */	lis r6, lit_4414@ha
/* 80A0F74C  C0 26 3E EC */	lfs f1, lit_4414@l(r6)
/* 80A0F750  7F 46 D3 78 */	mr r6, r26
/* 80A0F754  4B 74 35 B0 */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80A0F758  2C 03 00 00 */	cmpwi r3, 0
/* 80A0F75C  41 82 00 10 */	beq lbl_80A0F76C
/* 80A0F760  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 80A0F764  60 00 00 12 */	ori r0, r0, 0x12
/* 80A0F768  90 1C 09 9C */	stw r0, 0x99c(r28)
lbl_80A0F76C:
/* 80A0F76C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80A0F770  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80A0F774  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0F778  4B 95 2A A4 */	b _restgpr_26
/* 80A0F77C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A0F780  7C 08 03 A6 */	mtlr r0
/* 80A0F784  38 21 00 30 */	addi r1, r1, 0x30
/* 80A0F788  4E 80 00 20 */	blr 
