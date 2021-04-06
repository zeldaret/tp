lbl_8066E504:
/* 8066E504  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8066E508  7C 08 02 A6 */	mflr r0
/* 8066E50C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8066E510  39 61 00 30 */	addi r11, r1, 0x30
/* 8066E514  4B CF 3C C5 */	bl _savegpr_28
/* 8066E518  7C 7F 1B 78 */	mr r31, r3
/* 8066E51C  38 60 00 54 */	li r3, 0x54
/* 8066E520  4B C6 07 2D */	bl __nw__FUl
/* 8066E524  7C 7E 1B 79 */	or. r30, r3, r3
/* 8066E528  41 82 00 9C */	beq lbl_8066E5C4
/* 8066E52C  3C 60 80 67 */	lis r3, d_a_do__stringBase0@ha /* 0x8066EFB0@ha */
/* 8066E530  38 63 EF B0 */	addi r3, r3, d_a_do__stringBase0@l /* 0x8066EFB0@l */
/* 8066E534  38 80 00 0E */	li r4, 0xe
/* 8066E538  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066E53C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066E540  3F 85 00 02 */	addis r28, r5, 2
/* 8066E544  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8066E548  7F 85 E3 78 */	mr r5, r28
/* 8066E54C  38 C0 00 80 */	li r6, 0x80
/* 8066E550  4B 9C DD 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8066E554  7C 7D 1B 78 */	mr r29, r3
/* 8066E558  3C 60 80 67 */	lis r3, d_a_do__stringBase0@ha /* 0x8066EFB0@ha */
/* 8066E55C  38 63 EF B0 */	addi r3, r3, d_a_do__stringBase0@l /* 0x8066EFB0@l */
/* 8066E560  38 80 00 19 */	li r4, 0x19
/* 8066E564  7F 85 E3 78 */	mr r5, r28
/* 8066E568  38 C0 00 80 */	li r6, 0x80
/* 8066E56C  4B 9C DD 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8066E570  7C 64 1B 78 */	mr r4, r3
/* 8066E574  38 00 00 01 */	li r0, 1
/* 8066E578  90 01 00 08 */	stw r0, 8(r1)
/* 8066E57C  38 00 00 00 */	li r0, 0
/* 8066E580  90 01 00 0C */	stw r0, 0xc(r1)
/* 8066E584  3C 00 00 08 */	lis r0, 8
/* 8066E588  90 01 00 10 */	stw r0, 0x10(r1)
/* 8066E58C  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020284@ha */
/* 8066E590  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11020284@l */
/* 8066E594  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066E598  7F C3 F3 78 */	mr r3, r30
/* 8066E59C  38 A0 00 00 */	li r5, 0
/* 8066E5A0  38 C0 00 00 */	li r6, 0
/* 8066E5A4  7F A7 EB 78 */	mr r7, r29
/* 8066E5A8  39 00 00 02 */	li r8, 2
/* 8066E5AC  3D 20 80 67 */	lis r9, lit_3662@ha /* 0x8066EDE8@ha */
/* 8066E5B0  C0 29 ED E8 */	lfs f1, lit_3662@l(r9)  /* 0x8066EDE8@l */
/* 8066E5B4  39 20 00 00 */	li r9, 0
/* 8066E5B8  39 40 FF FF */	li r10, -1
/* 8066E5BC  4B 9A 16 91 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 8066E5C0  7C 7E 1B 78 */	mr r30, r3
lbl_8066E5C4:
/* 8066E5C4  93 DF 05 D0 */	stw r30, 0x5d0(r31)
/* 8066E5C8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066E5CC  28 03 00 00 */	cmplwi r3, 0
/* 8066E5D0  41 82 00 10 */	beq lbl_8066E5E0
/* 8066E5D4  80 A3 00 04 */	lwz r5, 4(r3)
/* 8066E5D8  28 05 00 00 */	cmplwi r5, 0
/* 8066E5DC  40 82 00 0C */	bne lbl_8066E5E8
lbl_8066E5E0:
/* 8066E5E0  38 60 00 00 */	li r3, 0
/* 8066E5E4  48 00 01 D8 */	b lbl_8066E7BC
lbl_8066E5E8:
/* 8066E5E8  90 BF 05 24 */	stw r5, 0x524(r31)
/* 8066E5EC  93 E5 00 14 */	stw r31, 0x14(r5)
/* 8066E5F0  38 E0 00 00 */	li r7, 0
/* 8066E5F4  3C 60 80 66 */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x80667E68@ha */
/* 8066E5F8  38 83 7E 68 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x80667E68@l */
/* 8066E5FC  48 00 00 3C */	b lbl_8066E638
lbl_8066E600:
/* 8066E600  38 07 FF F7 */	addi r0, r7, -9
/* 8066E604  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8066E608  28 00 00 01 */	cmplwi r0, 1
/* 8066E60C  40 81 00 18 */	ble lbl_8066E624
/* 8066E610  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8066E614  28 00 00 16 */	cmplwi r0, 0x16
/* 8066E618  41 82 00 0C */	beq lbl_8066E624
/* 8066E61C  28 00 00 17 */	cmplwi r0, 0x17
/* 8066E620  40 82 00 14 */	bne lbl_8066E634
lbl_8066E624:
/* 8066E624  80 66 00 28 */	lwz r3, 0x28(r6)
/* 8066E628  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 8066E62C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8066E630  90 83 00 04 */	stw r4, 4(r3)
lbl_8066E634:
/* 8066E634  38 E7 00 01 */	addi r7, r7, 1
lbl_8066E638:
/* 8066E638  80 C5 00 04 */	lwz r6, 4(r5)
/* 8066E63C  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 8066E640  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8066E644  7C 00 18 40 */	cmplw r0, r3
/* 8066E648  41 80 FF B8 */	blt lbl_8066E600
/* 8066E64C  38 60 00 18 */	li r3, 0x18
/* 8066E650  4B C6 05 FD */	bl __nw__FUl
/* 8066E654  7C 7E 1B 79 */	or. r30, r3, r3
/* 8066E658  41 82 00 20 */	beq lbl_8066E678
/* 8066E65C  3C 80 80 67 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8066F258@ha */
/* 8066E660  38 04 F2 58 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8066F258@l */
/* 8066E664  90 1E 00 00 */	stw r0, 0(r30)
/* 8066E668  38 80 00 00 */	li r4, 0
/* 8066E66C  4B CB 9D 91 */	bl init__12J3DFrameCtrlFs
/* 8066E670  38 00 00 00 */	li r0, 0
/* 8066E674  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_8066E678:
/* 8066E678  93 DF 05 D4 */	stw r30, 0x5d4(r31)
/* 8066E67C  80 1F 05 D4 */	lwz r0, 0x5d4(r31)
/* 8066E680  28 00 00 00 */	cmplwi r0, 0
/* 8066E684  40 82 00 0C */	bne lbl_8066E690
/* 8066E688  38 60 00 00 */	li r3, 0
/* 8066E68C  48 00 01 30 */	b lbl_8066E7BC
lbl_8066E690:
/* 8066E690  3C 60 80 67 */	lis r3, d_a_do__stringBase0@ha /* 0x8066EFB0@ha */
/* 8066E694  38 63 EF B0 */	addi r3, r3, d_a_do__stringBase0@l /* 0x8066EFB0@l */
/* 8066E698  38 80 00 1D */	li r4, 0x1d
/* 8066E69C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066E6A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066E6A4  3F 85 00 02 */	addis r28, r5, 2
/* 8066E6A8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8066E6AC  7F 85 E3 78 */	mr r5, r28
/* 8066E6B0  38 C0 00 80 */	li r6, 0x80
/* 8066E6B4  4B 9C DC 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8066E6B8  7C 65 1B 78 */	mr r5, r3
/* 8066E6BC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066E6C0  80 63 00 04 */	lwz r3, 4(r3)
/* 8066E6C4  80 83 00 04 */	lwz r4, 4(r3)
/* 8066E6C8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8066E6CC  38 84 00 58 */	addi r4, r4, 0x58
/* 8066E6D0  38 C0 00 01 */	li r6, 1
/* 8066E6D4  38 E0 00 00 */	li r7, 0
/* 8066E6D8  3D 00 80 67 */	lis r8, lit_3662@ha /* 0x8066EDE8@ha */
/* 8066E6DC  C0 28 ED E8 */	lfs f1, lit_3662@l(r8)  /* 0x8066EDE8@l */
/* 8066E6E0  39 00 00 00 */	li r8, 0
/* 8066E6E4  39 20 FF FF */	li r9, -1
/* 8066E6E8  4B 99 EF 55 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8066E6EC  2C 03 00 00 */	cmpwi r3, 0
/* 8066E6F0  40 82 00 0C */	bne lbl_8066E6FC
/* 8066E6F4  38 60 00 00 */	li r3, 0
/* 8066E6F8  48 00 00 C4 */	b lbl_8066E7BC
lbl_8066E6FC:
/* 8066E6FC  38 60 00 18 */	li r3, 0x18
/* 8066E700  4B C6 05 4D */	bl __nw__FUl
/* 8066E704  7C 7E 1B 79 */	or. r30, r3, r3
/* 8066E708  41 82 00 20 */	beq lbl_8066E728
/* 8066E70C  3C 80 80 67 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8066F258@ha */
/* 8066E710  38 04 F2 58 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8066F258@l */
/* 8066E714  90 1E 00 00 */	stw r0, 0(r30)
/* 8066E718  38 80 00 00 */	li r4, 0
/* 8066E71C  4B CB 9C E1 */	bl init__12J3DFrameCtrlFs
/* 8066E720  38 00 00 00 */	li r0, 0
/* 8066E724  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_8066E728:
/* 8066E728  93 DF 05 D8 */	stw r30, 0x5d8(r31)
/* 8066E72C  80 1F 05 D8 */	lwz r0, 0x5d8(r31)
/* 8066E730  28 00 00 00 */	cmplwi r0, 0
/* 8066E734  40 82 00 0C */	bne lbl_8066E740
/* 8066E738  38 60 00 00 */	li r3, 0
/* 8066E73C  48 00 00 80 */	b lbl_8066E7BC
lbl_8066E740:
/* 8066E740  3C 60 80 67 */	lis r3, d_a_do__stringBase0@ha /* 0x8066EFB0@ha */
/* 8066E744  38 63 EF B0 */	addi r3, r3, d_a_do__stringBase0@l /* 0x8066EFB0@l */
/* 8066E748  38 80 00 20 */	li r4, 0x20
/* 8066E74C  7F 85 E3 78 */	mr r5, r28
/* 8066E750  38 C0 00 80 */	li r6, 0x80
/* 8066E754  4B 9C DB 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8066E758  7C 65 1B 78 */	mr r5, r3
/* 8066E75C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8066E760  80 63 00 04 */	lwz r3, 4(r3)
/* 8066E764  80 83 00 04 */	lwz r4, 4(r3)
/* 8066E768  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8066E76C  38 84 00 58 */	addi r4, r4, 0x58
/* 8066E770  38 C0 00 01 */	li r6, 1
/* 8066E774  38 E0 00 00 */	li r7, 0
/* 8066E778  3D 00 80 67 */	lis r8, lit_3662@ha /* 0x8066EDE8@ha */
/* 8066E77C  C0 28 ED E8 */	lfs f1, lit_3662@l(r8)  /* 0x8066EDE8@l */
/* 8066E780  39 00 00 00 */	li r8, 0
/* 8066E784  39 20 FF FF */	li r9, -1
/* 8066E788  4B 99 ED C5 */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 8066E78C  2C 03 00 00 */	cmpwi r3, 0
/* 8066E790  40 82 00 0C */	bne lbl_8066E79C
/* 8066E794  38 60 00 00 */	li r3, 0
/* 8066E798  48 00 00 24 */	b lbl_8066E7BC
lbl_8066E79C:
/* 8066E79C  38 7F 0B E4 */	addi r3, r31, 0xbe4
/* 8066E7A0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8066E7A4  38 A0 00 01 */	li r5, 1
/* 8066E7A8  81 9F 0B F4 */	lwz r12, 0xbf4(r31)
/* 8066E7AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8066E7B0  7D 89 03 A6 */	mtctr r12
/* 8066E7B4  4E 80 04 21 */	bctrl 
/* 8066E7B8  38 60 00 01 */	li r3, 1
lbl_8066E7BC:
/* 8066E7BC  39 61 00 30 */	addi r11, r1, 0x30
/* 8066E7C0  4B CF 3A 65 */	bl _restgpr_28
/* 8066E7C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8066E7C8  7C 08 03 A6 */	mtlr r0
/* 8066E7CC  38 21 00 30 */	addi r1, r1, 0x30
/* 8066E7D0  4E 80 00 20 */	blr 
