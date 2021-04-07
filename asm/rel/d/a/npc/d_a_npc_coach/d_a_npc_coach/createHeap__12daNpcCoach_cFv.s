lbl_8099E4C0:
/* 8099E4C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8099E4C4  7C 08 02 A6 */	mflr r0
/* 8099E4C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8099E4CC  39 61 00 30 */	addi r11, r1, 0x30
/* 8099E4D0  4B 9C 3D 09 */	bl _savegpr_28
/* 8099E4D4  7C 7F 1B 78 */	mr r31, r3
/* 8099E4D8  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099E4DC  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099E4E0  80 63 00 00 */	lwz r3, 0(r3)
/* 8099E4E4  38 80 00 25 */	li r4, 0x25
/* 8099E4E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8099E4EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8099E4F0  3F C5 00 02 */	addis r30, r5, 2
/* 8099E4F4  3B DE C2 F8 */	addi r30, r30, -15624
/* 8099E4F8  7F C5 F3 78 */	mr r5, r30
/* 8099E4FC  38 C0 00 80 */	li r6, 0x80
/* 8099E500  4B 69 DD ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099E504  7C 7D 1B 78 */	mr r29, r3
/* 8099E508  38 60 00 50 */	li r3, 0x50
/* 8099E50C  4B 93 07 41 */	bl __nw__FUl
/* 8099E510  7C 7C 1B 79 */	or. r28, r3, r3
/* 8099E514  41 82 00 74 */	beq lbl_8099E588
/* 8099E518  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099E51C  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099E520  80 63 00 00 */	lwz r3, 0(r3)
/* 8099E524  38 80 00 0F */	li r4, 0xf
/* 8099E528  7F C5 F3 78 */	mr r5, r30
/* 8099E52C  38 C0 00 80 */	li r6, 0x80
/* 8099E530  4B 69 DD BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099E534  7C 67 1B 78 */	mr r7, r3
/* 8099E538  38 00 FF FF */	li r0, -1
/* 8099E53C  90 01 00 08 */	stw r0, 8(r1)
/* 8099E540  38 1F 0C 3C */	addi r0, r31, 0xc3c
/* 8099E544  90 01 00 0C */	stw r0, 0xc(r1)
/* 8099E548  3C 00 00 08 */	lis r0, 8
/* 8099E54C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8099E550  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020084@ha */
/* 8099E554  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11020084@l */
/* 8099E558  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099E55C  7F 83 E3 78 */	mr r3, r28
/* 8099E560  7F A4 EB 78 */	mr r4, r29
/* 8099E564  38 A0 00 00 */	li r5, 0
/* 8099E568  38 C0 00 00 */	li r6, 0
/* 8099E56C  39 00 00 00 */	li r8, 0
/* 8099E570  39 20 00 02 */	li r9, 2
/* 8099E574  3D 40 80 9A */	lis r10, lit_5111@ha /* 0x809A502C@ha */
/* 8099E578  C0 2A 50 2C */	lfs f1, lit_5111@l(r10)  /* 0x809A502C@l */
/* 8099E57C  39 40 00 00 */	li r10, 0
/* 8099E580  4B 67 2D C9 */	bl __ct__15mDoExt_McaMorf2FP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8099E584  7C 7C 1B 78 */	mr r28, r3
lbl_8099E588:
/* 8099E588  93 9F 05 68 */	stw r28, 0x568(r31)
/* 8099E58C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8099E590  28 03 00 00 */	cmplwi r3, 0
/* 8099E594  41 82 00 1C */	beq lbl_8099E5B0
/* 8099E598  80 03 00 04 */	lwz r0, 4(r3)
/* 8099E59C  28 00 00 00 */	cmplwi r0, 0
/* 8099E5A0  40 82 00 10 */	bne lbl_8099E5B0
/* 8099E5A4  4B 67 3C 45 */	bl stopZelAnime__15mDoExt_McaMorf2Fv
/* 8099E5A8  38 00 00 00 */	li r0, 0
/* 8099E5AC  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_8099E5B0:
/* 8099E5B0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8099E5B4  28 03 00 00 */	cmplwi r3, 0
/* 8099E5B8  40 82 00 0C */	bne lbl_8099E5C4
/* 8099E5BC  38 60 00 00 */	li r3, 0
/* 8099E5C0  48 00 05 00 */	b lbl_8099EAC0
lbl_8099E5C4:
/* 8099E5C4  80 63 00 04 */	lwz r3, 4(r3)
/* 8099E5C8  83 A3 00 04 */	lwz r29, 4(r3)
/* 8099E5CC  38 A0 00 00 */	li r5, 0
/* 8099E5D0  3C 60 80 9A */	lis r3, jointHorseCallBack__FP8J3DJointi@ha /* 0x8099D6D8@ha */
/* 8099E5D4  38 83 D6 D8 */	addi r4, r3, jointHorseCallBack__FP8J3DJointi@l /* 0x8099D6D8@l */
/* 8099E5D8  48 00 00 18 */	b lbl_8099E5F0
lbl_8099E5DC:
/* 8099E5DC  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8099E5E0  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 8099E5E4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8099E5E8  90 83 00 04 */	stw r4, 4(r3)
/* 8099E5EC  38 A5 00 01 */	addi r5, r5, 1
lbl_8099E5F0:
/* 8099E5F0  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 8099E5F4  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 8099E5F8  7C 03 00 40 */	cmplw r3, r0
/* 8099E5FC  41 80 FF E0 */	blt lbl_8099E5DC
/* 8099E600  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8099E604  80 63 00 04 */	lwz r3, 4(r3)
/* 8099E608  93 E3 00 14 */	stw r31, 0x14(r3)
/* 8099E60C  38 60 00 18 */	li r3, 0x18
/* 8099E610  4B 93 06 3D */	bl __nw__FUl
/* 8099E614  7C 7C 1B 79 */	or. r28, r3, r3
/* 8099E618  41 82 00 20 */	beq lbl_8099E638
/* 8099E61C  3C 80 80 9A */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x809A528C@ha */
/* 8099E620  38 04 52 8C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x809A528C@l */
/* 8099E624  90 1C 00 00 */	stw r0, 0(r28)
/* 8099E628  38 80 00 00 */	li r4, 0
/* 8099E62C  4B 98 9D D1 */	bl init__12J3DFrameCtrlFs
/* 8099E630  38 00 00 00 */	li r0, 0
/* 8099E634  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_8099E638:
/* 8099E638  93 9F 05 6C */	stw r28, 0x56c(r31)
/* 8099E63C  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099E640  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099E644  80 63 00 00 */	lwz r3, 0(r3)
/* 8099E648  38 80 00 2D */	li r4, 0x2d
/* 8099E64C  7F C5 F3 78 */	mr r5, r30
/* 8099E650  38 C0 00 80 */	li r6, 0x80
/* 8099E654  4B 69 DC 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099E658  7C 65 1B 78 */	mr r5, r3
/* 8099E65C  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 8099E660  28 03 00 00 */	cmplwi r3, 0
/* 8099E664  41 82 00 2C */	beq lbl_8099E690
/* 8099E668  38 9D 00 58 */	addi r4, r29, 0x58
/* 8099E66C  38 C0 00 01 */	li r6, 1
/* 8099E670  38 E0 00 00 */	li r7, 0
/* 8099E674  3D 00 80 9A */	lis r8, lit_5111@ha /* 0x809A502C@ha */
/* 8099E678  C0 28 50 2C */	lfs f1, lit_5111@l(r8)  /* 0x809A502C@l */
/* 8099E67C  39 00 00 00 */	li r8, 0
/* 8099E680  39 20 FF FF */	li r9, -1
/* 8099E684  4B 66 EE C9 */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 8099E688  2C 03 00 00 */	cmpwi r3, 0
/* 8099E68C  40 82 00 0C */	bne lbl_8099E698
lbl_8099E690:
/* 8099E690  38 60 00 00 */	li r3, 0
/* 8099E694  48 00 04 2C */	b lbl_8099EAC0
lbl_8099E698:
/* 8099E698  38 60 00 1C */	li r3, 0x1c
/* 8099E69C  4B 93 05 B1 */	bl __nw__FUl
/* 8099E6A0  7C 7D 1B 79 */	or. r29, r3, r3
/* 8099E6A4  41 82 00 20 */	beq lbl_8099E6C4
/* 8099E6A8  3C 80 80 9A */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x809A528C@ha */
/* 8099E6AC  38 04 52 8C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x809A528C@l */
/* 8099E6B0  90 1D 00 00 */	stw r0, 0(r29)
/* 8099E6B4  38 80 00 00 */	li r4, 0
/* 8099E6B8  4B 98 9D 45 */	bl init__12J3DFrameCtrlFs
/* 8099E6BC  38 00 00 00 */	li r0, 0
/* 8099E6C0  90 1D 00 18 */	stw r0, 0x18(r29)
lbl_8099E6C4:
/* 8099E6C4  93 BF 05 70 */	stw r29, 0x570(r31)
/* 8099E6C8  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099E6CC  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099E6D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8099E6D4  38 80 00 0C */	li r4, 0xc
/* 8099E6D8  7F C5 F3 78 */	mr r5, r30
/* 8099E6DC  38 C0 00 80 */	li r6, 0x80
/* 8099E6E0  4B 69 DC 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099E6E4  7C 64 1B 78 */	mr r4, r3
/* 8099E6E8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8099E6EC  28 03 00 00 */	cmplwi r3, 0
/* 8099E6F0  41 82 00 2C */	beq lbl_8099E71C
/* 8099E6F4  38 A0 00 01 */	li r5, 1
/* 8099E6F8  38 C0 00 00 */	li r6, 0
/* 8099E6FC  3C E0 80 9A */	lis r7, lit_5111@ha /* 0x809A502C@ha */
/* 8099E700  C0 27 50 2C */	lfs f1, lit_5111@l(r7)  /* 0x809A502C@l */
/* 8099E704  38 E0 00 00 */	li r7, 0
/* 8099E708  39 00 FF FF */	li r8, -1
/* 8099E70C  39 20 00 00 */	li r9, 0
/* 8099E710  4B 66 F0 CD */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 8099E714  2C 03 00 00 */	cmpwi r3, 0
/* 8099E718  40 82 00 0C */	bne lbl_8099E724
lbl_8099E71C:
/* 8099E71C  38 60 00 00 */	li r3, 0
/* 8099E720  48 00 03 A0 */	b lbl_8099EAC0
lbl_8099E724:
/* 8099E724  3C 60 80 9A */	lis r3, lit_4121@ha /* 0x809A4F70@ha */
/* 8099E728  C0 03 4F 70 */	lfs f0, lit_4121@l(r3)  /* 0x809A4F70@l */
/* 8099E72C  D0 1F 0C E4 */	stfs f0, 0xce4(r31)
/* 8099E730  38 00 00 00 */	li r0, 0
/* 8099E734  90 1F 0C F4 */	stw r0, 0xcf4(r31)
/* 8099E738  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099E73C  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099E740  80 63 00 00 */	lwz r3, 0(r3)
/* 8099E744  38 80 00 39 */	li r4, 0x39
/* 8099E748  7F C5 F3 78 */	mr r5, r30
/* 8099E74C  38 C0 00 80 */	li r6, 0x80
/* 8099E750  4B 69 DB 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099E754  7C 66 1B 78 */	mr r6, r3
/* 8099E758  38 7F 0D 00 */	addi r3, r31, 0xd00
/* 8099E75C  38 80 00 02 */	li r4, 2
/* 8099E760  38 A0 00 07 */	li r5, 7
/* 8099E764  38 E0 00 01 */	li r7, 1
/* 8099E768  4B 67 4B F9 */	bl init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 8099E76C  2C 03 00 00 */	cmpwi r3, 0
/* 8099E770  40 82 00 0C */	bne lbl_8099E77C
/* 8099E774  38 60 00 00 */	li r3, 0
/* 8099E778  48 00 03 48 */	b lbl_8099EAC0
lbl_8099E77C:
/* 8099E77C  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099E780  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099E784  80 63 00 00 */	lwz r3, 0(r3)
/* 8099E788  38 80 00 39 */	li r4, 0x39
/* 8099E78C  7F C5 F3 78 */	mr r5, r30
/* 8099E790  38 C0 00 80 */	li r6, 0x80
/* 8099E794  4B 69 DB 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099E798  7C 66 1B 78 */	mr r6, r3
/* 8099E79C  38 7F 0D 3C */	addi r3, r31, 0xd3c
/* 8099E7A0  38 80 00 01 */	li r4, 1
/* 8099E7A4  38 A0 00 02 */	li r5, 2
/* 8099E7A8  38 E0 00 01 */	li r7, 1
/* 8099E7AC  4B 67 4B B5 */	bl init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 8099E7B0  2C 03 00 00 */	cmpwi r3, 0
/* 8099E7B4  40 82 00 0C */	bne lbl_8099E7C0
/* 8099E7B8  38 60 00 00 */	li r3, 0
/* 8099E7BC  48 00 03 04 */	b lbl_8099EAC0
lbl_8099E7C0:
/* 8099E7C0  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099E7C4  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099E7C8  80 63 00 00 */	lwz r3, 0(r3)
/* 8099E7CC  38 80 00 24 */	li r4, 0x24
/* 8099E7D0  7F C5 F3 78 */	mr r5, r30
/* 8099E7D4  38 C0 00 80 */	li r6, 0x80
/* 8099E7D8  4B 69 DB 15 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099E7DC  3C 80 00 08 */	lis r4, 8
/* 8099E7E0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8099E7E4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8099E7E8  4B 67 64 6D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8099E7EC  90 7F 0E 7C */	stw r3, 0xe7c(r31)
/* 8099E7F0  80 7F 0E 7C */	lwz r3, 0xe7c(r31)
/* 8099E7F4  28 03 00 00 */	cmplwi r3, 0
/* 8099E7F8  40 82 00 0C */	bne lbl_8099E804
/* 8099E7FC  38 60 00 00 */	li r3, 0
/* 8099E800  48 00 02 C0 */	b lbl_8099EAC0
lbl_8099E804:
/* 8099E804  80 A3 00 04 */	lwz r5, 4(r3)
/* 8099E808  38 C0 00 00 */	li r6, 0
/* 8099E80C  3C 60 80 9A */	lis r3, jointFrontWheelCallBack__FP8J3DJointi@ha /* 0x8099D72C@ha */
/* 8099E810  38 83 D7 2C */	addi r4, r3, jointFrontWheelCallBack__FP8J3DJointi@l /* 0x8099D72C@l */
/* 8099E814  48 00 00 2C */	b lbl_8099E840
lbl_8099E818:
/* 8099E818  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8099E81C  28 00 00 02 */	cmplwi r0, 2
/* 8099E820  41 82 00 0C */	beq lbl_8099E82C
/* 8099E824  28 00 00 03 */	cmplwi r0, 3
/* 8099E828  40 82 00 14 */	bne lbl_8099E83C
lbl_8099E82C:
/* 8099E82C  80 65 00 28 */	lwz r3, 0x28(r5)
/* 8099E830  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8099E834  7C 63 00 2E */	lwzx r3, r3, r0
/* 8099E838  90 83 00 04 */	stw r4, 4(r3)
lbl_8099E83C:
/* 8099E83C  38 C6 00 01 */	addi r6, r6, 1
lbl_8099E840:
/* 8099E840  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8099E844  A0 05 00 2C */	lhz r0, 0x2c(r5)
/* 8099E848  7C 03 00 40 */	cmplw r3, r0
/* 8099E84C  41 80 FF CC */	blt lbl_8099E818
/* 8099E850  80 7F 0E 7C */	lwz r3, 0xe7c(r31)
/* 8099E854  93 E3 00 14 */	stw r31, 0x14(r3)
/* 8099E858  38 60 00 C0 */	li r3, 0xc0
/* 8099E85C  4B 93 03 F1 */	bl __nw__FUl
/* 8099E860  7C 60 1B 79 */	or. r0, r3, r3
/* 8099E864  41 82 00 0C */	beq lbl_8099E870
/* 8099E868  4B 6D D1 09 */	bl __ct__4dBgWFv
/* 8099E86C  7C 60 1B 78 */	mr r0, r3
lbl_8099E870:
/* 8099E870  90 1F 15 1C */	stw r0, 0x151c(r31)
/* 8099E874  80 1F 15 1C */	lwz r0, 0x151c(r31)
/* 8099E878  28 00 00 00 */	cmplwi r0, 0
/* 8099E87C  40 82 00 0C */	bne lbl_8099E888
/* 8099E880  38 60 00 00 */	li r3, 0
/* 8099E884  48 00 02 3C */	b lbl_8099EAC0
lbl_8099E888:
/* 8099E888  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099E88C  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099E890  80 63 00 00 */	lwz r3, 0(r3)
/* 8099E894  38 80 00 33 */	li r4, 0x33
/* 8099E898  7F C5 F3 78 */	mr r5, r30
/* 8099E89C  38 C0 00 80 */	li r6, 0x80
/* 8099E8A0  4B 69 DA 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099E8A4  7C 64 1B 78 */	mr r4, r3
/* 8099E8A8  80 7F 15 1C */	lwz r3, 0x151c(r31)
/* 8099E8AC  38 A0 00 01 */	li r5, 1
/* 8099E8B0  38 DF 15 20 */	addi r6, r31, 0x1520
/* 8099E8B4  4B 6D B6 85 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8099E8B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8099E8BC  41 82 00 0C */	beq lbl_8099E8C8
/* 8099E8C0  38 00 00 00 */	li r0, 0
/* 8099E8C4  90 1F 15 1C */	stw r0, 0x151c(r31)
lbl_8099E8C8:
/* 8099E8C8  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099E8CC  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099E8D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8099E8D4  38 80 00 23 */	li r4, 0x23
/* 8099E8D8  7F C5 F3 78 */	mr r5, r30
/* 8099E8DC  38 C0 00 80 */	li r6, 0x80
/* 8099E8E0  4B 69 DA 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099E8E4  3C 80 00 08 */	lis r4, 8
/* 8099E8E8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8099E8EC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8099E8F0  4B 67 63 65 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8099E8F4  90 7F 15 D0 */	stw r3, 0x15d0(r31)
/* 8099E8F8  80 7F 15 D0 */	lwz r3, 0x15d0(r31)
/* 8099E8FC  28 03 00 00 */	cmplwi r3, 0
/* 8099E900  40 82 00 0C */	bne lbl_8099E90C
/* 8099E904  38 60 00 00 */	li r3, 0
/* 8099E908  48 00 01 B8 */	b lbl_8099EAC0
lbl_8099E90C:
/* 8099E90C  80 83 00 04 */	lwz r4, 4(r3)
/* 8099E910  38 C0 00 00 */	li r6, 0
/* 8099E914  48 00 00 58 */	b lbl_8099E96C
lbl_8099E918:
/* 8099E918  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8099E91C  28 00 00 01 */	cmplwi r0, 1
/* 8099E920  41 82 00 0C */	beq lbl_8099E92C
/* 8099E924  28 00 00 02 */	cmplwi r0, 2
/* 8099E928  40 82 00 20 */	bne lbl_8099E948
lbl_8099E92C:
/* 8099E92C  80 64 00 28 */	lwz r3, 0x28(r4)
/* 8099E930  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8099E934  7C A3 00 2E */	lwzx r5, r3, r0
/* 8099E938  3C 60 80 9A */	lis r3, jointRearWheelCallBack__FP8J3DJointi@ha /* 0x8099D80C@ha */
/* 8099E93C  38 03 D8 0C */	addi r0, r3, jointRearWheelCallBack__FP8J3DJointi@l /* 0x8099D80C@l */
/* 8099E940  90 05 00 04 */	stw r0, 4(r5)
/* 8099E944  48 00 00 24 */	b lbl_8099E968
lbl_8099E948:
/* 8099E948  28 00 00 04 */	cmplwi r0, 4
/* 8099E94C  40 82 00 1C */	bne lbl_8099E968
/* 8099E950  80 64 00 28 */	lwz r3, 0x28(r4)
/* 8099E954  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8099E958  7C A3 00 2E */	lwzx r5, r3, r0
/* 8099E95C  3C 60 80 9A */	lis r3, jointCoachCallBack__FP8J3DJointi@ha /* 0x8099D8EC@ha */
/* 8099E960  38 03 D8 EC */	addi r0, r3, jointCoachCallBack__FP8J3DJointi@l /* 0x8099D8EC@l */
/* 8099E964  90 05 00 04 */	stw r0, 4(r5)
lbl_8099E968:
/* 8099E968  38 C6 00 01 */	addi r6, r6, 1
lbl_8099E96C:
/* 8099E96C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8099E970  A0 04 00 2C */	lhz r0, 0x2c(r4)
/* 8099E974  7C 03 00 40 */	cmplw r3, r0
/* 8099E978  41 80 FF A0 */	blt lbl_8099E918
/* 8099E97C  80 7F 15 D0 */	lwz r3, 0x15d0(r31)
/* 8099E980  93 E3 00 14 */	stw r31, 0x14(r3)
/* 8099E984  38 60 00 C0 */	li r3, 0xc0
/* 8099E988  4B 93 02 C5 */	bl __nw__FUl
/* 8099E98C  7C 60 1B 79 */	or. r0, r3, r3
/* 8099E990  41 82 00 0C */	beq lbl_8099E99C
/* 8099E994  4B 6D CF DD */	bl __ct__4dBgWFv
/* 8099E998  7C 60 1B 78 */	mr r0, r3
lbl_8099E99C:
/* 8099E99C  90 1F 1B 34 */	stw r0, 0x1b34(r31)
/* 8099E9A0  80 1F 1B 34 */	lwz r0, 0x1b34(r31)
/* 8099E9A4  28 00 00 00 */	cmplwi r0, 0
/* 8099E9A8  40 82 00 0C */	bne lbl_8099E9B4
/* 8099E9AC  38 60 00 00 */	li r3, 0
/* 8099E9B0  48 00 01 10 */	b lbl_8099EAC0
lbl_8099E9B4:
/* 8099E9B4  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099E9B8  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099E9BC  80 63 00 00 */	lwz r3, 0(r3)
/* 8099E9C0  38 80 00 32 */	li r4, 0x32
/* 8099E9C4  7F C5 F3 78 */	mr r5, r30
/* 8099E9C8  38 C0 00 80 */	li r6, 0x80
/* 8099E9CC  4B 69 D9 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099E9D0  7C 64 1B 78 */	mr r4, r3
/* 8099E9D4  80 7F 1B 34 */	lwz r3, 0x1b34(r31)
/* 8099E9D8  38 A0 00 01 */	li r5, 1
/* 8099E9DC  38 DF 1B 38 */	addi r6, r31, 0x1b38
/* 8099E9E0  4B 6D B5 59 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8099E9E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8099E9E8  41 82 00 0C */	beq lbl_8099E9F4
/* 8099E9EC  38 00 00 00 */	li r0, 0
/* 8099E9F0  90 1F 1B 34 */	stw r0, 0x1b34(r31)
lbl_8099E9F4:
/* 8099E9F4  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099E9F8  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099E9FC  80 63 00 00 */	lwz r3, 0(r3)
/* 8099EA00  38 80 00 27 */	li r4, 0x27
/* 8099EA04  7F C5 F3 78 */	mr r5, r30
/* 8099EA08  38 C0 00 80 */	li r6, 0x80
/* 8099EA0C  4B 69 D8 E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099EA10  7C 7D 1B 78 */	mr r29, r3
/* 8099EA14  38 60 00 58 */	li r3, 0x58
/* 8099EA18  4B 93 02 35 */	bl __nw__FUl
/* 8099EA1C  7C 7C 1B 79 */	or. r28, r3, r3
/* 8099EA20  41 82 00 6C */	beq lbl_8099EA8C
/* 8099EA24  3C 60 80 9A */	lis r3, l_arcName@ha /* 0x809A5130@ha */
/* 8099EA28  38 63 51 30 */	addi r3, r3, l_arcName@l /* 0x809A5130@l */
/* 8099EA2C  80 63 00 00 */	lwz r3, 0(r3)
/* 8099EA30  38 80 00 20 */	li r4, 0x20
/* 8099EA34  7F C5 F3 78 */	mr r5, r30
/* 8099EA38  38 C0 00 80 */	li r6, 0x80
/* 8099EA3C  4B 69 D8 B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099EA40  7C 67 1B 78 */	mr r7, r3
/* 8099EA44  38 1F 21 54 */	addi r0, r31, 0x2154
/* 8099EA48  90 01 00 08 */	stw r0, 8(r1)
/* 8099EA4C  3C 00 00 08 */	lis r0, 8
/* 8099EA50  90 01 00 0C */	stw r0, 0xc(r1)
/* 8099EA54  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8099EA58  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8099EA5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8099EA60  7F 83 E3 78 */	mr r3, r28
/* 8099EA64  7F A4 EB 78 */	mr r4, r29
/* 8099EA68  38 A0 00 00 */	li r5, 0
/* 8099EA6C  38 C0 00 00 */	li r6, 0
/* 8099EA70  39 00 FF FF */	li r8, -1
/* 8099EA74  3D 20 80 9A */	lis r9, lit_5111@ha /* 0x809A502C@ha */
/* 8099EA78  C0 29 50 2C */	lfs f1, lit_5111@l(r9)  /* 0x809A502C@l */
/* 8099EA7C  39 20 00 00 */	li r9, 0
/* 8099EA80  39 40 FF FF */	li r10, -1
/* 8099EA84  4B 67 1D 4D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8099EA88  7C 7C 1B 78 */	mr r28, r3
lbl_8099EA8C:
/* 8099EA8C  93 9F 1D C8 */	stw r28, 0x1dc8(r31)
/* 8099EA90  80 7F 1D C8 */	lwz r3, 0x1dc8(r31)
/* 8099EA94  28 03 00 00 */	cmplwi r3, 0
/* 8099EA98  41 82 00 1C */	beq lbl_8099EAB4
/* 8099EA9C  80 03 00 04 */	lwz r0, 4(r3)
/* 8099EAA0  28 00 00 00 */	cmplwi r0, 0
/* 8099EAA4  40 82 00 10 */	bne lbl_8099EAB4
/* 8099EAA8  4B 67 28 69 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 8099EAAC  38 00 00 00 */	li r0, 0
/* 8099EAB0  90 1F 1D C8 */	stw r0, 0x1dc8(r31)
lbl_8099EAB4:
/* 8099EAB4  80 7F 1D C8 */	lwz r3, 0x1dc8(r31)
/* 8099EAB8  30 03 FF FF */	addic r0, r3, -1
/* 8099EABC  7C 60 19 10 */	subfe r3, r0, r3
lbl_8099EAC0:
/* 8099EAC0  39 61 00 30 */	addi r11, r1, 0x30
/* 8099EAC4  4B 9C 37 61 */	bl _restgpr_28
/* 8099EAC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8099EACC  7C 08 03 A6 */	mtlr r0
/* 8099EAD0  38 21 00 30 */	addi r1, r1, 0x30
/* 8099EAD4  4E 80 00 20 */	blr 
