lbl_801CE288:
/* 801CE288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE28C  7C 08 02 A6 */	mflr r0
/* 801CE290  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CE298  93 C1 00 08 */	stw r30, 8(r1)
/* 801CE29C  7C 7E 1B 78 */	mr r30, r3
/* 801CE2A0  7C 9F 23 78 */	mr r31, r4
/* 801CE2A4  88 84 00 00 */	lbz r4, 0(r4)
/* 801CE2A8  28 04 00 FF */	cmplwi r4, 0xff
/* 801CE2AC  40 82 00 0C */	bne lbl_801CE2B8
/* 801CE2B0  38 60 00 01 */	li r3, 1
/* 801CE2B4  48 00 00 F4 */	b lbl_801CE3A8
lbl_801CE2B8:
/* 801CE2B8  88 1F 00 01 */	lbz r0, 1(r31)
/* 801CE2BC  28 00 00 00 */	cmplwi r0, 0
/* 801CE2C0  40 82 00 18 */	bne lbl_801CE2D8
/* 801CE2C4  4B FF FF 61 */	bl isSwitchSpecialOff__15renderingFmap_cFi
/* 801CE2C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CE2CC  41 82 00 20 */	beq lbl_801CE2EC
/* 801CE2D0  38 60 00 01 */	li r3, 1
/* 801CE2D4  48 00 00 D4 */	b lbl_801CE3A8
lbl_801CE2D8:
/* 801CE2D8  4B FF FF 4D */	bl isSwitchSpecialOff__15renderingFmap_cFi
/* 801CE2DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801CE2E0  41 82 00 0C */	beq lbl_801CE2EC
/* 801CE2E4  38 60 00 00 */	li r3, 0
/* 801CE2E8  48 00 00 C0 */	b lbl_801CE3A8
lbl_801CE2EC:
/* 801CE2EC  4B E6 0B 75 */	bl dComIfGp_getNowLevel__Fv
/* 801CE2F0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801CE2F4  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 801CE2F8  7C 00 18 00 */	cmpw r0, r3
/* 801CE2FC  40 82 00 60 */	bne lbl_801CE35C
/* 801CE300  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 801CE304  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 801CE308  7C 03 00 00 */	cmpw r3, r0
/* 801CE30C  40 82 00 50 */	bne lbl_801CE35C
/* 801CE310  88 1F 00 01 */	lbz r0, 1(r31)
/* 801CE314  28 00 00 00 */	cmplwi r0, 0
/* 801CE318  40 82 00 24 */	bne lbl_801CE33C
/* 801CE31C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801CE320  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801CE324  88 9F 00 00 */	lbz r4, 0(r31)
/* 801CE328  80 BE 00 9C */	lwz r5, 0x9c(r30)
/* 801CE32C  4B E6 70 35 */	bl isSwitch__10dSv_info_cCFii
/* 801CE330  7C 60 00 34 */	cntlzw r0, r3
/* 801CE334  54 03 D9 7E */	srwi r3, r0, 5
/* 801CE338  48 00 00 70 */	b lbl_801CE3A8
lbl_801CE33C:
/* 801CE33C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801CE340  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801CE344  88 9F 00 00 */	lbz r4, 0(r31)
/* 801CE348  80 BE 00 9C */	lwz r5, 0x9c(r30)
/* 801CE34C  4B E6 70 15 */	bl isSwitch__10dSv_info_cCFii
/* 801CE350  30 03 FF FF */	addic r0, r3, -1
/* 801CE354  7C 60 19 10 */	subfe r3, r0, r3
/* 801CE358  48 00 00 50 */	b lbl_801CE3A8
lbl_801CE35C:
/* 801CE35C  88 9F 00 00 */	lbz r4, 0(r31)
/* 801CE360  28 04 00 80 */	cmplwi r4, 0x80
/* 801CE364  40 80 00 38 */	bge lbl_801CE39C
/* 801CE368  88 1F 00 01 */	lbz r0, 1(r31)
/* 801CE36C  28 00 00 00 */	cmplwi r0, 0
/* 801CE370  41 82 00 18 */	beq lbl_801CE388
/* 801CE374  88 7E 00 B9 */	lbz r3, 0xb9(r30)
/* 801CE378  4B E5 F3 C9 */	bl dComIfGs_isStageSwitch__Fii
/* 801CE37C  30 03 FF FF */	addic r0, r3, -1
/* 801CE380  7C 60 19 10 */	subfe r3, r0, r3
/* 801CE384  48 00 00 24 */	b lbl_801CE3A8
lbl_801CE388:
/* 801CE388  88 7E 00 B9 */	lbz r3, 0xb9(r30)
/* 801CE38C  4B E5 F3 B5 */	bl dComIfGs_isStageSwitch__Fii
/* 801CE390  7C 60 00 34 */	cntlzw r0, r3
/* 801CE394  54 03 D9 7E */	srwi r3, r0, 5
/* 801CE398  48 00 00 10 */	b lbl_801CE3A8
lbl_801CE39C:
/* 801CE39C  88 1F 00 01 */	lbz r0, 1(r31)
/* 801CE3A0  7C 00 00 34 */	cntlzw r0, r0
/* 801CE3A4  54 03 D9 7E */	srwi r3, r0, 5
lbl_801CE3A8:
/* 801CE3A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CE3AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801CE3B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE3B4  7C 08 03 A6 */	mtlr r0
/* 801CE3B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE3BC  4E 80 00 20 */	blr 
