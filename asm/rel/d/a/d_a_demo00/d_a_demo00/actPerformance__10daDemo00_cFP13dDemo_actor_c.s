lbl_804A594C:
/* 804A594C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804A5950  7C 08 02 A6 */	mflr r0
/* 804A5954  90 01 00 44 */	stw r0, 0x44(r1)
/* 804A5958  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804A595C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804A5960  39 61 00 30 */	addi r11, r1, 0x30
/* 804A5964  4B EB C8 75 */	bl _savegpr_28
/* 804A5968  7C 7F 1B 78 */	mr r31, r3
/* 804A596C  7C 9D 23 78 */	mr r29, r4
/* 804A5970  3C 60 80 4B */	lis r3, lit_3727@ha /* 0x804A8860@ha */
/* 804A5974  3B C3 88 60 */	addi r30, r3, lit_3727@l /* 0x804A8860@l */
/* 804A5978  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 804A597C  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 804A5980  7C 03 00 40 */	cmplw r3, r0
/* 804A5984  41 82 00 30 */	beq lbl_804A59B4
/* 804A5988  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 804A598C  4B FF E9 AD */	bl reset__16daDemo00_model_cFv
/* 804A5990  3C 60 80 4B */	lis r3, lit_4725@ha /* 0x804A8A10@ha */
/* 804A5994  38 83 8A 10 */	addi r4, r3, lit_4725@l /* 0x804A8A10@l */
/* 804A5998  80 64 00 00 */	lwz r3, 0(r4)
/* 804A599C  80 04 00 04 */	lwz r0, 4(r4)
/* 804A59A0  90 7F 05 7C */	stw r3, 0x57c(r31)
/* 804A59A4  90 1F 05 80 */	stw r0, 0x580(r31)
/* 804A59A8  80 04 00 08 */	lwz r0, 8(r4)
/* 804A59AC  90 1F 05 84 */	stw r0, 0x584(r31)
/* 804A59B0  48 00 06 78 */	b lbl_804A6028
lbl_804A59B4:
/* 804A59B4  80 1F 05 D4 */	lwz r0, 0x5d4(r31)
/* 804A59B8  28 00 00 00 */	cmplwi r0, 0
/* 804A59BC  41 82 06 6C */	beq lbl_804A6028
/* 804A59C0  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 804A59C4  28 00 00 00 */	cmplwi r0, 0
/* 804A59C8  41 82 00 7C */	beq lbl_804A5A44
/* 804A59CC  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 804A59D0  80 9F 05 8C */	lwz r4, 0x58c(r31)
/* 804A59D4  7C 00 20 40 */	cmplw r0, r4
/* 804A59D8  41 82 00 6C */	beq lbl_804A5A44
/* 804A59DC  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 804A59E0  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 804A59E4  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 804A59E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A59EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A59F0  3C A5 00 02 */	addis r5, r5, 2
/* 804A59F4  38 C0 00 80 */	li r6, 0x80
/* 804A59F8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804A59FC  4B B9 6A 05 */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A5A00  7C 64 1B 79 */	or. r4, r3, r3
/* 804A5A04  40 82 00 0C */	bne lbl_804A5A10
/* 804A5A08  38 60 00 01 */	li r3, 1
/* 804A5A0C  48 00 06 20 */	b lbl_804A602C
lbl_804A5A10:
/* 804A5A10  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804A5A14  A0 1D 00 04 */	lhz r0, 4(r29)
/* 804A5A18  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804A5A1C  41 82 00 08 */	beq lbl_804A5A24
/* 804A5A20  C0 3D 00 34 */	lfs f1, 0x34(r29)
lbl_804A5A24:
/* 804A5A24  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804A5A28  38 A0 FF FF */	li r5, -1
/* 804A5A2C  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 804A5A30  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 804A5A34  C0 9E 00 60 */	lfs f4, 0x60(r30)
/* 804A5A38  4B B6 B4 39 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 804A5A3C  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 804A5A40  90 1F 05 B0 */	stw r0, 0x5b0(r31)
lbl_804A5A44:
/* 804A5A44  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 804A5A48  80 9F 05 94 */	lwz r4, 0x594(r31)
/* 804A5A4C  7C 00 20 40 */	cmplw r0, r4
/* 804A5A50  41 82 00 68 */	beq lbl_804A5AB8
/* 804A5A54  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 804A5A58  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 804A5A5C  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 804A5A60  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A5A64  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A5A68  3C A5 00 02 */	addis r5, r5, 2
/* 804A5A6C  38 C0 00 80 */	li r6, 0x80
/* 804A5A70  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804A5A74  4B B9 69 8D */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A5A78  7C 65 1B 79 */	or. r5, r3, r3
/* 804A5A7C  40 82 00 0C */	bne lbl_804A5A88
/* 804A5A80  38 60 00 01 */	li r3, 1
/* 804A5A84  48 00 05 A8 */	b lbl_804A602C
lbl_804A5A88:
/* 804A5A88  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A5A8C  80 83 00 04 */	lwz r4, 4(r3)
/* 804A5A90  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 804A5A94  38 84 00 58 */	addi r4, r4, 0x58
/* 804A5A98  38 C0 00 01 */	li r6, 1
/* 804A5A9C  38 E0 FF FF */	li r7, -1
/* 804A5AA0  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 804A5AA4  39 00 00 00 */	li r8, 0
/* 804A5AA8  39 20 FF FF */	li r9, -1
/* 804A5AAC  4B B6 7A A1 */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 804A5AB0  80 1F 05 94 */	lwz r0, 0x594(r31)
/* 804A5AB4  90 1F 05 B8 */	stw r0, 0x5b8(r31)
lbl_804A5AB8:
/* 804A5AB8  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 804A5ABC  80 9F 05 98 */	lwz r4, 0x598(r31)
/* 804A5AC0  7C 00 20 40 */	cmplw r0, r4
/* 804A5AC4  41 82 00 68 */	beq lbl_804A5B2C
/* 804A5AC8  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 804A5ACC  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 804A5AD0  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 804A5AD4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A5AD8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A5ADC  3C A5 00 02 */	addis r5, r5, 2
/* 804A5AE0  38 C0 00 80 */	li r6, 0x80
/* 804A5AE4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804A5AE8  4B B9 69 19 */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A5AEC  7C 65 1B 79 */	or. r5, r3, r3
/* 804A5AF0  40 82 00 0C */	bne lbl_804A5AFC
/* 804A5AF4  38 60 00 01 */	li r3, 1
/* 804A5AF8  48 00 05 34 */	b lbl_804A602C
lbl_804A5AFC:
/* 804A5AFC  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A5B00  80 83 00 04 */	lwz r4, 4(r3)
/* 804A5B04  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 804A5B08  38 84 00 58 */	addi r4, r4, 0x58
/* 804A5B0C  38 C0 00 01 */	li r6, 1
/* 804A5B10  38 E0 FF FF */	li r7, -1
/* 804A5B14  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 804A5B18  39 00 00 00 */	li r8, 0
/* 804A5B1C  39 20 FF FF */	li r9, -1
/* 804A5B20  4B B6 7B 1D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 804A5B24  80 1F 05 98 */	lwz r0, 0x598(r31)
/* 804A5B28  90 1F 05 BC */	stw r0, 0x5bc(r31)
lbl_804A5B2C:
/* 804A5B2C  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 804A5B30  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 804A5B34  7C 00 20 40 */	cmplw r0, r4
/* 804A5B38  41 82 00 98 */	beq lbl_804A5BD0
/* 804A5B3C  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 804A5B40  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 804A5B44  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 804A5B48  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A5B4C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A5B50  3C A5 00 02 */	addis r5, r5, 2
/* 804A5B54  38 C0 00 80 */	li r6, 0x80
/* 804A5B58  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804A5B5C  4B B9 68 A5 */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A5B60  7C 65 1B 79 */	or. r5, r3, r3
/* 804A5B64  40 82 00 0C */	bne lbl_804A5B70
/* 804A5B68  38 60 00 01 */	li r3, 1
/* 804A5B6C  48 00 04 C0 */	b lbl_804A602C
lbl_804A5B70:
/* 804A5B70  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 804A5B74  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804A5B78  41 82 00 10 */	beq lbl_804A5B88
/* 804A5B7C  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 804A5B80  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804A5B84  48 00 00 08 */	b lbl_804A5B8C
lbl_804A5B88:
/* 804A5B88  C0 1E 00 0C */	lfs f0, 0xc(r30)
lbl_804A5B8C:
/* 804A5B8C  FC 00 00 1E */	fctiwz f0, f0
/* 804A5B90  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804A5B94  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 804A5B98  28 00 00 00 */	cmplwi r0, 0
/* 804A5B9C  38 E0 FF FF */	li r7, -1
/* 804A5BA0  41 82 00 08 */	beq lbl_804A5BA8
/* 804A5BA4  38 E0 00 02 */	li r7, 2
lbl_804A5BA8:
/* 804A5BA8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A5BAC  80 83 00 04 */	lwz r4, 4(r3)
/* 804A5BB0  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 804A5BB4  38 84 00 58 */	addi r4, r4, 0x58
/* 804A5BB8  38 C0 00 01 */	li r6, 1
/* 804A5BBC  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 804A5BC0  39 20 FF FF */	li r9, -1
/* 804A5BC4  4B B6 7B 49 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 804A5BC8  80 1F 05 9C */	lwz r0, 0x59c(r31)
/* 804A5BCC  90 1F 05 C0 */	stw r0, 0x5c0(r31)
lbl_804A5BD0:
/* 804A5BD0  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 804A5BD4  80 9F 05 90 */	lwz r4, 0x590(r31)
/* 804A5BD8  7C 00 20 40 */	cmplw r0, r4
/* 804A5BDC  41 82 00 98 */	beq lbl_804A5C74
/* 804A5BE0  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 804A5BE4  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 804A5BE8  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 804A5BEC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A5BF0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A5BF4  3C A5 00 02 */	addis r5, r5, 2
/* 804A5BF8  38 C0 00 80 */	li r6, 0x80
/* 804A5BFC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804A5C00  4B B9 68 01 */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A5C04  7C 65 1B 79 */	or. r5, r3, r3
/* 804A5C08  40 82 00 0C */	bne lbl_804A5C14
/* 804A5C0C  38 60 00 01 */	li r3, 1
/* 804A5C10  48 00 04 1C */	b lbl_804A602C
lbl_804A5C14:
/* 804A5C14  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 804A5C18  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804A5C1C  41 82 00 10 */	beq lbl_804A5C2C
/* 804A5C20  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804A5C24  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804A5C28  48 00 00 08 */	b lbl_804A5C30
lbl_804A5C2C:
/* 804A5C2C  C0 1E 00 0C */	lfs f0, 0xc(r30)
lbl_804A5C30:
/* 804A5C30  FC 00 00 1E */	fctiwz f0, f0
/* 804A5C34  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804A5C38  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 804A5C3C  28 00 00 00 */	cmplwi r0, 0
/* 804A5C40  38 E0 FF FF */	li r7, -1
/* 804A5C44  41 82 00 08 */	beq lbl_804A5C4C
/* 804A5C48  38 E0 00 02 */	li r7, 2
lbl_804A5C4C:
/* 804A5C4C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A5C50  80 83 00 04 */	lwz r4, 4(r3)
/* 804A5C54  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804A5C58  38 84 00 58 */	addi r4, r4, 0x58
/* 804A5C5C  38 C0 00 01 */	li r6, 1
/* 804A5C60  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 804A5C64  39 20 FF FF */	li r9, -1
/* 804A5C68  4B B6 78 15 */	bl init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss
/* 804A5C6C  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 804A5C70  90 1F 05 B4 */	stw r0, 0x5b4(r31)
lbl_804A5C74:
/* 804A5C74  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 804A5C78  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 804A5C7C  7C 00 20 40 */	cmplw r0, r4
/* 804A5C80  41 82 00 60 */	beq lbl_804A5CE0
/* 804A5C84  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 804A5C88  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 804A5C8C  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 804A5C90  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A5C94  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A5C98  3C A5 00 02 */	addis r5, r5, 2
/* 804A5C9C  38 C0 00 80 */	li r6, 0x80
/* 804A5CA0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804A5CA4  4B B9 67 5D */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A5CA8  7C 65 1B 79 */	or. r5, r3, r3
/* 804A5CAC  40 82 00 0C */	bne lbl_804A5CB8
/* 804A5CB0  38 60 00 01 */	li r3, 1
/* 804A5CB4  48 00 03 78 */	b lbl_804A602C
lbl_804A5CB8:
/* 804A5CB8  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 804A5CBC  80 9F 05 F0 */	lwz r4, 0x5f0(r31)
/* 804A5CC0  38 C0 00 01 */	li r6, 1
/* 804A5CC4  38 E0 FF FF */	li r7, -1
/* 804A5CC8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 804A5CCC  39 00 00 00 */	li r8, 0
/* 804A5CD0  39 20 FF FF */	li r9, -1
/* 804A5CD4  4B B6 7D 35 */	bl init__13mDoExt_blkAnmFP13J3DDeformDataP13J3DAnmClusteriifss
/* 804A5CD8  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 804A5CDC  90 1F 05 CC */	stw r0, 0x5cc(r31)
lbl_804A5CE0:
/* 804A5CE0  7F E3 FB 78 */	mr r3, r31
/* 804A5CE4  38 80 00 2A */	li r4, 0x2a
/* 804A5CE8  38 A0 00 00 */	li r5, 0
/* 804A5CEC  38 C0 00 00 */	li r6, 0
/* 804A5CF0  38 E0 00 00 */	li r7, 0
/* 804A5CF4  39 00 00 00 */	li r8, 0
/* 804A5CF8  39 20 00 00 */	li r9, 0
/* 804A5CFC  39 40 00 00 */	li r10, 0
/* 804A5D00  4B B9 28 19 */	bl dDemo_setDemoData__FP10fopAc_ac_cUcP14mDoExt_McaMorfPCciPUsUlSc
/* 804A5D04  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 804A5D08  28 03 00 00 */	cmplwi r3, 0
/* 804A5D0C  41 82 00 50 */	beq lbl_804A5D5C
/* 804A5D10  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 804A5D14  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 804A5D18  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804A5D1C  EC 21 00 2A */	fadds f1, f1, f0
/* 804A5D20  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804A5D24  D0 01 00 08 */	stfs f0, 8(r1)
/* 804A5D28  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804A5D2C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804A5D30  38 81 00 08 */	addi r4, r1, 8
/* 804A5D34  4B DC 1F F5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 804A5D38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A5D3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A5D40  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804A5D44  80 9F 05 F8 */	lwz r4, 0x5f8(r31)
/* 804A5D48  4B BC E7 59 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804A5D4C  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 804A5D50  D0 23 00 54 */	stfs f1, 0x54(r3)
/* 804A5D54  38 00 00 01 */	li r0, 1
/* 804A5D58  98 1F 06 A1 */	stb r0, 0x6a1(r31)
lbl_804A5D5C:
/* 804A5D5C  7F E3 FB 78 */	mr r3, r31
/* 804A5D60  4B FF E8 41 */	bl setBaseMtx__10daDemo00_cFv
/* 804A5D64  A0 1D 00 04 */	lhz r0, 4(r29)
/* 804A5D68  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804A5D6C  41 82 02 1C */	beq lbl_804A5F88
/* 804A5D70  C3 FD 00 30 */	lfs f31, 0x30(r29)
/* 804A5D74  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 804A5D78  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804A5D7C  40 81 01 58 */	ble lbl_804A5ED4
/* 804A5D80  EF FF 00 28 */	fsubs f31, f31, f0
/* 804A5D84  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804A5D88  28 03 00 00 */	cmplwi r3, 0
/* 804A5D8C  41 82 00 9C */	beq lbl_804A5E28
/* 804A5D90  D3 E3 00 1C */	stfs f31, 0x1c(r3)
/* 804A5D94  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 804A5D98  8B 83 0D 64 */	lbz r28, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 804A5D9C  7F 9C 07 74 */	extsb r28, r28
/* 804A5DA0  38 80 00 00 */	li r4, 0
/* 804A5DA4  7C 83 23 78 */	mr r3, r4
/* 804A5DA8  80 BF 05 F8 */	lwz r5, 0x5f8(r31)
/* 804A5DAC  28 05 00 00 */	cmplwi r5, 0
/* 804A5DB0  41 82 00 14 */	beq lbl_804A5DC4
/* 804A5DB4  88 1F 06 A1 */	lbz r0, 0x6a1(r31)
/* 804A5DB8  28 00 00 00 */	cmplwi r0, 0
/* 804A5DBC  41 82 00 08 */	beq lbl_804A5DC4
/* 804A5DC0  38 60 00 01 */	li r3, 1
lbl_804A5DC4:
/* 804A5DC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804A5DC8  41 82 00 28 */	beq lbl_804A5DF0
/* 804A5DCC  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 804A5DD0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804A5DD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A5DD8  FC 00 02 10 */	fabs f0, f0
/* 804A5DDC  FC 20 00 18 */	frsp f1, f0
/* 804A5DE0  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 804A5DE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A5DE8  40 80 00 08 */	bge lbl_804A5DF0
/* 804A5DEC  38 80 00 01 */	li r4, 1
lbl_804A5DF0:
/* 804A5DF0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804A5DF4  41 82 00 18 */	beq lbl_804A5E0C
/* 804A5DF8  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 804A5DFC  38 63 00 14 */	addi r3, r3, 0x14
/* 804A5E00  4B D0 56 C1 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 804A5E04  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 804A5E08  48 00 00 08 */	b lbl_804A5E10
lbl_804A5E0C:
/* 804A5E0C  3B C0 00 00 */	li r30, 0
lbl_804A5E10:
/* 804A5E10  7F 83 E3 78 */	mr r3, r28
/* 804A5E14  4B B8 72 59 */	bl dComIfGp_getReverb__Fi
/* 804A5E18  7C 65 1B 78 */	mr r5, r3
/* 804A5E1C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804A5E20  7F C4 F3 78 */	mr r4, r30
/* 804A5E24  4B B6 B2 8D */	bl play__16mDoExt_McaMorfSOFUlSc
lbl_804A5E28:
/* 804A5E28  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 804A5E2C  28 03 00 00 */	cmplwi r3, 0
/* 804A5E30  41 82 00 10 */	beq lbl_804A5E40
/* 804A5E34  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 804A5E38  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 804A5E3C  4B B6 75 ED */	bl play__14mDoExt_baseAnmFv
lbl_804A5E40:
/* 804A5E40  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 804A5E44  28 03 00 00 */	cmplwi r3, 0
/* 804A5E48  41 82 00 1C */	beq lbl_804A5E64
/* 804A5E4C  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 804A5E50  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804A5E54  40 82 00 08 */	bne lbl_804A5E5C
/* 804A5E58  D3 E3 00 10 */	stfs f31, 0x10(r3)
lbl_804A5E5C:
/* 804A5E5C  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 804A5E60  4B B6 75 C9 */	bl play__14mDoExt_baseAnmFv
lbl_804A5E64:
/* 804A5E64  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 804A5E68  28 03 00 00 */	cmplwi r3, 0
/* 804A5E6C  41 82 00 1C */	beq lbl_804A5E88
/* 804A5E70  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 804A5E74  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804A5E78  40 82 00 08 */	bne lbl_804A5E80
/* 804A5E7C  D3 E3 00 10 */	stfs f31, 0x10(r3)
lbl_804A5E80:
/* 804A5E80  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 804A5E84  4B B6 75 A5 */	bl play__14mDoExt_baseAnmFv
lbl_804A5E88:
/* 804A5E88  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804A5E8C  28 03 00 00 */	cmplwi r3, 0
/* 804A5E90  41 82 00 1C */	beq lbl_804A5EAC
/* 804A5E94  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 804A5E98  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804A5E9C  40 82 00 08 */	bne lbl_804A5EA4
/* 804A5EA0  D3 E3 00 10 */	stfs f31, 0x10(r3)
lbl_804A5EA4:
/* 804A5EA4  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804A5EA8  4B B6 75 81 */	bl play__14mDoExt_baseAnmFv
lbl_804A5EAC:
/* 804A5EAC  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 804A5EB0  28 03 00 00 */	cmplwi r3, 0
/* 804A5EB4  41 82 01 50 */	beq lbl_804A6004
/* 804A5EB8  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 804A5EBC  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804A5EC0  40 82 00 08 */	bne lbl_804A5EC8
/* 804A5EC4  D3 E3 00 10 */	stfs f31, 0x10(r3)
lbl_804A5EC8:
/* 804A5EC8  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 804A5ECC  4B B6 75 5D */	bl play__14mDoExt_baseAnmFv
/* 804A5ED0  48 00 01 34 */	b lbl_804A6004
lbl_804A5ED4:
/* 804A5ED4  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804A5ED8  28 03 00 00 */	cmplwi r3, 0
/* 804A5EDC  41 82 00 08 */	beq lbl_804A5EE4
/* 804A5EE0  D3 E3 00 1C */	stfs f31, 0x1c(r3)
lbl_804A5EE4:
/* 804A5EE4  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 804A5EE8  28 03 00 00 */	cmplwi r3, 0
/* 804A5EEC  41 82 00 08 */	beq lbl_804A5EF4
/* 804A5EF0  D3 E3 00 10 */	stfs f31, 0x10(r3)
lbl_804A5EF4:
/* 804A5EF4  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 804A5EF8  28 03 00 00 */	cmplwi r3, 0
/* 804A5EFC  41 82 00 1C */	beq lbl_804A5F18
/* 804A5F00  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 804A5F04  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804A5F08  40 82 00 0C */	bne lbl_804A5F14
/* 804A5F0C  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 804A5F10  48 00 00 08 */	b lbl_804A5F18
lbl_804A5F14:
/* 804A5F14  4B B6 75 15 */	bl play__14mDoExt_baseAnmFv
lbl_804A5F18:
/* 804A5F18  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 804A5F1C  28 03 00 00 */	cmplwi r3, 0
/* 804A5F20  41 82 00 1C */	beq lbl_804A5F3C
/* 804A5F24  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 804A5F28  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804A5F2C  40 82 00 0C */	bne lbl_804A5F38
/* 804A5F30  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 804A5F34  48 00 00 08 */	b lbl_804A5F3C
lbl_804A5F38:
/* 804A5F38  4B B6 74 F1 */	bl play__14mDoExt_baseAnmFv
lbl_804A5F3C:
/* 804A5F3C  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804A5F40  28 03 00 00 */	cmplwi r3, 0
/* 804A5F44  41 82 00 1C */	beq lbl_804A5F60
/* 804A5F48  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 804A5F4C  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804A5F50  40 82 00 0C */	bne lbl_804A5F5C
/* 804A5F54  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 804A5F58  48 00 00 08 */	b lbl_804A5F60
lbl_804A5F5C:
/* 804A5F5C  4B B6 74 CD */	bl play__14mDoExt_baseAnmFv
lbl_804A5F60:
/* 804A5F60  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 804A5F64  28 03 00 00 */	cmplwi r3, 0
/* 804A5F68  41 82 00 9C */	beq lbl_804A6004
/* 804A5F6C  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 804A5F70  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804A5F74  40 82 00 0C */	bne lbl_804A5F80
/* 804A5F78  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 804A5F7C  48 00 00 88 */	b lbl_804A6004
lbl_804A5F80:
/* 804A5F80  4B B6 74 A9 */	bl play__14mDoExt_baseAnmFv
/* 804A5F84  48 00 00 80 */	b lbl_804A6004
lbl_804A5F88:
/* 804A5F88  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804A5F8C  28 03 00 00 */	cmplwi r3, 0
/* 804A5F90  41 82 00 14 */	beq lbl_804A5FA4
/* 804A5F94  38 80 00 00 */	li r4, 0
/* 804A5F98  38 A0 00 00 */	li r5, 0
/* 804A5F9C  4B B6 B1 15 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 804A5FA0  48 00 00 64 */	b lbl_804A6004
lbl_804A5FA4:
/* 804A5FA4  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 804A5FA8  28 03 00 00 */	cmplwi r3, 0
/* 804A5FAC  41 82 00 0C */	beq lbl_804A5FB8
/* 804A5FB0  4B B6 74 79 */	bl play__14mDoExt_baseAnmFv
/* 804A5FB4  48 00 00 50 */	b lbl_804A6004
lbl_804A5FB8:
/* 804A5FB8  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 804A5FBC  28 03 00 00 */	cmplwi r3, 0
/* 804A5FC0  41 82 00 0C */	beq lbl_804A5FCC
/* 804A5FC4  4B B6 74 65 */	bl play__14mDoExt_baseAnmFv
/* 804A5FC8  48 00 00 3C */	b lbl_804A6004
lbl_804A5FCC:
/* 804A5FCC  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 804A5FD0  28 03 00 00 */	cmplwi r3, 0
/* 804A5FD4  41 82 00 0C */	beq lbl_804A5FE0
/* 804A5FD8  4B B6 74 51 */	bl play__14mDoExt_baseAnmFv
/* 804A5FDC  48 00 00 28 */	b lbl_804A6004
lbl_804A5FE0:
/* 804A5FE0  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804A5FE4  28 03 00 00 */	cmplwi r3, 0
/* 804A5FE8  41 82 00 0C */	beq lbl_804A5FF4
/* 804A5FEC  4B B6 74 3D */	bl play__14mDoExt_baseAnmFv
/* 804A5FF0  48 00 00 14 */	b lbl_804A6004
lbl_804A5FF4:
/* 804A5FF4  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 804A5FF8  28 03 00 00 */	cmplwi r3, 0
/* 804A5FFC  41 82 00 08 */	beq lbl_804A6004
/* 804A6000  4B B6 74 29 */	bl play__14mDoExt_baseAnmFv
lbl_804A6004:
/* 804A6004  A0 1D 00 04 */	lhz r0, 4(r29)
/* 804A6008  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804A600C  41 82 00 1C */	beq lbl_804A6028
/* 804A6010  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 804A6014  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 804A6018  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 804A601C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 804A6020  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 804A6024  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
lbl_804A6028:
/* 804A6028  38 60 00 01 */	li r3, 1
lbl_804A602C:
/* 804A602C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804A6030  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804A6034  39 61 00 30 */	addi r11, r1, 0x30
/* 804A6038  4B EB C1 ED */	bl _restgpr_28
/* 804A603C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804A6040  7C 08 03 A6 */	mtlr r0
/* 804A6044  38 21 00 40 */	addi r1, r1, 0x40
/* 804A6048  4E 80 00 20 */	blr 
