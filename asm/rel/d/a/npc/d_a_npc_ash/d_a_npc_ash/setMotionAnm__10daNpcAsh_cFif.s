lbl_809597C0:
/* 809597C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809597C4  7C 08 02 A6 */	mflr r0
/* 809597C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809597CC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 809597D0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 809597D4  39 61 00 20 */	addi r11, r1, 0x20
/* 809597D8  4B A0 89 FD */	bl _savegpr_27
/* 809597DC  7C 7E 1B 78 */	mr r30, r3
/* 809597E0  FF E0 08 90 */	fmr f31, f1
/* 809597E4  3C A0 80 96 */	lis r5, cNullVec__6Z2Calc@ha /* 0x8095D990@ha */
/* 809597E8  3B A5 D9 90 */	addi r29, r5, cNullVec__6Z2Calc@l /* 0x8095D990@l */
/* 809597EC  2C 04 00 08 */	cmpwi r4, 8
/* 809597F0  41 80 01 00 */	blt lbl_809598F0
/* 809597F4  2C 04 00 12 */	cmpwi r4, 0x12
/* 809597F8  41 80 00 08 */	blt lbl_80959800
/* 809597FC  48 00 00 F4 */	b lbl_809598F0
lbl_80959800:
/* 80959800  1F 84 00 0C */	mulli r28, r4, 0xc
/* 80959804  38 BD 00 20 */	addi r5, r29, 0x20
/* 80959808  7C 85 E2 14 */	add r4, r5, r28
/* 8095980C  80 04 00 08 */	lwz r0, 8(r4)
/* 80959810  54 00 10 3A */	slwi r0, r0, 2
/* 80959814  38 9D 01 30 */	addi r4, r29, 0x130
/* 80959818  7C 84 00 2E */	lwzx r4, r4, r0
/* 8095981C  7C A5 E0 2E */	lwzx r5, r5, r28
/* 80959820  4B 7F 93 0D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80959824  7C 7B 1B 78 */	mr r27, r3
/* 80959828  7F C3 F3 78 */	mr r3, r30
/* 8095982C  38 9D 01 04 */	addi r4, r29, 0x104
/* 80959830  80 04 00 08 */	lwz r0, 8(r4)
/* 80959834  54 00 10 3A */	slwi r0, r0, 2
/* 80959838  38 9D 01 30 */	addi r4, r29, 0x130
/* 8095983C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80959840  80 BD 01 04 */	lwz r5, 0x104(r29)
/* 80959844  4B 7F 93 61 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80959848  7C 7F 1B 78 */	mr r31, r3
/* 8095984C  38 1D 00 20 */	addi r0, r29, 0x20
/* 80959850  7C 60 E2 14 */	add r3, r0, r28
/* 80959854  80 A3 00 04 */	lwz r5, 4(r3)
/* 80959858  38 7D 01 04 */	addi r3, r29, 0x104
/* 8095985C  83 83 00 04 */	lwz r28, 4(r3)
/* 80959860  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80959864  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80959868  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 8095986C  28 1B 00 00 */	cmplwi r27, 0
/* 80959870  41 82 00 40 */	beq lbl_809598B0
/* 80959874  7F C3 F3 78 */	mr r3, r30
/* 80959878  7F 64 DB 78 */	mr r4, r27
/* 8095987C  3C C0 80 96 */	lis r6, lit_4300@ha /* 0x8095D6BC@ha */
/* 80959880  C0 26 D6 BC */	lfs f1, lit_4300@l(r6)  /* 0x8095D6BC@l */
/* 80959884  FC 40 F8 90 */	fmr f2, f31
/* 80959888  38 C0 00 00 */	li r6, 0
/* 8095988C  38 E0 FF FF */	li r7, -1
/* 80959890  4B 7F 93 8D */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80959894  2C 03 00 00 */	cmpwi r3, 0
/* 80959898  41 82 00 18 */	beq lbl_809598B0
/* 8095989C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 809598A0  60 00 00 09 */	ori r0, r0, 9
/* 809598A4  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 809598A8  38 00 00 00 */	li r0, 0
/* 809598AC  B0 1E 09 E2 */	sth r0, 0x9e2(r30)
lbl_809598B0:
/* 809598B0  28 1F 00 00 */	cmplwi r31, 0
/* 809598B4  41 82 00 3C */	beq lbl_809598F0
/* 809598B8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809598BC  80 63 00 04 */	lwz r3, 4(r3)
/* 809598C0  80 A3 00 04 */	lwz r5, 4(r3)
/* 809598C4  7F C3 F3 78 */	mr r3, r30
/* 809598C8  7F E4 FB 78 */	mr r4, r31
/* 809598CC  3C C0 80 96 */	lis r6, lit_4300@ha /* 0x8095D6BC@ha */
/* 809598D0  C0 26 D6 BC */	lfs f1, lit_4300@l(r6)  /* 0x8095D6BC@l */
/* 809598D4  7F 86 E3 78 */	mr r6, r28
/* 809598D8  4B 7F 94 2D */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 809598DC  2C 03 00 00 */	cmpwi r3, 0
/* 809598E0  41 82 00 10 */	beq lbl_809598F0
/* 809598E4  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 809598E8  60 00 00 12 */	ori r0, r0, 0x12
/* 809598EC  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_809598F0:
/* 809598F0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809598F4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809598F8  39 61 00 20 */	addi r11, r1, 0x20
/* 809598FC  4B A0 89 25 */	bl _restgpr_27
/* 80959900  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80959904  7C 08 03 A6 */	mtlr r0
/* 80959908  38 21 00 30 */	addi r1, r1, 0x30
/* 8095990C  4E 80 00 20 */	blr 
