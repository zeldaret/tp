lbl_80748964:
/* 80748964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80748968  7C 08 02 A6 */	mflr r0
/* 8074896C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80748970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80748974  93 C1 00 08 */	stw r30, 8(r1)
/* 80748978  7C 7F 1B 78 */	mr r31, r3
/* 8074897C  38 00 00 00 */	li r0, 0
/* 80748980  B0 03 06 08 */	sth r0, 0x608(r3)
/* 80748984  88 03 06 10 */	lbz r0, 0x610(r3)
/* 80748988  28 00 00 06 */	cmplwi r0, 6
/* 8074898C  41 81 00 EC */	bgt lbl_80748A78
/* 80748990  3C 80 80 75 */	lis r4, lit_6659@ha
/* 80748994  38 84 C2 18 */	addi r4, r4, lit_6659@l
/* 80748998  54 00 10 3A */	slwi r0, r0, 2
/* 8074899C  7C 04 00 2E */	lwzx r0, r4, r0
/* 807489A0  7C 09 03 A6 */	mtctr r0
/* 807489A4  4E 80 04 20 */	bctr 
lbl_807489A8:
/* 807489A8  48 00 03 CD */	bl StartAction__8daE_PM_cFv
/* 807489AC  48 00 00 CC */	b lbl_80748A78
lbl_807489B0:
/* 807489B0  48 00 10 11 */	bl DemoCreateAction__8daE_PM_cFv
/* 807489B4  7F E3 FB 78 */	mr r3, r31
/* 807489B8  48 00 1A 25 */	bl ObjHit__8daE_PM_cFv
/* 807489BC  88 1F 06 10 */	lbz r0, 0x610(r31)
/* 807489C0  28 00 00 04 */	cmplwi r0, 4
/* 807489C4  40 82 00 B4 */	bne lbl_80748A78
/* 807489C8  88 1F 06 11 */	lbz r0, 0x611(r31)
/* 807489CC  28 00 00 0A */	cmplwi r0, 0xa
/* 807489D0  41 82 00 A8 */	beq lbl_80748A78
/* 807489D4  38 00 00 04 */	li r0, 4
/* 807489D8  98 1F 06 10 */	stb r0, 0x610(r31)
/* 807489DC  38 00 00 00 */	li r0, 0
/* 807489E0  98 1F 06 11 */	stb r0, 0x611(r31)
/* 807489E4  98 1F 06 12 */	stb r0, 0x612(r31)
/* 807489E8  98 1F 06 13 */	stb r0, 0x613(r31)
/* 807489EC  38 7F 0A 18 */	addi r3, r31, 0xa18
/* 807489F0  81 9F 0A 54 */	lwz r12, 0xa54(r31)
/* 807489F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807489F8  7D 89 03 A6 */	mtctr r12
/* 807489FC  4E 80 04 21 */	bctrl 
/* 80748A00  48 00 00 78 */	b lbl_80748A78
lbl_80748A04:
/* 80748A04  4B FF F5 35 */	bl BossWaitAction__8daE_PM_cFv
/* 80748A08  7F E3 FB 78 */	mr r3, r31
/* 80748A0C  48 00 13 91 */	bl CreateChk__8daE_PM_cFv
/* 80748A10  7F E3 FB 78 */	mr r3, r31
/* 80748A14  48 00 19 C9 */	bl ObjHit__8daE_PM_cFv
/* 80748A18  48 00 00 60 */	b lbl_80748A78
lbl_80748A1C:
/* 80748A1C  4B FF E7 79 */	bl BossEscapeAction__8daE_PM_cFv
/* 80748A20  48 00 00 58 */	b lbl_80748A78
lbl_80748A24:
/* 80748A24  4B FF EC 7D */	bl BossDamageAction__8daE_PM_cFv
/* 80748A28  48 00 00 50 */	b lbl_80748A78
lbl_80748A2C:
/* 80748A2C  4B FF F6 79 */	bl BossDeathAction__8daE_PM_cFv
/* 80748A30  48 00 00 48 */	b lbl_80748A78
lbl_80748A34:
/* 80748A34  88 1F 06 D8 */	lbz r0, 0x6d8(r31)
/* 80748A38  28 00 00 00 */	cmplwi r0, 0
/* 80748A3C  41 82 00 0C */	beq lbl_80748A48
/* 80748A40  4B FF D4 91 */	bl DemoBossStart2__8daE_PM_cFv
/* 80748A44  48 00 00 08 */	b lbl_80748A4C
lbl_80748A48:
/* 80748A48  4B FF DB DD */	bl DemoBossStart__8daE_PM_cFv
lbl_80748A4C:
/* 80748A4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80748A50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80748A54  3B C3 4E C8 */	addi r30, r3, 0x4ec8
/* 80748A58  7F C3 F3 78 */	mr r3, r30
/* 80748A5C  4B 8F 9F 4C */	b onSkipFade__14dEvt_control_cFv
/* 80748A60  7F C3 F3 78 */	mr r3, r30
/* 80748A64  7F E4 FB 78 */	mr r4, r31
/* 80748A68  3C A0 80 74 */	lis r5, DemoSkipCallBack__8daE_PM_cFPvi@ha
/* 80748A6C  38 A5 20 04 */	addi r5, r5, DemoSkipCallBack__8daE_PM_cFPvi@l
/* 80748A70  38 C0 00 01 */	li r6, 1
/* 80748A74  4B 8F 9E A0 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80748A78:
/* 80748A78  88 1F 06 D8 */	lbz r0, 0x6d8(r31)
/* 80748A7C  28 00 00 00 */	cmplwi r0, 0
/* 80748A80  41 82 00 44 */	beq lbl_80748AC4
/* 80748A84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80748A88  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80748A8C  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80748A90  7F E4 FB 78 */	mr r4, r31
/* 80748A94  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80748A98  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80748A9C  7D 89 03 A6 */	mtctr r12
/* 80748AA0  4E 80 04 21 */	bctrl 
/* 80748AA4  2C 03 00 00 */	cmpwi r3, 0
/* 80748AA8  41 82 00 1C */	beq lbl_80748AC4
/* 80748AAC  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80748AB0  7F E4 FB 78 */	mr r4, r31
/* 80748AB4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80748AB8  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 80748ABC  7D 89 03 A6 */	mtctr r12
/* 80748AC0  4E 80 04 21 */	bctrl 
lbl_80748AC4:
/* 80748AC4  88 1F 06 10 */	lbz r0, 0x610(r31)
/* 80748AC8  28 00 00 05 */	cmplwi r0, 5
/* 80748ACC  41 82 00 34 */	beq lbl_80748B00
/* 80748AD0  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80748AD4  A8 9F 06 02 */	lha r4, 0x602(r31)
/* 80748AD8  38 A0 00 05 */	li r5, 5
/* 80748ADC  38 C0 10 00 */	li r6, 0x1000
/* 80748AE0  4B B2 7B 28 */	b cLib_addCalcAngleS2__FPssss
/* 80748AE4  38 7F 06 04 */	addi r3, r31, 0x604
/* 80748AE8  A8 9F 06 08 */	lha r4, 0x608(r31)
/* 80748AEC  38 A0 00 04 */	li r5, 4
/* 80748AF0  38 C0 10 00 */	li r6, 0x1000
/* 80748AF4  4B B2 7B 14 */	b cLib_addCalcAngleS2__FPssss
/* 80748AF8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80748AFC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80748B00:
/* 80748B00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80748B04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80748B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80748B0C  7C 08 03 A6 */	mtlr r0
/* 80748B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80748B14  4E 80 00 20 */	blr 
