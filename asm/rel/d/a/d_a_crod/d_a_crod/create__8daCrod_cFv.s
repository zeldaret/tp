lbl_804A2F18:
/* 804A2F18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A2F1C  7C 08 02 A6 */	mflr r0
/* 804A2F20  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A2F24  39 61 00 20 */	addi r11, r1, 0x20
/* 804A2F28  4B EB F2 B5 */	bl _savegpr_29
/* 804A2F2C  7C 7F 1B 78 */	mr r31, r3
/* 804A2F30  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804A2F34  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804A2F38  40 82 00 D8 */	bne lbl_804A3010
/* 804A2F3C  7F E0 FB 79 */	or. r0, r31, r31
/* 804A2F40  41 82 00 C4 */	beq lbl_804A3004
/* 804A2F44  7C 1E 03 78 */	mr r30, r0
/* 804A2F48  4B B7 5C 1D */	bl __ct__10fopAc_ac_cFv
/* 804A2F4C  3B BE 05 6C */	addi r29, r30, 0x56c
/* 804A2F50  3C 60 80 4A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x804A4208@ha */
/* 804A2F54  38 03 42 08 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x804A4208@l */
/* 804A2F58  90 1E 05 6C */	stw r0, 0x56c(r30)
/* 804A2F5C  7F A3 EB 78 */	mr r3, r29
/* 804A2F60  38 80 00 00 */	li r4, 0
/* 804A2F64  4B E8 54 99 */	bl init__12J3DFrameCtrlFs
/* 804A2F68  38 00 00 00 */	li r0, 0
/* 804A2F6C  90 1D 00 18 */	stw r0, 0x18(r29)
/* 804A2F70  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 804A2F74  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 804A2F78  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 804A2F7C  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 804A2F80  4B BE 07 E1 */	bl __ct__10dCcD_GSttsFv
/* 804A2F84  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 804A2F88  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 804A2F8C  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 804A2F90  38 03 00 20 */	addi r0, r3, 0x20
/* 804A2F94  90 1E 05 AC */	stw r0, 0x5ac(r30)
/* 804A2F98  3B BE 05 CC */	addi r29, r30, 0x5cc
/* 804A2F9C  7F A3 EB 78 */	mr r3, r29
/* 804A2FA0  4B BE 0A 89 */	bl __ct__12dCcD_GObjInfFv
/* 804A2FA4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804A2FA8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804A2FAC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 804A2FB0  3C 60 80 4A */	lis r3, __vt__8cM3dGAab@ha /* 0x804A41FC@ha */
/* 804A2FB4  38 03 41 FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804A41FC@l */
/* 804A2FB8  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 804A2FBC  38 7D 01 24 */	addi r3, r29, 0x124
/* 804A2FC0  4B DC BF C9 */	bl __ct__8cM3dGCpsFv
/* 804A2FC4  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 804A2FC8  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 804A2FCC  90 7D 01 20 */	stw r3, 0x120(r29)
/* 804A2FD0  38 03 00 58 */	addi r0, r3, 0x58
/* 804A2FD4  90 1D 01 3C */	stw r0, 0x13c(r29)
/* 804A2FD8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 804A2FDC  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 804A2FE0  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 804A2FE4  38 03 00 2C */	addi r0, r3, 0x2c
/* 804A2FE8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 804A2FEC  38 03 00 84 */	addi r0, r3, 0x84
/* 804A2FF0  90 1D 01 3C */	stw r0, 0x13c(r29)
/* 804A2FF4  38 7E 07 40 */	addi r3, r30, 0x740
/* 804A2FF8  4B CB BD 05 */	bl clearData__16daPy_actorKeep_cFv
/* 804A2FFC  38 7E 07 48 */	addi r3, r30, 0x748
/* 804A3000  4B CB BC FD */	bl clearData__16daPy_actorKeep_cFv
lbl_804A3004:
/* 804A3004  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804A3008  60 00 00 08 */	ori r0, r0, 8
/* 804A300C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804A3010:
/* 804A3010  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804A3014  28 00 00 06 */	cmplwi r0, 6
/* 804A3018  40 82 00 28 */	bne lbl_804A3040
/* 804A301C  7F E3 FB 78 */	mr r3, r31
/* 804A3020  4B B7 68 A5 */	bl fopAcM_setStageLayer__FPv
/* 804A3024  38 7F 05 90 */	addi r3, r31, 0x590
/* 804A3028  38 80 00 C8 */	li r4, 0xc8
/* 804A302C  38 A0 00 00 */	li r5, 0
/* 804A3030  7F E6 FB 78 */	mr r6, r31
/* 804A3034  4B BE 08 2D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804A3038  38 60 00 04 */	li r3, 4
/* 804A303C  48 00 01 A4 */	b lbl_804A31E0
lbl_804A3040:
/* 804A3040  7F E3 FB 78 */	mr r3, r31
/* 804A3044  3C 80 80 4A */	lis r4, daCrod_createHeap__FP10fopAc_ac_c@ha /* 0x804A2EF8@ha */
/* 804A3048  38 84 2E F8 */	addi r4, r4, daCrod_createHeap__FP10fopAc_ac_c@l /* 0x804A2EF8@l */
/* 804A304C  38 A0 10 C0 */	li r5, 0x10c0
/* 804A3050  4B B7 74 61 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804A3054  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804A3058  40 82 00 0C */	bne lbl_804A3064
/* 804A305C  38 60 00 05 */	li r3, 5
/* 804A3060  48 00 01 80 */	b lbl_804A31E0
lbl_804A3064:
/* 804A3064  38 7F 05 90 */	addi r3, r31, 0x590
/* 804A3068  38 80 00 0A */	li r4, 0xa
/* 804A306C  38 A0 00 00 */	li r5, 0
/* 804A3070  7F E6 FB 78 */	mr r6, r31
/* 804A3074  4B BE 07 ED */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804A3078  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 804A307C  3C 80 80 4A */	lis r4, l_atCpsSrc@ha /* 0x804A413C@ha */
/* 804A3080  38 84 41 3C */	addi r4, r4, l_atCpsSrc@l /* 0x804A413C@l */
/* 804A3084  4B BE 17 4D */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 804A3088  38 1F 05 90 */	addi r0, r31, 0x590
/* 804A308C  90 1F 06 10 */	stw r0, 0x610(r31)
/* 804A3090  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 804A3094  90 1F 05 24 */	stw r0, 0x524(r31)
/* 804A3098  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 804A309C  83 C3 00 04 */	lwz r30, 4(r3)
/* 804A30A0  4B BF A7 E5 */	bl getAlinkArcName__9daAlink_cFv
/* 804A30A4  38 80 00 40 */	li r4, 0x40
/* 804A30A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A30AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A30B0  3F A5 00 02 */	addis r29, r5, 2
/* 804A30B4  3B BD C2 F8 */	addi r29, r29, -15624
/* 804A30B8  7F A5 EB 78 */	mr r5, r29
/* 804A30BC  38 C0 00 80 */	li r6, 0x80
/* 804A30C0  4B B9 92 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804A30C4  90 7F 05 88 */	stw r3, 0x588(r31)
/* 804A30C8  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 804A30CC  7F C4 F3 78 */	mr r4, r30
/* 804A30D0  4B E8 87 AD */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 804A30D4  38 7E 00 58 */	addi r3, r30, 0x58
/* 804A30D8  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 804A30DC  4B E8 CD 95 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 804A30E0  4B BF A7 A5 */	bl getAlinkArcName__9daAlink_cFv
/* 804A30E4  38 80 00 46 */	li r4, 0x46
/* 804A30E8  7F A5 EB 78 */	mr r5, r29
/* 804A30EC  38 C0 00 80 */	li r6, 0x80
/* 804A30F0  4B B9 91 FD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804A30F4  90 7F 05 8C */	stw r3, 0x58c(r31)
/* 804A30F8  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 804A30FC  7F C4 F3 78 */	mr r4, r30
/* 804A3100  4B E8 80 D5 */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 804A3104  38 7E 00 58 */	addi r3, r30, 0x58
/* 804A3108  80 9F 05 8C */	lwz r4, 0x58c(r31)
/* 804A310C  4B E8 CB B9 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 804A3110  7F E3 FB 78 */	mr r3, r31
/* 804A3114  4B B7 67 B1 */	bl fopAcM_setStageLayer__FPv
/* 804A3118  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A311C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A3120  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804A3124  80 83 07 08 */	lwz r4, 0x708(r3)
/* 804A3128  28 04 00 00 */	cmplwi r4, 0
/* 804A312C  41 82 00 10 */	beq lbl_804A313C
/* 804A3130  80 64 00 84 */	lwz r3, 0x84(r4)
/* 804A3134  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A3138  48 00 00 08 */	b lbl_804A3140
lbl_804A313C:
/* 804A313C  38 00 00 00 */	li r0, 0
lbl_804A3140:
/* 804A3140  28 00 00 00 */	cmplwi r0, 0
/* 804A3144  41 82 00 2C */	beq lbl_804A3170
/* 804A3148  28 04 00 00 */	cmplwi r4, 0
/* 804A314C  41 82 00 10 */	beq lbl_804A315C
/* 804A3150  80 64 00 84 */	lwz r3, 0x84(r4)
/* 804A3154  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804A3158  48 00 00 08 */	b lbl_804A3160
lbl_804A315C:
/* 804A315C  38 60 00 00 */	li r3, 0
lbl_804A3160:
/* 804A3160  3C 80 80 4A */	lis r4, l_localRodPos@ha /* 0x804A40F8@ha */
/* 804A3164  38 84 40 F8 */	addi r4, r4, l_localRodPos@l /* 0x804A40F8@l */
/* 804A3168  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804A316C  4B EA 3C 01 */	bl PSMTXMultVec
lbl_804A3170:
/* 804A3170  38 7F 05 6C */	addi r3, r31, 0x56c
/* 804A3174  4B B6 A2 B5 */	bl play__14mDoExt_baseAnmFv
/* 804A3178  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 804A317C  80 83 00 04 */	lwz r4, 4(r3)
/* 804A3180  38 7F 05 6C */	addi r3, r31, 0x56c
/* 804A3184  C0 3F 05 7C */	lfs f1, 0x57c(r31)
/* 804A3188  4B B6 A8 45 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 804A318C  7F E3 FB 78 */	mr r3, r31
/* 804A3190  48 00 03 25 */	bl setMatrix__8daCrod_cFv
/* 804A3194  7F E3 FB 78 */	mr r3, r31
/* 804A3198  48 00 03 19 */	bl setRoomInfo__8daCrod_cFv
/* 804A319C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804A31A0  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 804A31A4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804A31A8  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 804A31AC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804A31B0  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 804A31B4  38 00 00 96 */	li r0, 0x96
/* 804A31B8  B0 1F 07 1C */	sth r0, 0x71c(r31)
/* 804A31BC  38 00 00 AA */	li r0, 0xaa
/* 804A31C0  B0 1F 07 1E */	sth r0, 0x71e(r31)
/* 804A31C4  38 00 00 5A */	li r0, 0x5a
/* 804A31C8  B0 1F 07 20 */	sth r0, 0x720(r31)
/* 804A31CC  7F E3 FB 78 */	mr r3, r31
/* 804A31D0  48 00 04 8D */	bl setLightPower__8daCrod_cFv
/* 804A31D4  38 7F 07 10 */	addi r3, r31, 0x710
/* 804A31D8  4B D0 45 B9 */	bl dKy_plight_set__FP15LIGHT_INFLUENCE
/* 804A31DC  38 60 00 04 */	li r3, 4
lbl_804A31E0:
/* 804A31E0  39 61 00 20 */	addi r11, r1, 0x20
/* 804A31E4  4B EB F0 45 */	bl _restgpr_29
/* 804A31E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A31EC  7C 08 03 A6 */	mtlr r0
/* 804A31F0  38 21 00 20 */	addi r1, r1, 0x20
/* 804A31F4  4E 80 00 20 */	blr 
