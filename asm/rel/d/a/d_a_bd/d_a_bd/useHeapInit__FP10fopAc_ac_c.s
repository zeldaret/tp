lbl_804D960C:
/* 804D960C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D9610  7C 08 02 A6 */	mflr r0
/* 804D9614  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D9618  39 61 00 30 */	addi r11, r1, 0x30
/* 804D961C  4B E8 8B BC */	b _savegpr_28
/* 804D9620  7C 7F 1B 78 */	mr r31, r3
/* 804D9624  38 60 00 54 */	li r3, 0x54
/* 804D9628  4B DF 56 24 */	b __nw__FUl
/* 804D962C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804D9630  41 82 00 9C */	beq lbl_804D96CC
/* 804D9634  3C 60 80 4E */	lis r3, stringBase0@ha
/* 804D9638  38 63 9F 6C */	addi r3, r3, stringBase0@l
/* 804D963C  38 80 00 08 */	li r4, 8
/* 804D9640  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804D9644  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804D9648  3F 85 00 02 */	addis r28, r5, 2
/* 804D964C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 804D9650  7F 85 E3 78 */	mr r5, r28
/* 804D9654  38 C0 00 80 */	li r6, 0x80
/* 804D9658  4B B6 2C 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804D965C  7C 7D 1B 78 */	mr r29, r3
/* 804D9660  3C 60 80 4E */	lis r3, stringBase0@ha
/* 804D9664  38 63 9F 6C */	addi r3, r3, stringBase0@l
/* 804D9668  38 80 00 0E */	li r4, 0xe
/* 804D966C  7F 85 E3 78 */	mr r5, r28
/* 804D9670  38 C0 00 80 */	li r6, 0x80
/* 804D9674  4B B6 2C 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804D9678  7C 64 1B 78 */	mr r4, r3
/* 804D967C  38 00 00 01 */	li r0, 1
/* 804D9680  90 01 00 08 */	stw r0, 8(r1)
/* 804D9684  38 00 00 00 */	li r0, 0
/* 804D9688  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D968C  3C 00 00 08 */	lis r0, 8
/* 804D9690  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D9694  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 804D9698  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 804D969C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D96A0  7F C3 F3 78 */	mr r3, r30
/* 804D96A4  38 A0 00 00 */	li r5, 0
/* 804D96A8  38 C0 00 00 */	li r6, 0
/* 804D96AC  7F A7 EB 78 */	mr r7, r29
/* 804D96B0  39 00 00 00 */	li r8, 0
/* 804D96B4  3D 20 80 4E */	lis r9, lit_4171@ha
/* 804D96B8  C0 29 9E A8 */	lfs f1, lit_4171@l(r9)
/* 804D96BC  39 20 00 00 */	li r9, 0
/* 804D96C0  39 40 FF FF */	li r10, -1
/* 804D96C4  4B B3 65 88 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 804D96C8  7C 7E 1B 78 */	mr r30, r3
lbl_804D96CC:
/* 804D96CC  93 DF 05 E4 */	stw r30, 0x5e4(r31)
/* 804D96D0  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 804D96D4  28 03 00 00 */	cmplwi r3, 0
/* 804D96D8  41 82 00 10 */	beq lbl_804D96E8
/* 804D96DC  80 03 00 04 */	lwz r0, 4(r3)
/* 804D96E0  28 00 00 00 */	cmplwi r0, 0
/* 804D96E4  40 82 00 0C */	bne lbl_804D96F0
lbl_804D96E8:
/* 804D96E8  38 60 00 00 */	li r3, 0
/* 804D96EC  48 00 00 D0 */	b lbl_804D97BC
lbl_804D96F0:
/* 804D96F0  38 60 00 18 */	li r3, 0x18
/* 804D96F4  4B DF 55 58 */	b __nw__FUl
/* 804D96F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 804D96FC  41 82 00 20 */	beq lbl_804D971C
/* 804D9700  3C 80 80 4E */	lis r4, __vt__12J3DFrameCtrl@ha
/* 804D9704  38 04 A3 00 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 804D9708  90 1E 00 00 */	stw r0, 0(r30)
/* 804D970C  38 80 00 00 */	li r4, 0
/* 804D9710  4B E4 EC EC */	b init__12J3DFrameCtrlFs
/* 804D9714  38 00 00 00 */	li r0, 0
/* 804D9718  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_804D971C:
/* 804D971C  93 DF 05 E8 */	stw r30, 0x5e8(r31)
/* 804D9720  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 804D9724  28 00 00 00 */	cmplwi r0, 0
/* 804D9728  40 82 00 0C */	bne lbl_804D9734
/* 804D972C  38 60 00 00 */	li r3, 0
/* 804D9730  48 00 00 8C */	b lbl_804D97BC
lbl_804D9734:
/* 804D9734  3C 60 80 4E */	lis r3, stringBase0@ha
/* 804D9738  38 63 9F 6C */	addi r3, r3, stringBase0@l
/* 804D973C  38 80 00 11 */	li r4, 0x11
/* 804D9740  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804D9744  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804D9748  3C A5 00 02 */	addis r5, r5, 2
/* 804D974C  38 C0 00 80 */	li r6, 0x80
/* 804D9750  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804D9754  4B B6 2B 98 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804D9758  7C 65 1B 78 */	mr r5, r3
/* 804D975C  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 804D9760  80 63 00 04 */	lwz r3, 4(r3)
/* 804D9764  80 83 00 04 */	lwz r4, 4(r3)
/* 804D9768  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 804D976C  38 84 00 58 */	addi r4, r4, 0x58
/* 804D9770  38 C0 00 01 */	li r6, 1
/* 804D9774  38 E0 00 00 */	li r7, 0
/* 804D9778  3D 00 80 4E */	lis r8, lit_4171@ha
/* 804D977C  C0 28 9E A8 */	lfs f1, lit_4171@l(r8)
/* 804D9780  39 00 00 00 */	li r8, 0
/* 804D9784  39 20 FF FF */	li r9, -1
/* 804D9788  4B B3 3E B4 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 804D978C  2C 03 00 00 */	cmpwi r3, 0
/* 804D9790  40 82 00 0C */	bne lbl_804D979C
/* 804D9794  38 60 00 00 */	li r3, 0
/* 804D9798  48 00 00 24 */	b lbl_804D97BC
lbl_804D979C:
/* 804D979C  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 804D97A0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804D97A4  38 A0 00 01 */	li r5, 1
/* 804D97A8  81 9F 06 08 */	lwz r12, 0x608(r31)
/* 804D97AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804D97B0  7D 89 03 A6 */	mtctr r12
/* 804D97B4  4E 80 04 21 */	bctrl 
/* 804D97B8  38 60 00 01 */	li r3, 1
lbl_804D97BC:
/* 804D97BC  39 61 00 30 */	addi r11, r1, 0x30
/* 804D97C0  4B E8 8A 64 */	b _restgpr_28
/* 804D97C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D97C8  7C 08 03 A6 */	mtlr r0
/* 804D97CC  38 21 00 30 */	addi r1, r1, 0x30
/* 804D97D0  4E 80 00 20 */	blr 
