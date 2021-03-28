lbl_80B08168:
/* 80B08168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0816C  7C 08 02 A6 */	mflr r0
/* 80B08170  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B08174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B08178  7C 7F 1B 78 */	mr r31, r3
/* 80B0817C  38 00 00 00 */	li r0, 0
/* 80B08180  98 03 06 BC */	stb r0, 0x6bc(r3)
/* 80B08184  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80B08188  28 00 00 02 */	cmplwi r0, 2
/* 80B0818C  40 82 00 3C */	bne lbl_80B081C8
/* 80B08190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B08194  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B08198  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B0819C  7F E4 FB 78 */	mr r4, r31
/* 80B081A0  3C A0 80 04 */	lis r5, dEv_defaultSkipProc__FPvi@ha
/* 80B081A4  38 A5 25 E8 */	addi r5, r5, dEv_defaultSkipProc__FPvi@l
/* 80B081A8  38 C0 00 00 */	li r6, 0
/* 80B081AC  4B 53 A7 68 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80B081B0  7F E3 FB 78 */	mr r3, r31
/* 80B081B4  38 80 00 0C */	li r4, 0xc
/* 80B081B8  4B FF 96 C1 */	bl setActionMode__10daNPC_TK_cFi
/* 80B081BC  7F E3 FB 78 */	mr r3, r31
/* 80B081C0  4B FF B4 99 */	bl executePerch__10daNPC_TK_cFv
/* 80B081C4  48 00 00 30 */	b lbl_80B081F4
lbl_80B081C8:
/* 80B081C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B081CC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B081D0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B081D4  3C A0 80 B1 */	lis r5, struct_80B0C3A0+0x0@ha
/* 80B081D8  38 A5 C3 A0 */	addi r5, r5, struct_80B0C3A0+0x0@l
/* 80B081DC  38 A5 00 2E */	addi r5, r5, 0x2e
/* 80B081E0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B081E4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B081E8  38 E0 00 00 */	li r7, 0
/* 80B081EC  39 00 00 03 */	li r8, 3
/* 80B081F0  4B 51 32 F0 */	b fopAcM_orderOtherEvent__FP10fopAc_ac_cP10fopAc_ac_cPCcUsUsUs
lbl_80B081F4:
/* 80B081F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B081F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B081FC  7C 08 03 A6 */	mtlr r0
/* 80B08200  38 21 00 10 */	addi r1, r1, 0x10
/* 80B08204  4E 80 00 20 */	blr 
