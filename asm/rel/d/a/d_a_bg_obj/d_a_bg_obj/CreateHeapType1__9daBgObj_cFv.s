lbl_8045A574:
/* 8045A574  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8045A578  7C 08 02 A6 */	mflr r0
/* 8045A57C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8045A580  39 61 00 40 */	addi r11, r1, 0x40
/* 8045A584  4B F0 7C 39 */	bl _savegpr_21
/* 8045A588  7C 7F 1B 78 */	mr r31, r3
/* 8045A58C  3B 60 00 00 */	li r27, 0
/* 8045A590  3B 20 00 00 */	li r25, 0
/* 8045A594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045A598  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045A59C  3F 83 00 02 */	addis r28, r3, 2
/* 8045A5A0  3B 9C C2 F8 */	addi r28, r28, -15624
lbl_8045A5A4:
/* 8045A5A4  3B 40 00 00 */	li r26, 0
/* 8045A5A8  3B 00 00 00 */	li r24, 0
/* 8045A5AC  7F DF CA 14 */	add r30, r31, r25
lbl_8045A5B0:
/* 8045A5B0  38 00 00 00 */	li r0, 0
/* 8045A5B4  7F BE C2 14 */	add r29, r30, r24
/* 8045A5B8  90 1D 05 A8 */	stw r0, 0x5a8(r29)
/* 8045A5BC  90 1D 05 B8 */	stw r0, 0x5b8(r29)
/* 8045A5C0  90 1D 05 C8 */	stw r0, 0x5c8(r29)
/* 8045A5C4  7F 63 DB 78 */	mr r3, r27
/* 8045A5C8  7F 44 D3 78 */	mr r4, r26
/* 8045A5CC  4B FF F0 8D */	bl getBmdName__Fii
/* 8045A5D0  7C 76 1B 78 */	mr r22, r3
/* 8045A5D4  7F E3 FB 78 */	mr r3, r31
/* 8045A5D8  4B BD 72 99 */	bl getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045A5DC  7E C4 B3 78 */	mr r4, r22
/* 8045A5E0  7F 85 E3 78 */	mr r5, r28
/* 8045A5E4  38 C0 00 80 */	li r6, 0x80
/* 8045A5E8  4B BE 1D 95 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045A5EC  7C 77 1B 79 */	or. r23, r3, r3
/* 8045A5F0  41 82 01 8C */	beq lbl_8045A77C
/* 8045A5F4  3C 80 00 08 */	lis r4, 8
/* 8045A5F8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11001284@ha */
/* 8045A5FC  38 A5 12 84 */	addi r5, r5, 0x1284 /* 0x11001284@l */
/* 8045A600  4B BB A6 55 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8045A604  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 8045A608  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 8045A60C  28 00 00 00 */	cmplwi r0, 0
/* 8045A610  40 82 00 0C */	bne lbl_8045A61C
/* 8045A614  38 60 00 00 */	li r3, 0
/* 8045A618  48 00 02 0C */	b lbl_8045A824
lbl_8045A61C:
/* 8045A61C  7F 63 DB 78 */	mr r3, r27
/* 8045A620  7F 44 D3 78 */	mr r4, r26
/* 8045A624  4B FF F0 A1 */	bl getBtkName__Fii
/* 8045A628  7C 76 1B 78 */	mr r22, r3
/* 8045A62C  7F E3 FB 78 */	mr r3, r31
/* 8045A630  4B BD 72 41 */	bl getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045A634  7E C4 B3 78 */	mr r4, r22
/* 8045A638  7F 85 E3 78 */	mr r5, r28
/* 8045A63C  38 C0 00 80 */	li r6, 0x80
/* 8045A640  4B BE 1D 3D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045A644  7C 75 1B 79 */	or. r21, r3, r3
/* 8045A648  41 82 00 84 */	beq lbl_8045A6CC
/* 8045A64C  38 60 00 18 */	li r3, 0x18
/* 8045A650  4B E7 45 FD */	bl __nw__FUl
/* 8045A654  7C 76 1B 79 */	or. r22, r3, r3
/* 8045A658  41 82 00 20 */	beq lbl_8045A678
/* 8045A65C  3C 80 80 46 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8045CDF4@ha */
/* 8045A660  38 04 CD F4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8045CDF4@l */
/* 8045A664  90 16 00 00 */	stw r0, 0(r22)
/* 8045A668  38 80 00 00 */	li r4, 0
/* 8045A66C  4B EC DD 91 */	bl init__12J3DFrameCtrlFs
/* 8045A670  38 00 00 00 */	li r0, 0
/* 8045A674  90 16 00 14 */	stw r0, 0x14(r22)
lbl_8045A678:
/* 8045A678  92 DD 05 B8 */	stw r22, 0x5b8(r29)
/* 8045A67C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8045A680  28 03 00 00 */	cmplwi r3, 0
/* 8045A684  41 82 00 30 */	beq lbl_8045A6B4
/* 8045A688  38 97 00 58 */	addi r4, r23, 0x58
/* 8045A68C  7E A5 AB 78 */	mr r5, r21
/* 8045A690  38 C0 00 01 */	li r6, 1
/* 8045A694  38 E0 00 02 */	li r7, 2
/* 8045A698  3D 00 80 46 */	lis r8, lit_4076@ha /* 0x8045CA0C@ha */
/* 8045A69C  C0 28 CA 0C */	lfs f1, lit_4076@l(r8)  /* 0x8045CA0C@l */
/* 8045A6A0  39 00 00 00 */	li r8, 0
/* 8045A6A4  39 20 FF FF */	li r9, -1
/* 8045A6A8  4B BB 2F 95 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8045A6AC  2C 03 00 00 */	cmpwi r3, 0
/* 8045A6B0  40 82 00 0C */	bne lbl_8045A6BC
lbl_8045A6B4:
/* 8045A6B4  38 60 00 00 */	li r3, 0
/* 8045A6B8  48 00 01 6C */	b lbl_8045A824
lbl_8045A6BC:
/* 8045A6BC  3C 60 80 46 */	lis r3, lit_4076@ha /* 0x8045CA0C@ha */
/* 8045A6C0  C0 03 CA 0C */	lfs f0, lit_4076@l(r3)  /* 0x8045CA0C@l */
/* 8045A6C4  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8045A6C8  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_8045A6CC:
/* 8045A6CC  7F 63 DB 78 */	mr r3, r27
/* 8045A6D0  7F 44 D3 78 */	mr r4, r26
/* 8045A6D4  4B FF F0 61 */	bl getBrkName__Fii
/* 8045A6D8  7C 76 1B 78 */	mr r22, r3
/* 8045A6DC  7F E3 FB 78 */	mr r3, r31
/* 8045A6E0  4B BD 71 91 */	bl getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045A6E4  7E C4 B3 78 */	mr r4, r22
/* 8045A6E8  7F 85 E3 78 */	mr r5, r28
/* 8045A6EC  38 C0 00 80 */	li r6, 0x80
/* 8045A6F0  4B BE 1C 8D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045A6F4  7C 75 1B 79 */	or. r21, r3, r3
/* 8045A6F8  41 82 00 84 */	beq lbl_8045A77C
/* 8045A6FC  38 60 00 18 */	li r3, 0x18
/* 8045A700  4B E7 45 4D */	bl __nw__FUl
/* 8045A704  7C 76 1B 79 */	or. r22, r3, r3
/* 8045A708  41 82 00 20 */	beq lbl_8045A728
/* 8045A70C  3C 80 80 46 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8045CDF4@ha */
/* 8045A710  38 04 CD F4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8045CDF4@l */
/* 8045A714  90 16 00 00 */	stw r0, 0(r22)
/* 8045A718  38 80 00 00 */	li r4, 0
/* 8045A71C  4B EC DC E1 */	bl init__12J3DFrameCtrlFs
/* 8045A720  38 00 00 00 */	li r0, 0
/* 8045A724  90 16 00 14 */	stw r0, 0x14(r22)
lbl_8045A728:
/* 8045A728  92 DD 05 C8 */	stw r22, 0x5c8(r29)
/* 8045A72C  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 8045A730  28 03 00 00 */	cmplwi r3, 0
/* 8045A734  41 82 00 30 */	beq lbl_8045A764
/* 8045A738  38 97 00 58 */	addi r4, r23, 0x58
/* 8045A73C  7E A5 AB 78 */	mr r5, r21
/* 8045A740  38 C0 00 01 */	li r6, 1
/* 8045A744  38 E0 00 02 */	li r7, 2
/* 8045A748  3D 00 80 46 */	lis r8, lit_4076@ha /* 0x8045CA0C@ha */
/* 8045A74C  C0 28 CA 0C */	lfs f1, lit_4076@l(r8)  /* 0x8045CA0C@l */
/* 8045A750  39 00 00 00 */	li r8, 0
/* 8045A754  39 20 FF FF */	li r9, -1
/* 8045A758  4B BB 2F B5 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8045A75C  2C 03 00 00 */	cmpwi r3, 0
/* 8045A760  40 82 00 0C */	bne lbl_8045A76C
lbl_8045A764:
/* 8045A764  38 60 00 00 */	li r3, 0
/* 8045A768  48 00 00 BC */	b lbl_8045A824
lbl_8045A76C:
/* 8045A76C  3C 60 80 46 */	lis r3, lit_4076@ha /* 0x8045CA0C@ha */
/* 8045A770  C0 03 CA 0C */	lfs f0, lit_4076@l(r3)  /* 0x8045CA0C@l */
/* 8045A774  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 8045A778  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_8045A77C:
/* 8045A77C  3B 5A 00 01 */	addi r26, r26, 1
/* 8045A780  2C 1A 00 02 */	cmpwi r26, 2
/* 8045A784  3B 18 00 04 */	addi r24, r24, 4
/* 8045A788  41 80 FE 28 */	blt lbl_8045A5B0
/* 8045A78C  3B 7B 00 01 */	addi r27, r27, 1
/* 8045A790  2C 1B 00 02 */	cmpwi r27, 2
/* 8045A794  3B 39 00 08 */	addi r25, r25, 8
/* 8045A798  41 80 FE 0C */	blt lbl_8045A5A4
/* 8045A79C  7F E3 FB 78 */	mr r3, r31
/* 8045A7A0  48 00 00 9D */	bl doShareTexture__9daBgObj_cFv
/* 8045A7A4  38 60 00 01 */	li r3, 1
/* 8045A7A8  4B FF EF FD */	bl getDzbName__Fi
/* 8045A7AC  7C 76 1B 78 */	mr r22, r3
/* 8045A7B0  7F E3 FB 78 */	mr r3, r31
/* 8045A7B4  4B BD 70 BD */	bl getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045A7B8  7E C4 B3 78 */	mr r4, r22
/* 8045A7BC  7F 85 E3 78 */	mr r5, r28
/* 8045A7C0  38 C0 00 80 */	li r6, 0x80
/* 8045A7C4  4B BE 1B B9 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045A7C8  7C 75 1B 79 */	or. r21, r3, r3
/* 8045A7CC  41 82 00 54 */	beq lbl_8045A820
/* 8045A7D0  38 60 00 C0 */	li r3, 0xc0
/* 8045A7D4  4B E7 44 79 */	bl __nw__FUl
/* 8045A7D8  7C 60 1B 79 */	or. r0, r3, r3
/* 8045A7DC  41 82 00 0C */	beq lbl_8045A7E8
/* 8045A7E0  4B C2 11 91 */	bl __ct__4dBgWFv
/* 8045A7E4  7C 60 1B 78 */	mr r0, r3
lbl_8045A7E8:
/* 8045A7E8  90 1F 05 D8 */	stw r0, 0x5d8(r31)
/* 8045A7EC  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8045A7F0  28 03 00 00 */	cmplwi r3, 0
/* 8045A7F4  41 82 00 1C */	beq lbl_8045A810
/* 8045A7F8  7E A4 AB 78 */	mr r4, r21
/* 8045A7FC  38 A0 00 01 */	li r5, 1
/* 8045A800  38 DF 05 6C */	addi r6, r31, 0x56c
/* 8045A804  4B C1 F7 35 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8045A808  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8045A80C  41 82 00 14 */	beq lbl_8045A820
lbl_8045A810:
/* 8045A810  38 00 00 00 */	li r0, 0
/* 8045A814  90 1F 05 D8 */	stw r0, 0x5d8(r31)
/* 8045A818  38 60 00 00 */	li r3, 0
/* 8045A81C  48 00 00 08 */	b lbl_8045A824
lbl_8045A820:
/* 8045A820  38 60 00 01 */	li r3, 1
lbl_8045A824:
/* 8045A824  39 61 00 40 */	addi r11, r1, 0x40
/* 8045A828  4B F0 79 E1 */	bl _restgpr_21
/* 8045A82C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8045A830  7C 08 03 A6 */	mtlr r0
/* 8045A834  38 21 00 40 */	addi r1, r1, 0x40
/* 8045A838  4E 80 00 20 */	blr 
