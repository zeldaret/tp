lbl_804643B0:
/* 804643B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804643B4  7C 08 02 A6 */	mflr r0
/* 804643B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804643BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804643C0  93 C1 00 08 */	stw r30, 8(r1)
/* 804643C4  7C 7E 1B 78 */	mr r30, r3
/* 804643C8  38 80 00 00 */	li r4, 0
/* 804643CC  48 00 09 21 */	bl drawCheck__10daDoor20_cFi
/* 804643D0  2C 03 00 00 */	cmpwi r3, 0
/* 804643D4  40 82 00 3C */	bne lbl_80464410
/* 804643D8  88 1E 05 C9 */	lbz r0, 0x5c9(r30)
/* 804643DC  28 00 00 00 */	cmplwi r0, 0
/* 804643E0  40 82 00 20 */	bne lbl_80464400
/* 804643E4  38 00 00 01 */	li r0, 1
/* 804643E8  98 1E 05 C9 */	stb r0, 0x5c9(r30)
/* 804643EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804643F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804643F4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804643F8  80 9E 05 C4 */	lwz r4, 0x5c4(r30)
/* 804643FC  4B C0 FE 54 */	b Release__4cBgSFP9dBgW_Base
lbl_80464400:
/* 80464400  7F C3 F3 78 */	mr r3, r30
/* 80464404  48 00 06 E1 */	bl deleteKey__10daDoor20_cFv
/* 80464408  38 60 00 01 */	li r3, 1
/* 8046440C  48 00 02 14 */	b lbl_80464620
lbl_80464410:
/* 80464410  88 1E 05 C9 */	lbz r0, 0x5c9(r30)
/* 80464414  28 00 00 00 */	cmplwi r0, 0
/* 80464418  41 82 00 4C */	beq lbl_80464464
/* 8046441C  38 00 00 00 */	li r0, 0
/* 80464420  98 1E 05 C9 */	stb r0, 0x5c9(r30)
/* 80464424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80464428  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8046442C  3B E4 0F 38 */	addi r31, r4, 0xf38
/* 80464430  38 7F 3F 90 */	addi r3, r31, 0x3f90
/* 80464434  80 84 4F 9C */	lwz r4, 0x4f9c(r4)
/* 80464438  4B BD EE B4 */	b convPId__14dEvt_control_cFUi
/* 8046443C  7C 03 F0 40 */	cmplw r3, r30
/* 80464440  41 82 00 14 */	beq lbl_80464454
/* 80464444  7F E3 FB 78 */	mr r3, r31
/* 80464448  80 9E 05 C4 */	lwz r4, 0x5c4(r30)
/* 8046444C  7F C5 F3 78 */	mr r5, r30
/* 80464450  4B C1 05 B8 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80464454:
/* 80464454  7F C3 F3 78 */	mr r3, r30
/* 80464458  48 00 04 01 */	bl createKey__10daDoor20_cFv
/* 8046445C  7F C3 F3 78 */	mr r3, r30
/* 80464460  48 00 01 D9 */	bl setDoorAngleSpec__10daDoor20_cFv
lbl_80464464:
/* 80464464  7F C3 F3 78 */	mr r3, r30
/* 80464468  4B BB 68 84 */	b fopAcM_cullingCheck__FPC10fopAc_ac_c
/* 8046446C  2C 03 00 00 */	cmpwi r3, 0
/* 80464470  41 82 00 0C */	beq lbl_8046447C
/* 80464474  38 60 00 01 */	li r3, 1
/* 80464478  48 00 01 A8 */	b lbl_80464620
lbl_8046447C:
/* 8046447C  7F C3 F3 78 */	mr r3, r30
/* 80464480  4B FF E6 D9 */	bl calcMtx__10daDoor20_cFv
/* 80464484  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80464488  28 00 00 03 */	cmplwi r0, 3
/* 8046448C  41 82 00 34 */	beq lbl_804644C0
/* 80464490  88 1E 05 C8 */	lbz r0, 0x5c8(r30)
/* 80464494  7C 04 07 74 */	extsb r4, r0
/* 80464498  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 8046449C  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 804644A0  7C 00 07 74 */	extsb r0, r0
/* 804644A4  7C 04 00 00 */	cmpw r4, r0
/* 804644A8  41 82 00 18 */	beq lbl_804644C0
/* 804644AC  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 804644B0  4B C1 75 10 */	b Move__4dBgWFv
/* 804644B4  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 804644B8  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 804644BC  98 1E 05 C8 */	stb r0, 0x5c8(r30)
lbl_804644C0:
/* 804644C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804644C4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804644C8  38 80 00 14 */	li r4, 0x14
/* 804644CC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804644D0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 804644D4  4B D3 F2 F0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804644D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804644DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804644E0  80 9E 05 7C */	lwz r4, 0x57c(r30)
/* 804644E4  80 84 00 04 */	lwz r4, 4(r4)
/* 804644E8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 804644EC  4B D4 08 B4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804644F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804644F4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 804644F8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 804644FC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80464500  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80464504  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80464508  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8046450C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80464510  7F C3 F3 78 */	mr r3, r30
/* 80464514  4B BD 5C 74 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 80464518  2C 03 00 09 */	cmpwi r3, 9
/* 8046451C  40 82 00 70 */	bne lbl_8046458C
/* 80464520  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80464524  80 83 00 04 */	lwz r4, 4(r3)
/* 80464528  38 7E 05 84 */	addi r3, r30, 0x584
/* 8046452C  C0 3E 05 94 */	lfs f1, 0x594(r30)
/* 80464530  4B BA 94 9C */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80464534  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80464538  4B BA 97 8C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8046453C  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80464540  80 63 00 04 */	lwz r3, 4(r3)
/* 80464544  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80464548  80 63 00 00 */	lwz r3, 0(r3)
/* 8046454C  38 00 00 00 */	li r0, 0
/* 80464550  90 03 00 54 */	stw r0, 0x54(r3)
/* 80464554  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80464558  80 83 00 04 */	lwz r4, 4(r3)
/* 8046455C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80464560  C0 3E 05 B0 */	lfs f1, 0x5b0(r30)
/* 80464564  4B BA 94 68 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80464568  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 8046456C  4B BA 97 58 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80464570  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80464574  80 63 00 04 */	lwz r3, 4(r3)
/* 80464578  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8046457C  80 63 00 00 */	lwz r3, 0(r3)
/* 80464580  38 00 00 00 */	li r0, 0
/* 80464584  90 03 00 54 */	stw r0, 0x54(r3)
/* 80464588  48 00 00 64 */	b lbl_804645EC
lbl_8046458C:
/* 8046458C  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80464590  28 03 00 00 */	cmplwi r3, 0
/* 80464594  41 82 00 18 */	beq lbl_804645AC
/* 80464598  80 9E 05 7C */	lwz r4, 0x57c(r30)
/* 8046459C  80 84 00 04 */	lwz r4, 4(r4)
/* 804645A0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804645A4  38 84 00 58 */	addi r4, r4, 0x58
/* 804645A8  4B BA 91 30 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_804645AC:
/* 804645AC  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 804645B0  80 83 00 04 */	lwz r4, 4(r3)
/* 804645B4  38 7E 05 84 */	addi r3, r30, 0x584
/* 804645B8  C0 3E 05 94 */	lfs f1, 0x594(r30)
/* 804645BC  4B BA 94 10 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 804645C0  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 804645C4  4B BA 97 00 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 804645C8  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 804645CC  80 63 00 04 */	lwz r3, 4(r3)
/* 804645D0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 804645D4  80 63 00 00 */	lwz r3, 0(r3)
/* 804645D8  38 00 00 00 */	li r0, 0
/* 804645DC  90 03 00 54 */	stw r0, 0x54(r3)
/* 804645E0  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 804645E4  80 63 00 04 */	lwz r3, 4(r3)
/* 804645E8  4B BA 98 08 */	b mDoExt_btkAnmRemove__FP12J3DModelData
lbl_804645EC:
/* 804645EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804645F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804645F4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 804645F8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 804645FC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80464600  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80464604  88 1E 06 D8 */	lbz r0, 0x6d8(r30)
/* 80464608  28 00 00 00 */	cmplwi r0, 0
/* 8046460C  41 82 00 10 */	beq lbl_8046461C
/* 80464610  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 80464614  7F C4 F3 78 */	mr r4, r30
/* 80464618  48 00 1F 21 */	bl draw__12dDoor_stop_cFP10daDoor20_c
lbl_8046461C:
/* 8046461C  38 60 00 01 */	li r3, 1
lbl_80464620:
/* 80464620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80464624  83 C1 00 08 */	lwz r30, 8(r1)
/* 80464628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046462C  7C 08 03 A6 */	mtlr r0
/* 80464630  38 21 00 10 */	addi r1, r1, 0x10
/* 80464634  4E 80 00 20 */	blr 
