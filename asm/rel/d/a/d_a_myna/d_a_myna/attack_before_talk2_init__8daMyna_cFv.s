lbl_80948388:
/* 80948388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094838C  7C 08 02 A6 */	mflr r0
/* 80948390  90 01 00 14 */	stw r0, 0x14(r1)
/* 80948394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80948398  7C 7F 1B 78 */	mr r31, r3
/* 8094839C  38 7F 06 20 */	addi r3, r31, 0x620
/* 809483A0  7F E4 FB 78 */	mr r4, r31
/* 809483A4  A0 BF 09 1C */	lhz r5, 0x91c(r31)
/* 809483A8  38 C0 00 00 */	li r6, 0
/* 809483AC  38 E0 00 00 */	li r7, 0
/* 809483B0  4B 90 1B E1 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 809483B4  7F E3 FB 78 */	mr r3, r31
/* 809483B8  38 80 00 0A */	li r4, 0xa
/* 809483BC  3C A0 80 95 */	lis r5, lit_3926@ha /* 0x8094B1F0@ha */
/* 809483C0  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)  /* 0x8094B1F0@l */
/* 809483C4  48 00 1C 91 */	bl setAnimeType__8daMyna_cFUcf
/* 809483C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809483CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809483D0  7C 08 03 A6 */	mtlr r0
/* 809483D4  38 21 00 10 */	addi r1, r1, 0x10
/* 809483D8  4E 80 00 20 */	blr 
