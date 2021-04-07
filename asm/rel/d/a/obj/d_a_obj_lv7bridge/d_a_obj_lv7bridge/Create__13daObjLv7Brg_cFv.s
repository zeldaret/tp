lbl_80C865B8:
/* 80C865B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C865BC  7C 08 02 A6 */	mflr r0
/* 80C865C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C865C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C865C8  4B 6D BC 09 */	bl _savegpr_26
/* 80C865CC  7C 7F 1B 78 */	mr r31, r3
/* 80C865D0  38 00 FF FF */	li r0, -1
/* 80C865D4  98 03 0A 94 */	stb r0, 0xa94(r3)
/* 80C865D8  88 03 0A 94 */	lbz r0, 0xa94(r3)
/* 80C865DC  98 03 0A 95 */	stb r0, 0xa95(r3)
/* 80C865E0  88 03 0A 7E */	lbz r0, 0xa7e(r3)
/* 80C865E4  28 00 00 01 */	cmplwi r0, 1
/* 80C865E8  40 82 00 F8 */	bne lbl_80C866E0
/* 80C865EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C865F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C865F4  A0 1F 0A 80 */	lhz r0, 0xa80(r31)
/* 80C865F8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C865FC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C86600  7C 05 07 74 */	extsb r5, r0
/* 80C86604  4B 3A ED 5D */	bl isSwitch__10dSv_info_cCFii
/* 80C86608  2C 03 00 00 */	cmpwi r3, 0
/* 80C8660C  41 82 00 98 */	beq lbl_80C866A4
/* 80C86610  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C86614  28 03 00 00 */	cmplwi r3, 0
/* 80C86618  41 82 00 24 */	beq lbl_80C8663C
/* 80C8661C  4B 5E 1B B9 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C86620  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C86624  41 82 00 18 */	beq lbl_80C8663C
/* 80C86628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8662C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C86630  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C86634  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C86638  4B 3E DC 19 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C8663C:
/* 80C8663C  80 7F 0A 90 */	lwz r3, 0xa90(r31)
/* 80C86640  28 03 00 00 */	cmplwi r3, 0
/* 80C86644  41 82 00 28 */	beq lbl_80C8666C
/* 80C86648  4B 5E 1B 8D */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C8664C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C86650  40 82 00 1C */	bne lbl_80C8666C
/* 80C86654  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C86658  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8665C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C86660  80 9F 0A 90 */	lwz r4, 0xa90(r31)
/* 80C86664  7F E5 FB 78 */	mr r5, r31
/* 80C86668  4B 3E E3 A1 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80C8666C:
/* 80C8666C  38 80 00 01 */	li r4, 1
/* 80C86670  98 9F 0A 94 */	stb r4, 0xa94(r31)
/* 80C86674  80 BF 0A 8C */	lwz r5, 0xa8c(r31)
/* 80C86678  A8 05 00 08 */	lha r0, 8(r5)
/* 80C8667C  3C 60 80 C8 */	lis r3, lit_3770@ha /* 0x80C879D8@ha */
/* 80C86680  C8 23 79 D8 */	lfd f1, lit_3770@l(r3)  /* 0x80C879D8@l */
/* 80C86684  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C86688  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C8668C  3C 00 43 30 */	lis r0, 0x4330
/* 80C86690  90 01 00 08 */	stw r0, 8(r1)
/* 80C86694  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C86698  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C8669C  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 80C866A0  98 9F 0A 96 */	stb r4, 0xa96(r31)
lbl_80C866A4:
/* 80C866A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C866A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C866AC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C866B0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C866B4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C866B8  7C 05 07 74 */	extsb r5, r0
/* 80C866BC  4B 3A EC A5 */	bl isSwitch__10dSv_info_cCFii
/* 80C866C0  2C 03 00 00 */	cmpwi r3, 0
/* 80C866C4  41 82 00 60 */	beq lbl_80C86724
/* 80C866C8  3C 60 80 C8 */	lis r3, lit_3767@ha /* 0x80C879D0@ha */
/* 80C866CC  C0 03 79 D0 */	lfs f0, lit_3767@l(r3)  /* 0x80C879D0@l */
/* 80C866D0  D0 1F 0A 78 */	stfs f0, 0xa78(r31)
/* 80C866D4  38 00 00 01 */	li r0, 1
/* 80C866D8  98 1F 0A 7D */	stb r0, 0xa7d(r31)
/* 80C866DC  48 00 00 48 */	b lbl_80C86724
lbl_80C866E0:
/* 80C866E0  88 1F 0A 7C */	lbz r0, 0xa7c(r31)
/* 80C866E4  28 00 00 00 */	cmplwi r0, 0
/* 80C866E8  40 82 00 3C */	bne lbl_80C86724
/* 80C866EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C866F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C866F4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C866F8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C866FC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C86700  7C 05 07 74 */	extsb r5, r0
/* 80C86704  4B 3A EC 5D */	bl isSwitch__10dSv_info_cCFii
/* 80C86708  2C 03 00 00 */	cmpwi r3, 0
/* 80C8670C  41 82 00 18 */	beq lbl_80C86724
/* 80C86710  3C 60 80 C8 */	lis r3, lit_3767@ha /* 0x80C879D0@ha */
/* 80C86714  C0 03 79 D0 */	lfs f0, lit_3767@l(r3)  /* 0x80C879D0@l */
/* 80C86718  D0 1F 0A 78 */	stfs f0, 0xa78(r31)
/* 80C8671C  38 00 00 01 */	li r0, 1
/* 80C86720  98 1F 0A 7D */	stb r0, 0xa7d(r31)
lbl_80C86724:
/* 80C86724  3C 60 80 C8 */	lis r3, lit_3768@ha /* 0x80C879D4@ha */
/* 80C86728  C0 03 79 D4 */	lfs f0, lit_3768@l(r3)  /* 0x80C879D4@l */
/* 80C8672C  D0 1F 05 20 */	stfs f0, 0x520(r31)
/* 80C86730  7F E3 FB 78 */	mr r3, r31
/* 80C86734  4B FF FD 21 */	bl initBaseMtx__13daObjLv7Brg_cFv
/* 80C86738  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C8673C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C86740  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C86744  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C86748  80 83 00 04 */	lwz r4, 4(r3)
/* 80C8674C  7F E3 FB 78 */	mr r3, r31
/* 80C86750  4B 39 3E 29 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C86754  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 80C86758  38 80 00 FF */	li r4, 0xff
/* 80C8675C  38 A0 00 FF */	li r5, 0xff
/* 80C86760  7F E6 FB 78 */	mr r6, r31
/* 80C86764  4B 3F D0 FD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C86768  3B 40 00 00 */	li r26, 0
/* 80C8676C  3B C0 00 00 */	li r30, 0
/* 80C86770  3C 60 80 C8 */	lis r3, l_cyl_src@ha /* 0x80C87A5C@ha */
/* 80C86774  3B 83 7A 5C */	addi r28, r3, l_cyl_src@l /* 0x80C87A5C@l */
/* 80C86778  3B BF 07 C4 */	addi r29, r31, 0x7c4
lbl_80C8677C:
/* 80C8677C  7F 7F F2 14 */	add r27, r31, r30
/* 80C86780  38 7B 08 00 */	addi r3, r27, 0x800
/* 80C86784  7F 84 E3 78 */	mr r4, r28
/* 80C86788  4B 3F E1 2D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C8678C  93 BB 08 44 */	stw r29, 0x844(r27)
/* 80C86790  3B 5A 00 01 */	addi r26, r26, 1
/* 80C86794  2C 1A 00 02 */	cmpwi r26, 2
/* 80C86798  3B DE 01 3C */	addi r30, r30, 0x13c
/* 80C8679C  41 80 FF E0 */	blt lbl_80C8677C
/* 80C867A0  7F E3 FB 78 */	mr r3, r31
/* 80C867A4  48 00 0A 71 */	bl calcCoPos__13daObjLv7Brg_cFv
/* 80C867A8  7F E3 FB 78 */	mr r3, r31
/* 80C867AC  4B 3F 21 A5 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80C867B0  38 60 00 01 */	li r3, 1
/* 80C867B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C867B8  4B 6D BA 65 */	bl _restgpr_26
/* 80C867BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C867C0  7C 08 03 A6 */	mtlr r0
/* 80C867C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C867C8  4E 80 00 20 */	blr 
