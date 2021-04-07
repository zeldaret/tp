lbl_80A9C69C:
/* 80A9C69C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A9C6A0  7C 08 02 A6 */	mflr r0
/* 80A9C6A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A9C6A8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A9C6AC  4B 8C 5B 21 */	bl _savegpr_25
/* 80A9C6B0  7C 7F 1B 78 */	mr r31, r3
/* 80A9C6B4  3C 60 80 AA */	lis r3, m__24daNpc_Pachi_Taro_Param_c@ha /* 0x80AA1604@ha */
/* 80A9C6B8  3B A3 16 04 */	addi r29, r3, m__24daNpc_Pachi_Taro_Param_c@l /* 0x80AA1604@l */
/* 80A9C6BC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A9C6C0  28 00 00 01 */	cmplwi r0, 1
/* 80A9C6C4  38 00 00 00 */	li r0, 0
/* 80A9C6C8  40 82 00 08 */	bne lbl_80A9C6D0
/* 80A9C6CC  38 00 00 03 */	li r0, 3
lbl_80A9C6D0:
/* 80A9C6D0  54 05 18 38 */	slwi r5, r0, 3
/* 80A9C6D4  3C 60 80 AA */	lis r3, l_bmdData@ha /* 0x80AA194C@ha */
/* 80A9C6D8  38 83 19 4C */	addi r4, r3, l_bmdData@l /* 0x80AA194C@l */
/* 80A9C6DC  7C 64 2A 14 */	add r3, r4, r5
/* 80A9C6E0  80 03 00 04 */	lwz r0, 4(r3)
/* 80A9C6E4  54 00 10 3A */	slwi r0, r0, 2
/* 80A9C6E8  3C 60 80 AA */	lis r3, l_resNameList@ha /* 0x80AA19CC@ha */
/* 80A9C6EC  38 63 19 CC */	addi r3, r3, l_resNameList@l /* 0x80AA19CC@l */
/* 80A9C6F0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A9C6F4  7C 84 28 2E */	lwzx r4, r4, r5
/* 80A9C6F8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9C6FC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9C700  3F C5 00 02 */	addis r30, r5, 2
/* 80A9C704  3B DE C2 F8 */	addi r30, r30, -15624
/* 80A9C708  7F C5 F3 78 */	mr r5, r30
/* 80A9C70C  38 C0 00 80 */	li r6, 0x80
/* 80A9C710  4B 59 FB DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A9C714  7C 79 1B 79 */	or. r25, r3, r3
/* 80A9C718  40 82 00 0C */	bne lbl_80A9C724
/* 80A9C71C  38 60 00 01 */	li r3, 1
/* 80A9C720  48 00 02 E4 */	b lbl_80A9CA04
lbl_80A9C724:
/* 80A9C724  38 60 00 58 */	li r3, 0x58
/* 80A9C728  4B 83 25 25 */	bl __nw__FUl
/* 80A9C72C  7C 60 1B 79 */	or. r0, r3, r3
/* 80A9C730  41 82 00 48 */	beq lbl_80A9C778
/* 80A9C734  38 1F 05 80 */	addi r0, r31, 0x580
/* 80A9C738  90 01 00 08 */	stw r0, 8(r1)
/* 80A9C73C  3C 00 00 08 */	lis r0, 8
/* 80A9C740  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9C744  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A9C748  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A9C74C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9C750  7F 24 CB 78 */	mr r4, r25
/* 80A9C754  38 A0 00 00 */	li r5, 0
/* 80A9C758  38 C0 00 00 */	li r6, 0
/* 80A9C75C  38 E0 00 00 */	li r7, 0
/* 80A9C760  39 00 FF FF */	li r8, -1
/* 80A9C764  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80A9C768  39 20 00 00 */	li r9, 0
/* 80A9C76C  39 40 FF FF */	li r10, -1
/* 80A9C770  4B 57 40 61 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A9C774  7C 60 1B 78 */	mr r0, r3
lbl_80A9C778:
/* 80A9C778  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80A9C77C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80A9C780  28 03 00 00 */	cmplwi r3, 0
/* 80A9C784  41 82 00 10 */	beq lbl_80A9C794
/* 80A9C788  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A9C78C  28 05 00 00 */	cmplwi r5, 0
/* 80A9C790  40 82 00 0C */	bne lbl_80A9C79C
lbl_80A9C794:
/* 80A9C794  38 60 00 00 */	li r3, 0
/* 80A9C798  48 00 02 6C */	b lbl_80A9CA04
lbl_80A9C79C:
/* 80A9C79C  38 C0 00 00 */	li r6, 0
/* 80A9C7A0  3C 60 80 AA */	lis r3, ctrlJointCallBack__18daNpc_Pachi_Taro_cFP8J3DJointi@ha /* 0x80A9CCE0@ha */
/* 80A9C7A4  38 83 CC E0 */	addi r4, r3, ctrlJointCallBack__18daNpc_Pachi_Taro_cFP8J3DJointi@l /* 0x80A9CCE0@l */
/* 80A9C7A8  48 00 00 18 */	b lbl_80A9C7C0
lbl_80A9C7AC:
/* 80A9C7AC  80 79 00 28 */	lwz r3, 0x28(r25)
/* 80A9C7B0  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A9C7B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A9C7B8  90 83 00 04 */	stw r4, 4(r3)
/* 80A9C7BC  38 C6 00 01 */	addi r6, r6, 1
lbl_80A9C7C0:
/* 80A9C7C0  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A9C7C4  A0 19 00 2C */	lhz r0, 0x2c(r25)
/* 80A9C7C8  7C 03 00 40 */	cmplw r3, r0
/* 80A9C7CC  41 80 FF E0 */	blt lbl_80A9C7AC
/* 80A9C7D0  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80A9C7D4  38 60 01 08 */	li r3, 0x108
/* 80A9C7D8  4B 83 24 75 */	bl __nw__FUl
/* 80A9C7DC  7C 7B 1B 79 */	or. r27, r3, r3
/* 80A9C7E0  41 82 00 D0 */	beq lbl_80A9C8B0
/* 80A9C7E4  7F 7A DB 78 */	mr r26, r27
/* 80A9C7E8  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80A9C7EC  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80A9C7F0  90 1B 00 00 */	stw r0, 0(r27)
/* 80A9C7F4  38 7A 00 04 */	addi r3, r26, 4
/* 80A9C7F8  3C 80 80 AA */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80A9CBC0@ha */
/* 80A9C7FC  38 84 CB C0 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80A9CBC0@l */
/* 80A9C800  3C A0 80 AA */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80A9CB84@ha */
/* 80A9C804  38 A5 CB 84 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80A9CB84@l */
/* 80A9C808  38 C0 00 08 */	li r6, 8
/* 80A9C80C  38 E0 00 02 */	li r7, 2
/* 80A9C810  4B 8C 55 51 */	bl __construct_array
/* 80A9C814  38 7A 00 14 */	addi r3, r26, 0x14
/* 80A9C818  3C 80 80 AA */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80A9CB6C@ha */
/* 80A9C81C  38 84 CB 6C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80A9CB6C@l */
/* 80A9C820  3C A0 80 AA */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80A9CB30@ha */
/* 80A9C824  38 A5 CB 30 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80A9CB30@l */
/* 80A9C828  38 C0 00 08 */	li r6, 8
/* 80A9C82C  38 E0 00 08 */	li r7, 8
/* 80A9C830  4B 8C 55 31 */	bl __construct_array
/* 80A9C834  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A9C838  3C 80 80 AA */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80A9CB0C@ha */
/* 80A9C83C  38 84 CB 0C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80A9CB0C@l */
/* 80A9C840  3C A0 80 AA */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80A9CAC4@ha */
/* 80A9C844  38 A5 CA C4 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80A9CAC4@l */
/* 80A9C848  38 C0 00 0C */	li r6, 0xc
/* 80A9C84C  38 E0 00 08 */	li r7, 8
/* 80A9C850  4B 8C 55 11 */	bl __construct_array
/* 80A9C854  38 7A 00 B4 */	addi r3, r26, 0xb4
/* 80A9C858  3C 80 80 AA */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80A9CAAC@ha */
/* 80A9C85C  38 84 CA AC */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80A9CAAC@l */
/* 80A9C860  3C A0 80 AA */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80A9CA70@ha */
/* 80A9C864  38 A5 CA 70 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80A9CA70@l */
/* 80A9C868  38 C0 00 08 */	li r6, 8
/* 80A9C86C  38 E0 00 04 */	li r7, 4
/* 80A9C870  4B 8C 54 F1 */	bl __construct_array
/* 80A9C874  38 7A 00 D4 */	addi r3, r26, 0xd4
/* 80A9C878  3C 80 80 AA */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80A9CA58@ha */
/* 80A9C87C  38 84 CA 58 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80A9CA58@l */
/* 80A9C880  3C A0 80 AA */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80A9CA1C@ha */
/* 80A9C884  38 A5 CA 1C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80A9CA1C@l */
/* 80A9C888  38 C0 00 08 */	li r6, 8
/* 80A9C88C  38 E0 00 04 */	li r7, 4
/* 80A9C890  4B 8C 54 D1 */	bl __construct_array
/* 80A9C894  7F 43 D3 78 */	mr r3, r26
/* 80A9C898  4B 88 FA 89 */	bl initialize__14J3DMaterialAnmFv
/* 80A9C89C  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80A9C8A0  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80A9C8A4  90 1B 00 00 */	stw r0, 0(r27)
/* 80A9C8A8  7F 63 DB 78 */	mr r3, r27
/* 80A9C8AC  4B 6A 8E B9 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80A9C8B0:
/* 80A9C8B0  93 7F 09 6C */	stw r27, 0x96c(r31)
/* 80A9C8B4  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80A9C8B8  28 00 00 00 */	cmplwi r0, 0
/* 80A9C8BC  40 82 00 0C */	bne lbl_80A9C8C8
/* 80A9C8C0  38 60 00 00 */	li r3, 0
/* 80A9C8C4  48 00 01 40 */	b lbl_80A9CA04
lbl_80A9C8C8:
/* 80A9C8C8  3B 40 00 00 */	li r26, 0
/* 80A9C8CC  3B 20 00 00 */	li r25, 0
/* 80A9C8D0  3B 7D 00 AC */	addi r27, r29, 0xac
/* 80A9C8D4  3C 60 80 AA */	lis r3, l_bmdData@ha /* 0x80AA194C@ha */
/* 80A9C8D8  3B 83 19 4C */	addi r28, r3, l_bmdData@l /* 0x80AA194C@l */
lbl_80A9C8DC:
/* 80A9C8DC  7C 1B C8 2E */	lwzx r0, r27, r25
/* 80A9C8E0  54 00 18 38 */	slwi r0, r0, 3
/* 80A9C8E4  7C 7C 02 14 */	add r3, r28, r0
/* 80A9C8E8  80 83 00 00 */	lwz r4, 0(r3)
/* 80A9C8EC  2C 04 00 00 */	cmpwi r4, 0
/* 80A9C8F0  41 80 00 28 */	blt lbl_80A9C918
/* 80A9C8F4  80 03 00 04 */	lwz r0, 4(r3)
/* 80A9C8F8  54 00 10 3A */	slwi r0, r0, 2
/* 80A9C8FC  3C 60 80 AA */	lis r3, l_resNameList@ha /* 0x80AA19CC@ha */
/* 80A9C900  38 63 19 CC */	addi r3, r3, l_resNameList@l /* 0x80AA19CC@l */
/* 80A9C904  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A9C908  7F C5 F3 78 */	mr r5, r30
/* 80A9C90C  38 C0 00 80 */	li r6, 0x80
/* 80A9C910  4B 59 F9 DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A9C914  48 00 00 08 */	b lbl_80A9C91C
lbl_80A9C918:
/* 80A9C918  38 60 00 00 */	li r3, 0
lbl_80A9C91C:
/* 80A9C91C  28 03 00 00 */	cmplwi r3, 0
/* 80A9C920  41 82 00 20 */	beq lbl_80A9C940
/* 80A9C924  3C 80 00 08 */	lis r4, 8
/* 80A9C928  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80A9C92C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80A9C930  4B 57 83 25 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A9C934  38 19 0E 44 */	addi r0, r25, 0xe44
/* 80A9C938  7C 7F 01 2E */	stwx r3, r31, r0
/* 80A9C93C  48 00 00 10 */	b lbl_80A9C94C
lbl_80A9C940:
/* 80A9C940  38 60 00 00 */	li r3, 0
/* 80A9C944  38 19 0E 44 */	addi r0, r25, 0xe44
/* 80A9C948  7C 7F 01 2E */	stwx r3, r31, r0
lbl_80A9C94C:
/* 80A9C94C  3B 5A 00 01 */	addi r26, r26, 1
/* 80A9C950  2C 1A 00 02 */	cmpwi r26, 2
/* 80A9C954  3B 39 00 04 */	addi r25, r25, 4
/* 80A9C958  41 80 FF 84 */	blt lbl_80A9C8DC
/* 80A9C95C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A9C960  28 00 00 00 */	cmplwi r0, 0
/* 80A9C964  41 82 00 54 */	beq lbl_80A9C9B8
/* 80A9C968  7F E3 FB 78 */	mr r3, r31
/* 80A9C96C  38 80 00 17 */	li r4, 0x17
/* 80A9C970  38 A0 00 00 */	li r5, 0
/* 80A9C974  4B 6A DA 15 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80A9C978  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A9C97C  41 82 00 34 */	beq lbl_80A9C9B0
/* 80A9C980  7F E3 FB 78 */	mr r3, r31
/* 80A9C984  38 80 00 21 */	li r4, 0x21
/* 80A9C988  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 80A9C98C  38 A0 00 00 */	li r5, 0
/* 80A9C990  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80A9C994  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A9C998  7D 89 03 A6 */	mtctr r12
/* 80A9C99C  4E 80 04 21 */	bctrl 
/* 80A9C9A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A9C9A4  41 82 00 0C */	beq lbl_80A9C9B0
/* 80A9C9A8  38 60 00 01 */	li r3, 1
/* 80A9C9AC  48 00 00 58 */	b lbl_80A9CA04
lbl_80A9C9B0:
/* 80A9C9B0  38 60 00 00 */	li r3, 0
/* 80A9C9B4  48 00 00 50 */	b lbl_80A9CA04
lbl_80A9C9B8:
/* 80A9C9B8  7F E3 FB 78 */	mr r3, r31
/* 80A9C9BC  38 80 00 01 */	li r4, 1
/* 80A9C9C0  38 A0 00 00 */	li r5, 0
/* 80A9C9C4  4B 6A D9 C5 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80A9C9C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A9C9CC  41 82 00 34 */	beq lbl_80A9CA00
/* 80A9C9D0  7F E3 FB 78 */	mr r3, r31
/* 80A9C9D4  38 80 00 00 */	li r4, 0
/* 80A9C9D8  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 80A9C9DC  38 A0 00 00 */	li r5, 0
/* 80A9C9E0  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80A9C9E4  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A9C9E8  7D 89 03 A6 */	mtctr r12
/* 80A9C9EC  4E 80 04 21 */	bctrl 
/* 80A9C9F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A9C9F4  41 82 00 0C */	beq lbl_80A9CA00
/* 80A9C9F8  38 60 00 01 */	li r3, 1
/* 80A9C9FC  48 00 00 08 */	b lbl_80A9CA04
lbl_80A9CA00:
/* 80A9CA00  38 60 00 00 */	li r3, 0
lbl_80A9CA04:
/* 80A9CA04  39 61 00 40 */	addi r11, r1, 0x40
/* 80A9CA08  4B 8C 58 11 */	bl _restgpr_25
/* 80A9CA0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A9CA10  7C 08 03 A6 */	mtlr r0
/* 80A9CA14  38 21 00 40 */	addi r1, r1, 0x40
/* 80A9CA18  4E 80 00 20 */	blr 
