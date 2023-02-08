lbl_80AF0928:
/* 80AF0928  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF092C  7C 08 02 A6 */	mflr r0
/* 80AF0930  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF0934  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AF0938  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AF093C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF0940  4B 87 18 9D */	bl _savegpr_29
/* 80AF0944  7C 7F 1B 78 */	mr r31, r3
/* 80AF0948  7C 9D 23 78 */	mr r29, r4
/* 80AF094C  FF E0 08 90 */	fmr f31, f1
/* 80AF0950  38 80 00 00 */	li r4, 0
/* 80AF0954  3B C0 00 02 */	li r30, 2
/* 80AF0958  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80AF095C  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80AF0960  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80AF0964  57 A0 18 38 */	slwi r0, r29, 3
/* 80AF0968  3C A0 80 AF */	lis r5, l_bckGetParamList@ha /* 0x80AF28B8@ha */
/* 80AF096C  38 C5 28 B8 */	addi r6, r5, l_bckGetParamList@l /* 0x80AF28B8@l */
/* 80AF0970  7C A6 00 2E */	lwzx r5, r6, r0
/* 80AF0974  2C 05 00 00 */	cmpwi r5, 0
/* 80AF0978  41 80 00 24 */	blt lbl_80AF099C
/* 80AF097C  7C 86 02 14 */	add r4, r6, r0
/* 80AF0980  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF0984  54 00 10 3A */	slwi r0, r0, 2
/* 80AF0988  3C 80 80 AF */	lis r4, l_resNames@ha /* 0x80AF2930@ha */
/* 80AF098C  38 84 29 30 */	addi r4, r4, l_resNames@l /* 0x80AF2930@l */
/* 80AF0990  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AF0994  4B 66 21 99 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AF0998  7C 64 1B 78 */	mr r4, r3
lbl_80AF099C:
/* 80AF099C  93 BF 0E 1C */	stw r29, 0xe1c(r31)
/* 80AF09A0  2C 1D 00 04 */	cmpwi r29, 4
/* 80AF09A4  41 82 00 30 */	beq lbl_80AF09D4
/* 80AF09A8  40 80 00 18 */	bge lbl_80AF09C0
/* 80AF09AC  2C 1D 00 03 */	cmpwi r29, 3
/* 80AF09B0  40 80 00 18 */	bge lbl_80AF09C8
/* 80AF09B4  2C 1D 00 01 */	cmpwi r29, 1
/* 80AF09B8  40 80 00 1C */	bge lbl_80AF09D4
/* 80AF09BC  48 00 00 14 */	b lbl_80AF09D0
lbl_80AF09C0:
/* 80AF09C0  2C 1D 00 07 */	cmpwi r29, 7
/* 80AF09C4  40 80 00 0C */	bge lbl_80AF09D0
lbl_80AF09C8:
/* 80AF09C8  3B C0 00 00 */	li r30, 0
/* 80AF09CC  48 00 00 08 */	b lbl_80AF09D4
lbl_80AF09D0:
/* 80AF09D0  38 80 00 00 */	li r4, 0
lbl_80AF09D4:
/* 80AF09D4  28 04 00 00 */	cmplwi r4, 0
/* 80AF09D8  41 82 00 40 */	beq lbl_80AF0A18
/* 80AF09DC  7F E3 FB 78 */	mr r3, r31
/* 80AF09E0  3C A0 80 AF */	lis r5, lit_4448@ha /* 0x80AF2764@ha */
/* 80AF09E4  C0 25 27 64 */	lfs f1, lit_4448@l(r5)  /* 0x80AF2764@l */
/* 80AF09E8  FC 40 F8 90 */	fmr f2, f31
/* 80AF09EC  7F C5 F3 78 */	mr r5, r30
/* 80AF09F0  38 C0 00 00 */	li r6, 0
/* 80AF09F4  38 E0 FF FF */	li r7, -1
/* 80AF09F8  4B 66 22 25 */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80AF09FC  2C 03 00 00 */	cmpwi r3, 0
/* 80AF0A00  41 82 00 18 */	beq lbl_80AF0A18
/* 80AF0A04  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80AF0A08  60 00 00 09 */	ori r0, r0, 9
/* 80AF0A0C  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80AF0A10  38 00 00 00 */	li r0, 0
/* 80AF0A14  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_80AF0A18:
/* 80AF0A18  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AF0A1C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AF0A20  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF0A24  4B 87 18 05 */	bl _restgpr_29
/* 80AF0A28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF0A2C  7C 08 03 A6 */	mtlr r0
/* 80AF0A30  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF0A34  4E 80 00 20 */	blr 
