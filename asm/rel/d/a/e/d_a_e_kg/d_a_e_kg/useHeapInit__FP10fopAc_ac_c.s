lbl_806F9818:
/* 806F9818  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806F981C  7C 08 02 A6 */	mflr r0
/* 806F9820  90 01 00 34 */	stw r0, 0x34(r1)
/* 806F9824  39 61 00 30 */	addi r11, r1, 0x30
/* 806F9828  4B C6 89 B0 */	b _savegpr_28
/* 806F982C  7C 7F 1B 78 */	mr r31, r3
/* 806F9830  38 60 00 58 */	li r3, 0x58
/* 806F9834  4B BD 54 18 */	b __nw__FUl
/* 806F9838  7C 7E 1B 79 */	or. r30, r3, r3
/* 806F983C  41 82 00 94 */	beq lbl_806F98D0
/* 806F9840  3C 60 80 70 */	lis r3, stringBase0@ha
/* 806F9844  38 63 A4 6C */	addi r3, r3, stringBase0@l
/* 806F9848  38 80 00 0E */	li r4, 0xe
/* 806F984C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806F9850  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806F9854  3F 85 00 02 */	addis r28, r5, 2
/* 806F9858  3B 9C C2 F8 */	addi r28, r28, -15624
/* 806F985C  7F 85 E3 78 */	mr r5, r28
/* 806F9860  38 C0 00 80 */	li r6, 0x80
/* 806F9864  4B 94 2A 88 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F9868  7C 7D 1B 78 */	mr r29, r3
/* 806F986C  3C 60 80 70 */	lis r3, stringBase0@ha
/* 806F9870  38 63 A4 6C */	addi r3, r3, stringBase0@l
/* 806F9874  38 80 00 12 */	li r4, 0x12
/* 806F9878  7F 85 E3 78 */	mr r5, r28
/* 806F987C  38 C0 00 80 */	li r6, 0x80
/* 806F9880  4B 94 2A 6C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F9884  7C 64 1B 78 */	mr r4, r3
/* 806F9888  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 806F988C  90 01 00 08 */	stw r0, 8(r1)
/* 806F9890  3C 00 00 08 */	lis r0, 8
/* 806F9894  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F9898  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020084@ha */
/* 806F989C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11020084@l */
/* 806F98A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806F98A4  7F C3 F3 78 */	mr r3, r30
/* 806F98A8  38 A0 00 00 */	li r5, 0
/* 806F98AC  38 C0 00 00 */	li r6, 0
/* 806F98B0  7F A7 EB 78 */	mr r7, r29
/* 806F98B4  39 00 00 02 */	li r8, 2
/* 806F98B8  3D 20 80 70 */	lis r9, lit_3790@ha
/* 806F98BC  C0 29 A3 AC */	lfs f1, lit_3790@l(r9)
/* 806F98C0  39 20 00 00 */	li r9, 0
/* 806F98C4  39 40 FF FF */	li r10, -1
/* 806F98C8  4B 91 6F 08 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806F98CC  7C 7E 1B 78 */	mr r30, r3
lbl_806F98D0:
/* 806F98D0  93 DF 05 B8 */	stw r30, 0x5b8(r31)
/* 806F98D4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806F98D8  28 03 00 00 */	cmplwi r3, 0
/* 806F98DC  41 82 00 10 */	beq lbl_806F98EC
/* 806F98E0  80 03 00 04 */	lwz r0, 4(r3)
/* 806F98E4  28 00 00 00 */	cmplwi r0, 0
/* 806F98E8  40 82 00 0C */	bne lbl_806F98F4
lbl_806F98EC:
/* 806F98EC  38 60 00 00 */	li r3, 0
/* 806F98F0  48 00 00 B0 */	b lbl_806F99A0
lbl_806F98F4:
/* 806F98F4  38 60 00 18 */	li r3, 0x18
/* 806F98F8  4B BD 53 54 */	b __nw__FUl
/* 806F98FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 806F9900  41 82 00 20 */	beq lbl_806F9920
/* 806F9904  3C 80 80 70 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 806F9908  38 04 A5 C8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 806F990C  90 1E 00 00 */	stw r0, 0(r30)
/* 806F9910  38 80 00 00 */	li r4, 0
/* 806F9914  4B C2 EA E8 */	b init__12J3DFrameCtrlFs
/* 806F9918  38 00 00 00 */	li r0, 0
/* 806F991C  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_806F9920:
/* 806F9920  93 DF 06 60 */	stw r30, 0x660(r31)
/* 806F9924  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 806F9928  28 00 00 00 */	cmplwi r0, 0
/* 806F992C  40 82 00 0C */	bne lbl_806F9938
/* 806F9930  38 60 00 05 */	li r3, 5
/* 806F9934  48 00 00 6C */	b lbl_806F99A0
lbl_806F9938:
/* 806F9938  3C 60 80 70 */	lis r3, stringBase0@ha
/* 806F993C  38 63 A4 6C */	addi r3, r3, stringBase0@l
/* 806F9940  38 80 00 15 */	li r4, 0x15
/* 806F9944  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806F9948  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806F994C  3C A5 00 02 */	addis r5, r5, 2
/* 806F9950  38 C0 00 80 */	li r6, 0x80
/* 806F9954  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806F9958  4B 94 29 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F995C  7C 65 1B 78 */	mr r5, r3
/* 806F9960  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806F9964  80 63 00 04 */	lwz r3, 4(r3)
/* 806F9968  80 83 00 04 */	lwz r4, 4(r3)
/* 806F996C  80 7F 06 60 */	lwz r3, 0x660(r31)
/* 806F9970  38 84 00 58 */	addi r4, r4, 0x58
/* 806F9974  38 C0 00 01 */	li r6, 1
/* 806F9978  38 E0 00 00 */	li r7, 0
/* 806F997C  3D 00 80 70 */	lis r8, lit_3790@ha
/* 806F9980  C0 28 A3 AC */	lfs f1, lit_3790@l(r8)
/* 806F9984  39 00 00 00 */	li r8, 0
/* 806F9988  39 20 FF FF */	li r9, -1
/* 806F998C  4B 91 3B C0 */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 806F9990  2C 03 00 00 */	cmpwi r3, 0
/* 806F9994  38 60 00 01 */	li r3, 1
/* 806F9998  40 82 00 08 */	bne lbl_806F99A0
/* 806F999C  38 60 00 05 */	li r3, 5
lbl_806F99A0:
/* 806F99A0  39 61 00 30 */	addi r11, r1, 0x30
/* 806F99A4  4B C6 88 80 */	b _restgpr_28
/* 806F99A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F99AC  7C 08 03 A6 */	mtlr r0
/* 806F99B0  38 21 00 30 */	addi r1, r1, 0x30
/* 806F99B4  4E 80 00 20 */	blr 
