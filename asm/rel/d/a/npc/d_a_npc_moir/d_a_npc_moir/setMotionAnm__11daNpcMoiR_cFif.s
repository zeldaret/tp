lbl_80A7D474:
/* 80A7D474  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A7D478  7C 08 02 A6 */	mflr r0
/* 80A7D47C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A7D480  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80A7D484  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80A7D488  39 61 00 20 */	addi r11, r1, 0x20
/* 80A7D48C  4B 8E 4D 48 */	b _savegpr_27
/* 80A7D490  7C 7E 1B 78 */	mr r30, r3
/* 80A7D494  FF E0 08 90 */	fmr f31, f1
/* 80A7D498  3C A0 80 A8 */	lis r5, cNullVec__6Z2Calc@ha
/* 80A7D49C  3B A5 38 B0 */	addi r29, r5, cNullVec__6Z2Calc@l
/* 80A7D4A0  2C 04 00 0B */	cmpwi r4, 0xb
/* 80A7D4A4  41 80 01 00 */	blt lbl_80A7D5A4
/* 80A7D4A8  2C 04 00 27 */	cmpwi r4, 0x27
/* 80A7D4AC  41 80 00 08 */	blt lbl_80A7D4B4
/* 80A7D4B0  48 00 00 F4 */	b lbl_80A7D5A4
lbl_80A7D4B4:
/* 80A7D4B4  1F 84 00 0C */	mulli r28, r4, 0xc
/* 80A7D4B8  38 BD 00 20 */	addi r5, r29, 0x20
/* 80A7D4BC  7C 85 E2 14 */	add r4, r5, r28
/* 80A7D4C0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A7D4C4  54 00 10 3A */	slwi r0, r0, 2
/* 80A7D4C8  38 9D 02 48 */	addi r4, r29, 0x248
/* 80A7D4CC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A7D4D0  7C A5 E0 2E */	lwzx r5, r5, r28
/* 80A7D4D4  4B 6D 56 58 */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A7D4D8  7C 7B 1B 78 */	mr r27, r3
/* 80A7D4DC  7F C3 F3 78 */	mr r3, r30
/* 80A7D4E0  38 9D 02 0C */	addi r4, r29, 0x20c
/* 80A7D4E4  80 04 00 08 */	lwz r0, 8(r4)
/* 80A7D4E8  54 00 10 3A */	slwi r0, r0, 2
/* 80A7D4EC  38 9D 02 48 */	addi r4, r29, 0x248
/* 80A7D4F0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A7D4F4  80 BD 02 0C */	lwz r5, 0x20c(r29)
/* 80A7D4F8  4B 6D 56 AC */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80A7D4FC  7C 7F 1B 78 */	mr r31, r3
/* 80A7D500  38 1D 00 20 */	addi r0, r29, 0x20
/* 80A7D504  7C 60 E2 14 */	add r3, r0, r28
/* 80A7D508  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A7D50C  38 7D 02 0C */	addi r3, r29, 0x20c
/* 80A7D510  83 83 00 04 */	lwz r28, 4(r3)
/* 80A7D514  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80A7D518  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80A7D51C  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80A7D520  28 1B 00 00 */	cmplwi r27, 0
/* 80A7D524  41 82 00 40 */	beq lbl_80A7D564
/* 80A7D528  7F C3 F3 78 */	mr r3, r30
/* 80A7D52C  7F 64 DB 78 */	mr r4, r27
/* 80A7D530  3C C0 80 A8 */	lis r6, lit_4337@ha
/* 80A7D534  C0 26 33 30 */	lfs f1, lit_4337@l(r6)
/* 80A7D538  FC 40 F8 90 */	fmr f2, f31
/* 80A7D53C  38 C0 00 00 */	li r6, 0
/* 80A7D540  38 E0 FF FF */	li r7, -1
/* 80A7D544  4B 6D 56 D8 */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80A7D548  2C 03 00 00 */	cmpwi r3, 0
/* 80A7D54C  41 82 00 18 */	beq lbl_80A7D564
/* 80A7D550  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80A7D554  60 00 00 09 */	ori r0, r0, 9
/* 80A7D558  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80A7D55C  38 00 00 00 */	li r0, 0
/* 80A7D560  B0 1E 09 E2 */	sth r0, 0x9e2(r30)
lbl_80A7D564:
/* 80A7D564  28 1F 00 00 */	cmplwi r31, 0
/* 80A7D568  41 82 00 3C */	beq lbl_80A7D5A4
/* 80A7D56C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A7D570  80 63 00 04 */	lwz r3, 4(r3)
/* 80A7D574  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A7D578  7F C3 F3 78 */	mr r3, r30
/* 80A7D57C  7F E4 FB 78 */	mr r4, r31
/* 80A7D580  3C C0 80 A8 */	lis r6, lit_4337@ha
/* 80A7D584  C0 26 33 30 */	lfs f1, lit_4337@l(r6)
/* 80A7D588  7F 86 E3 78 */	mr r6, r28
/* 80A7D58C  4B 6D 57 78 */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80A7D590  2C 03 00 00 */	cmpwi r3, 0
/* 80A7D594  41 82 00 10 */	beq lbl_80A7D5A4
/* 80A7D598  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80A7D59C  60 00 00 12 */	ori r0, r0, 0x12
/* 80A7D5A0  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80A7D5A4:
/* 80A7D5A4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80A7D5A8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80A7D5AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A7D5B0  4B 8E 4C 70 */	b _restgpr_27
/* 80A7D5B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A7D5B8  7C 08 03 A6 */	mtlr r0
/* 80A7D5BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A7D5C0  4E 80 00 20 */	blr 
