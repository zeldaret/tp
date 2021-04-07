lbl_80946EB0:
/* 80946EB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80946EB4  7C 08 02 A6 */	mflr r0
/* 80946EB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80946EBC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80946EC0  7C 7F 1B 78 */	mr r31, r3
/* 80946EC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80946EC8  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80946ECC  80 85 5D B4 */	lwz r4, 0x5db4(r5)
/* 80946ED0  80 04 05 74 */	lwz r0, 0x574(r4)
/* 80946ED4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80946ED8  40 82 01 44 */	bne lbl_8094701C
/* 80946EDC  3C 80 80 95 */	lis r4, daMyna_evtTagActor0@ha /* 0x8094BAC8@ha */
/* 80946EE0  38 84 BA C8 */	addi r4, r4, daMyna_evtTagActor0@l /* 0x8094BAC8@l */
/* 80946EE4  80 84 00 00 */	lwz r4, 0(r4)
/* 80946EE8  28 04 00 00 */	cmplwi r4, 0
/* 80946EEC  41 82 00 A8 */	beq lbl_80946F94
/* 80946EF0  3C A0 80 95 */	lis r5, lit_4270@ha /* 0x8094B1FC@ha */
/* 80946EF4  C0 05 B1 FC */	lfs f0, lit_4270@l(r5)  /* 0x8094B1FC@l */
/* 80946EF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80946EFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80946F00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80946F04  D0 01 00 08 */	stfs f0, 8(r1)
/* 80946F08  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80946F0C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80946F10  38 A1 00 08 */	addi r5, r1, 8
/* 80946F14  48 00 2E 41 */	bl chkPlayerInEvtArea__8daMyna_cFP10fopAc_ac_c4cXyz
/* 80946F18  2C 03 00 00 */	cmpwi r3, 0
/* 80946F1C  41 82 00 38 */	beq lbl_80946F54
/* 80946F20  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80946F24  60 00 00 01 */	ori r0, r0, 1
/* 80946F28  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80946F2C  7F E3 FB 78 */	mr r3, r31
/* 80946F30  38 80 00 00 */	li r4, 0
/* 80946F34  38 A0 00 00 */	li r5, 0
/* 80946F38  4B 6D 42 65 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80946F3C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80946F40  28 00 00 01 */	cmplwi r0, 1
/* 80946F44  40 82 00 D8 */	bne lbl_8094701C
/* 80946F48  38 00 00 06 */	li r0, 6
/* 80946F4C  98 1F 09 2C */	stb r0, 0x92c(r31)
/* 80946F50  48 00 00 CC */	b lbl_8094701C
lbl_80946F54:
/* 80946F54  88 1F 09 2F */	lbz r0, 0x92f(r31)
/* 80946F58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80946F5C  41 82 00 C0 */	beq lbl_8094701C
/* 80946F60  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80946F64  60 00 00 01 */	ori r0, r0, 1
/* 80946F68  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80946F6C  7F E3 FB 78 */	mr r3, r31
/* 80946F70  38 80 00 00 */	li r4, 0
/* 80946F74  38 A0 00 00 */	li r5, 0
/* 80946F78  4B 6D 42 25 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80946F7C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80946F80  28 00 00 01 */	cmplwi r0, 1
/* 80946F84  40 82 00 98 */	bne lbl_8094701C
/* 80946F88  38 00 00 0A */	li r0, 0xa
/* 80946F8C  98 1F 09 2C */	stb r0, 0x92c(r31)
/* 80946F90  48 00 00 8C */	b lbl_8094701C
lbl_80946F94:
/* 80946F94  80 85 5D AC */	lwz r4, 0x5dac(r5)
/* 80946F98  4B 6D 39 CD */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80946F9C  3C 60 80 95 */	lis r3, lit_4481@ha /* 0x8094B200@ha */
/* 80946FA0  C0 03 B2 00 */	lfs f0, lit_4481@l(r3)  /* 0x8094B200@l */
/* 80946FA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80946FA8  40 80 00 38 */	bge lbl_80946FE0
/* 80946FAC  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80946FB0  60 00 00 01 */	ori r0, r0, 1
/* 80946FB4  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80946FB8  7F E3 FB 78 */	mr r3, r31
/* 80946FBC  38 80 00 00 */	li r4, 0
/* 80946FC0  38 A0 00 00 */	li r5, 0
/* 80946FC4  4B 6D 41 D9 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80946FC8  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80946FCC  28 00 00 01 */	cmplwi r0, 1
/* 80946FD0  40 82 00 4C */	bne lbl_8094701C
/* 80946FD4  38 00 00 06 */	li r0, 6
/* 80946FD8  98 1F 09 2C */	stb r0, 0x92c(r31)
/* 80946FDC  48 00 00 40 */	b lbl_8094701C
lbl_80946FE0:
/* 80946FE0  88 1F 09 2F */	lbz r0, 0x92f(r31)
/* 80946FE4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80946FE8  41 82 00 34 */	beq lbl_8094701C
/* 80946FEC  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80946FF0  60 00 00 01 */	ori r0, r0, 1
/* 80946FF4  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80946FF8  7F E3 FB 78 */	mr r3, r31
/* 80946FFC  38 80 00 00 */	li r4, 0
/* 80947000  38 A0 00 00 */	li r5, 0
/* 80947004  4B 6D 41 99 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80947008  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8094700C  28 00 00 01 */	cmplwi r0, 1
/* 80947010  40 82 00 0C */	bne lbl_8094701C
/* 80947014  38 00 00 0A */	li r0, 0xa
/* 80947018  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_8094701C:
/* 8094701C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80947020  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80947024  7C 08 03 A6 */	mtlr r0
/* 80947028  38 21 00 30 */	addi r1, r1, 0x30
/* 8094702C  4E 80 00 20 */	blr 
