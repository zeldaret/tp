lbl_804D1A70:
/* 804D1A70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D1A74  7C 08 02 A6 */	mflr r0
/* 804D1A78  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D1A7C  39 61 00 20 */	addi r11, r1, 0x20
/* 804D1A80  4B E9 07 59 */	bl _savegpr_28
/* 804D1A84  7C 7E 1B 78 */	mr r30, r3
/* 804D1A88  3C 80 80 4D */	lis r4, lit_3768@ha /* 0x804D4D90@ha */
/* 804D1A8C  3B E4 4D 90 */	addi r31, r4, lit_3768@l /* 0x804D4D90@l */
/* 804D1A90  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804D1A94  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804D1A98  40 82 01 2C */	bne lbl_804D1BC4
/* 804D1A9C  7F C0 F3 79 */	or. r0, r30, r30
/* 804D1AA0  41 82 01 18 */	beq lbl_804D1BB8
/* 804D1AA4  7C 1D 03 78 */	mr r29, r0
/* 804D1AA8  4B B4 70 BD */	bl __ct__10fopAc_ac_cFv
/* 804D1AAC  3B 9D 05 6C */	addi r28, r29, 0x56c
/* 804D1AB0  3C 60 80 4D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x804D4FB4@ha */
/* 804D1AB4  38 03 4F B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x804D4FB4@l */
/* 804D1AB8  90 1D 05 6C */	stw r0, 0x56c(r29)
/* 804D1ABC  7F 83 E3 78 */	mr r3, r28
/* 804D1AC0  38 80 00 00 */	li r4, 0
/* 804D1AC4  4B E5 69 39 */	bl init__12J3DFrameCtrlFs
/* 804D1AC8  38 00 00 00 */	li r0, 0
/* 804D1ACC  90 1C 00 18 */	stw r0, 0x18(r28)
/* 804D1AD0  38 7D 05 8C */	addi r3, r29, 0x58c
/* 804D1AD4  3C 80 80 07 */	lis r4, __ct__12dBgS_AcchCirFv@ha /* 0x80075EAC@ha */
/* 804D1AD8  38 84 5E AC */	addi r4, r4, __ct__12dBgS_AcchCirFv@l /* 0x80075EAC@l */
/* 804D1ADC  3C A0 80 4D */	lis r5, __dt__12dBgS_AcchCirFv@ha /* 0x804D1EF8@ha */
/* 804D1AE0  38 A5 1E F8 */	addi r5, r5, __dt__12dBgS_AcchCirFv@l /* 0x804D1EF8@l */
/* 804D1AE4  38 C0 00 40 */	li r6, 0x40
/* 804D1AE8  38 E0 00 03 */	li r7, 3
/* 804D1AEC  4B E9 02 75 */	bl __construct_array
/* 804D1AF0  3B 9D 06 4C */	addi r28, r29, 0x64c
/* 804D1AF4  7F 83 E3 78 */	mr r3, r28
/* 804D1AF8  4B BA 45 A9 */	bl __ct__9dBgS_AcchFv
/* 804D1AFC  3C 60 80 4D */	lis r3, __vt__13dBgS_LinkAcch@ha /* 0x804D4F90@ha */
/* 804D1B00  38 63 4F 90 */	addi r3, r3, __vt__13dBgS_LinkAcch@l /* 0x804D4F90@l */
/* 804D1B04  90 7C 00 10 */	stw r3, 0x10(r28)
/* 804D1B08  38 03 00 0C */	addi r0, r3, 0xc
/* 804D1B0C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 804D1B10  38 03 00 18 */	addi r0, r3, 0x18
/* 804D1B14  90 1C 00 24 */	stw r0, 0x24(r28)
/* 804D1B18  38 7C 00 14 */	addi r3, r28, 0x14
/* 804D1B1C  4B BA 73 7D */	bl SetLink__16dBgS_PolyPassChkFv
/* 804D1B20  38 7D 08 24 */	addi r3, r29, 0x824
/* 804D1B24  4B BA 65 0D */	bl __ct__15dBgS_LinkLinChkFv
/* 804D1B28  38 7D 08 CC */	addi r3, r29, 0x8cc
/* 804D1B2C  4B DE CD 19 */	bl __ct__16Z2SoundObjSimpleFv
/* 804D1B30  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 804D1B34  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 804D1B38  90 1D 09 04 */	stw r0, 0x904(r29)
/* 804D1B3C  38 7D 09 08 */	addi r3, r29, 0x908
/* 804D1B40  4B BB 1C 21 */	bl __ct__10dCcD_GSttsFv
/* 804D1B44  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 804D1B48  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 804D1B4C  90 7D 09 04 */	stw r3, 0x904(r29)
/* 804D1B50  38 03 00 20 */	addi r0, r3, 0x20
/* 804D1B54  90 1D 09 08 */	stw r0, 0x908(r29)
/* 804D1B58  3B 9D 09 28 */	addi r28, r29, 0x928
/* 804D1B5C  7F 83 E3 78 */	mr r3, r28
/* 804D1B60  4B BB 1E C9 */	bl __ct__12dCcD_GObjInfFv
/* 804D1B64  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804D1B68  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804D1B6C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 804D1B70  3C 60 80 4D */	lis r3, __vt__8cM3dGAab@ha /* 0x804D4F84@ha */
/* 804D1B74  38 03 4F 84 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804D4F84@l */
/* 804D1B78  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 804D1B7C  3C 60 80 4D */	lis r3, __vt__8cM3dGCyl@ha /* 0x804D4F78@ha */
/* 804D1B80  38 03 4F 78 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x804D4F78@l */
/* 804D1B84  90 1C 01 38 */	stw r0, 0x138(r28)
/* 804D1B88  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 804D1B8C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 804D1B90  90 7C 01 20 */	stw r3, 0x120(r28)
/* 804D1B94  38 03 00 58 */	addi r0, r3, 0x58
/* 804D1B98  90 1C 01 38 */	stw r0, 0x138(r28)
/* 804D1B9C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 804D1BA0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 804D1BA4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 804D1BA8  38 03 00 2C */	addi r0, r3, 0x2c
/* 804D1BAC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 804D1BB0  38 03 00 84 */	addi r0, r3, 0x84
/* 804D1BB4  90 1C 01 38 */	stw r0, 0x138(r28)
lbl_804D1BB8:
/* 804D1BB8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 804D1BBC  60 00 00 08 */	ori r0, r0, 8
/* 804D1BC0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_804D1BC4:
/* 804D1BC4  7F C3 F3 78 */	mr r3, r30
/* 804D1BC8  3C 80 80 4D */	lis r4, daSpinner_createHeap__FP10fopAc_ac_c@ha /* 0x804D1A50@ha */
/* 804D1BCC  38 84 1A 50 */	addi r4, r4, daSpinner_createHeap__FP10fopAc_ac_c@l /* 0x804D1A50@l */
/* 804D1BD0  38 A0 09 00 */	li r5, 0x900
/* 804D1BD4  4B B4 88 DD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804D1BD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D1BDC  40 82 00 0C */	bne lbl_804D1BE8
/* 804D1BE0  38 60 00 05 */	li r3, 5
/* 804D1BE4  48 00 01 64 */	b lbl_804D1D48
lbl_804D1BE8:
/* 804D1BE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D1BEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D1BF0  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 804D1BF4  38 7E 06 4C */	addi r3, r30, 0x64c
/* 804D1BF8  7F C4 F3 78 */	mr r4, r30
/* 804D1BFC  38 A0 00 03 */	li r5, 3
/* 804D1C00  38 DE 05 8C */	addi r6, r30, 0x58c
/* 804D1C04  4B BA 46 85 */	bl Set__9dBgS_AcchFP10fopAc_ac_ciP12dBgS_AcchCir
/* 804D1C08  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D1C0C  D0 1E 07 1C */	stfs f0, 0x71c(r30)
/* 804D1C10  80 1E 06 78 */	lwz r0, 0x678(r30)
/* 804D1C14  60 00 20 00 */	ori r0, r0, 0x2000
/* 804D1C18  90 1E 06 78 */	stw r0, 0x678(r30)
/* 804D1C1C  38 00 00 02 */	li r0, 2
/* 804D1C20  98 1E 08 20 */	stb r0, 0x820(r30)
/* 804D1C24  38 7E 05 8C */	addi r3, r30, 0x58c
/* 804D1C28  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 804D1C2C  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 804D1C30  4B BA 43 29 */	bl SetWall__12dBgS_AcchCirFff
/* 804D1C34  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 804D1C38  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 804D1C3C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 804D1C40  4B BA 43 19 */	bl SetWall__12dBgS_AcchCirFff
/* 804D1C44  38 7E 06 0C */	addi r3, r30, 0x60c
/* 804D1C48  C0 3D 05 98 */	lfs f1, 0x598(r29)
/* 804D1C4C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 804D1C50  4B BA 43 09 */	bl SetWall__12dBgS_AcchCirFff
/* 804D1C54  38 7E 08 94 */	addi r3, r30, 0x894
/* 804D1C58  38 9E 06 4C */	addi r4, r30, 0x64c
/* 804D1C5C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 804D1C60  FC 40 08 90 */	fmr f2, f1
/* 804D1C64  4B B7 F0 39 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 804D1C68  38 7E 08 CC */	addi r3, r30, 0x8cc
/* 804D1C6C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804D1C70  38 A0 00 01 */	li r5, 1
/* 804D1C74  81 9E 08 DC */	lwz r12, 0x8dc(r30)
/* 804D1C78  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804D1C7C  7D 89 03 A6 */	mtctr r12
/* 804D1C80  4E 80 04 21 */	bctrl 
/* 804D1C84  38 7E 08 EC */	addi r3, r30, 0x8ec
/* 804D1C88  38 80 00 C8 */	li r4, 0xc8
/* 804D1C8C  38 A0 00 00 */	li r5, 0
/* 804D1C90  7F C6 F3 78 */	mr r6, r30
/* 804D1C94  4B BB 1B CD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804D1C98  38 7E 09 28 */	addi r3, r30, 0x928
/* 804D1C9C  3C 80 80 4D */	lis r4, l_cylSrc@ha /* 0x804D4EA8@ha */
/* 804D1CA0  38 84 4E A8 */	addi r4, r4, l_cylSrc@l /* 0x804D4EA8@l */
/* 804D1CA4  4B BB 2C 11 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 804D1CA8  38 1E 08 EC */	addi r0, r30, 0x8ec
/* 804D1CAC  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 804D1CB0  38 7E 09 28 */	addi r3, r30, 0x928
/* 804D1CB4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804D1CB8  4B BB 2C 51 */	bl StartCAt__8dCcD_CylFR4cXyz
/* 804D1CBC  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 804D1CC0  90 1E 05 24 */	stw r0, 0x524(r30)
/* 804D1CC4  7F A3 EB 78 */	mr r3, r29
/* 804D1CC8  4B C3 BC 75 */	bl getSpinnerGravity__9daAlink_cCFv
/* 804D1CCC  D0 3E 05 30 */	stfs f1, 0x530(r30)
/* 804D1CD0  7F A3 EB 78 */	mr r3, r29
/* 804D1CD4  4B C3 BC 79 */	bl getSpinnerMaxFallSpeed__9daAlink_cCFv
/* 804D1CD8  D0 3E 05 34 */	stfs f1, 0x534(r30)
/* 804D1CDC  38 00 00 01 */	li r0, 1
/* 804D1CE0  98 1E 0A 76 */	stb r0, 0xa76(r30)
/* 804D1CE4  38 7E 06 4C */	addi r3, r30, 0x64c
/* 804D1CE8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D1CEC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D1CF0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 804D1CF4  4B BA 4D B9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804D1CF8  7F C3 F3 78 */	mr r3, r30
/* 804D1CFC  4B B4 7B C9 */	bl fopAcM_setStageLayer__FPv
/* 804D1D00  A8 1E 05 74 */	lha r0, 0x574(r30)
/* 804D1D04  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 804D1D08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804D1D0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D1D10  3C 00 43 30 */	lis r0, 0x4330
/* 804D1D14  90 01 00 08 */	stw r0, 8(r1)
/* 804D1D18  C8 01 00 08 */	lfd f0, 8(r1)
/* 804D1D1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804D1D20  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 804D1D24  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804D1D28  D0 1E 05 78 */	stfs f0, 0x578(r30)
/* 804D1D2C  7F C3 F3 78 */	mr r3, r30
/* 804D1D30  48 00 05 49 */	bl setMatrix__11daSpinner_cFv
/* 804D1D34  7F C3 F3 78 */	mr r3, r30
/* 804D1D38  48 00 04 A9 */	bl setRoomInfo__11daSpinner_cFv
/* 804D1D3C  38 00 08 2F */	li r0, 0x82f
/* 804D1D40  B0 1E 0A 82 */	sth r0, 0xa82(r30)
/* 804D1D44  38 60 00 04 */	li r3, 4
lbl_804D1D48:
/* 804D1D48  39 61 00 20 */	addi r11, r1, 0x20
/* 804D1D4C  4B E9 04 D9 */	bl _restgpr_28
/* 804D1D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D1D54  7C 08 03 A6 */	mtlr r0
/* 804D1D58  38 21 00 20 */	addi r1, r1, 0x20
/* 804D1D5C  4E 80 00 20 */	blr 
