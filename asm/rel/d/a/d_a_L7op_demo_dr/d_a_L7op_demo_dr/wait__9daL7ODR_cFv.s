lbl_805AB3F0:
/* 805AB3F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AB3F4  7C 08 02 A6 */	mflr r0
/* 805AB3F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AB3FC  39 61 00 30 */	addi r11, r1, 0x30
/* 805AB400  4B DB 6D DC */	b _savegpr_29
/* 805AB404  7C 7F 1B 78 */	mr r31, r3
/* 805AB408  80 83 08 88 */	lwz r4, 0x888(r3)
/* 805AB40C  2C 04 00 00 */	cmpwi r4, 0
/* 805AB410  40 82 00 10 */	bne lbl_805AB420
/* 805AB414  38 04 00 01 */	addi r0, r4, 1
/* 805AB418  90 1F 08 88 */	stw r0, 0x888(r31)
/* 805AB41C  48 00 00 EC */	b lbl_805AB508
lbl_805AB420:
/* 805AB420  2C 04 FF FF */	cmpwi r4, -1
/* 805AB424  41 82 00 E4 */	beq lbl_805AB508
/* 805AB428  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805AB42C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805AB430  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 805AB434  7C 00 07 74 */	extsb r0, r0
/* 805AB438  38 84 5D 74 */	addi r4, r4, 0x5d74
/* 805AB43C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805AB440  7F C4 00 2E */	lwzx r30, r4, r0
/* 805AB444  83 A4 00 00 */	lwz r29, 0(r4)
/* 805AB448  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 805AB44C  28 00 00 02 */	cmplwi r0, 2
/* 805AB450  40 82 00 58 */	bne lbl_805AB4A8
/* 805AB454  38 60 00 14 */	li r3, 0x14
/* 805AB458  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805AB45C  7C 04 07 74 */	extsb r4, r0
/* 805AB460  4B A8 24 EC */	b dComIfGs_onZoneSwitch__Fii
/* 805AB464  38 7E 02 48 */	addi r3, r30, 0x248
/* 805AB468  4B BB 60 68 */	b Stop__9dCamera_cFv
/* 805AB46C  38 7E 02 48 */	addi r3, r30, 0x248
/* 805AB470  38 80 00 03 */	li r4, 3
/* 805AB474  4B BB 7B 98 */	b SetTrimSize__9dCamera_cFl
/* 805AB478  3C 60 80 5B */	lis r3, lit_3871@ha
/* 805AB47C  38 83 E0 B8 */	addi r4, r3, lit_3871@l
/* 805AB480  80 64 00 00 */	lwz r3, 0(r4)
/* 805AB484  80 04 00 04 */	lwz r0, 4(r4)
/* 805AB488  90 61 00 08 */	stw r3, 8(r1)
/* 805AB48C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AB490  80 04 00 08 */	lwz r0, 8(r4)
/* 805AB494  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AB498  7F E3 FB 78 */	mr r3, r31
/* 805AB49C  38 81 00 08 */	addi r4, r1, 8
/* 805AB4A0  4B FF FB F9 */	bl setAction__9daL7ODR_cFM9daL7ODR_cFPCvPv_v
/* 805AB4A4  48 00 00 64 */	b lbl_805AB508
lbl_805AB4A8:
/* 805AB4A8  48 00 25 85 */	bl check_start__9daL7ODR_cFv
/* 805AB4AC  2C 03 00 00 */	cmpwi r3, 0
/* 805AB4B0  41 82 00 58 */	beq lbl_805AB508
/* 805AB4B4  7F E3 FB 78 */	mr r3, r31
/* 805AB4B8  38 80 00 02 */	li r4, 2
/* 805AB4BC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805AB4C0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805AB4C4  38 C0 00 00 */	li r6, 0
/* 805AB4C8  4B A7 04 40 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805AB4CC  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805AB4D0  60 00 00 02 */	ori r0, r0, 2
/* 805AB4D4  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805AB4D8  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 805AB4DC  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 805AB4E0  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 805AB4E4  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 805AB4E8  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 805AB4EC  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 805AB4F0  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 805AB4F4  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 805AB4F8  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 805AB4FC  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 805AB500  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 805AB504  D0 1F 08 50 */	stfs f0, 0x850(r31)
lbl_805AB508:
/* 805AB508  39 61 00 30 */	addi r11, r1, 0x30
/* 805AB50C  4B DB 6D 1C */	b _restgpr_29
/* 805AB510  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AB514  7C 08 03 A6 */	mtlr r0
/* 805AB518  38 21 00 30 */	addi r1, r1, 0x30
/* 805AB51C  4E 80 00 20 */	blr 
