lbl_806599C0:
/* 806599C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806599C4  7C 08 02 A6 */	mflr r0
/* 806599C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806599CC  39 61 00 20 */	addi r11, r1, 0x20
/* 806599D0  4B D0 88 09 */	bl _savegpr_28
/* 806599D4  7C 7F 1B 78 */	mr r31, r3
/* 806599D8  88 03 0C A5 */	lbz r0, 0xca5(r3)
/* 806599DC  28 00 00 00 */	cmplwi r0, 0
/* 806599E0  41 82 00 0C */	beq lbl_806599EC
/* 806599E4  38 60 00 00 */	li r3, 0
/* 806599E8  48 00 00 DC */	b lbl_80659AC4
lbl_806599EC:
/* 806599EC  38 00 00 00 */	li r0, 0
/* 806599F0  3C 60 80 66 */	lis r3, m_angry_cow@ha /* 0x806634FC@ha */
/* 806599F4  B0 03 34 FC */	sth r0, m_angry_cow@l(r3)  /* 0x806634FC@l */
/* 806599F8  3C 60 80 66 */	lis r3, s_angry_cow__FPvPv@ha /* 0x80659814@ha */
/* 806599FC  38 63 98 14 */	addi r3, r3, s_angry_cow__FPvPv@l /* 0x80659814@l */
/* 80659A00  7F E4 FB 78 */	mr r4, r31
/* 80659A04  4B 9C 79 35 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80659A08  3C 60 80 66 */	lis r3, m_angry_cow@ha /* 0x806634FC@ha */
/* 80659A0C  A8 03 34 FC */	lha r0, m_angry_cow@l(r3)  /* 0x806634FC@l */
/* 80659A10  2C 00 00 00 */	cmpwi r0, 0
/* 80659A14  41 82 00 0C */	beq lbl_80659A20
/* 80659A18  38 60 00 01 */	li r3, 1
/* 80659A1C  48 00 00 A8 */	b lbl_80659AC4
lbl_80659A20:
/* 80659A20  7F E3 FB 78 */	mr r3, r31
/* 80659A24  4B FF F0 81 */	bl isChaseCowGame__7daCow_cFv
/* 80659A28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80659A2C  40 82 00 0C */	bne lbl_80659A38
/* 80659A30  38 60 00 00 */	li r3, 0
/* 80659A34  48 00 00 90 */	b lbl_80659AC4
lbl_80659A38:
/* 80659A38  3B 80 00 00 */	li r28, 0
/* 80659A3C  3B C0 00 00 */	li r30, 0
lbl_80659A40:
/* 80659A40  38 7E 08 60 */	addi r3, r30, 0x860
/* 80659A44  7C 7F 1A 14 */	add r3, r31, r3
/* 80659A48  4B A2 AC A9 */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 80659A4C  28 03 00 00 */	cmplwi r3, 0
/* 80659A50  41 82 00 60 */	beq lbl_80659AB0
/* 80659A54  4B C0 9F F5 */	bl GetAc__8cCcD_ObjFv
/* 80659A58  7C 7D 1B 79 */	or. r29, r3, r3
/* 80659A5C  41 82 00 54 */	beq lbl_80659AB0
/* 80659A60  A8 1D 00 08 */	lha r0, 8(r29)
/* 80659A64  2C 00 01 06 */	cmpwi r0, 0x106
/* 80659A68  40 82 00 48 */	bne lbl_80659AB0
/* 80659A6C  88 1D 0C A4 */	lbz r0, 0xca4(r29)
/* 80659A70  28 00 00 00 */	cmplwi r0, 0
/* 80659A74  40 82 00 3C */	bne lbl_80659AB0
/* 80659A78  4B FF FE F9 */	bl checkRun__7daCow_cFv
/* 80659A7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80659A80  41 82 00 30 */	beq lbl_80659AB0
/* 80659A84  7F E3 FB 78 */	mr r3, r31
/* 80659A88  7F A4 EB 78 */	mr r4, r29
/* 80659A8C  4B 9C 0C 85 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80659A90  A8 9F 0C 34 */	lha r4, 0xc34(r31)
/* 80659A94  4B C1 73 91 */	bl cLib_distanceAngleS__Fss
/* 80659A98  2C 03 10 00 */	cmpwi r3, 0x1000
/* 80659A9C  41 80 00 14 */	blt lbl_80659AB0
/* 80659AA0  2C 03 70 00 */	cmpwi r3, 0x7000
/* 80659AA4  40 80 00 0C */	bge lbl_80659AB0
/* 80659AA8  38 60 00 01 */	li r3, 1
/* 80659AAC  48 00 00 18 */	b lbl_80659AC4
lbl_80659AB0:
/* 80659AB0  3B 9C 00 01 */	addi r28, r28, 1
/* 80659AB4  2C 1C 00 03 */	cmpwi r28, 3
/* 80659AB8  3B DE 01 38 */	addi r30, r30, 0x138
/* 80659ABC  41 80 FF 84 */	blt lbl_80659A40
/* 80659AC0  38 60 00 00 */	li r3, 0
lbl_80659AC4:
/* 80659AC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80659AC8  4B D0 87 5D */	bl _restgpr_28
/* 80659ACC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80659AD0  7C 08 03 A6 */	mtlr r0
/* 80659AD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80659AD8  4E 80 00 20 */	blr 
