lbl_805887A0:
/* 805887A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805887A4  7C 08 02 A6 */	mflr r0
/* 805887A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805887AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805887B0  4B DD 9A 21 */	bl _savegpr_26
/* 805887B4  7C 7E 1B 78 */	mr r30, r3
/* 805887B8  3C 60 80 59 */	lis r3, l_gateBmdIdx@ha /* 0x8058AB30@ha */
/* 805887BC  3B E3 AB 30 */	addi r31, r3, l_gateBmdIdx@l /* 0x8058AB30@l */
/* 805887C0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805887C4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805887C8  88 1E 0B EC */	lbz r0, 0xbec(r30)
/* 805887CC  28 00 00 00 */	cmplwi r0, 0
/* 805887D0  41 82 00 0C */	beq lbl_805887DC
/* 805887D4  28 00 00 02 */	cmplwi r0, 2
/* 805887D8  40 82 00 C8 */	bne lbl_805888A0
lbl_805887DC:
/* 805887DC  28 04 00 FF */	cmplwi r4, 0xff
/* 805887E0  41 82 00 80 */	beq lbl_80588860
/* 805887E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805887E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805887EC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 805887F0  7C 05 07 74 */	extsb r5, r0
/* 805887F4  4B AA CB 6D */	bl isSwitch__10dSv_info_cCFii
/* 805887F8  2C 03 00 00 */	cmpwi r3, 0
/* 805887FC  40 82 00 64 */	bne lbl_80588860
/* 80588800  88 1E 0B EC */	lbz r0, 0xbec(r30)
/* 80588804  54 00 10 3A */	slwi r0, r0, 2
/* 80588808  3C 60 80 59 */	lis r3, l_arcName@ha /* 0x8058AD44@ha */
/* 8058880C  38 63 AD 44 */	addi r3, r3, l_arcName@l /* 0x8058AD44@l */
/* 80588810  7C 03 00 2E */	lwzx r0, r3, r0
/* 80588814  90 1E 01 00 */	stw r0, 0x100(r30)
/* 80588818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8058881C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80588820  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80588824  7F C4 F3 78 */	mr r4, r30
/* 80588828  88 1E 0B EC */	lbz r0, 0xbec(r30)
/* 8058882C  54 00 10 3A */	slwi r0, r0, 2
/* 80588830  3C A0 80 59 */	lis r5, l_evName@ha /* 0x8058AD50@ha */
/* 80588834  38 A5 AD 50 */	addi r5, r5, l_evName@l /* 0x8058AD50@l */
/* 80588838  7C A5 00 2E */	lwzx r5, r5, r0
/* 8058883C  38 C0 00 FF */	li r6, 0xff
/* 80588840  4B AB EF 19 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80588844  B0 7E 0B A6 */	sth r3, 0xba6(r30)
/* 80588848  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8058884C  54 00 66 3E */	rlwinm r0, r0, 0xc, 0x18, 0x1f
/* 80588850  98 1E 0B A5 */	stb r0, 0xba5(r30)
/* 80588854  38 00 00 00 */	li r0, 0
/* 80588858  98 1E 0B A4 */	stb r0, 0xba4(r30)
/* 8058885C  48 00 00 5C */	b lbl_805888B8
lbl_80588860:
/* 80588860  38 00 FF FF */	li r0, -1
/* 80588864  B0 1E 0B A6 */	sth r0, 0xba6(r30)
/* 80588868  38 00 00 FF */	li r0, 0xff
/* 8058886C  98 1E 0B A5 */	stb r0, 0xba5(r30)
/* 80588870  88 1E 0B EC */	lbz r0, 0xbec(r30)
/* 80588874  28 00 00 02 */	cmplwi r0, 2
/* 80588878  41 82 00 1C */	beq lbl_80588894
/* 8058887C  38 00 38 E3 */	li r0, 0x38e3
/* 80588880  B0 1E 0B 7A */	sth r0, 0xb7a(r30)
/* 80588884  38 00 C7 1D */	li r0, -14563
/* 80588888  B0 1E 0B 78 */	sth r0, 0xb78(r30)
/* 8058888C  38 00 00 01 */	li r0, 1
/* 80588890  98 1E 0B ED */	stb r0, 0xbed(r30)
lbl_80588894:
/* 80588894  38 00 00 02 */	li r0, 2
/* 80588898  98 1E 0B A4 */	stb r0, 0xba4(r30)
/* 8058889C  48 00 00 1C */	b lbl_805888B8
lbl_805888A0:
/* 805888A0  38 00 FF FF */	li r0, -1
/* 805888A4  B0 1E 0B A6 */	sth r0, 0xba6(r30)
/* 805888A8  38 00 00 FF */	li r0, 0xff
/* 805888AC  98 1E 0B A5 */	stb r0, 0xba5(r30)
/* 805888B0  38 00 00 02 */	li r0, 2
/* 805888B4  98 1E 0B A4 */	stb r0, 0xba4(r30)
lbl_805888B8:
/* 805888B8  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 805888BC  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 805888C0  EC 00 08 2A */	fadds f0, f0, f1
/* 805888C4  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 805888C8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 805888CC  EC 00 08 2A */	fadds f0, f0, f1
/* 805888D0  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 805888D4  38 00 00 20 */	li r0, 0x20
/* 805888D8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 805888DC  7F C3 F3 78 */	mr r3, r30
/* 805888E0  4B FF F7 E9 */	bl initBaseMtx__12daObjKGate_cFv
/* 805888E4  38 1E 0B 18 */	addi r0, r30, 0xb18
/* 805888E8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 805888EC  88 1E 0B EC */	lbz r0, 0xbec(r30)
/* 805888F0  28 00 00 01 */	cmplwi r0, 1
/* 805888F4  40 82 00 48 */	bne lbl_8058893C
/* 805888F8  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 805888FC  38 80 00 FF */	li r4, 0xff
/* 80588900  38 A0 00 FF */	li r5, 0xff
/* 80588904  7F C6 F3 78 */	mr r6, r30
/* 80588908  4B AF AF 59 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8058890C  3B 40 00 00 */	li r26, 0
/* 80588910  3B A0 00 00 */	li r29, 0
/* 80588914  3B 9E 05 B8 */	addi r28, r30, 0x5b8
lbl_80588918:
/* 80588918  7F 7E EA 14 */	add r27, r30, r29
/* 8058891C  38 7B 05 F4 */	addi r3, r27, 0x5f4
/* 80588920  38 9F 00 60 */	addi r4, r31, 0x60
/* 80588924  4B AF BF 91 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80588928  93 9B 06 38 */	stw r28, 0x638(r27)
/* 8058892C  3B 5A 00 01 */	addi r26, r26, 1
/* 80588930  2C 1A 00 04 */	cmpwi r26, 4
/* 80588934  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80588938  41 80 FF E0 */	blt lbl_80588918
lbl_8058893C:
/* 8058893C  7F C3 F3 78 */	mr r3, r30
/* 80588940  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80588944  38 9F 00 48 */	addi r4, r31, 0x48
/* 80588948  C0 44 00 04 */	lfs f2, 4(r4)
/* 8058894C  C0 64 00 08 */	lfs f3, 8(r4)
/* 80588950  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80588954  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80588958  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 8058895C  4B A9 1B ED */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80588960  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80588964  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80588968  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8058896C  80 9E 0A E4 */	lwz r4, 0xae4(r30)
/* 80588970  7F C5 F3 78 */	mr r5, r30
/* 80588974  4B AE C0 95 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80588978  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8058897C  41 82 00 0C */	beq lbl_80588988
/* 80588980  38 60 00 00 */	li r3, 0
/* 80588984  48 00 00 08 */	b lbl_8058898C
lbl_80588988:
/* 80588988  38 60 00 01 */	li r3, 1
lbl_8058898C:
/* 8058898C  39 61 00 20 */	addi r11, r1, 0x20
/* 80588990  4B DD 98 8D */	bl _restgpr_26
/* 80588994  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80588998  7C 08 03 A6 */	mtlr r0
/* 8058899C  38 21 00 20 */	addi r1, r1, 0x20
/* 805889A0  4E 80 00 20 */	blr 
