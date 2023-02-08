lbl_80AF4030:
/* 80AF4030  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF4034  7C 08 02 A6 */	mflr r0
/* 80AF4038  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF403C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AF4040  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AF4044  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF4048  4B 86 E1 95 */	bl _savegpr_29
/* 80AF404C  7C 7F 1B 78 */	mr r31, r3
/* 80AF4050  7C 9D 23 78 */	mr r29, r4
/* 80AF4054  FF E0 08 90 */	fmr f31, f1
/* 80AF4058  38 80 00 00 */	li r4, 0
/* 80AF405C  3B C0 00 02 */	li r30, 2
/* 80AF4060  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80AF4064  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80AF4068  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80AF406C  57 A0 18 38 */	slwi r0, r29, 3
/* 80AF4070  3C A0 80 AF */	lis r5, l_bckGetParamList@ha /* 0x80AF5C40@ha */
/* 80AF4074  38 C5 5C 40 */	addi r6, r5, l_bckGetParamList@l /* 0x80AF5C40@l */
/* 80AF4078  7C A6 00 2E */	lwzx r5, r6, r0
/* 80AF407C  2C 05 00 00 */	cmpwi r5, 0
/* 80AF4080  41 80 00 24 */	blt lbl_80AF40A4
/* 80AF4084  7C 86 02 14 */	add r4, r6, r0
/* 80AF4088  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF408C  54 00 10 3A */	slwi r0, r0, 2
/* 80AF4090  3C 80 80 AF */	lis r4, l_resNames@ha /* 0x80AF5C8C@ha */
/* 80AF4094  38 84 5C 8C */	addi r4, r4, l_resNames@l /* 0x80AF5C8C@l */
/* 80AF4098  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AF409C  4B 65 EA 91 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AF40A0  7C 64 1B 78 */	mr r4, r3
lbl_80AF40A4:
/* 80AF40A4  93 BF 0E 1C */	stw r29, 0xe1c(r31)
/* 80AF40A8  2C 1D 00 03 */	cmpwi r29, 3
/* 80AF40AC  41 82 00 14 */	beq lbl_80AF40C0
/* 80AF40B0  40 80 00 18 */	bge lbl_80AF40C8
/* 80AF40B4  2C 1D 00 01 */	cmpwi r29, 1
/* 80AF40B8  40 80 00 14 */	bge lbl_80AF40CC
/* 80AF40BC  48 00 00 0C */	b lbl_80AF40C8
lbl_80AF40C0:
/* 80AF40C0  3B C0 00 00 */	li r30, 0
/* 80AF40C4  48 00 00 08 */	b lbl_80AF40CC
lbl_80AF40C8:
/* 80AF40C8  38 80 00 00 */	li r4, 0
lbl_80AF40CC:
/* 80AF40CC  28 04 00 00 */	cmplwi r4, 0
/* 80AF40D0  41 82 00 40 */	beq lbl_80AF4110
/* 80AF40D4  7F E3 FB 78 */	mr r3, r31
/* 80AF40D8  3C A0 80 AF */	lis r5, lit_4453@ha /* 0x80AF5B50@ha */
/* 80AF40DC  C0 25 5B 50 */	lfs f1, lit_4453@l(r5)  /* 0x80AF5B50@l */
/* 80AF40E0  FC 40 F8 90 */	fmr f2, f31
/* 80AF40E4  7F C5 F3 78 */	mr r5, r30
/* 80AF40E8  38 C0 00 00 */	li r6, 0
/* 80AF40EC  38 E0 FF FF */	li r7, -1
/* 80AF40F0  4B 65 EB 2D */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80AF40F4  2C 03 00 00 */	cmpwi r3, 0
/* 80AF40F8  41 82 00 18 */	beq lbl_80AF4110
/* 80AF40FC  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80AF4100  60 00 00 09 */	ori r0, r0, 9
/* 80AF4104  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80AF4108  38 00 00 00 */	li r0, 0
/* 80AF410C  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_80AF4110:
/* 80AF4110  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AF4114  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AF4118  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF411C  4B 86 E1 0D */	bl _restgpr_29
/* 80AF4120  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF4124  7C 08 03 A6 */	mtlr r0
/* 80AF4128  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF412C  4E 80 00 20 */	blr 
