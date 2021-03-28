lbl_80B9453C:
/* 80B9453C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B94540  7C 08 02 A6 */	mflr r0
/* 80B94544  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B94548  39 61 00 30 */	addi r11, r1, 0x30
/* 80B9454C  4B 7C DC 90 */	b _savegpr_29
/* 80B94550  7C 7F 1B 78 */	mr r31, r3
/* 80B94554  3C 60 80 BA */	lis r3, cNullVec__6Z2Calc@ha
/* 80B94558  38 A3 B2 84 */	addi r5, r3, cNullVec__6Z2Calc@l
/* 80B9455C  3B C0 00 00 */	li r30, 0
/* 80B94560  88 1F 14 4C */	lbz r0, 0x144c(r31)
/* 80B94564  28 00 00 01 */	cmplwi r0, 1
/* 80B94568  40 82 00 44 */	bne lbl_80B945AC
/* 80B9456C  80 85 00 28 */	lwz r4, 0x28(r5)
/* 80B94570  2C 04 00 00 */	cmpwi r4, 0
/* 80B94574  41 80 00 74 */	blt lbl_80B945E8
/* 80B94578  38 65 00 28 */	addi r3, r5, 0x28
/* 80B9457C  80 03 00 04 */	lwz r0, 4(r3)
/* 80B94580  54 00 10 3A */	slwi r0, r0, 2
/* 80B94584  38 65 01 10 */	addi r3, r5, 0x110
/* 80B94588  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B9458C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B94590  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B94594  3C A5 00 02 */	addis r5, r5, 2
/* 80B94598  38 C0 00 80 */	li r6, 0x80
/* 80B9459C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B945A0  4B 4A 7D 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B945A4  7C 7E 1B 78 */	mr r30, r3
/* 80B945A8  48 00 00 40 */	b lbl_80B945E8
lbl_80B945AC:
/* 80B945AC  80 85 00 20 */	lwz r4, 0x20(r5)
/* 80B945B0  2C 04 00 00 */	cmpwi r4, 0
/* 80B945B4  41 80 00 34 */	blt lbl_80B945E8
/* 80B945B8  38 65 00 20 */	addi r3, r5, 0x20
/* 80B945BC  80 03 00 04 */	lwz r0, 4(r3)
/* 80B945C0  54 00 10 3A */	slwi r0, r0, 2
/* 80B945C4  38 65 01 10 */	addi r3, r5, 0x110
/* 80B945C8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B945CC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B945D0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B945D4  3C A5 00 02 */	addis r5, r5, 2
/* 80B945D8  38 C0 00 80 */	li r6, 0x80
/* 80B945DC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B945E0  4B 4A 7D 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B945E4  7C 7E 1B 78 */	mr r30, r3
lbl_80B945E8:
/* 80B945E8  38 60 00 58 */	li r3, 0x58
/* 80B945EC  4B 73 A6 60 */	b __nw__FUl
/* 80B945F0  7C 60 1B 79 */	or. r0, r3, r3
/* 80B945F4  41 82 00 4C */	beq lbl_80B94640
/* 80B945F8  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 80B945FC  90 01 00 08 */	stw r0, 8(r1)
/* 80B94600  3C 00 00 08 */	lis r0, 8
/* 80B94604  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B94608  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B9460C  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B94610  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B94614  7F C4 F3 78 */	mr r4, r30
/* 80B94618  38 A0 00 00 */	li r5, 0
/* 80B9461C  38 C0 00 00 */	li r6, 0
/* 80B94620  38 E0 00 00 */	li r7, 0
/* 80B94624  39 00 FF FF */	li r8, -1
/* 80B94628  3D 20 80 BA */	lis r9, lit_4521@ha
/* 80B9462C  C0 29 B0 80 */	lfs f1, lit_4521@l(r9)
/* 80B94630  39 20 00 00 */	li r9, 0
/* 80B94634  39 40 FF FF */	li r10, -1
/* 80B94638  4B 47 C1 98 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B9463C  7C 60 1B 78 */	mr r0, r3
lbl_80B94640:
/* 80B94640  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80B94644  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B94648  28 03 00 00 */	cmplwi r3, 0
/* 80B9464C  41 82 00 1C */	beq lbl_80B94668
/* 80B94650  80 03 00 04 */	lwz r0, 4(r3)
/* 80B94654  28 00 00 00 */	cmplwi r0, 0
/* 80B94658  40 82 00 10 */	bne lbl_80B94668
/* 80B9465C  4B 47 CC B4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80B94660  38 00 00 00 */	li r0, 0
/* 80B94664  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80B94668:
/* 80B94668  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B9466C  28 03 00 00 */	cmplwi r3, 0
/* 80B94670  40 82 00 0C */	bne lbl_80B9467C
/* 80B94674  38 60 00 00 */	li r3, 0
/* 80B94678  48 00 01 A8 */	b lbl_80B94820
lbl_80B9467C:
/* 80B9467C  80 83 00 04 */	lwz r4, 4(r3)
/* 80B94680  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B94684  38 A0 00 01 */	li r5, 1
/* 80B94688  4B 47 9E B4 */	b create__21mDoExt_invisibleModelFP8J3DModelUc
/* 80B9468C  2C 03 00 00 */	cmpwi r3, 0
/* 80B94690  40 82 00 0C */	bne lbl_80B9469C
/* 80B94694  38 60 00 00 */	li r3, 0
/* 80B94698  48 00 01 88 */	b lbl_80B94820
lbl_80B9469C:
/* 80B9469C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B946A0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B946A4  38 C0 00 00 */	li r6, 0
/* 80B946A8  3C 60 80 B9 */	lis r3, ctrlJointCallBack__11daNpc_zrZ_cFP8J3DJointi@ha
/* 80B946AC  38 83 51 14 */	addi r4, r3, ctrlJointCallBack__11daNpc_zrZ_cFP8J3DJointi@l
/* 80B946B0  48 00 00 18 */	b lbl_80B946C8
lbl_80B946B4:
/* 80B946B4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80B946B8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B946BC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B946C0  90 83 00 04 */	stw r4, 4(r3)
/* 80B946C4  38 C6 00 01 */	addi r6, r6, 1
lbl_80B946C8:
/* 80B946C8  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B946CC  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80B946D0  7C 03 00 40 */	cmplw r3, r0
/* 80B946D4  41 80 FF E0 */	blt lbl_80B946B4
/* 80B946D8  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B946DC  38 60 01 08 */	li r3, 0x108
/* 80B946E0  4B 73 A5 6C */	b __nw__FUl
/* 80B946E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B946E8  41 82 00 D0 */	beq lbl_80B947B8
/* 80B946EC  7F DD F3 78 */	mr r29, r30
/* 80B946F0  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80B946F4  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80B946F8  90 1E 00 00 */	stw r0, 0(r30)
/* 80B946FC  38 7E 00 04 */	addi r3, r30, 4
/* 80B94700  3C 80 80 B9 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80B94704  38 84 49 DC */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80B94708  3C A0 80 B9 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80B9470C  38 A5 49 A0 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80B94710  38 C0 00 08 */	li r6, 8
/* 80B94714  38 E0 00 02 */	li r7, 2
/* 80B94718  4B 7C D6 48 */	b __construct_array
/* 80B9471C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B94720  3C 80 80 B9 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80B94724  38 84 49 88 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80B94728  3C A0 80 B9 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80B9472C  38 A5 49 4C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80B94730  38 C0 00 08 */	li r6, 8
/* 80B94734  38 E0 00 08 */	li r7, 8
/* 80B94738  4B 7C D6 28 */	b __construct_array
/* 80B9473C  38 7E 00 54 */	addi r3, r30, 0x54
/* 80B94740  3C 80 80 B9 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80B94744  38 84 49 28 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80B94748  3C A0 80 B9 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80B9474C  38 A5 48 E0 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80B94750  38 C0 00 0C */	li r6, 0xc
/* 80B94754  38 E0 00 08 */	li r7, 8
/* 80B94758  4B 7C D6 08 */	b __construct_array
/* 80B9475C  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80B94760  3C 80 80 B9 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80B94764  38 84 48 C8 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80B94768  3C A0 80 B9 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80B9476C  38 A5 48 8C */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80B94770  38 C0 00 08 */	li r6, 8
/* 80B94774  38 E0 00 04 */	li r7, 4
/* 80B94778  4B 7C D5 E8 */	b __construct_array
/* 80B9477C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80B94780  3C 80 80 B9 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80B94784  38 84 48 74 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80B94788  3C A0 80 B9 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80B9478C  38 A5 48 38 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80B94790  38 C0 00 08 */	li r6, 8
/* 80B94794  38 E0 00 04 */	li r7, 4
/* 80B94798  4B 7C D5 C8 */	b __construct_array
/* 80B9479C  7F C3 F3 78 */	mr r3, r30
/* 80B947A0  4B 79 7B 80 */	b initialize__14J3DMaterialAnmFv
/* 80B947A4  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 80B947A8  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 80B947AC  90 1D 00 00 */	stw r0, 0(r29)
/* 80B947B0  7F A3 EB 78 */	mr r3, r29
/* 80B947B4  4B 5B BF 84 */	b initialize__15daNpcF_MatAnm_cFv
lbl_80B947B8:
/* 80B947B8  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 80B947BC  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 80B947C0  28 00 00 00 */	cmplwi r0, 0
/* 80B947C4  40 82 00 0C */	bne lbl_80B947D0
/* 80B947C8  38 60 00 00 */	li r3, 0
/* 80B947CC  48 00 00 54 */	b lbl_80B94820
lbl_80B947D0:
/* 80B947D0  7F E3 FB 78 */	mr r3, r31
/* 80B947D4  38 80 00 01 */	li r4, 1
/* 80B947D8  38 A0 00 00 */	li r5, 0
/* 80B947DC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B947E0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B947E4  7D 89 03 A6 */	mtctr r12
/* 80B947E8  4E 80 04 21 */	bctrl 
/* 80B947EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B947F0  40 82 00 0C */	bne lbl_80B947FC
/* 80B947F4  38 60 00 00 */	li r3, 0
/* 80B947F8  48 00 00 28 */	b lbl_80B94820
lbl_80B947FC:
/* 80B947FC  7F E3 FB 78 */	mr r3, r31
/* 80B94800  38 80 00 02 */	li r4, 2
/* 80B94804  3C A0 80 BA */	lis r5, lit_4522@ha
/* 80B94808  C0 25 B0 84 */	lfs f1, lit_4522@l(r5)
/* 80B9480C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B94810  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B94814  7D 89 03 A6 */	mtctr r12
/* 80B94818  4E 80 04 21 */	bctrl 
/* 80B9481C  38 60 00 01 */	li r3, 1
lbl_80B94820:
/* 80B94820  39 61 00 30 */	addi r11, r1, 0x30
/* 80B94824  4B 7C DA 04 */	b _restgpr_29
/* 80B94828  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B9482C  7C 08 03 A6 */	mtlr r0
/* 80B94830  38 21 00 30 */	addi r1, r1, 0x30
/* 80B94834  4E 80 00 20 */	blr 
