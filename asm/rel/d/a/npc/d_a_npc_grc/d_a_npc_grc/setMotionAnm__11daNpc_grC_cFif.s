lbl_809CCCD0:
/* 809CCCD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809CCCD4  7C 08 02 A6 */	mflr r0
/* 809CCCD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809CCCDC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 809CCCE0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 809CCCE4  39 61 00 20 */	addi r11, r1, 0x20
/* 809CCCE8  4B 99 54 E9 */	bl _savegpr_26
/* 809CCCEC  7C 7B 1B 78 */	mr r27, r3
/* 809CCCF0  7C 9A 23 78 */	mr r26, r4
/* 809CCCF4  FF E0 08 90 */	fmr f31, f1
/* 809CCCF8  3C 80 80 9D */	lis r4, cNullVec__6Z2Calc@ha /* 0x809CF81C@ha */
/* 809CCCFC  3B E4 F8 1C */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x809CF81C@l */
/* 809CCD00  3B C0 00 00 */	li r30, 0
/* 809CCD04  3B A0 00 00 */	li r29, 0
/* 809CCD08  3B 80 00 02 */	li r28, 2
/* 809CCD0C  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809CCD10  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 809CCD14  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809CCD18  57 40 18 38 */	slwi r0, r26, 3
/* 809CCD1C  38 9F 00 30 */	addi r4, r31, 0x30
/* 809CCD20  7C A4 00 2E */	lwzx r5, r4, r0
/* 809CCD24  2C 05 00 00 */	cmpwi r5, 0
/* 809CCD28  41 80 00 20 */	blt lbl_809CCD48
/* 809CCD2C  7C 84 02 14 */	add r4, r4, r0
/* 809CCD30  80 04 00 04 */	lwz r0, 4(r4)
/* 809CCD34  54 00 10 3A */	slwi r0, r0, 2
/* 809CCD38  38 9F 01 48 */	addi r4, r31, 0x148
/* 809CCD3C  7C 84 00 2E */	lwzx r4, r4, r0
/* 809CCD40  4B 78 5D ED */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809CCD44  7C 7E 1B 78 */	mr r30, r3
lbl_809CCD48:
/* 809CCD48  38 1A FF F6 */	addi r0, r26, -10
/* 809CCD4C  28 00 00 08 */	cmplwi r0, 8
/* 809CCD50  41 81 00 44 */	bgt lbl_809CCD94
/* 809CCD54  3C 60 80 9D */	lis r3, lit_4946@ha /* 0x809CF9BC@ha */
/* 809CCD58  38 63 F9 BC */	addi r3, r3, lit_4946@l /* 0x809CF9BC@l */
/* 809CCD5C  54 00 10 3A */	slwi r0, r0, 2
/* 809CCD60  7C 03 00 2E */	lwzx r0, r3, r0
/* 809CCD64  7C 09 03 A6 */	mtctr r0
/* 809CCD68  4E 80 04 20 */	bctr 
lbl_809CCD6C:
/* 809CCD6C  3B 80 00 00 */	li r28, 0
/* 809CCD70  48 00 00 2C */	b lbl_809CCD9C
lbl_809CCD74:
/* 809CCD74  3B 80 00 00 */	li r28, 0
/* 809CCD78  48 00 00 24 */	b lbl_809CCD9C
lbl_809CCD7C:
/* 809CCD7C  3B 80 00 00 */	li r28, 0
/* 809CCD80  48 00 00 1C */	b lbl_809CCD9C
lbl_809CCD84:
/* 809CCD84  3B 80 00 00 */	li r28, 0
/* 809CCD88  48 00 00 14 */	b lbl_809CCD9C
lbl_809CCD8C:
/* 809CCD8C  3B 80 00 00 */	li r28, 0
/* 809CCD90  48 00 00 0C */	b lbl_809CCD9C
lbl_809CCD94:
/* 809CCD94  3B C0 00 00 */	li r30, 0
/* 809CCD98  3B A0 00 00 */	li r29, 0
lbl_809CCD9C:
/* 809CCD9C  80 BF 00 F8 */	lwz r5, 0xf8(r31)
/* 809CCDA0  2C 05 00 00 */	cmpwi r5, 0
/* 809CCDA4  41 80 00 24 */	blt lbl_809CCDC8
/* 809CCDA8  7F 63 DB 78 */	mr r3, r27
/* 809CCDAC  38 9F 00 F8 */	addi r4, r31, 0xf8
/* 809CCDB0  80 04 00 04 */	lwz r0, 4(r4)
/* 809CCDB4  54 00 10 3A */	slwi r0, r0, 2
/* 809CCDB8  38 9F 01 48 */	addi r4, r31, 0x148
/* 809CCDBC  7C 84 00 2E */	lwzx r4, r4, r0
/* 809CCDC0  4B 78 5D E5 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809CCDC4  7C 7D 1B 78 */	mr r29, r3
lbl_809CCDC8:
/* 809CCDC8  28 1D 00 00 */	cmplwi r29, 0
/* 809CCDCC  41 82 00 3C */	beq lbl_809CCE08
/* 809CCDD0  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 809CCDD4  80 63 00 04 */	lwz r3, 4(r3)
/* 809CCDD8  80 A3 00 04 */	lwz r5, 4(r3)
/* 809CCDDC  7F 63 DB 78 */	mr r3, r27
/* 809CCDE0  7F A4 EB 78 */	mr r4, r29
/* 809CCDE4  3C C0 80 9D */	lis r6, lit_4454@ha /* 0x809CF598@ha */
/* 809CCDE8  C0 26 F5 98 */	lfs f1, lit_4454@l(r6)  /* 0x809CF598@l */
/* 809CCDEC  38 C0 00 02 */	li r6, 2
/* 809CCDF0  4B 78 5F 15 */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 809CCDF4  2C 03 00 00 */	cmpwi r3, 0
/* 809CCDF8  41 82 00 10 */	beq lbl_809CCE08
/* 809CCDFC  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 809CCE00  60 00 00 12 */	ori r0, r0, 0x12
/* 809CCE04  90 1B 09 9C */	stw r0, 0x99c(r27)
lbl_809CCE08:
/* 809CCE08  28 1E 00 00 */	cmplwi r30, 0
/* 809CCE0C  41 82 00 44 */	beq lbl_809CCE50
/* 809CCE10  7F 63 DB 78 */	mr r3, r27
/* 809CCE14  7F C4 F3 78 */	mr r4, r30
/* 809CCE18  3C A0 80 9D */	lis r5, lit_4454@ha /* 0x809CF598@ha */
/* 809CCE1C  C0 25 F5 98 */	lfs f1, lit_4454@l(r5)  /* 0x809CF598@l */
/* 809CCE20  FC 40 F8 90 */	fmr f2, f31
/* 809CCE24  7F 85 E3 78 */	mr r5, r28
/* 809CCE28  38 C0 00 00 */	li r6, 0
/* 809CCE2C  38 E0 FF FF */	li r7, -1
/* 809CCE30  4B 78 5D ED */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 809CCE34  2C 03 00 00 */	cmpwi r3, 0
/* 809CCE38  41 82 00 18 */	beq lbl_809CCE50
/* 809CCE3C  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 809CCE40  60 00 00 09 */	ori r0, r0, 9
/* 809CCE44  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 809CCE48  38 00 00 00 */	li r0, 0
/* 809CCE4C  B0 1B 09 E2 */	sth r0, 0x9e2(r27)
lbl_809CCE50:
/* 809CCE50  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809CCE54  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809CCE58  39 61 00 20 */	addi r11, r1, 0x20
/* 809CCE5C  4B 99 53 C1 */	bl _restgpr_26
/* 809CCE60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809CCE64  7C 08 03 A6 */	mtlr r0
/* 809CCE68  38 21 00 30 */	addi r1, r1, 0x30
/* 809CCE6C  4E 80 00 20 */	blr 
