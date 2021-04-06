lbl_807F69BC:
/* 807F69BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807F69C0  7C 08 02 A6 */	mflr r0
/* 807F69C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807F69C8  39 61 00 30 */	addi r11, r1, 0x30
/* 807F69CC  4B B6 B8 09 */	bl _savegpr_27
/* 807F69D0  7C 7F 1B 78 */	mr r31, r3
/* 807F69D4  38 60 00 58 */	li r3, 0x58
/* 807F69D8  4B AD 82 75 */	bl __nw__FUl
/* 807F69DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 807F69E0  41 82 00 94 */	beq lbl_807F6A74
/* 807F69E4  3C 60 80 7F */	lis r3, d_a_e_yd__stringBase0@ha /* 0x807F7B30@ha */
/* 807F69E8  38 63 7B 30 */	addi r3, r3, d_a_e_yd__stringBase0@l /* 0x807F7B30@l */
/* 807F69EC  38 80 00 13 */	li r4, 0x13
/* 807F69F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F69F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F69F8  3F 85 00 02 */	addis r28, r5, 2
/* 807F69FC  3B 9C C2 F8 */	addi r28, r28, -15624
/* 807F6A00  7F 85 E3 78 */	mr r5, r28
/* 807F6A04  38 C0 00 80 */	li r6, 0x80
/* 807F6A08  4B 84 58 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807F6A0C  7C 7D 1B 78 */	mr r29, r3
/* 807F6A10  3C 60 80 7F */	lis r3, d_a_e_yd__stringBase0@ha /* 0x807F7B30@ha */
/* 807F6A14  38 63 7B 30 */	addi r3, r3, d_a_e_yd__stringBase0@l /* 0x807F7B30@l */
/* 807F6A18  38 80 00 18 */	li r4, 0x18
/* 807F6A1C  7F 85 E3 78 */	mr r5, r28
/* 807F6A20  38 C0 00 80 */	li r6, 0x80
/* 807F6A24  4B 84 58 C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807F6A28  7C 64 1B 78 */	mr r4, r3
/* 807F6A2C  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 807F6A30  90 01 00 08 */	stw r0, 8(r1)
/* 807F6A34  3C 00 00 08 */	lis r0, 8
/* 807F6A38  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F6A3C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807F6A40  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807F6A44  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F6A48  7F C3 F3 78 */	mr r3, r30
/* 807F6A4C  38 A0 00 00 */	li r5, 0
/* 807F6A50  38 C0 00 00 */	li r6, 0
/* 807F6A54  7F A7 EB 78 */	mr r7, r29
/* 807F6A58  39 00 00 02 */	li r8, 2
/* 807F6A5C  3D 20 80 7F */	lis r9, lit_3790@ha /* 0x807F7A08@ha */
/* 807F6A60  C0 29 7A 08 */	lfs f1, lit_3790@l(r9)  /* 0x807F7A08@l */
/* 807F6A64  39 20 00 00 */	li r9, 0
/* 807F6A68  39 40 FF FF */	li r10, -1
/* 807F6A6C  4B 81 9D 65 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807F6A70  7C 7E 1B 78 */	mr r30, r3
lbl_807F6A74:
/* 807F6A74  93 DF 05 B8 */	stw r30, 0x5b8(r31)
/* 807F6A78  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807F6A7C  28 03 00 00 */	cmplwi r3, 0
/* 807F6A80  41 82 00 10 */	beq lbl_807F6A90
/* 807F6A84  83 83 00 04 */	lwz r28, 4(r3)
/* 807F6A88  28 1C 00 00 */	cmplwi r28, 0
/* 807F6A8C  40 82 00 0C */	bne lbl_807F6A98
lbl_807F6A90:
/* 807F6A90  38 60 00 00 */	li r3, 0
/* 807F6A94  48 00 01 9C */	b lbl_807F6C30
lbl_807F6A98:
/* 807F6A98  38 60 00 18 */	li r3, 0x18
/* 807F6A9C  4B AD 81 B1 */	bl __nw__FUl
/* 807F6AA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 807F6AA4  41 82 00 20 */	beq lbl_807F6AC4
/* 807F6AA8  3C 80 80 7F */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x807F7D48@ha */
/* 807F6AAC  38 04 7D 48 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x807F7D48@l */
/* 807F6AB0  90 1E 00 00 */	stw r0, 0(r30)
/* 807F6AB4  38 80 00 00 */	li r4, 0
/* 807F6AB8  4B B3 19 45 */	bl init__12J3DFrameCtrlFs
/* 807F6ABC  38 00 00 00 */	li r0, 0
/* 807F6AC0  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_807F6AC4:
/* 807F6AC4  93 DF 06 60 */	stw r30, 0x660(r31)
/* 807F6AC8  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 807F6ACC  28 00 00 00 */	cmplwi r0, 0
/* 807F6AD0  40 82 00 0C */	bne lbl_807F6ADC
/* 807F6AD4  38 60 00 00 */	li r3, 0
/* 807F6AD8  48 00 01 58 */	b lbl_807F6C30
lbl_807F6ADC:
/* 807F6ADC  3C 60 80 7F */	lis r3, d_a_e_yd__stringBase0@ha /* 0x807F7B30@ha */
/* 807F6AE0  38 63 7B 30 */	addi r3, r3, d_a_e_yd__stringBase0@l /* 0x807F7B30@l */
/* 807F6AE4  38 80 00 1D */	li r4, 0x1d
/* 807F6AE8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F6AEC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F6AF0  3F C5 00 02 */	addis r30, r5, 2
/* 807F6AF4  3B DE C2 F8 */	addi r30, r30, -15624
/* 807F6AF8  7F C5 F3 78 */	mr r5, r30
/* 807F6AFC  38 C0 00 80 */	li r6, 0x80
/* 807F6B00  4B 84 57 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807F6B04  7C 65 1B 78 */	mr r5, r3
/* 807F6B08  80 9C 00 04 */	lwz r4, 4(r28)
/* 807F6B0C  80 7F 06 60 */	lwz r3, 0x660(r31)
/* 807F6B10  38 84 00 58 */	addi r4, r4, 0x58
/* 807F6B14  38 C0 00 01 */	li r6, 1
/* 807F6B18  38 E0 00 02 */	li r7, 2
/* 807F6B1C  3D 00 80 7F */	lis r8, lit_3790@ha /* 0x807F7A08@ha */
/* 807F6B20  C0 28 7A 08 */	lfs f1, lit_3790@l(r8)  /* 0x807F7A08@l */
/* 807F6B24  39 00 00 00 */	li r8, 0
/* 807F6B28  39 20 FF FF */	li r9, -1
/* 807F6B2C  4B 81 6B E1 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 807F6B30  2C 03 00 00 */	cmpwi r3, 0
/* 807F6B34  40 82 00 0C */	bne lbl_807F6B40
/* 807F6B38  38 60 00 00 */	li r3, 0
/* 807F6B3C  48 00 00 F4 */	b lbl_807F6C30
lbl_807F6B40:
/* 807F6B40  3C 60 80 7F */	lis r3, d_a_e_yd__stringBase0@ha /* 0x807F7B30@ha */
/* 807F6B44  38 63 7B 30 */	addi r3, r3, d_a_e_yd__stringBase0@l /* 0x807F7B30@l */
/* 807F6B48  38 80 00 20 */	li r4, 0x20
/* 807F6B4C  7F C5 F3 78 */	mr r5, r30
/* 807F6B50  38 C0 00 80 */	li r6, 0x80
/* 807F6B54  4B 84 57 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807F6B58  7C 66 1B 78 */	mr r6, r3
/* 807F6B5C  38 7F 08 0C */	addi r3, r31, 0x80c
/* 807F6B60  38 80 00 01 */	li r4, 1
/* 807F6B64  38 A0 00 0C */	li r5, 0xc
/* 807F6B68  38 E0 00 01 */	li r7, 1
/* 807F6B6C  4B 81 C7 F5 */	bl init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 807F6B70  2C 03 00 00 */	cmpwi r3, 0
/* 807F6B74  40 82 00 0C */	bne lbl_807F6B80
/* 807F6B78  38 60 00 00 */	li r3, 0
/* 807F6B7C  48 00 00 B4 */	b lbl_807F6C30
lbl_807F6B80:
/* 807F6B80  80 7F 08 44 */	lwz r3, 0x844(r31)
/* 807F6B84  80 83 00 04 */	lwz r4, 4(r3)
/* 807F6B88  3C 60 80 7F */	lis r3, lit_4148@ha /* 0x807F7A6C@ha */
/* 807F6B8C  C0 03 7A 6C */	lfs f0, lit_4148@l(r3)  /* 0x807F7A6C@l */
/* 807F6B90  38 00 00 0C */	li r0, 0xc
/* 807F6B94  7C 09 03 A6 */	mtctr r0
lbl_807F6B98:
/* 807F6B98  D0 04 00 00 */	stfs f0, 0(r4)
/* 807F6B9C  38 84 00 04 */	addi r4, r4, 4
/* 807F6BA0  42 00 FF F8 */	bdnz lbl_807F6B98
/* 807F6BA4  3C 60 80 7F */	lis r3, d_a_e_yd__stringBase0@ha /* 0x807F7B30@ha */
/* 807F6BA8  38 63 7B 30 */	addi r3, r3, d_a_e_yd__stringBase0@l /* 0x807F7B30@l */
/* 807F6BAC  38 80 00 1A */	li r4, 0x1a
/* 807F6BB0  7F C5 F3 78 */	mr r5, r30
/* 807F6BB4  38 C0 00 80 */	li r6, 0x80
/* 807F6BB8  4B 84 57 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807F6BBC  7C 7D 1B 78 */	mr r29, r3
/* 807F6BC0  3B 60 00 01 */	li r27, 1
/* 807F6BC4  3B C0 00 04 */	li r30, 4
lbl_807F6BC8:
/* 807F6BC8  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 807F6BCC  41 82 00 50 */	beq lbl_807F6C1C
/* 807F6BD0  7F A3 EB 78 */	mr r3, r29
/* 807F6BD4  3C 80 00 08 */	lis r4, 8
/* 807F6BD8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 807F6BDC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 807F6BE0  4B 81 E0 75 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 807F6BE4  7F 9F F2 14 */	add r28, r31, r30
/* 807F6BE8  90 7C 07 7C */	stw r3, 0x77c(r28)
/* 807F6BEC  80 1C 07 7C */	lwz r0, 0x77c(r28)
/* 807F6BF0  28 00 00 00 */	cmplwi r0, 0
/* 807F6BF4  40 82 00 0C */	bne lbl_807F6C00
/* 807F6BF8  38 60 00 00 */	li r3, 0
/* 807F6BFC  48 00 00 34 */	b lbl_807F6C30
lbl_807F6C00:
/* 807F6C00  3C 60 80 7F */	lis r3, lit_3790@ha /* 0x807F7A08@ha */
/* 807F6C04  C0 23 7A 08 */	lfs f1, lit_3790@l(r3)  /* 0x807F7A08@l */
/* 807F6C08  4B A7 0D 4D */	bl cM_rndF__Ff
/* 807F6C0C  3C 60 80 7F */	lis r3, lit_3790@ha /* 0x807F7A08@ha */
/* 807F6C10  C0 03 7A 08 */	lfs f0, lit_3790@l(r3)  /* 0x807F7A08@l */
/* 807F6C14  EC 00 08 2A */	fadds f0, f0, f1
/* 807F6C18  D0 1C 07 DC */	stfs f0, 0x7dc(r28)
lbl_807F6C1C:
/* 807F6C1C  3B 7B 00 01 */	addi r27, r27, 1
/* 807F6C20  2C 1B 00 0B */	cmpwi r27, 0xb
/* 807F6C24  3B DE 00 04 */	addi r30, r30, 4
/* 807F6C28  41 80 FF A0 */	blt lbl_807F6BC8
/* 807F6C2C  38 60 00 01 */	li r3, 1
lbl_807F6C30:
/* 807F6C30  39 61 00 30 */	addi r11, r1, 0x30
/* 807F6C34  4B B6 B5 ED */	bl _restgpr_27
/* 807F6C38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807F6C3C  7C 08 03 A6 */	mtlr r0
/* 807F6C40  38 21 00 30 */	addi r1, r1, 0x30
/* 807F6C44  4E 80 00 20 */	blr 
