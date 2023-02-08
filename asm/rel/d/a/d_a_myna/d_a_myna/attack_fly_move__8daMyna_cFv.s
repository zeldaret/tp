lbl_80946BF4:
/* 80946BF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80946BF8  7C 08 02 A6 */	mflr r0
/* 80946BFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80946C00  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80946C04  7C 7F 1B 78 */	mr r31, r3
/* 80946C08  3C 80 80 95 */	lis r4, daMyna_evtTagActor0@ha /* 0x8094BAC8@ha */
/* 80946C0C  80 04 BA C8 */	lwz r0, daMyna_evtTagActor0@l(r4)  /* 0x8094BAC8@l */
/* 80946C10  28 00 00 00 */	cmplwi r0, 0
/* 80946C14  41 82 00 F8 */	beq lbl_80946D0C
/* 80946C18  3C 80 80 95 */	lis r4, lit_4270@ha /* 0x8094B1FC@ha */
/* 80946C1C  C0 04 B1 FC */	lfs f0, lit_4270@l(r4)  /* 0x8094B1FC@l */
/* 80946C20  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80946C24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80946C28  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80946C2C  48 00 21 D1 */	bl fly_body_wave__8daMyna_cFv
/* 80946C30  A8 1F 09 26 */	lha r0, 0x926(r31)
/* 80946C34  2C 00 00 00 */	cmpwi r0, 0
/* 80946C38  40 81 00 28 */	ble lbl_80946C60
/* 80946C3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80946C40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80946C44  38 63 09 58 */	addi r3, r3, 0x958
/* 80946C48  38 80 00 3C */	li r4, 0x3c
/* 80946C4C  4B 6E DC 15 */	bl isSwitch__12dSv_memBit_cCFi
/* 80946C50  2C 03 00 00 */	cmpwi r3, 0
/* 80946C54  41 82 00 0C */	beq lbl_80946C60
/* 80946C58  38 00 00 00 */	li r0, 0
/* 80946C5C  B0 1F 09 26 */	sth r0, 0x926(r31)
lbl_80946C60:
/* 80946C60  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80946C64  D0 01 00 08 */	stfs f0, 8(r1)
/* 80946C68  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80946C6C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80946C70  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80946C74  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80946C78  7F E3 FB 78 */	mr r3, r31
/* 80946C7C  3C 80 80 95 */	lis r4, daMyna_evtTagActor0@ha /* 0x8094BAC8@ha */
/* 80946C80  38 84 BA C8 */	addi r4, r4, daMyna_evtTagActor0@l /* 0x8094BAC8@l */
/* 80946C84  80 84 00 00 */	lwz r4, 0(r4)
/* 80946C88  38 A1 00 08 */	addi r5, r1, 8
/* 80946C8C  48 00 30 C9 */	bl chkPlayerInEvtArea__8daMyna_cFP10fopAc_ac_c4cXyz
/* 80946C90  2C 03 00 00 */	cmpwi r3, 0
/* 80946C94  41 82 00 60 */	beq lbl_80946CF4
/* 80946C98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80946C9C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80946CA0  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 80946CA4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80946CA8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80946CAC  40 82 00 48 */	bne lbl_80946CF4
/* 80946CB0  38 64 09 58 */	addi r3, r4, 0x958
/* 80946CB4  38 80 00 3C */	li r4, 0x3c
/* 80946CB8  4B 6E DB A9 */	bl isSwitch__12dSv_memBit_cCFi
/* 80946CBC  2C 03 00 00 */	cmpwi r3, 0
/* 80946CC0  40 82 00 34 */	bne lbl_80946CF4
/* 80946CC4  A8 1F 09 26 */	lha r0, 0x926(r31)
/* 80946CC8  2C 00 00 00 */	cmpwi r0, 0
/* 80946CCC  40 82 00 28 */	bne lbl_80946CF4
/* 80946CD0  38 7F 06 C4 */	addi r3, r31, 0x6c4
/* 80946CD4  4B 73 CB 5D */	bl Move__10dCcD_GSttsFv
/* 80946CD8  7F E3 FB 78 */	mr r3, r31
/* 80946CDC  48 00 1B 4D */	bl fly_attack_move__8daMyna_cFv
/* 80946CE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80946CE4  41 82 00 28 */	beq lbl_80946D0C
/* 80946CE8  38 00 00 03 */	li r0, 3
/* 80946CEC  98 1F 09 2C */	stb r0, 0x92c(r31)
/* 80946CF0  48 00 00 1C */	b lbl_80946D0C
lbl_80946CF4:
/* 80946CF4  7F E3 FB 78 */	mr r3, r31
/* 80946CF8  48 00 1D E5 */	bl fly_return_move__8daMyna_cFv
/* 80946CFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80946D00  41 82 00 0C */	beq lbl_80946D0C
/* 80946D04  38 00 00 00 */	li r0, 0
/* 80946D08  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80946D0C:
/* 80946D0C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80946D10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80946D14  7C 08 03 A6 */	mtlr r0
/* 80946D18  38 21 00 30 */	addi r1, r1, 0x30
/* 80946D1C  4E 80 00 20 */	blr 
