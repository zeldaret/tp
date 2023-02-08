lbl_80673164:
/* 80673164  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80673168  7C 08 02 A6 */	mflr r0
/* 8067316C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80673170  39 61 00 50 */	addi r11, r1, 0x50
/* 80673174  4B CE F0 45 */	bl _savegpr_20
/* 80673178  7C 7F 1B 78 */	mr r31, r3
/* 8067317C  3C 80 80 67 */	lis r4, l_staff_name@ha /* 0x80677558@ha */
/* 80673180  3B C4 75 58 */	addi r30, r4, l_staff_name@l /* 0x80677558@l */
/* 80673184  4B FF F6 B5 */	bl getNowLevel__FP10fopAc_ac_c
/* 80673188  7C 7D 1B 78 */	mr r29, r3
/* 8067318C  7F E3 FB 78 */	mr r3, r31
/* 80673190  4B FF FF B1 */	bl getDoorModelData__12daMBdoorL1_cFv
/* 80673194  7C 78 1B 78 */	mr r24, r3
/* 80673198  7F E3 FB 78 */	mr r3, r31
/* 8067319C  4B FF FD E9 */	bl getDoorType__12daMBdoorL1_cFv
/* 806731A0  2C 03 00 02 */	cmpwi r3, 2
/* 806731A4  40 82 01 18 */	bne lbl_806732BC
/* 806731A8  3A E0 00 00 */	li r23, 0
/* 806731AC  3A C0 00 00 */	li r22, 0
/* 806731B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806731B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806731B8  3F 43 00 02 */	addis r26, r3, 2
/* 806731BC  3F 60 11 00 */	lis r27, 0x1100 /* 0x11000084@ha */
/* 806731C0  3C 60 80 67 */	lis r3, d_a_door_mbossL1__stringBase0@ha /* 0x80677660@ha */
/* 806731C4  3B 83 76 60 */	addi r28, r3, d_a_door_mbossL1__stringBase0@l /* 0x80677660@l */
/* 806731C8  3B 5A C2 F8 */	addi r26, r26, -15624
lbl_806731CC:
/* 806731CC  7F 03 C3 78 */	mr r3, r24
/* 806731D0  3C 80 00 08 */	lis r4, 8
/* 806731D4  38 BB 00 84 */	addi r5, r27, 0x0084 /* 0x11000084@l */
/* 806731D8  4B 9A 1A 7D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806731DC  7F 3F B2 14 */	add r25, r31, r22
/* 806731E0  90 79 05 80 */	stw r3, 0x580(r25)
/* 806731E4  80 19 05 80 */	lwz r0, 0x580(r25)
/* 806731E8  28 00 00 00 */	cmplwi r0, 0
/* 806731EC  40 82 00 0C */	bne lbl_806731F8
/* 806731F0  38 60 00 00 */	li r3, 0
/* 806731F4  48 00 03 A4 */	b lbl_80673598
lbl_806731F8:
/* 806731F8  7F E3 FB 78 */	mr r3, r31
/* 806731FC  4B FF FD 79 */	bl getAlwaysArcName__12daMBdoorL1_cFv
/* 80673200  38 9C 01 FE */	addi r4, r28, 0x1fe
/* 80673204  7F 45 D3 78 */	mr r5, r26
/* 80673208  38 C0 00 80 */	li r6, 0x80
/* 8067320C  4B 9C 91 71 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80673210  7C 74 1B 78 */	mr r20, r3
/* 80673214  38 60 00 1C */	li r3, 0x1c
/* 80673218  4B C5 BA 35 */	bl __nw__FUl
/* 8067321C  7C 75 1B 79 */	or. r21, r3, r3
/* 80673220  41 82 00 20 */	beq lbl_80673240
/* 80673224  3C 80 80 67 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80677D28@ha */
/* 80673228  38 04 7D 28 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80677D28@l */
/* 8067322C  90 15 00 00 */	stw r0, 0(r21)
/* 80673230  38 80 00 00 */	li r4, 0
/* 80673234  4B CB 51 C9 */	bl init__12J3DFrameCtrlFs
/* 80673238  38 00 00 00 */	li r0, 0
/* 8067323C  90 15 00 18 */	stw r0, 0x18(r21)
lbl_80673240:
/* 80673240  92 B9 05 88 */	stw r21, 0x588(r25)
/* 80673244  80 79 05 88 */	lwz r3, 0x588(r25)
/* 80673248  28 03 00 00 */	cmplwi r3, 0
/* 8067324C  41 82 00 2C */	beq lbl_80673278
/* 80673250  7E 84 A3 78 */	mr r4, r20
/* 80673254  38 A0 00 01 */	li r5, 1
/* 80673258  38 C0 00 00 */	li r6, 0
/* 8067325C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80673260  38 E0 00 00 */	li r7, 0
/* 80673264  39 00 FF FF */	li r8, -1
/* 80673268  39 20 00 00 */	li r9, 0
/* 8067326C  4B 99 A5 71 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80673270  2C 03 00 00 */	cmpwi r3, 0
/* 80673274  40 82 00 0C */	bne lbl_80673280
lbl_80673278:
/* 80673278  38 60 00 00 */	li r3, 0
/* 8067327C  48 00 03 1C */	b lbl_80673598
lbl_80673280:
/* 80673280  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80673284  80 83 00 04 */	lwz r4, 4(r3)
/* 80673288  80 79 05 88 */	lwz r3, 0x588(r25)
/* 8067328C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80673290  4B 99 A7 3D */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80673294  80 79 05 80 */	lwz r3, 0x580(r25)
/* 80673298  81 83 00 00 */	lwz r12, 0(r3)
/* 8067329C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 806732A0  7D 89 03 A6 */	mtctr r12
/* 806732A4  4E 80 04 21 */	bctrl 
/* 806732A8  3A F7 00 01 */	addi r23, r23, 1
/* 806732AC  2C 17 00 02 */	cmpwi r23, 2
/* 806732B0  3A D6 00 04 */	addi r22, r22, 4
/* 806732B4  41 80 FF 18 */	blt lbl_806731CC
/* 806732B8  48 00 01 08 */	b lbl_806733C0
lbl_806732BC:
/* 806732BC  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806732C0  38 A3 00 84 */	addi r5, r3, 0x0084 /* 0x11000084@l */
/* 806732C4  3C 80 00 08 */	lis r4, 8
/* 806732C8  2C 1D 00 08 */	cmpwi r29, 8
/* 806732CC  40 82 00 0C */	bne lbl_806732D8
/* 806732D0  60 A5 02 00 */	ori r5, r5, 0x200
/* 806732D4  38 80 00 00 */	li r4, 0
lbl_806732D8:
/* 806732D8  7F 03 C3 78 */	mr r3, r24
/* 806732DC  4B 9A 19 79 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806732E0  90 7F 05 80 */	stw r3, 0x580(r31)
/* 806732E4  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 806732E8  28 00 00 00 */	cmplwi r0, 0
/* 806732EC  40 82 00 0C */	bne lbl_806732F8
/* 806732F0  38 60 00 00 */	li r3, 0
/* 806732F4  48 00 02 A4 */	b lbl_80673598
lbl_806732F8:
/* 806732F8  7F E3 FB 78 */	mr r3, r31
/* 806732FC  4B FF FC E9 */	bl getOpenAnm__12daMBdoorL1_cFv
/* 80673300  7C 75 1B 78 */	mr r21, r3
/* 80673304  7F E3 FB 78 */	mr r3, r31
/* 80673308  4B FF FB 69 */	bl getAnmArcName__12daMBdoorL1_cFv
/* 8067330C  7E A4 AB 78 */	mr r4, r21
/* 80673310  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80673314  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80673318  3C A5 00 02 */	addis r5, r5, 2
/* 8067331C  38 C0 00 80 */	li r6, 0x80
/* 80673320  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80673324  4B 9C 90 59 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80673328  7C 74 1B 78 */	mr r20, r3
/* 8067332C  38 60 00 1C */	li r3, 0x1c
/* 80673330  4B C5 B9 1D */	bl __nw__FUl
/* 80673334  7C 76 1B 79 */	or. r22, r3, r3
/* 80673338  41 82 00 20 */	beq lbl_80673358
/* 8067333C  3C 80 80 67 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80677D28@ha */
/* 80673340  38 04 7D 28 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80677D28@l */
/* 80673344  90 16 00 00 */	stw r0, 0(r22)
/* 80673348  38 80 00 00 */	li r4, 0
/* 8067334C  4B CB 50 B1 */	bl init__12J3DFrameCtrlFs
/* 80673350  38 00 00 00 */	li r0, 0
/* 80673354  90 16 00 18 */	stw r0, 0x18(r22)
lbl_80673358:
/* 80673358  92 DF 05 88 */	stw r22, 0x588(r31)
/* 8067335C  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80673360  28 03 00 00 */	cmplwi r3, 0
/* 80673364  41 82 00 2C */	beq lbl_80673390
/* 80673368  7E 84 A3 78 */	mr r4, r20
/* 8067336C  38 A0 00 01 */	li r5, 1
/* 80673370  38 C0 00 00 */	li r6, 0
/* 80673374  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80673378  38 E0 00 00 */	li r7, 0
/* 8067337C  39 00 FF FF */	li r8, -1
/* 80673380  39 20 00 00 */	li r9, 0
/* 80673384  4B 99 A4 59 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80673388  2C 03 00 00 */	cmpwi r3, 0
/* 8067338C  40 82 00 0C */	bne lbl_80673398
lbl_80673390:
/* 80673390  38 60 00 00 */	li r3, 0
/* 80673394  48 00 02 04 */	b lbl_80673598
lbl_80673398:
/* 80673398  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 8067339C  80 83 00 04 */	lwz r4, 4(r3)
/* 806733A0  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 806733A4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806733A8  4B 99 A6 25 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 806733AC  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 806733B0  81 83 00 00 */	lwz r12, 0(r3)
/* 806733B4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 806733B8  7D 89 03 A6 */	mtctr r12
/* 806733BC  4E 80 04 21 */	bctrl 
lbl_806733C0:
/* 806733C0  2C 1D 00 08 */	cmpwi r29, 8
/* 806733C4  40 82 00 88 */	bne lbl_8067344C
/* 806733C8  7F E3 FB 78 */	mr r3, r31
/* 806733CC  4B FF FD 35 */	bl getBtk__12daMBdoorL1_cFv
/* 806733D0  4B 9B C0 65 */	bl dComIfG_getStageRes__FPCc
/* 806733D4  7C 74 1B 78 */	mr r20, r3
/* 806733D8  38 60 00 18 */	li r3, 0x18
/* 806733DC  4B C5 B8 71 */	bl __nw__FUl
/* 806733E0  7C 76 1B 79 */	or. r22, r3, r3
/* 806733E4  41 82 00 20 */	beq lbl_80673404
/* 806733E8  3C 80 80 67 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80677D28@ha */
/* 806733EC  38 04 7D 28 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80677D28@l */
/* 806733F0  90 16 00 00 */	stw r0, 0(r22)
/* 806733F4  38 80 00 00 */	li r4, 0
/* 806733F8  4B CB 50 05 */	bl init__12J3DFrameCtrlFs
/* 806733FC  38 00 00 00 */	li r0, 0
/* 80673400  90 16 00 14 */	stw r0, 0x14(r22)
lbl_80673404:
/* 80673404  92 DF 05 94 */	stw r22, 0x594(r31)
/* 80673408  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 8067340C  28 03 00 00 */	cmplwi r3, 0
/* 80673410  41 82 00 34 */	beq lbl_80673444
/* 80673414  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 80673418  80 84 00 04 */	lwz r4, 4(r4)
/* 8067341C  38 84 00 58 */	addi r4, r4, 0x58
/* 80673420  7E 85 A3 78 */	mr r5, r20
/* 80673424  38 C0 00 01 */	li r6, 1
/* 80673428  38 E0 00 00 */	li r7, 0
/* 8067342C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80673430  39 00 00 00 */	li r8, 0
/* 80673434  39 20 FF FF */	li r9, -1
/* 80673438  4B 99 A2 05 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8067343C  2C 03 00 00 */	cmpwi r3, 0
/* 80673440  40 82 00 0C */	bne lbl_8067344C
lbl_80673444:
/* 80673444  38 60 00 00 */	li r3, 0
/* 80673448  48 00 01 50 */	b lbl_80673598
lbl_8067344C:
/* 8067344C  7F E3 FB 78 */	mr r3, r31
/* 80673450  48 00 36 65 */	bl checkMakeStop__12daMBdoorL1_cFv
/* 80673454  2C 03 00 00 */	cmpwi r3, 0
/* 80673458  41 82 00 5C */	beq lbl_806734B4
/* 8067345C  3C 60 80 67 */	lis r3, d_a_door_mbossL1__stringBase0@ha /* 0x80677660@ha */
/* 80673460  38 63 76 60 */	addi r3, r3, d_a_door_mbossL1__stringBase0@l /* 0x80677660@l */
/* 80673464  38 63 02 09 */	addi r3, r3, 0x209
/* 80673468  4B 9B BF CD */	bl dComIfG_getStageRes__FPCc
/* 8067346C  7C 64 1B 78 */	mr r4, r3
/* 80673470  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80673474  4B FF F9 0D */	bl create__13dDoor_stop2_cFP12J3DModelData
/* 80673478  2C 03 00 00 */	cmpwi r3, 0
/* 8067347C  40 82 00 0C */	bne lbl_80673488
/* 80673480  38 60 00 00 */	li r3, 0
/* 80673484  48 00 01 14 */	b lbl_80673598
lbl_80673488:
/* 80673488  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 8067348C  98 1F 06 01 */	stb r0, 0x601(r31)
/* 80673490  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80673494  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
/* 80673498  38 00 00 01 */	li r0, 1
/* 8067349C  98 1F 06 00 */	stb r0, 0x600(r31)
/* 806734A0  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 806734A4  7F E4 FB 78 */	mr r4, r31
/* 806734A8  4B FF F4 0D */	bl calcMtx__13dDoor_stop2_cFP10fopAc_ac_c
/* 806734AC  38 00 00 00 */	li r0, 0
/* 806734B0  98 1F 06 00 */	stb r0, 0x600(r31)
lbl_806734B4:
/* 806734B4  7F E3 FB 78 */	mr r3, r31
/* 806734B8  48 00 01 41 */	bl calcMtx__12daMBdoorL1_cFv
/* 806734BC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806734C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806734C4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 806734C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806734CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806734D0  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 806734D4  4B 99 98 91 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806734D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806734DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806734E0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 806734E4  4B 99 8F 51 */	bl mDoMtx_YrotM__FPA4_fs
/* 806734E8  7F E3 FB 78 */	mr r3, r31
/* 806734EC  4B FF FA 99 */	bl getDoorType__12daMBdoorL1_cFv
/* 806734F0  2C 03 00 02 */	cmpwi r3, 2
/* 806734F4  40 82 00 14 */	bne lbl_80673508
/* 806734F8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 806734FC  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 80673500  FC 60 08 90 */	fmr f3, f1
/* 80673504  4B 99 99 35 */	bl scaleM__14mDoMtx_stack_cFfff
lbl_80673508:
/* 80673508  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8067350C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80673510  38 9F 05 9C */	addi r4, r31, 0x59c
/* 80673514  4B CD 2F 9D */	bl PSMTXCopy
/* 80673518  38 60 00 C0 */	li r3, 0xc0
/* 8067351C  4B C5 B7 31 */	bl __nw__FUl
/* 80673520  7C 60 1B 79 */	or. r0, r3, r3
/* 80673524  41 82 00 0C */	beq lbl_80673530
/* 80673528  4B A0 84 49 */	bl __ct__4dBgWFv
/* 8067352C  7C 60 1B 78 */	mr r0, r3
lbl_80673530:
/* 80673530  90 1F 05 98 */	stw r0, 0x598(r31)
/* 80673534  80 1F 05 98 */	lwz r0, 0x598(r31)
/* 80673538  28 00 00 00 */	cmplwi r0, 0
/* 8067353C  41 82 00 50 */	beq lbl_8067358C
/* 80673540  7F E3 FB 78 */	mr r3, r31
/* 80673544  4B FF FB CD */	bl getDzb__12daMBdoorL1_cFv
/* 80673548  7C 75 1B 78 */	mr r21, r3
/* 8067354C  7F E3 FB 78 */	mr r3, r31
/* 80673550  4B FF FA 25 */	bl getAlwaysArcName__12daMBdoorL1_cFv
/* 80673554  7E A4 AB 78 */	mr r4, r21
/* 80673558  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067355C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80673560  3C A5 00 02 */	addis r5, r5, 2
/* 80673564  38 C0 00 80 */	li r6, 0x80
/* 80673568  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8067356C  4B 9C 8E 11 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80673570  7C 64 1B 78 */	mr r4, r3
/* 80673574  80 7F 05 98 */	lwz r3, 0x598(r31)
/* 80673578  38 A0 00 01 */	li r5, 1
/* 8067357C  38 DF 05 9C */	addi r6, r31, 0x59c
/* 80673580  4B A0 69 B9 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80673584  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80673588  41 82 00 0C */	beq lbl_80673594
lbl_8067358C:
/* 8067358C  38 60 00 00 */	li r3, 0
/* 80673590  48 00 00 08 */	b lbl_80673598
lbl_80673594:
/* 80673594  38 60 00 01 */	li r3, 1
lbl_80673598:
/* 80673598  39 61 00 50 */	addi r11, r1, 0x50
/* 8067359C  4B CE EC 69 */	bl _restgpr_20
/* 806735A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806735A4  7C 08 03 A6 */	mtlr r0
/* 806735A8  38 21 00 50 */	addi r1, r1, 0x50
/* 806735AC  4E 80 00 20 */	blr 
