lbl_8094692C:
/* 8094692C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80946930  7C 08 02 A6 */	mflr r0
/* 80946934  90 01 00 34 */	stw r0, 0x34(r1)
/* 80946938  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8094693C  7C 7F 1B 78 */	mr r31, r3
/* 80946940  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80946944  A8 83 04 B6 */	lha r4, 0x4b6(r3)
/* 80946948  7C 00 20 00 */	cmpw r0, r4
/* 8094694C  41 82 00 64 */	beq lbl_809469B0
/* 80946950  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80946954  38 A0 00 04 */	li r5, 4
/* 80946958  38 C0 7F FF */	li r6, 0x7fff
/* 8094695C  38 E0 05 DC */	li r7, 0x5dc
/* 80946960  4B 92 9B E0 */	b cLib_addCalcAngleS__FPsssss
/* 80946964  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80946968  A8 9F 04 B4 */	lha r4, 0x4b4(r31)
/* 8094696C  38 A0 00 04 */	li r5, 4
/* 80946970  38 C0 7F FF */	li r6, 0x7fff
/* 80946974  38 E0 05 DC */	li r7, 0x5dc
/* 80946978  4B 92 9B C8 */	b cLib_addCalcAngleS__FPsssss
/* 8094697C  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80946980  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80946984  7C 03 00 50 */	subf r0, r3, r0
/* 80946988  7C 03 07 34 */	extsh r3, r0
/* 8094698C  4B A1 E7 44 */	b abs
/* 80946990  2C 03 00 80 */	cmpwi r3, 0x80
/* 80946994  40 80 00 1C */	bge lbl_809469B0
/* 80946998  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 8094699C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 809469A0  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 809469A4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 809469A8  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 809469AC  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
lbl_809469B0:
/* 809469B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809469B4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 809469B8  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 809469BC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809469C0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809469C4  40 82 01 14 */	bne lbl_80946AD8
/* 809469C8  3C 60 80 95 */	lis r3, daMyna_evtTagActor0@ha
/* 809469CC  80 03 BA C8 */	lwz r0, daMyna_evtTagActor0@l(r3)
/* 809469D0  28 00 00 00 */	cmplwi r0, 0
/* 809469D4  41 82 01 04 */	beq lbl_80946AD8
/* 809469D8  3C 60 80 95 */	lis r3, lit_4270@ha
/* 809469DC  C0 03 B1 FC */	lfs f0, lit_4270@l(r3)
/* 809469E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809469E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809469E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809469EC  38 64 09 58 */	addi r3, r4, 0x958
/* 809469F0  38 80 00 3C */	li r4, 0x3c
/* 809469F4  4B 6E DE 6C */	b isSwitch__12dSv_memBit_cCFi
/* 809469F8  2C 03 00 00 */	cmpwi r3, 0
/* 809469FC  40 82 00 88 */	bne lbl_80946A84
/* 80946A00  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80946A04  D0 01 00 08 */	stfs f0, 8(r1)
/* 80946A08  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80946A0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80946A10  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80946A14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80946A18  7F E3 FB 78 */	mr r3, r31
/* 80946A1C  3C 80 80 95 */	lis r4, daMyna_evtTagActor0@ha
/* 80946A20  38 84 BA C8 */	addi r4, r4, daMyna_evtTagActor0@l
/* 80946A24  80 84 00 00 */	lwz r4, 0(r4)
/* 80946A28  38 A1 00 08 */	addi r5, r1, 8
/* 80946A2C  48 00 33 29 */	bl chkPlayerInEvtArea__8daMyna_cFP10fopAc_ac_c4cXyz
/* 80946A30  2C 03 00 00 */	cmpwi r3, 0
/* 80946A34  41 82 00 A4 */	beq lbl_80946AD8
/* 80946A38  88 1F 09 2F */	lbz r0, 0x92f(r31)
/* 80946A3C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80946A40  40 82 00 38 */	bne lbl_80946A78
/* 80946A44  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80946A48  60 00 00 01 */	ori r0, r0, 1
/* 80946A4C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80946A50  7F E3 FB 78 */	mr r3, r31
/* 80946A54  38 80 00 00 */	li r4, 0
/* 80946A58  38 A0 00 00 */	li r5, 0
/* 80946A5C  4B 6D 47 40 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80946A60  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80946A64  28 00 00 01 */	cmplwi r0, 1
/* 80946A68  40 82 00 70 */	bne lbl_80946AD8
/* 80946A6C  38 00 00 01 */	li r0, 1
/* 80946A70  98 1F 09 2C */	stb r0, 0x92c(r31)
/* 80946A74  48 00 00 64 */	b lbl_80946AD8
lbl_80946A78:
/* 80946A78  38 00 00 02 */	li r0, 2
/* 80946A7C  98 1F 09 2C */	stb r0, 0x92c(r31)
/* 80946A80  48 00 00 58 */	b lbl_80946AD8
lbl_80946A84:
/* 80946A84  A8 9F 09 2A */	lha r4, 0x92a(r31)
/* 80946A88  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 80946A8C  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 80946A90  A8 03 00 24 */	lha r0, 0x24(r3)
/* 80946A94  7C 04 00 00 */	cmpw r4, r0
/* 80946A98  40 80 00 10 */	bge lbl_80946AA8
/* 80946A9C  38 04 00 01 */	addi r0, r4, 1
/* 80946AA0  B0 1F 09 2A */	sth r0, 0x92a(r31)
/* 80946AA4  48 00 00 34 */	b lbl_80946AD8
lbl_80946AA8:
/* 80946AA8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80946AAC  60 00 00 01 */	ori r0, r0, 1
/* 80946AB0  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80946AB4  7F E3 FB 78 */	mr r3, r31
/* 80946AB8  38 80 00 00 */	li r4, 0
/* 80946ABC  38 A0 00 00 */	li r5, 0
/* 80946AC0  4B 6D 46 DC */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80946AC4  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80946AC8  28 00 00 01 */	cmplwi r0, 1
/* 80946ACC  40 82 00 0C */	bne lbl_80946AD8
/* 80946AD0  38 00 00 04 */	li r0, 4
/* 80946AD4  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80946AD8:
/* 80946AD8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80946ADC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80946AE0  7C 08 03 A6 */	mtlr r0
/* 80946AE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80946AE8  4E 80 00 20 */	blr 
