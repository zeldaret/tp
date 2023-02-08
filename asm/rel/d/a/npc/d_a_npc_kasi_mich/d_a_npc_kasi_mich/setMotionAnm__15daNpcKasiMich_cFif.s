lbl_80A27184:
/* 80A27184  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A27188  7C 08 02 A6 */	mflr r0
/* 80A2718C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A27190  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80A27194  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80A27198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2719C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A271A0  7C 7F 1B 78 */	mr r31, r3
/* 80A271A4  FF E0 08 90 */	fmr f31, f1
/* 80A271A8  1F C4 00 0C */	mulli r30, r4, 0xc
/* 80A271AC  3C 80 80 A3 */	lis r4, l_bckGetParamList@ha /* 0x80A2A2D4@ha */
/* 80A271B0  38 A4 A2 D4 */	addi r5, r4, l_bckGetParamList@l /* 0x80A2A2D4@l */
/* 80A271B4  7C 85 F2 14 */	add r4, r5, r30
/* 80A271B8  80 04 00 08 */	lwz r0, 8(r4)
/* 80A271BC  54 00 10 3A */	slwi r0, r0, 2
/* 80A271C0  3C 80 80 A3 */	lis r4, l_arcNames@ha /* 0x80A2A3A0@ha */
/* 80A271C4  38 84 A3 A0 */	addi r4, r4, l_arcNames@l /* 0x80A2A3A0@l */
/* 80A271C8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A271CC  7C A5 F0 2E */	lwzx r5, r5, r30
/* 80A271D0  4B 72 B9 5D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80A271D4  7C 64 1B 79 */	or. r4, r3, r3
/* 80A271D8  3C 60 80 A3 */	lis r3, l_bckGetParamList@ha /* 0x80A2A2D4@ha */
/* 80A271DC  38 03 A2 D4 */	addi r0, r3, l_bckGetParamList@l /* 0x80A2A2D4@l */
/* 80A271E0  7C 60 F2 14 */	add r3, r0, r30
/* 80A271E4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A271E8  80 7F 09 9C */	lwz r3, 0x99c(r31)
/* 80A271EC  38 00 FF F6 */	li r0, -10
/* 80A271F0  7C 60 00 38 */	and r0, r3, r0
/* 80A271F4  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80A271F8  41 82 00 3C */	beq lbl_80A27234
/* 80A271FC  7F E3 FB 78 */	mr r3, r31
/* 80A27200  3C C0 80 A3 */	lis r6, lit_4247@ha /* 0x80A2A0D0@ha */
/* 80A27204  C0 26 A0 D0 */	lfs f1, lit_4247@l(r6)  /* 0x80A2A0D0@l */
/* 80A27208  FC 40 F8 90 */	fmr f2, f31
/* 80A2720C  38 C0 00 00 */	li r6, 0
/* 80A27210  38 E0 FF FF */	li r7, -1
/* 80A27214  4B 72 BA 09 */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80A27218  2C 03 00 00 */	cmpwi r3, 0
/* 80A2721C  41 82 00 18 */	beq lbl_80A27234
/* 80A27220  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80A27224  60 00 00 09 */	ori r0, r0, 9
/* 80A27228  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80A2722C  38 00 00 00 */	li r0, 0
/* 80A27230  B0 1F 09 E2 */	sth r0, 0x9e2(r31)
lbl_80A27234:
/* 80A27234  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80A27238  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80A2723C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A27240  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A27244  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A27248  7C 08 03 A6 */	mtlr r0
/* 80A2724C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A27250  4E 80 00 20 */	blr 
