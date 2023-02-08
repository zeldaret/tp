lbl_809508E0:
/* 809508E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809508E4  7C 08 02 A6 */	mflr r0
/* 809508E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809508EC  39 61 00 30 */	addi r11, r1, 0x30
/* 809508F0  4B A1 18 E9 */	bl _savegpr_28
/* 809508F4  7C 7F 1B 78 */	mr r31, r3
/* 809508F8  38 60 00 54 */	li r3, 0x54
/* 809508FC  4B 97 E3 51 */	bl __nw__FUl
/* 80950900  7C 7E 1B 79 */	or. r30, r3, r3
/* 80950904  41 82 00 9C */	beq lbl_809509A0
/* 80950908  3C 60 80 95 */	lis r3, d_a_ni__stringBase0@ha /* 0x8095131C@ha */
/* 8095090C  38 63 13 1C */	addi r3, r3, d_a_ni__stringBase0@l /* 0x8095131C@l */
/* 80950910  38 80 00 0B */	li r4, 0xb
/* 80950914  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80950918  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095091C  3F 85 00 02 */	addis r28, r5, 2
/* 80950920  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80950924  7F 85 E3 78 */	mr r5, r28
/* 80950928  38 C0 00 80 */	li r6, 0x80
/* 8095092C  4B 6E B9 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80950930  7C 7D 1B 78 */	mr r29, r3
/* 80950934  3C 60 80 95 */	lis r3, d_a_ni__stringBase0@ha /* 0x8095131C@ha */
/* 80950938  38 63 13 1C */	addi r3, r3, d_a_ni__stringBase0@l /* 0x8095131C@l */
/* 8095093C  38 80 00 10 */	li r4, 0x10
/* 80950940  7F 85 E3 78 */	mr r5, r28
/* 80950944  38 C0 00 80 */	li r6, 0x80
/* 80950948  4B 6E B9 A5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8095094C  7C 64 1B 78 */	mr r4, r3
/* 80950950  38 00 00 01 */	li r0, 1
/* 80950954  90 01 00 08 */	stw r0, 8(r1)
/* 80950958  38 00 00 00 */	li r0, 0
/* 8095095C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80950960  3C 00 00 08 */	lis r0, 8
/* 80950964  90 01 00 10 */	stw r0, 0x10(r1)
/* 80950968  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 8095096C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80950970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80950974  7F C3 F3 78 */	mr r3, r30
/* 80950978  38 A0 00 00 */	li r5, 0
/* 8095097C  38 C0 00 00 */	li r6, 0
/* 80950980  7F A7 EB 78 */	mr r7, r29
/* 80950984  39 00 00 00 */	li r8, 0
/* 80950988  3D 20 80 95 */	lis r9, lit_3981@ha /* 0x809511E0@ha */
/* 8095098C  C0 29 11 E0 */	lfs f1, lit_3981@l(r9)  /* 0x809511E0@l */
/* 80950990  39 20 00 00 */	li r9, 0
/* 80950994  39 40 FF FF */	li r10, -1
/* 80950998  4B 6B F2 B5 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 8095099C  7C 7E 1B 78 */	mr r30, r3
lbl_809509A0:
/* 809509A0  93 DF 05 E8 */	stw r30, 0x5e8(r31)
/* 809509A4  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 809509A8  28 03 00 00 */	cmplwi r3, 0
/* 809509AC  41 82 00 10 */	beq lbl_809509BC
/* 809509B0  80 A3 00 04 */	lwz r5, 4(r3)
/* 809509B4  28 05 00 00 */	cmplwi r5, 0
/* 809509B8  40 82 00 0C */	bne lbl_809509C4
lbl_809509BC:
/* 809509BC  38 60 00 00 */	li r3, 0
/* 809509C0  48 00 01 10 */	b lbl_80950AD0
lbl_809509C4:
/* 809509C4  90 BF 05 24 */	stw r5, 0x524(r31)
/* 809509C8  93 E5 00 14 */	stw r31, 0x14(r5)
/* 809509CC  38 E0 00 00 */	li r7, 0
/* 809509D0  3C 60 80 95 */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x8094BE60@ha */
/* 809509D4  38 83 BE 60 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x8094BE60@l */
/* 809509D8  48 00 00 18 */	b lbl_809509F0
lbl_809509DC:
/* 809509DC  80 66 00 28 */	lwz r3, 0x28(r6)
/* 809509E0  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 809509E4  7C 63 00 2E */	lwzx r3, r3, r0
/* 809509E8  90 83 00 04 */	stw r4, 4(r3)
/* 809509EC  38 E7 00 01 */	addi r7, r7, 1
lbl_809509F0:
/* 809509F0  80 C5 00 04 */	lwz r6, 4(r5)
/* 809509F4  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 809509F8  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 809509FC  7C 00 18 40 */	cmplw r0, r3
/* 80950A00  41 80 FF DC */	blt lbl_809509DC
/* 80950A04  38 60 00 18 */	li r3, 0x18
/* 80950A08  4B 97 E2 45 */	bl __nw__FUl
/* 80950A0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80950A10  41 82 00 20 */	beq lbl_80950A30
/* 80950A14  3C 80 80 95 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80951530@ha */
/* 80950A18  38 04 15 30 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80951530@l */
/* 80950A1C  90 1E 00 00 */	stw r0, 0(r30)
/* 80950A20  38 80 00 00 */	li r4, 0
/* 80950A24  4B 9D 79 D9 */	bl init__12J3DFrameCtrlFs
/* 80950A28  38 00 00 00 */	li r0, 0
/* 80950A2C  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80950A30:
/* 80950A30  93 DF 05 EC */	stw r30, 0x5ec(r31)
/* 80950A34  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 80950A38  28 00 00 00 */	cmplwi r0, 0
/* 80950A3C  40 82 00 0C */	bne lbl_80950A48
/* 80950A40  38 60 00 00 */	li r3, 0
/* 80950A44  48 00 00 8C */	b lbl_80950AD0
lbl_80950A48:
/* 80950A48  3C 60 80 95 */	lis r3, d_a_ni__stringBase0@ha /* 0x8095131C@ha */
/* 80950A4C  38 63 13 1C */	addi r3, r3, d_a_ni__stringBase0@l /* 0x8095131C@l */
/* 80950A50  38 80 00 13 */	li r4, 0x13
/* 80950A54  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80950A58  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80950A5C  3C A5 00 02 */	addis r5, r5, 2
/* 80950A60  38 C0 00 80 */	li r6, 0x80
/* 80950A64  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80950A68  4B 6E B8 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80950A6C  7C 65 1B 78 */	mr r5, r3
/* 80950A70  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80950A74  80 63 00 04 */	lwz r3, 4(r3)
/* 80950A78  80 83 00 04 */	lwz r4, 4(r3)
/* 80950A7C  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 80950A80  38 84 00 58 */	addi r4, r4, 0x58
/* 80950A84  38 C0 00 01 */	li r6, 1
/* 80950A88  38 E0 00 00 */	li r7, 0
/* 80950A8C  3D 00 80 95 */	lis r8, lit_3981@ha /* 0x809511E0@ha */
/* 80950A90  C0 28 11 E0 */	lfs f1, lit_3981@l(r8)  /* 0x809511E0@l */
/* 80950A94  39 00 00 00 */	li r8, 0
/* 80950A98  39 20 FF FF */	li r9, -1
/* 80950A9C  4B 6B CB A1 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80950AA0  2C 03 00 00 */	cmpwi r3, 0
/* 80950AA4  40 82 00 0C */	bne lbl_80950AB0
/* 80950AA8  38 60 00 00 */	li r3, 0
/* 80950AAC  48 00 00 24 */	b lbl_80950AD0
lbl_80950AB0:
/* 80950AB0  38 7F 0A 28 */	addi r3, r31, 0xa28
/* 80950AB4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80950AB8  38 A0 00 02 */	li r5, 2
/* 80950ABC  81 9F 0A 38 */	lwz r12, 0xa38(r31)
/* 80950AC0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80950AC4  7D 89 03 A6 */	mtctr r12
/* 80950AC8  4E 80 04 21 */	bctrl 
/* 80950ACC  38 60 00 01 */	li r3, 1
lbl_80950AD0:
/* 80950AD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80950AD4  4B A1 17 51 */	bl _restgpr_28
/* 80950AD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80950ADC  7C 08 03 A6 */	mtlr r0
/* 80950AE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80950AE4  4E 80 00 20 */	blr 
