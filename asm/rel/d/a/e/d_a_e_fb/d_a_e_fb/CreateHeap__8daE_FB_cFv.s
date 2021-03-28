lbl_806B8678:
/* 806B8678  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B867C  7C 08 02 A6 */	mflr r0
/* 806B8680  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B8684  39 61 00 30 */	addi r11, r1, 0x30
/* 806B8688  4B CA 9B 50 */	b _savegpr_28
/* 806B868C  7C 7E 1B 78 */	mr r30, r3
/* 806B8690  3C 60 80 6C */	lis r3, stringBase0@ha
/* 806B8694  38 63 90 28 */	addi r3, r3, stringBase0@l
/* 806B8698  38 80 00 0B */	li r4, 0xb
/* 806B869C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806B86A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806B86A4  3F E5 00 02 */	addis r31, r5, 2
/* 806B86A8  3B FF C2 F8 */	addi r31, r31, -15624
/* 806B86AC  7F E5 FB 78 */	mr r5, r31
/* 806B86B0  38 C0 00 80 */	li r6, 0x80
/* 806B86B4  4B 98 3C 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806B86B8  7C 7C 1B 78 */	mr r28, r3
/* 806B86BC  38 60 00 58 */	li r3, 0x58
/* 806B86C0  4B C1 65 8C */	b __nw__FUl
/* 806B86C4  7C 7D 1B 79 */	or. r29, r3, r3
/* 806B86C8  41 82 00 68 */	beq lbl_806B8730
/* 806B86CC  3C 60 80 6C */	lis r3, stringBase0@ha
/* 806B86D0  38 63 90 28 */	addi r3, r3, stringBase0@l
/* 806B86D4  38 80 00 08 */	li r4, 8
/* 806B86D8  7F E5 FB 78 */	mr r5, r31
/* 806B86DC  38 C0 00 80 */	li r6, 0x80
/* 806B86E0  4B 98 3C 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806B86E4  7C 67 1B 78 */	mr r7, r3
/* 806B86E8  38 1E 05 C4 */	addi r0, r30, 0x5c4
/* 806B86EC  90 01 00 08 */	stw r0, 8(r1)
/* 806B86F0  38 00 00 00 */	li r0, 0
/* 806B86F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B86F8  3C 60 31 00 */	lis r3, 0x3100 /* 0x31000084@ha */
/* 806B86FC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x31000084@l */
/* 806B8700  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B8704  7F A3 EB 78 */	mr r3, r29
/* 806B8708  7F 84 E3 78 */	mr r4, r28
/* 806B870C  38 A0 00 00 */	li r5, 0
/* 806B8710  38 C0 00 00 */	li r6, 0
/* 806B8714  39 00 00 00 */	li r8, 0
/* 806B8718  3D 20 80 6C */	lis r9, lit_3751@ha
/* 806B871C  C0 29 8F A0 */	lfs f1, lit_3751@l(r9)
/* 806B8720  39 20 00 00 */	li r9, 0
/* 806B8724  39 40 FF FF */	li r10, -1
/* 806B8728  4B 95 80 A8 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806B872C  7C 7D 1B 78 */	mr r29, r3
lbl_806B8730:
/* 806B8730  93 BE 05 B4 */	stw r29, 0x5b4(r30)
/* 806B8734  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806B8738  28 03 00 00 */	cmplwi r3, 0
/* 806B873C  41 82 00 10 */	beq lbl_806B874C
/* 806B8740  80 83 00 04 */	lwz r4, 4(r3)
/* 806B8744  28 04 00 00 */	cmplwi r4, 0
/* 806B8748  40 82 00 0C */	bne lbl_806B8754
lbl_806B874C:
/* 806B874C  38 60 00 00 */	li r3, 0
/* 806B8750  48 00 01 10 */	b lbl_806B8860
lbl_806B8754:
/* 806B8754  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 806B8758  38 A0 00 01 */	li r5, 1
/* 806B875C  4B 95 5D E0 */	b create__21mDoExt_invisibleModelFP8J3DModelUc
/* 806B8760  2C 03 00 00 */	cmpwi r3, 0
/* 806B8764  40 82 00 0C */	bne lbl_806B8770
/* 806B8768  38 60 00 00 */	li r3, 0
/* 806B876C  48 00 00 F4 */	b lbl_806B8860
lbl_806B8770:
/* 806B8770  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806B8774  80 03 00 04 */	lwz r0, 4(r3)
/* 806B8778  90 1E 05 24 */	stw r0, 0x524(r30)
/* 806B877C  80 7E 05 24 */	lwz r3, 0x524(r30)
/* 806B8780  93 C3 00 14 */	stw r30, 0x14(r3)
/* 806B8784  38 C0 00 00 */	li r6, 0
/* 806B8788  3C 60 80 6B */	lis r3, JointCallBack__8daE_FB_cFP8J3DJointi@ha
/* 806B878C  38 83 65 C0 */	addi r4, r3, JointCallBack__8daE_FB_cFP8J3DJointi@l
/* 806B8790  48 00 00 20 */	b lbl_806B87B0
lbl_806B8794:
/* 806B8794  54 C0 04 3F */	clrlwi. r0, r6, 0x10
/* 806B8798  41 82 00 14 */	beq lbl_806B87AC
/* 806B879C  80 65 00 28 */	lwz r3, 0x28(r5)
/* 806B87A0  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 806B87A4  7C 63 00 2E */	lwzx r3, r3, r0
/* 806B87A8  90 83 00 04 */	stw r4, 4(r3)
lbl_806B87AC:
/* 806B87AC  38 C6 00 01 */	addi r6, r6, 1
lbl_806B87B0:
/* 806B87B0  80 7E 05 24 */	lwz r3, 0x524(r30)
/* 806B87B4  80 A3 00 04 */	lwz r5, 4(r3)
/* 806B87B8  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 806B87BC  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 806B87C0  7C 00 18 40 */	cmplw r0, r3
/* 806B87C4  41 80 FF D0 */	blt lbl_806B8794
/* 806B87C8  38 60 00 18 */	li r3, 0x18
/* 806B87CC  4B C1 64 80 */	b __nw__FUl
/* 806B87D0  7C 7D 1B 79 */	or. r29, r3, r3
/* 806B87D4  41 82 00 20 */	beq lbl_806B87F4
/* 806B87D8  3C 80 80 6C */	lis r4, __vt__12J3DFrameCtrl@ha
/* 806B87DC  38 04 91 8C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 806B87E0  90 1D 00 00 */	stw r0, 0(r29)
/* 806B87E4  38 80 00 00 */	li r4, 0
/* 806B87E8  4B C6 FC 14 */	b init__12J3DFrameCtrlFs
/* 806B87EC  38 00 00 00 */	li r0, 0
/* 806B87F0  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_806B87F4:
/* 806B87F4  93 BE 05 C0 */	stw r29, 0x5c0(r30)
/* 806B87F8  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 806B87FC  28 00 00 00 */	cmplwi r0, 0
/* 806B8800  40 82 00 0C */	bne lbl_806B880C
/* 806B8804  38 60 00 00 */	li r3, 0
/* 806B8808  48 00 00 58 */	b lbl_806B8860
lbl_806B880C:
/* 806B880C  3C 60 80 6C */	lis r3, stringBase0@ha
/* 806B8810  38 63 90 28 */	addi r3, r3, stringBase0@l
/* 806B8814  38 80 00 0E */	li r4, 0xe
/* 806B8818  7F E5 FB 78 */	mr r5, r31
/* 806B881C  38 C0 00 80 */	li r6, 0x80
/* 806B8820  4B 98 3A CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806B8824  7C 65 1B 78 */	mr r5, r3
/* 806B8828  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806B882C  80 63 00 04 */	lwz r3, 4(r3)
/* 806B8830  80 83 00 04 */	lwz r4, 4(r3)
/* 806B8834  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806B8838  38 84 00 58 */	addi r4, r4, 0x58
/* 806B883C  38 C0 00 01 */	li r6, 1
/* 806B8840  38 E0 00 02 */	li r7, 2
/* 806B8844  3D 00 80 6C */	lis r8, lit_3751@ha
/* 806B8848  C0 28 8F A0 */	lfs f1, lit_3751@l(r8)
/* 806B884C  39 00 00 00 */	li r8, 0
/* 806B8850  39 20 FF FF */	li r9, -1
/* 806B8854  4B 95 4E B8 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 806B8858  30 03 FF FF */	addic r0, r3, -1
/* 806B885C  7C 60 19 10 */	subfe r3, r0, r3
lbl_806B8860:
/* 806B8860  39 61 00 30 */	addi r11, r1, 0x30
/* 806B8864  4B CA 99 C0 */	b _restgpr_28
/* 806B8868  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B886C  7C 08 03 A6 */	mtlr r0
/* 806B8870  38 21 00 30 */	addi r1, r1, 0x30
/* 806B8874  4E 80 00 20 */	blr 
