lbl_80460DAC:
/* 80460DAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80460DB0  7C 08 02 A6 */	mflr r0
/* 80460DB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80460DB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80460DBC  4B F0 14 1C */	b _savegpr_28
/* 80460DC0  7C 7F 1B 78 */	mr r31, r3
/* 80460DC4  4B BD 93 C4 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 80460DC8  7C 7E 1B 78 */	mr r30, r3
/* 80460DCC  7F E3 FB 78 */	mr r3, r31
/* 80460DD0  4B FF FF 8D */	bl getModelData__10daDoor20_cFv
/* 80460DD4  7C 7C 1B 78 */	mr r28, r3
/* 80460DD8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80460DDC  38 A3 00 84 */	addi r5, r3, 0x0084 /* 0x11000084@l */
/* 80460DE0  2C 1E 00 02 */	cmpwi r30, 2
/* 80460DE4  40 82 00 08 */	bne lbl_80460DEC
/* 80460DE8  60 A5 02 00 */	ori r5, r5, 0x200
lbl_80460DEC:
/* 80460DEC  7F 83 E3 78 */	mr r3, r28
/* 80460DF0  3C 80 00 08 */	lis r4, 8
/* 80460DF4  4B BB 3E 60 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80460DF8  90 7F 05 7C */	stw r3, 0x57c(r31)
/* 80460DFC  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 80460E00  28 00 00 00 */	cmplwi r0, 0
/* 80460E04  40 82 00 0C */	bne lbl_80460E10
/* 80460E08  38 60 00 00 */	li r3, 0
/* 80460E0C  48 00 04 30 */	b lbl_8046123C
lbl_80460E10:
/* 80460E10  2C 1E 00 09 */	cmpwi r30, 9
/* 80460E14  40 82 01 44 */	bne lbl_80460F58
/* 80460E18  7F E3 FB 78 */	mr r3, r31
/* 80460E1C  4B FF FD 79 */	bl getAlwaysArcName__10daDoor20_cFv
/* 80460E20  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 80460E24  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80460E28  38 84 00 A7 */	addi r4, r4, 0xa7
/* 80460E2C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80460E30  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80460E34  3F A5 00 02 */	addis r29, r5, 2
/* 80460E38  3B BD C2 F8 */	addi r29, r29, -15624
/* 80460E3C  7F A5 EB 78 */	mr r5, r29
/* 80460E40  38 C0 00 80 */	li r6, 0x80
/* 80460E44  4B BD B5 38 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80460E48  7C 64 1B 78 */	mr r4, r3
/* 80460E4C  38 7F 05 84 */	addi r3, r31, 0x584
/* 80460E50  38 A0 00 01 */	li r5, 1
/* 80460E54  38 C0 00 00 */	li r6, 0
/* 80460E58  3C E0 80 46 */	lis r7, lit_4124@ha
/* 80460E5C  C0 27 68 24 */	lfs f1, lit_4124@l(r7)
/* 80460E60  38 E0 00 00 */	li r7, 0
/* 80460E64  39 00 FF FF */	li r8, -1
/* 80460E68  39 20 00 00 */	li r9, 0
/* 80460E6C  4B BA C9 70 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80460E70  2C 03 00 00 */	cmpwi r3, 0
/* 80460E74  40 82 00 0C */	bne lbl_80460E80
/* 80460E78  38 60 00 00 */	li r3, 0
/* 80460E7C  48 00 03 C0 */	b lbl_8046123C
lbl_80460E80:
/* 80460E80  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80460E84  80 83 00 04 */	lwz r4, 4(r3)
/* 80460E88  38 7F 05 84 */	addi r3, r31, 0x584
/* 80460E8C  C0 3F 05 94 */	lfs f1, 0x594(r31)
/* 80460E90  4B BA CB 3C */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80460E94  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80460E98  81 83 00 00 */	lwz r12, 0(r3)
/* 80460E9C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80460EA0  7D 89 03 A6 */	mtctr r12
/* 80460EA4  4E 80 04 21 */	bctrl 
/* 80460EA8  7F 83 E3 78 */	mr r3, r28
/* 80460EAC  3C 80 00 08 */	lis r4, 8
/* 80460EB0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80460EB4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80460EB8  4B BB 3D 9C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80460EBC  90 7F 05 80 */	stw r3, 0x580(r31)
/* 80460EC0  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80460EC4  28 00 00 00 */	cmplwi r0, 0
/* 80460EC8  40 82 00 0C */	bne lbl_80460ED4
/* 80460ECC  38 60 00 00 */	li r3, 0
/* 80460ED0  48 00 03 6C */	b lbl_8046123C
lbl_80460ED4:
/* 80460ED4  7F E3 FB 78 */	mr r3, r31
/* 80460ED8  4B FF FC BD */	bl getAlwaysArcName__10daDoor20_cFv
/* 80460EDC  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 80460EE0  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80460EE4  38 84 00 A7 */	addi r4, r4, 0xa7
/* 80460EE8  7F A5 EB 78 */	mr r5, r29
/* 80460EEC  38 C0 00 80 */	li r6, 0x80
/* 80460EF0  4B BD B4 8C */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80460EF4  7C 64 1B 78 */	mr r4, r3
/* 80460EF8  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80460EFC  38 A0 00 01 */	li r5, 1
/* 80460F00  38 C0 00 00 */	li r6, 0
/* 80460F04  3C E0 80 46 */	lis r7, lit_4124@ha
/* 80460F08  C0 27 68 24 */	lfs f1, lit_4124@l(r7)
/* 80460F0C  38 E0 00 00 */	li r7, 0
/* 80460F10  39 00 FF FF */	li r8, -1
/* 80460F14  39 20 00 00 */	li r9, 0
/* 80460F18  4B BA C8 C4 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80460F1C  2C 03 00 00 */	cmpwi r3, 0
/* 80460F20  40 82 00 0C */	bne lbl_80460F2C
/* 80460F24  38 60 00 00 */	li r3, 0
/* 80460F28  48 00 03 14 */	b lbl_8046123C
lbl_80460F2C:
/* 80460F2C  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80460F30  80 83 00 04 */	lwz r4, 4(r3)
/* 80460F34  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80460F38  C0 3F 05 B0 */	lfs f1, 0x5b0(r31)
/* 80460F3C  4B BA CA 90 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80460F40  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80460F44  81 83 00 00 */	lwz r12, 0(r3)
/* 80460F48  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80460F4C  7D 89 03 A6 */	mtctr r12
/* 80460F50  4E 80 04 21 */	bctrl 
/* 80460F54  48 00 01 D4 */	b lbl_80461128
lbl_80460F58:
/* 80460F58  28 1E 00 0C */	cmplwi r30, 0xc
/* 80460F5C  41 81 00 1C */	bgt lbl_80460F78
/* 80460F60  3C 60 80 46 */	lis r3, lit_4126@ha
/* 80460F64  38 63 6E D0 */	addi r3, r3, lit_4126@l
/* 80460F68  57 C0 10 3A */	slwi r0, r30, 2
/* 80460F6C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80460F70  7C 09 03 A6 */	mtctr r0
/* 80460F74  4E 80 04 20 */	bctr 
lbl_80460F78:
/* 80460F78  7F E3 FB 78 */	mr r3, r31
/* 80460F7C  4B FF FC 29 */	bl getArcName__10daDoor20_cFv
/* 80460F80  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 80460F84  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80460F88  38 84 00 B2 */	addi r4, r4, 0xb2
/* 80460F8C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80460F90  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80460F94  3C A5 00 02 */	addis r5, r5, 2
/* 80460F98  38 C0 00 80 */	li r6, 0x80
/* 80460F9C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80460FA0  4B BD B3 DC */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80460FA4  7C 64 1B 78 */	mr r4, r3
/* 80460FA8  48 00 01 24 */	b lbl_804610CC
lbl_80460FAC:
/* 80460FAC  7F E3 FB 78 */	mr r3, r31
/* 80460FB0  4B FF FB F5 */	bl getArcName__10daDoor20_cFv
/* 80460FB4  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 80460FB8  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80460FBC  38 84 00 C1 */	addi r4, r4, 0xc1
/* 80460FC0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80460FC4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80460FC8  3C A5 00 02 */	addis r5, r5, 2
/* 80460FCC  38 C0 00 80 */	li r6, 0x80
/* 80460FD0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80460FD4  4B BD B3 A8 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80460FD8  7C 64 1B 78 */	mr r4, r3
/* 80460FDC  48 00 00 F0 */	b lbl_804610CC
lbl_80460FE0:
/* 80460FE0  7F E3 FB 78 */	mr r3, r31
/* 80460FE4  4B FF FD 0D */	bl getBtk__10daDoor20_cFv
/* 80460FE8  4B BC E4 4C */	b dComIfG_getStageRes__FPCc
/* 80460FEC  7C 7C 1B 78 */	mr r28, r3
/* 80460FF0  38 60 00 18 */	li r3, 0x18
/* 80460FF4  4B E6 DC 58 */	b __nw__FUl
/* 80460FF8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80460FFC  41 82 00 20 */	beq lbl_8046101C
/* 80461000  3C 80 80 46 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80461004  38 04 73 20 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80461008  90 1D 00 00 */	stw r0, 0(r29)
/* 8046100C  38 80 00 00 */	li r4, 0
/* 80461010  4B EC 73 EC */	b init__12J3DFrameCtrlFs
/* 80461014  38 00 00 00 */	li r0, 0
/* 80461018  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8046101C:
/* 8046101C  93 BF 05 C0 */	stw r29, 0x5c0(r31)
/* 80461020  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80461024  28 03 00 00 */	cmplwi r3, 0
/* 80461028  41 82 00 38 */	beq lbl_80461060
/* 8046102C  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 80461030  80 84 00 04 */	lwz r4, 4(r4)
/* 80461034  38 84 00 58 */	addi r4, r4, 0x58
/* 80461038  7F 85 E3 78 */	mr r5, r28
/* 8046103C  38 C0 00 01 */	li r6, 1
/* 80461040  38 E0 00 00 */	li r7, 0
/* 80461044  3D 00 80 46 */	lis r8, lit_4124@ha
/* 80461048  C0 28 68 24 */	lfs f1, lit_4124@l(r8)
/* 8046104C  39 00 00 00 */	li r8, 0
/* 80461050  39 20 FF FF */	li r9, -1
/* 80461054  4B BA C5 E8 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80461058  2C 03 00 00 */	cmpwi r3, 0
/* 8046105C  40 82 00 0C */	bne lbl_80461068
lbl_80461060:
/* 80461060  38 60 00 00 */	li r3, 0
/* 80461064  48 00 01 D8 */	b lbl_8046123C
lbl_80461068:
/* 80461068  7F E3 FB 78 */	mr r3, r31
/* 8046106C  4B FF FB 39 */	bl getArcName__10daDoor20_cFv
/* 80461070  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 80461074  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 80461078  38 84 00 B2 */	addi r4, r4, 0xb2
/* 8046107C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80461080  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80461084  3C A5 00 02 */	addis r5, r5, 2
/* 80461088  38 C0 00 80 */	li r6, 0x80
/* 8046108C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80461090  4B BD B2 EC */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80461094  7C 64 1B 78 */	mr r4, r3
/* 80461098  48 00 00 34 */	b lbl_804610CC
lbl_8046109C:
/* 8046109C  7F E3 FB 78 */	mr r3, r31
/* 804610A0  4B FF FB 05 */	bl getArcName__10daDoor20_cFv
/* 804610A4  3C 80 80 46 */	lis r4, struct_804668D8+0x0@ha
/* 804610A8  38 84 68 D8 */	addi r4, r4, struct_804668D8+0x0@l
/* 804610AC  38 84 00 D0 */	addi r4, r4, 0xd0
/* 804610B0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804610B4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804610B8  3C A5 00 02 */	addis r5, r5, 2
/* 804610BC  38 C0 00 80 */	li r6, 0x80
/* 804610C0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804610C4  4B BD B2 B8 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804610C8  7C 64 1B 78 */	mr r4, r3
lbl_804610CC:
/* 804610CC  38 7F 05 84 */	addi r3, r31, 0x584
/* 804610D0  38 A0 00 01 */	li r5, 1
/* 804610D4  38 C0 00 00 */	li r6, 0
/* 804610D8  3C E0 80 46 */	lis r7, lit_4124@ha
/* 804610DC  C0 27 68 24 */	lfs f1, lit_4124@l(r7)
/* 804610E0  38 E0 00 00 */	li r7, 0
/* 804610E4  39 00 FF FF */	li r8, -1
/* 804610E8  39 20 00 00 */	li r9, 0
/* 804610EC  4B BA C6 F0 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804610F0  2C 03 00 00 */	cmpwi r3, 0
/* 804610F4  40 82 00 0C */	bne lbl_80461100
/* 804610F8  38 60 00 00 */	li r3, 0
/* 804610FC  48 00 01 40 */	b lbl_8046123C
lbl_80461100:
/* 80461100  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80461104  80 83 00 04 */	lwz r4, 4(r3)
/* 80461108  38 7F 05 84 */	addi r3, r31, 0x584
/* 8046110C  C0 3F 05 94 */	lfs f1, 0x594(r31)
/* 80461110  4B BA C8 BC */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80461114  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80461118  81 83 00 00 */	lwz r12, 0(r3)
/* 8046111C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80461120  7D 89 03 A6 */	mtctr r12
/* 80461124  4E 80 04 21 */	bctrl 
lbl_80461128:
/* 80461128  7F E3 FB 78 */	mr r3, r31
/* 8046112C  48 00 49 95 */	bl chkMakeStop__10daDoor20_cFv
/* 80461130  2C 03 00 00 */	cmpwi r3, 0
/* 80461134  41 82 00 20 */	beq lbl_80461154
/* 80461138  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 8046113C  7F E4 FB 78 */	mr r4, r31
/* 80461140  48 00 53 A9 */	bl create__12dDoor_stop_cFP10daDoor20_c
/* 80461144  2C 03 00 00 */	cmpwi r3, 0
/* 80461148  40 82 00 0C */	bne lbl_80461154
/* 8046114C  38 60 00 00 */	li r3, 0
/* 80461150  48 00 00 EC */	b lbl_8046123C
lbl_80461154:
/* 80461154  7F E3 FB 78 */	mr r3, r31
/* 80461158  48 00 1A 01 */	bl calcMtx__10daDoor20_cFv
/* 8046115C  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 80461160  7F E4 FB 78 */	mr r4, r31
/* 80461164  48 00 4F 91 */	bl calcMtx__12dDoor_stop_cFP10daDoor20_c
/* 80461168  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 8046116C  4B BA BB F8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80461170  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80461174  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80461178  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8046117C  4B BA B2 B8 */	b mDoMtx_YrotM__FPA4_fs
/* 80461180  2C 1E 00 09 */	cmpwi r30, 9
/* 80461184  40 82 00 1C */	bne lbl_804611A0
/* 80461188  3C 60 80 46 */	lis r3, lit_4124@ha
/* 8046118C  C0 23 68 24 */	lfs f1, lit_4124@l(r3)
/* 80461190  3C 60 80 46 */	lis r3, lit_4125@ha
/* 80461194  C0 43 68 28 */	lfs f2, lit_4125@l(r3)
/* 80461198  FC 60 08 90 */	fmr f3, f1
/* 8046119C  4B BA BC 9C */	b scaleM__14mDoMtx_stack_cFfff
lbl_804611A0:
/* 804611A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804611A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804611A8  38 9F 05 F4 */	addi r4, r31, 0x5f4
/* 804611AC  4B EE 53 04 */	b PSMTXCopy
/* 804611B0  38 60 00 C0 */	li r3, 0xc0
/* 804611B4  4B E6 DA 98 */	b __nw__FUl
/* 804611B8  7C 60 1B 79 */	or. r0, r3, r3
/* 804611BC  41 82 00 0C */	beq lbl_804611C8
/* 804611C0  4B C1 A7 B0 */	b __ct__4dBgWFv
/* 804611C4  7C 60 1B 78 */	mr r0, r3
lbl_804611C8:
/* 804611C8  90 1F 05 C4 */	stw r0, 0x5c4(r31)
/* 804611CC  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 804611D0  28 00 00 00 */	cmplwi r0, 0
/* 804611D4  41 82 00 5C */	beq lbl_80461230
/* 804611D8  7F E3 FB 78 */	mr r3, r31
/* 804611DC  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 804611E0  81 8C 00 08 */	lwz r12, 8(r12)
/* 804611E4  7D 89 03 A6 */	mtctr r12
/* 804611E8  4E 80 04 21 */	bctrl 
/* 804611EC  7C 7D 1B 78 */	mr r29, r3
/* 804611F0  7F E3 FB 78 */	mr r3, r31
/* 804611F4  4B FF F9 A1 */	bl getAlwaysArcName__10daDoor20_cFv
/* 804611F8  7F A4 EB 78 */	mr r4, r29
/* 804611FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80461200  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80461204  3C A5 00 02 */	addis r5, r5, 2
/* 80461208  38 C0 00 80 */	li r6, 0x80
/* 8046120C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80461210  4B BD B1 6C */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80461214  7C 64 1B 78 */	mr r4, r3
/* 80461218  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8046121C  38 A0 00 01 */	li r5, 1
/* 80461220  38 DF 05 F4 */	addi r6, r31, 0x5f4
/* 80461224  4B C1 8D 14 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80461228  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8046122C  41 82 00 0C */	beq lbl_80461238
lbl_80461230:
/* 80461230  38 60 00 00 */	li r3, 0
/* 80461234  48 00 00 08 */	b lbl_8046123C
lbl_80461238:
/* 80461238  38 60 00 01 */	li r3, 1
lbl_8046123C:
/* 8046123C  39 61 00 20 */	addi r11, r1, 0x20
/* 80461240  4B F0 0F E4 */	b _restgpr_28
/* 80461244  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80461248  7C 08 03 A6 */	mtlr r0
/* 8046124C  38 21 00 20 */	addi r1, r1, 0x20
/* 80461250  4E 80 00 20 */	blr 
