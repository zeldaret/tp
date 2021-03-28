lbl_80B0EB80:
/* 80B0EB80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B0EB84  7C 08 02 A6 */	mflr r0
/* 80B0EB88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B0EB8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0EB90  4B 85 36 48 */	b _savegpr_28
/* 80B0EB94  7C 7E 1B 78 */	mr r30, r3
/* 80B0EB98  3C 80 80 B1 */	lis r4, m__16daNpcTkc_Param_c@ha
/* 80B0EB9C  3B E4 08 B4 */	addi r31, r4, m__16daNpcTkc_Param_c@l
/* 80B0EBA0  A0 03 0D 76 */	lhz r0, 0xd76(r3)
/* 80B0EBA4  2C 00 00 02 */	cmpwi r0, 2
/* 80B0EBA8  41 82 00 BC */	beq lbl_80B0EC64
/* 80B0EBAC  40 80 00 10 */	bge lbl_80B0EBBC
/* 80B0EBB0  2C 00 00 00 */	cmpwi r0, 0
/* 80B0EBB4  41 82 00 14 */	beq lbl_80B0EBC8
/* 80B0EBB8  48 00 03 18 */	b lbl_80B0EED0
lbl_80B0EBBC:
/* 80B0EBBC  2C 00 00 04 */	cmpwi r0, 4
/* 80B0EBC0  40 80 03 10 */	bge lbl_80B0EED0
/* 80B0EBC4  48 00 02 D8 */	b lbl_80B0EE9C
lbl_80B0EBC8:
/* 80B0EBC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B0EBCC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80B0EBD0  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 80B0EBD4  38 7C 05 38 */	addi r3, r28, 0x538
/* 80B0EBD8  4B 4F E1 8C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B0EBDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B0EBE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B0EBE4  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80B0EBE8  4B 4F D8 4C */	b mDoMtx_YrotM__FPA4_fs
/* 80B0EBEC  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80B0EBF0  FC 40 08 90 */	fmr f2, f1
/* 80B0EBF4  38 7F 00 00 */	addi r3, r31, 0
/* 80B0EBF8  C0 63 00 88 */	lfs f3, 0x88(r3)
/* 80B0EBFC  4B 4F E1 A0 */	b transM__14mDoMtx_stack_cFfff
/* 80B0EC00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B0EC04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B0EC08  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B0EC0C  D0 1E 0D 44 */	stfs f0, 0xd44(r30)
/* 80B0EC10  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B0EC14  D0 1E 0D 48 */	stfs f0, 0xd48(r30)
/* 80B0EC18  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B0EC1C  D0 1E 0D 4C */	stfs f0, 0xd4c(r30)
/* 80B0EC20  7F C3 F3 78 */	mr r3, r30
/* 80B0EC24  A8 9E 0D 72 */	lha r4, 0xd72(r30)
/* 80B0EC28  38 A0 00 00 */	li r5, 0
/* 80B0EC2C  4B 64 50 F0 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B0EC30  38 00 00 00 */	li r0, 0
/* 80B0EC34  90 1E 09 50 */	stw r0, 0x950(r30)
/* 80B0EC38  A8 1E 0D 74 */	lha r0, 0xd74(r30)
/* 80B0EC3C  2C 00 00 02 */	cmpwi r0, 2
/* 80B0EC40  41 82 00 0C */	beq lbl_80B0EC4C
/* 80B0EC44  38 00 00 02 */	li r0, 2
/* 80B0EC48  B0 1E 0D 74 */	sth r0, 0xd74(r30)
lbl_80B0EC4C:
/* 80B0EC4C  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80B0EC50  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B0EC54  4B 64 1A 68 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B0EC58  38 00 00 02 */	li r0, 2
/* 80B0EC5C  B0 1E 0D 76 */	sth r0, 0xd76(r30)
/* 80B0EC60  48 00 02 70 */	b lbl_80B0EED0
lbl_80B0EC64:
/* 80B0EC64  38 80 00 00 */	li r4, 0
/* 80B0EC68  38 A0 00 01 */	li r5, 1
/* 80B0EC6C  38 C0 00 00 */	li r6, 0
/* 80B0EC70  4B 64 51 14 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B0EC74  2C 03 00 00 */	cmpwi r3, 0
/* 80B0EC78  41 82 01 84 */	beq lbl_80B0EDFC
/* 80B0EC7C  28 1E 00 00 */	cmplwi r30, 0
/* 80B0EC80  41 82 00 0C */	beq lbl_80B0EC8C
/* 80B0EC84  83 9E 00 04 */	lwz r28, 4(r30)
/* 80B0EC88  48 00 00 08 */	b lbl_80B0EC90
lbl_80B0EC8C:
/* 80B0EC8C  3B 80 FF FF */	li r28, -1
lbl_80B0EC90:
/* 80B0EC90  4B 67 29 B0 */	b dCam_getBody__Fv
/* 80B0EC94  7F 84 E3 78 */	mr r4, r28
/* 80B0EC98  4B 57 9F 24 */	b EndEventCamera__9dCamera_cFi
/* 80B0EC9C  A0 1E 0A 32 */	lhz r0, 0xa32(r30)
/* 80B0ECA0  7C 00 07 35 */	extsh. r0, r0
/* 80B0ECA4  40 82 01 20 */	bne lbl_80B0EDC4
/* 80B0ECA8  28 1E 00 00 */	cmplwi r30, 0
/* 80B0ECAC  41 82 00 0C */	beq lbl_80B0ECB8
/* 80B0ECB0  83 9E 00 04 */	lwz r28, 4(r30)
/* 80B0ECB4  48 00 00 08 */	b lbl_80B0ECBC
lbl_80B0ECB8:
/* 80B0ECB8  3B 80 FF FF */	li r28, -1
lbl_80B0ECBC:
/* 80B0ECBC  4B 67 29 84 */	b dCam_getBody__Fv
/* 80B0ECC0  7F 84 E3 78 */	mr r4, r28
/* 80B0ECC4  4B 57 9E F8 */	b EndEventCamera__9dCamera_cFi
/* 80B0ECC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B0ECCC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80B0ECD0  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80B0ECD4  7F C4 F3 78 */	mr r4, r30
/* 80B0ECD8  4B 53 38 40 */	b reset__14dEvt_control_cFPv
/* 80B0ECDC  3C 60 80 B1 */	lis r3, l_arcName@ha
/* 80B0ECE0  80 03 0A B8 */	lwz r0, l_arcName@l(r3)
/* 80B0ECE4  90 1E 01 00 */	stw r0, 0x100(r30)
/* 80B0ECE8  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 80B0ECEC  7F 83 E3 78 */	mr r3, r28
/* 80B0ECF0  80 9E 01 00 */	lwz r4, 0x100(r30)
/* 80B0ECF4  4B 53 7B 0C */	b setObjectArchive__16dEvent_manager_cFPc
/* 80B0ECF8  7F 83 E3 78 */	mr r3, r28
/* 80B0ECFC  7F C4 F3 78 */	mr r4, r30
/* 80B0ED00  3C A0 80 B1 */	lis r5, struct_80B10A2C+0x0@ha
/* 80B0ED04  38 A5 0A 2C */	addi r5, r5, struct_80B10A2C+0x0@l
/* 80B0ED08  38 A5 00 15 */	addi r5, r5, 0x15
/* 80B0ED0C  38 C0 00 FF */	li r6, 0xff
/* 80B0ED10  4B 53 8A 48 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B0ED14  B0 7E 09 D4 */	sth r3, 0x9d4(r30)
/* 80B0ED18  7F C3 F3 78 */	mr r3, r30
/* 80B0ED1C  A8 9E 09 D4 */	lha r4, 0x9d4(r30)
/* 80B0ED20  38 A0 00 01 */	li r5, 1
/* 80B0ED24  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B0ED28  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B0ED2C  4B 50 C8 B8 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80B0ED30  38 00 00 01 */	li r0, 1
/* 80B0ED34  98 1E 09 EC */	stb r0, 0x9ec(r30)
/* 80B0ED38  3C 60 80 B1 */	lis r3, lit_5152@ha
/* 80B0ED3C  38 83 0B B0 */	addi r4, r3, lit_5152@l
/* 80B0ED40  80 64 00 00 */	lwz r3, 0(r4)
/* 80B0ED44  80 04 00 04 */	lwz r0, 4(r4)
/* 80B0ED48  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B0ED4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0ED50  80 04 00 08 */	lwz r0, 8(r4)
/* 80B0ED54  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B0ED58  38 00 00 03 */	li r0, 3
/* 80B0ED5C  B0 1E 0D 76 */	sth r0, 0xd76(r30)
/* 80B0ED60  38 7E 0D 20 */	addi r3, r30, 0xd20
/* 80B0ED64  4B 85 32 B4 */	b __ptmf_test
/* 80B0ED68  2C 03 00 00 */	cmpwi r3, 0
/* 80B0ED6C  41 82 00 14 */	beq lbl_80B0ED80
/* 80B0ED70  7F C3 F3 78 */	mr r3, r30
/* 80B0ED74  39 9E 0D 20 */	addi r12, r30, 0xd20
/* 80B0ED78  4B 85 33 0C */	b __ptmf_scall
/* 80B0ED7C  60 00 00 00 */	nop 
lbl_80B0ED80:
/* 80B0ED80  38 00 00 00 */	li r0, 0
/* 80B0ED84  B0 1E 0D 76 */	sth r0, 0xd76(r30)
/* 80B0ED88  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80B0ED8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0ED90  90 7E 0D 20 */	stw r3, 0xd20(r30)
/* 80B0ED94  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 80B0ED98  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B0ED9C  90 1E 0D 28 */	stw r0, 0xd28(r30)
/* 80B0EDA0  38 7E 0D 20 */	addi r3, r30, 0xd20
/* 80B0EDA4  4B 85 32 74 */	b __ptmf_test
/* 80B0EDA8  2C 03 00 00 */	cmpwi r3, 0
/* 80B0EDAC  41 82 00 50 */	beq lbl_80B0EDFC
/* 80B0EDB0  7F C3 F3 78 */	mr r3, r30
/* 80B0EDB4  39 9E 0D 20 */	addi r12, r30, 0xd20
/* 80B0EDB8  4B 85 32 CC */	b __ptmf_scall
/* 80B0EDBC  60 00 00 00 */	nop 
/* 80B0EDC0  48 00 00 3C */	b lbl_80B0EDFC
lbl_80B0EDC4:
/* 80B0EDC4  28 1E 00 00 */	cmplwi r30, 0
/* 80B0EDC8  41 82 00 0C */	beq lbl_80B0EDD4
/* 80B0EDCC  83 9E 00 04 */	lwz r28, 4(r30)
/* 80B0EDD0  48 00 00 08 */	b lbl_80B0EDD8
lbl_80B0EDD4:
/* 80B0EDD4  3B 80 FF FF */	li r28, -1
lbl_80B0EDD8:
/* 80B0EDD8  4B 67 28 68 */	b dCam_getBody__Fv
/* 80B0EDDC  7F 84 E3 78 */	mr r4, r28
/* 80B0EDE0  4B 57 9D DC */	b EndEventCamera__9dCamera_cFi
/* 80B0EDE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B0EDE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B0EDEC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B0EDF0  4B 53 36 78 */	b reset__14dEvt_control_cFv
/* 80B0EDF4  7F C3 F3 78 */	mr r3, r30
/* 80B0EDF8  4B 50 AE 84 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80B0EDFC:
/* 80B0EDFC  83 9E 09 50 */	lwz r28, 0x950(r30)
/* 80B0EE00  7F C3 F3 78 */	mr r3, r30
/* 80B0EE04  38 81 00 0C */	addi r4, r1, 0xc
/* 80B0EE08  38 A1 00 08 */	addi r5, r1, 8
/* 80B0EE0C  7F C6 F3 78 */	mr r6, r30
/* 80B0EE10  38 E0 00 00 */	li r7, 0
/* 80B0EE14  4B 64 49 04 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B0EE18  2C 03 00 00 */	cmpwi r3, 0
/* 80B0EE1C  41 82 00 44 */	beq lbl_80B0EE60
/* 80B0EE20  7F C3 F3 78 */	mr r3, r30
/* 80B0EE24  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B0EE28  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 80B0EE2C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B0EE30  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B0EE34  7D 89 03 A6 */	mtctr r12
/* 80B0EE38  4E 80 04 21 */	bctrl 
/* 80B0EE3C  7F C3 F3 78 */	mr r3, r30
/* 80B0EE40  80 81 00 08 */	lwz r4, 8(r1)
/* 80B0EE44  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 80B0EE48  38 A0 00 00 */	li r5, 0
/* 80B0EE4C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B0EE50  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B0EE54  7D 89 03 A6 */	mtctr r12
/* 80B0EE58  4E 80 04 21 */	bctrl 
/* 80B0EE5C  48 00 00 34 */	b lbl_80B0EE90
lbl_80B0EE60:
/* 80B0EE60  2C 1C 00 00 */	cmpwi r28, 0
/* 80B0EE64  41 82 00 2C */	beq lbl_80B0EE90
/* 80B0EE68  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 80B0EE6C  2C 00 00 00 */	cmpwi r0, 0
/* 80B0EE70  40 82 00 20 */	bne lbl_80B0EE90
/* 80B0EE74  7F C3 F3 78 */	mr r3, r30
/* 80B0EE78  38 80 00 01 */	li r4, 1
/* 80B0EE7C  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 80B0EE80  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B0EE84  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B0EE88  7D 89 03 A6 */	mtctr r12
/* 80B0EE8C  4E 80 04 21 */	bctrl 
lbl_80B0EE90:
/* 80B0EE90  7F C3 F3 78 */	mr r3, r30
/* 80B0EE94  4B FF F0 65 */	bl calcFly__10daNpcTkc_cFv
/* 80B0EE98  48 00 00 38 */	b lbl_80B0EED0
lbl_80B0EE9C:
/* 80B0EE9C  38 80 00 01 */	li r4, 1
/* 80B0EEA0  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 80B0EEA4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B0EEA8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B0EEAC  7D 89 03 A6 */	mtctr r12
/* 80B0EEB0  4E 80 04 21 */	bctrl 
/* 80B0EEB4  88 1E 09 EC */	lbz r0, 0x9ec(r30)
/* 80B0EEB8  28 00 00 00 */	cmplwi r0, 0
/* 80B0EEBC  40 82 00 14 */	bne lbl_80B0EED0
/* 80B0EEC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B0EEC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B0EEC8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B0EECC  4B 53 35 9C */	b reset__14dEvt_control_cFv
lbl_80B0EED0:
/* 80B0EED0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0EED4  4B 85 33 50 */	b _restgpr_28
/* 80B0EED8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B0EEDC  7C 08 03 A6 */	mtlr r0
/* 80B0EEE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B0EEE4  4E 80 00 20 */	blr 
