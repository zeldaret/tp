lbl_802594AC:
/* 802594AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802594B0  7C 08 02 A6 */	mflr r0
/* 802594B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 802594B8  39 61 00 40 */	addi r11, r1, 0x40
/* 802594BC  48 10 8D 1D */	bl _savegpr_28
/* 802594C0  7C 7C 1B 78 */	mr r28, r3
/* 802594C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802594C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802594CC  3B A3 23 3C */	addi r29, r3, 0x233c
/* 802594D0  7F A3 EB 78 */	mr r3, r29
/* 802594D4  4B E2 DD DD */	bl Move__4dCcSFv
/* 802594D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802594DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802594E0  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 802594E4  7F C3 F3 78 */	mr r3, r30
/* 802594E8  4B E1 B4 55 */	bl ClrMoveFlag__4dBgSFv
/* 802594EC  4B DC 50 6D */	bl fopOvlpM_IsPeek__Fv
/* 802594F0  2C 03 00 00 */	cmpwi r3, 0
/* 802594F4  40 82 01 B8 */	bne lbl_802596AC
/* 802594F8  7F 83 E3 78 */	mr r3, r28
/* 802594FC  4B DD 38 49 */	bl dComIfG_resetToOpening__FP11scene_class
/* 80259500  2C 03 00 00 */	cmpwi r3, 0
/* 80259504  40 82 01 A8 */	bne lbl_802596AC
/* 80259508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025950C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80259510  88 03 4E 1C */	lbz r0, 0x4e1c(r3)
/* 80259514  7C 00 07 75 */	extsb. r0, r0
/* 80259518  41 82 01 94 */	beq lbl_802596AC
/* 8025951C  88 03 4E 1D */	lbz r0, 0x4e1d(r3)
/* 80259520  7C 00 07 74 */	extsb r0, r0
/* 80259524  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 80259528  7F 83 E3 78 */	mr r3, r28
/* 8025952C  38 80 00 0B */	li r4, 0xb
/* 80259530  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80259534  3C A0 80 3C */	lis r5, l_wipeType@ha /* 0x803C3158@ha */
/* 80259538  38 A5 31 58 */	addi r5, r5, l_wipeType@l /* 0x803C3158@l */
/* 8025953C  7C A5 02 AE */	lhax r5, r5, r0
/* 80259540  38 C0 00 05 */	li r6, 5
/* 80259544  4B DC 57 9D */	bl fopScnM_ChangeReq__FP11scene_classssUs
/* 80259548  4B F4 64 C9 */	bl dKy_getdaytime_hour__Fv
/* 8025954C  38 00 00 00 */	li r0, 0
/* 80259550  2C 03 00 06 */	cmpwi r3, 6
/* 80259554  41 80 00 10 */	blt lbl_80259564
/* 80259558  2C 03 00 12 */	cmpwi r3, 0x12
/* 8025955C  40 80 00 08 */	bge lbl_80259564
/* 80259560  38 00 00 01 */	li r0, 1
lbl_80259564:
/* 80259564  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80259568  7C 00 00 34 */	cntlzw r0, r0
/* 8025956C  54 03 D9 7E */	srwi r3, r0, 5
/* 80259570  38 1F FF FF */	addi r0, r31, -1
/* 80259574  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80259578  28 00 00 01 */	cmplwi r0, 1
/* 8025957C  40 81 00 5C */	ble lbl_802595D8
/* 80259580  28 1F 00 07 */	cmplwi r31, 7
/* 80259584  41 82 00 54 */	beq lbl_802595D8
/* 80259588  28 1F 00 11 */	cmplwi r31, 0x11
/* 8025958C  41 82 00 4C */	beq lbl_802595D8
/* 80259590  28 1F 00 15 */	cmplwi r31, 0x15
/* 80259594  41 82 00 44 */	beq lbl_802595D8
/* 80259598  28 1F 00 08 */	cmplwi r31, 8
/* 8025959C  41 82 00 14 */	beq lbl_802595B0
/* 802595A0  28 1F 00 0A */	cmplwi r31, 0xa
/* 802595A4  41 82 00 0C */	beq lbl_802595B0
/* 802595A8  28 1F 00 12 */	cmplwi r31, 0x12
/* 802595AC  40 82 00 0C */	bne lbl_802595B8
lbl_802595B0:
/* 802595B0  2C 03 00 00 */	cmpwi r3, 0
/* 802595B4  40 82 00 24 */	bne lbl_802595D8
lbl_802595B8:
/* 802595B8  28 1F 00 09 */	cmplwi r31, 9
/* 802595BC  41 82 00 14 */	beq lbl_802595D0
/* 802595C0  28 1F 00 0B */	cmplwi r31, 0xb
/* 802595C4  41 82 00 0C */	beq lbl_802595D0
/* 802595C8  28 1F 00 13 */	cmplwi r31, 0x13
/* 802595CC  40 82 00 40 */	bne lbl_8025960C
lbl_802595D0:
/* 802595D0  2C 03 00 00 */	cmpwi r3, 0
/* 802595D4  40 82 00 38 */	bne lbl_8025960C
lbl_802595D8:
/* 802595D8  80 0D 80 8C */	lwz r0, g_saftyWhiteColor(r13)
/* 802595DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802595E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802595E4  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 802595E8  88 01 00 10 */	lbz r0, 0x10(r1)
/* 802595EC  98 03 00 0C */	stb r0, 0xc(r3)
/* 802595F0  88 01 00 11 */	lbz r0, 0x11(r1)
/* 802595F4  98 03 00 0D */	stb r0, 0xd(r3)
/* 802595F8  88 01 00 12 */	lbz r0, 0x12(r1)
/* 802595FC  98 03 00 0E */	stb r0, 0xe(r3)
/* 80259600  88 01 00 13 */	lbz r0, 0x13(r1)
/* 80259604  98 03 00 0F */	stb r0, 0xf(r3)
/* 80259608  48 00 00 A4 */	b lbl_802596AC
lbl_8025960C:
/* 8025960C  28 1F 00 0E */	cmplwi r31, 0xe
/* 80259610  41 82 00 0C */	beq lbl_8025961C
/* 80259614  28 1F 00 14 */	cmplwi r31, 0x14
/* 80259618  40 82 00 64 */	bne lbl_8025967C
lbl_8025961C:
/* 8025961C  80 02 B5 2C */	lwz r0, lit_4100(r2)
/* 80259620  90 01 00 20 */	stw r0, 0x20(r1)
/* 80259624  4B F5 2F 59 */	bl dKy_darkworld_check__Fv
/* 80259628  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025962C  41 82 00 1C */	beq lbl_80259648
/* 80259630  38 00 00 FF */	li r0, 0xff
/* 80259634  98 01 00 20 */	stb r0, 0x20(r1)
/* 80259638  38 00 00 CF */	li r0, 0xcf
/* 8025963C  98 01 00 21 */	stb r0, 0x21(r1)
/* 80259640  38 00 00 B4 */	li r0, 0xb4
/* 80259644  98 01 00 22 */	stb r0, 0x22(r1)
lbl_80259648:
/* 80259648  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8025964C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80259650  90 01 00 0C */	stw r0, 0xc(r1)
/* 80259654  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 80259658  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8025965C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80259660  88 01 00 0D */	lbz r0, 0xd(r1)
/* 80259664  98 03 00 0D */	stb r0, 0xd(r3)
/* 80259668  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8025966C  98 03 00 0E */	stb r0, 0xe(r3)
/* 80259670  88 01 00 0F */	lbz r0, 0xf(r1)
/* 80259674  98 03 00 0F */	stb r0, 0xf(r3)
/* 80259678  48 00 00 34 */	b lbl_802596AC
lbl_8025967C:
/* 8025967C  80 0D 80 84 */	lwz r0, g_blackColor(r13)
/* 80259680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80259684  90 01 00 08 */	stw r0, 8(r1)
/* 80259688  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 8025968C  88 01 00 08 */	lbz r0, 8(r1)
/* 80259690  98 03 00 0C */	stb r0, 0xc(r3)
/* 80259694  88 01 00 09 */	lbz r0, 9(r1)
/* 80259698  98 03 00 0D */	stb r0, 0xd(r3)
/* 8025969C  88 01 00 0A */	lbz r0, 0xa(r1)
/* 802596A0  98 03 00 0E */	stb r0, 0xe(r3)
/* 802596A4  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802596A8  98 03 00 0F */	stb r0, 0xf(r3)
lbl_802596AC:
/* 802596AC  4B E4 32 15 */	bl reset__10dMdl_mng_cFv
/* 802596B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802596B4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802596B8  88 1F 5E B5 */	lbz r0, 0x5eb5(r31)
/* 802596BC  28 00 00 00 */	cmplwi r0, 0
/* 802596C0  40 82 00 60 */	bne lbl_80259720
/* 802596C4  88 0D 8B A4 */	lbz r0, struct_80451124+0x0(r13)
/* 802596C8  7C 00 07 75 */	extsb. r0, r0
/* 802596CC  40 82 00 54 */	bne lbl_80259720
/* 802596D0  A8 1C 00 08 */	lha r0, 8(r28)
/* 802596D4  2C 00 00 0B */	cmpwi r0, 0xb
/* 802596D8  40 82 00 0C */	bne lbl_802596E4
/* 802596DC  38 7E 4C 9C */	addi r3, r30, 0x4c9c
/* 802596E0  4B E1 5B 89 */	bl Run__12dVibration_cFv
lbl_802596E4:
/* 802596E4  4B DD 7E C1 */	bl execute__7daSus_cFv
/* 802596E8  7F C3 F3 78 */	mr r3, r30
/* 802596EC  4B E1 B2 BD */	bl Move__4dBgSFv
/* 802596F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802596F4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802596F8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 802596FC  4B DF 29 7D */	bl calc3D__13dPa_control_cFv
/* 80259700  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80259704  4B DF 29 E9 */	bl calc2D__13dPa_control_cFv
/* 80259708  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 8025970C  38 83 0C D8 */	addi r4, r3, g_Counter@l /* 0x80430CD8@l */
/* 80259710  80 64 00 08 */	lwz r3, 8(r4)
/* 80259714  38 03 00 01 */	addi r0, r3, 1
/* 80259718  90 04 00 08 */	stw r0, 8(r4)
/* 8025971C  48 00 00 38 */	b lbl_80259754
lbl_80259720:
/* 80259720  88 0D 89 44 */	lbz r0, data_80450EC4(r13)
/* 80259724  60 03 00 01 */	ori r3, r0, 1
/* 80259728  98 6D 89 44 */	stb r3, data_80450EC4(r13)
/* 8025972C  88 8D 8B A4 */	lbz r4, struct_80451124+0x0(r13)
/* 80259730  7C 80 07 75 */	extsb. r0, r4
/* 80259734  40 82 00 10 */	bne lbl_80259744
/* 80259738  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8025973C  60 00 00 02 */	ori r0, r0, 2
/* 80259740  98 0D 89 44 */	stb r0, data_80450EC4(r13)
lbl_80259744:
/* 80259744  7C 80 07 75 */	extsb. r0, r4
/* 80259748  40 82 00 0C */	bne lbl_80259754
/* 8025974C  38 7E 4C 9C */	addi r3, r30, 0x4c9c
/* 80259750  4B E1 67 E9 */	bl Pause__12dVibration_cFv
lbl_80259754:
/* 80259754  4B DC 6C F1 */	bl fopDwIt_Begin__Fv
/* 80259758  7C 7C 1B 78 */	mr r28, r3
/* 8025975C  48 00 00 18 */	b lbl_80259774
lbl_80259760:
/* 80259760  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80259764  4B DC 89 3D */	bl fpcM_Draw__FPv
/* 80259768  7F 83 E3 78 */	mr r3, r28
/* 8025976C  4B DC 6D 15 */	bl fopDwIt_Next__FP16create_tag_class
/* 80259770  7C 7C 1B 78 */	mr r28, r3
lbl_80259774:
/* 80259774  28 1C 00 00 */	cmplwi r28, 0
/* 80259778  40 82 FF E8 */	bne lbl_80259760
/* 8025977C  88 1F 5E B5 */	lbz r0, 0x5eb5(r31)
/* 80259780  28 00 00 00 */	cmplwi r0, 0
/* 80259784  40 82 00 18 */	bne lbl_8025979C
/* 80259788  4B E4 32 C1 */	bl update__12dEyeHL_mng_cFv
/* 8025978C  7F A3 EB 78 */	mr r3, r29
/* 80259790  4B E2 DB 41 */	bl Draw__4dCcSFv
/* 80259794  38 7E 47 80 */	addi r3, r30, 0x4780
/* 80259798  4B E1 94 3D */	bl Draw__12dAttention_cFv
lbl_8025979C:
/* 8025979C  38 60 00 01 */	li r3, 1
/* 802597A0  39 61 00 40 */	addi r11, r1, 0x40
/* 802597A4  48 10 8A 81 */	bl _restgpr_28
/* 802597A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802597AC  7C 08 03 A6 */	mtlr r0
/* 802597B0  38 21 00 40 */	addi r1, r1, 0x40
/* 802597B4  4E 80 00 20 */	blr 
