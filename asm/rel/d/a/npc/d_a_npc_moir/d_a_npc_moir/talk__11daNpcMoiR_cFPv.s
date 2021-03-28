lbl_80A7E8C0:
/* 80A7E8C0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A7E8C4  7C 08 02 A6 */	mflr r0
/* 80A7E8C8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A7E8CC  39 61 00 70 */	addi r11, r1, 0x70
/* 80A7E8D0  4B 8E 39 04 */	b _savegpr_27
/* 80A7E8D4  7C 7C 1B 78 */	mr r28, r3
/* 80A7E8D8  3C 80 80 A8 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A7E8DC  3B C4 38 B0 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80A7E8E0  3C 80 80 A8 */	lis r4, m__17daNpcMoiR_Param_c@ha
/* 80A7E8E4  3B E4 32 AC */	addi r31, r4, m__17daNpcMoiR_Param_c@l
/* 80A7E8E8  3B A0 00 00 */	li r29, 0
/* 80A7E8EC  A0 03 0E 08 */	lhz r0, 0xe08(r3)
/* 80A7E8F0  2C 00 00 02 */	cmpwi r0, 2
/* 80A7E8F4  41 82 00 60 */	beq lbl_80A7E954
/* 80A7E8F8  40 80 00 10 */	bge lbl_80A7E908
/* 80A7E8FC  2C 00 00 00 */	cmpwi r0, 0
/* 80A7E900  41 82 00 14 */	beq lbl_80A7E914
/* 80A7E904  48 00 06 9C */	b lbl_80A7EFA0
lbl_80A7E908:
/* 80A7E908  2C 00 00 04 */	cmpwi r0, 4
/* 80A7E90C  40 80 06 94 */	bge lbl_80A7EFA0
/* 80A7E910  48 00 06 5C */	b lbl_80A7EF6C
lbl_80A7E914:
/* 80A7E914  A8 9C 0E 04 */	lha r4, 0xe04(r28)
/* 80A7E918  38 A0 00 00 */	li r5, 0
/* 80A7E91C  4B 6D 54 00 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A7E920  38 00 00 00 */	li r0, 0
/* 80A7E924  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80A7E928  90 1C 09 50 */	stw r0, 0x950(r28)
/* 80A7E92C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80A7E930  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A7E934  A8 1C 0E 06 */	lha r0, 0xe06(r28)
/* 80A7E938  2C 00 00 03 */	cmpwi r0, 3
/* 80A7E93C  41 82 00 0C */	beq lbl_80A7E948
/* 80A7E940  38 00 00 03 */	li r0, 3
/* 80A7E944  B0 1C 0E 06 */	sth r0, 0xe06(r28)
lbl_80A7E948:
/* 80A7E948  38 00 00 02 */	li r0, 2
/* 80A7E94C  B0 1C 0E 08 */	sth r0, 0xe08(r28)
/* 80A7E950  48 00 06 50 */	b lbl_80A7EFA0
lbl_80A7E954:
/* 80A7E954  88 1C 0E 0B */	lbz r0, 0xe0b(r28)
/* 80A7E958  28 00 00 00 */	cmplwi r0, 0
/* 80A7E95C  41 82 00 24 */	beq lbl_80A7E980
/* 80A7E960  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A7E964  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 80A7E968  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80A7E96C  4B 59 BD A4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A7E970  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80A7E974  7C 60 07 34 */	extsh r0, r3
/* 80A7E978  7C 04 00 00 */	cmpw r4, r0
/* 80A7E97C  40 82 03 F0 */	bne lbl_80A7ED6C
lbl_80A7E980:
/* 80A7E980  7F 83 E3 78 */	mr r3, r28
/* 80A7E984  38 80 00 00 */	li r4, 0
/* 80A7E988  38 A0 00 01 */	li r5, 1
/* 80A7E98C  38 C0 00 00 */	li r6, 0
/* 80A7E990  4B 6D 53 F4 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A7E994  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E998  41 82 02 E0 */	beq lbl_80A7EC78
/* 80A7E99C  38 7C 0C 7C */	addi r3, r28, 0xc7c
/* 80A7E9A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A7E9A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A7E9A8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A7E9AC  4B 6D 1D 10 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A7E9B0  38 00 00 00 */	li r0, 0
/* 80A7E9B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A7E9B8  38 7C 09 F8 */	addi r3, r28, 0x9f8
/* 80A7E9BC  38 81 00 10 */	addi r4, r1, 0x10
/* 80A7E9C0  4B 7C BB 68 */	b getEventId__10dMsgFlow_cFPi
/* 80A7E9C4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80A7E9C8  28 00 00 01 */	cmplwi r0, 1
/* 80A7E9CC  40 82 00 90 */	bne lbl_80A7EA5C
/* 80A7E9D0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80A7E9D4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A7E9D8  38 A0 00 00 */	li r5, 0
/* 80A7E9DC  38 C0 FF FF */	li r6, -1
/* 80A7E9E0  38 E0 FF FF */	li r7, -1
/* 80A7E9E4  39 00 00 00 */	li r8, 0
/* 80A7E9E8  39 20 00 00 */	li r9, 0
/* 80A7E9EC  4B 59 D1 FC */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80A7E9F0  90 7C 0D F8 */	stw r3, 0xdf8(r28)
/* 80A7E9F4  80 7C 0D F8 */	lwz r3, 0xdf8(r28)
/* 80A7E9F8  3C 03 00 01 */	addis r0, r3, 1
/* 80A7E9FC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A7EA00  41 82 00 A8 */	beq lbl_80A7EAA8
/* 80A7EA04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A7EA08  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80A7EA0C  38 7B 4F F8 */	addi r3, r27, 0x4ff8
/* 80A7EA10  7F 84 E3 78 */	mr r4, r28
/* 80A7EA14  3C A0 80 A8 */	lis r5, struct_80A83840+0x0@ha
/* 80A7EA18  38 A5 38 40 */	addi r5, r5, struct_80A83840+0x0@l
/* 80A7EA1C  38 A5 00 59 */	addi r5, r5, 0x59
/* 80A7EA20  38 C0 00 FF */	li r6, 0xff
/* 80A7EA24  4B 5C 8D 34 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80A7EA28  7C 7D 1B 78 */	mr r29, r3
/* 80A7EA2C  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80A7EA30  7F 84 E3 78 */	mr r4, r28
/* 80A7EA34  4B 5C 3A E4 */	b reset__14dEvt_control_cFPv
/* 80A7EA38  7F 83 E3 78 */	mr r3, r28
/* 80A7EA3C  7F A4 EB 78 */	mr r4, r29
/* 80A7EA40  38 A0 00 01 */	li r5, 1
/* 80A7EA44  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A7EA48  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A7EA4C  4B 59 CB 98 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80A7EA50  38 00 00 01 */	li r0, 1
/* 80A7EA54  98 1C 09 EC */	stb r0, 0x9ec(r28)
/* 80A7EA58  48 00 00 50 */	b lbl_80A7EAA8
lbl_80A7EA5C:
/* 80A7EA5C  88 1C 0E 0B */	lbz r0, 0xe0b(r28)
/* 80A7EA60  28 00 00 01 */	cmplwi r0, 1
/* 80A7EA64  40 82 00 44 */	bne lbl_80A7EAA8
/* 80A7EA68  A0 1C 0A 32 */	lhz r0, 0xa32(r28)
/* 80A7EA6C  7C 00 07 35 */	extsh. r0, r0
/* 80A7EA70  40 82 00 38 */	bne lbl_80A7EAA8
/* 80A7EA74  38 00 00 03 */	li r0, 3
/* 80A7EA78  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 80A7EA7C  7F 83 E3 78 */	mr r3, r28
/* 80A7EA80  38 9E 02 48 */	addi r4, r30, 0x248
/* 80A7EA84  80 84 00 08 */	lwz r4, 8(r4)
/* 80A7EA88  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 80A7EA8C  54 00 10 3A */	slwi r0, r0, 2
/* 80A7EA90  38 BE 02 58 */	addi r5, r30, 0x258
/* 80A7EA94  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A7EA98  38 C0 00 01 */	li r6, 1
/* 80A7EA9C  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80A7EAA0  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80A7EAA4  4B 6D 4E B0 */	b changeEvent__8daNpcF_cFPcPcUsUs
lbl_80A7EAA8:
/* 80A7EAA8  88 1C 0E 0B */	lbz r0, 0xe0b(r28)
/* 80A7EAAC  2C 00 00 01 */	cmpwi r0, 1
/* 80A7EAB0  41 82 00 AC */	beq lbl_80A7EB5C
/* 80A7EAB4  40 80 00 10 */	bge lbl_80A7EAC4
/* 80A7EAB8  2C 00 00 00 */	cmpwi r0, 0
/* 80A7EABC  40 80 00 14 */	bge lbl_80A7EAD0
/* 80A7EAC0  48 00 01 B0 */	b lbl_80A7EC70
lbl_80A7EAC4:
/* 80A7EAC4  2C 00 00 03 */	cmpwi r0, 3
/* 80A7EAC8  40 80 01 A8 */	bge lbl_80A7EC70
/* 80A7EACC  48 00 01 1C */	b lbl_80A7EBE8
lbl_80A7EAD0:
/* 80A7EAD0  80 7E 02 EC */	lwz r3, 0x2ec(r30)
/* 80A7EAD4  80 1E 02 F0 */	lwz r0, 0x2f0(r30)
/* 80A7EAD8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A7EADC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7EAE0  80 1E 02 F4 */	lwz r0, 0x2f4(r30)
/* 80A7EAE4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A7EAE8  38 00 00 03 */	li r0, 3
/* 80A7EAEC  B0 1C 0E 08 */	sth r0, 0xe08(r28)
/* 80A7EAF0  38 7C 0D DC */	addi r3, r28, 0xddc
/* 80A7EAF4  4B 8E 35 24 */	b __ptmf_test
/* 80A7EAF8  2C 03 00 00 */	cmpwi r3, 0
/* 80A7EAFC  41 82 00 18 */	beq lbl_80A7EB14
/* 80A7EB00  7F 83 E3 78 */	mr r3, r28
/* 80A7EB04  38 80 00 00 */	li r4, 0
/* 80A7EB08  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80A7EB0C  4B 8E 35 78 */	b __ptmf_scall
/* 80A7EB10  60 00 00 00 */	nop 
lbl_80A7EB14:
/* 80A7EB14  38 00 00 00 */	li r0, 0
/* 80A7EB18  B0 1C 0E 08 */	sth r0, 0xe08(r28)
/* 80A7EB1C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80A7EB20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A7EB24  90 7C 0D DC */	stw r3, 0xddc(r28)
/* 80A7EB28  90 1C 0D E0 */	stw r0, 0xde0(r28)
/* 80A7EB2C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A7EB30  90 1C 0D E4 */	stw r0, 0xde4(r28)
/* 80A7EB34  38 7C 0D DC */	addi r3, r28, 0xddc
/* 80A7EB38  4B 8E 34 E0 */	b __ptmf_test
/* 80A7EB3C  2C 03 00 00 */	cmpwi r3, 0
/* 80A7EB40  41 82 01 30 */	beq lbl_80A7EC70
/* 80A7EB44  7F 83 E3 78 */	mr r3, r28
/* 80A7EB48  38 80 00 00 */	li r4, 0
/* 80A7EB4C  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80A7EB50  4B 8E 35 34 */	b __ptmf_scall
/* 80A7EB54  60 00 00 00 */	nop 
/* 80A7EB58  48 00 01 18 */	b lbl_80A7EC70
lbl_80A7EB5C:
/* 80A7EB5C  80 7E 02 F8 */	lwz r3, 0x2f8(r30)
/* 80A7EB60  80 1E 02 FC */	lwz r0, 0x2fc(r30)
/* 80A7EB64  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80A7EB68  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A7EB6C  80 1E 03 00 */	lwz r0, 0x300(r30)
/* 80A7EB70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A7EB74  38 00 00 03 */	li r0, 3
/* 80A7EB78  B0 1C 0E 08 */	sth r0, 0xe08(r28)
/* 80A7EB7C  38 7C 0D DC */	addi r3, r28, 0xddc
/* 80A7EB80  4B 8E 34 98 */	b __ptmf_test
/* 80A7EB84  2C 03 00 00 */	cmpwi r3, 0
/* 80A7EB88  41 82 00 18 */	beq lbl_80A7EBA0
/* 80A7EB8C  7F 83 E3 78 */	mr r3, r28
/* 80A7EB90  38 80 00 00 */	li r4, 0
/* 80A7EB94  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80A7EB98  4B 8E 34 EC */	b __ptmf_scall
/* 80A7EB9C  60 00 00 00 */	nop 
lbl_80A7EBA0:
/* 80A7EBA0  38 00 00 00 */	li r0, 0
/* 80A7EBA4  B0 1C 0E 08 */	sth r0, 0xe08(r28)
/* 80A7EBA8  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80A7EBAC  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80A7EBB0  90 7C 0D DC */	stw r3, 0xddc(r28)
/* 80A7EBB4  90 1C 0D E0 */	stw r0, 0xde0(r28)
/* 80A7EBB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A7EBBC  90 1C 0D E4 */	stw r0, 0xde4(r28)
/* 80A7EBC0  38 7C 0D DC */	addi r3, r28, 0xddc
/* 80A7EBC4  4B 8E 34 54 */	b __ptmf_test
/* 80A7EBC8  2C 03 00 00 */	cmpwi r3, 0
/* 80A7EBCC  41 82 00 A4 */	beq lbl_80A7EC70
/* 80A7EBD0  7F 83 E3 78 */	mr r3, r28
/* 80A7EBD4  38 80 00 00 */	li r4, 0
/* 80A7EBD8  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80A7EBDC  4B 8E 34 A8 */	b __ptmf_scall
/* 80A7EBE0  60 00 00 00 */	nop 
/* 80A7EBE4  48 00 00 8C */	b lbl_80A7EC70
lbl_80A7EBE8:
/* 80A7EBE8  80 7E 03 04 */	lwz r3, 0x304(r30)
/* 80A7EBEC  80 1E 03 08 */	lwz r0, 0x308(r30)
/* 80A7EBF0  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A7EBF4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A7EBF8  80 1E 03 0C */	lwz r0, 0x30c(r30)
/* 80A7EBFC  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A7EC00  38 00 00 03 */	li r0, 3
/* 80A7EC04  B0 1C 0E 08 */	sth r0, 0xe08(r28)
/* 80A7EC08  38 7C 0D DC */	addi r3, r28, 0xddc
/* 80A7EC0C  4B 8E 34 0C */	b __ptmf_test
/* 80A7EC10  2C 03 00 00 */	cmpwi r3, 0
/* 80A7EC14  41 82 00 18 */	beq lbl_80A7EC2C
/* 80A7EC18  7F 83 E3 78 */	mr r3, r28
/* 80A7EC1C  38 80 00 00 */	li r4, 0
/* 80A7EC20  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80A7EC24  4B 8E 34 60 */	b __ptmf_scall
/* 80A7EC28  60 00 00 00 */	nop 
lbl_80A7EC2C:
/* 80A7EC2C  38 00 00 00 */	li r0, 0
/* 80A7EC30  B0 1C 0E 08 */	sth r0, 0xe08(r28)
/* 80A7EC34  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80A7EC38  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80A7EC3C  90 7C 0D DC */	stw r3, 0xddc(r28)
/* 80A7EC40  90 1C 0D E0 */	stw r0, 0xde0(r28)
/* 80A7EC44  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80A7EC48  90 1C 0D E4 */	stw r0, 0xde4(r28)
/* 80A7EC4C  38 7C 0D DC */	addi r3, r28, 0xddc
/* 80A7EC50  4B 8E 33 C8 */	b __ptmf_test
/* 80A7EC54  2C 03 00 00 */	cmpwi r3, 0
/* 80A7EC58  41 82 00 18 */	beq lbl_80A7EC70
/* 80A7EC5C  7F 83 E3 78 */	mr r3, r28
/* 80A7EC60  38 80 00 00 */	li r4, 0
/* 80A7EC64  39 9C 0D DC */	addi r12, r28, 0xddc
/* 80A7EC68  4B 8E 34 1C */	b __ptmf_scall
/* 80A7EC6C  60 00 00 00 */	nop 
lbl_80A7EC70:
/* 80A7EC70  3B A0 00 01 */	li r29, 1
/* 80A7EC74  48 00 03 2C */	b lbl_80A7EFA0
lbl_80A7EC78:
/* 80A7EC78  83 7C 09 50 */	lwz r27, 0x950(r28)
/* 80A7EC7C  7F 83 E3 78 */	mr r3, r28
/* 80A7EC80  38 81 00 0C */	addi r4, r1, 0xc
/* 80A7EC84  38 A1 00 08 */	addi r5, r1, 8
/* 80A7EC88  7F 86 E3 78 */	mr r6, r28
/* 80A7EC8C  38 E0 00 00 */	li r7, 0
/* 80A7EC90  4B 6D 4A 88 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80A7EC94  2C 03 00 00 */	cmpwi r3, 0
/* 80A7EC98  41 82 00 44 */	beq lbl_80A7ECDC
/* 80A7EC9C  7F 83 E3 78 */	mr r3, r28
/* 80A7ECA0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A7ECA4  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7ECA8  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80A7ECAC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7ECB0  7D 89 03 A6 */	mtctr r12
/* 80A7ECB4  4E 80 04 21 */	bctrl 
/* 80A7ECB8  7F 83 E3 78 */	mr r3, r28
/* 80A7ECBC  80 81 00 08 */	lwz r4, 8(r1)
/* 80A7ECC0  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7ECC4  38 A0 00 00 */	li r5, 0
/* 80A7ECC8  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80A7ECCC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7ECD0  7D 89 03 A6 */	mtctr r12
/* 80A7ECD4  4E 80 04 21 */	bctrl 
/* 80A7ECD8  48 00 02 C8 */	b lbl_80A7EFA0
lbl_80A7ECDC:
/* 80A7ECDC  2C 1B 00 00 */	cmpwi r27, 0
/* 80A7ECE0  41 82 02 C0 */	beq lbl_80A7EFA0
/* 80A7ECE4  80 1C 09 50 */	lwz r0, 0x950(r28)
/* 80A7ECE8  2C 00 00 00 */	cmpwi r0, 0
/* 80A7ECEC  40 82 02 B4 */	bne lbl_80A7EFA0
/* 80A7ECF0  A8 1C 09 DE */	lha r0, 0x9de(r28)
/* 80A7ECF4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A7ECF8  41 82 00 34 */	beq lbl_80A7ED2C
/* 80A7ECFC  40 80 00 50 */	bge lbl_80A7ED4C
/* 80A7ED00  2C 00 00 03 */	cmpwi r0, 3
/* 80A7ED04  41 82 00 08 */	beq lbl_80A7ED0C
/* 80A7ED08  48 00 00 44 */	b lbl_80A7ED4C
lbl_80A7ED0C:
/* 80A7ED0C  7F 83 E3 78 */	mr r3, r28
/* 80A7ED10  38 80 00 0E */	li r4, 0xe
/* 80A7ED14  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7ED18  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80A7ED1C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7ED20  7D 89 03 A6 */	mtctr r12
/* 80A7ED24  4E 80 04 21 */	bctrl 
/* 80A7ED28  48 00 02 78 */	b lbl_80A7EFA0
lbl_80A7ED2C:
/* 80A7ED2C  7F 83 E3 78 */	mr r3, r28
/* 80A7ED30  38 80 00 11 */	li r4, 0x11
/* 80A7ED34  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7ED38  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80A7ED3C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7ED40  7D 89 03 A6 */	mtctr r12
/* 80A7ED44  4E 80 04 21 */	bctrl 
/* 80A7ED48  48 00 02 58 */	b lbl_80A7EFA0
lbl_80A7ED4C:
/* 80A7ED4C  7F 83 E3 78 */	mr r3, r28
/* 80A7ED50  38 80 00 12 */	li r4, 0x12
/* 80A7ED54  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7ED58  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80A7ED5C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7ED60  7D 89 03 A6 */	mtctr r12
/* 80A7ED64  4E 80 04 21 */	bctrl 
/* 80A7ED68  48 00 02 38 */	b lbl_80A7EFA0
lbl_80A7ED6C:
/* 80A7ED6C  7F 83 E3 78 */	mr r3, r28
/* 80A7ED70  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80A7ED74  4B 59 B9 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A7ED78  7C 7B 1B 78 */	mr r27, r3
/* 80A7ED7C  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80A7ED80  2C 00 00 00 */	cmpwi r0, 0
/* 80A7ED84  40 82 01 24 */	bne lbl_80A7EEA8
/* 80A7ED88  C0 5F 04 EC */	lfs f2, 0x4ec(r31)
/* 80A7ED8C  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80A7ED90  7C 00 D8 50 */	subf r0, r0, r27
/* 80A7ED94  7C 00 07 34 */	extsh r0, r0
/* 80A7ED98  C8 3F 05 08 */	lfd f1, 0x508(r31)
/* 80A7ED9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A7EDA0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80A7EDA4  3C 00 43 30 */	lis r0, 0x4330
/* 80A7EDA8  90 01 00 48 */	stw r0, 0x48(r1)
/* 80A7EDAC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80A7EDB0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A7EDB4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A7EDB8  FC 00 02 10 */	fabs f0, f0
/* 80A7EDBC  FC 00 00 18 */	frsp f0, f0
/* 80A7EDC0  FC 00 00 1E */	fctiwz f0, f0
/* 80A7EDC4  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80A7EDC8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A7EDCC  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A7EDD0  40 81 00 90 */	ble lbl_80A7EE60
/* 80A7EDD4  7F 83 E3 78 */	mr r3, r28
/* 80A7EDD8  38 80 00 12 */	li r4, 0x12
/* 80A7EDDC  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7EDE0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80A7EDE4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7EDE8  7D 89 03 A6 */	mtctr r12
/* 80A7EDEC  4E 80 04 21 */	bctrl 
/* 80A7EDF0  80 7E 03 10 */	lwz r3, 0x310(r30)
/* 80A7EDF4  80 1E 03 14 */	lwz r0, 0x314(r30)
/* 80A7EDF8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A7EDFC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A7EE00  80 1E 03 18 */	lwz r0, 0x318(r30)
/* 80A7EE04  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A7EE08  38 61 00 14 */	addi r3, r1, 0x14
/* 80A7EE0C  38 9C 0D DC */	addi r4, r28, 0xddc
/* 80A7EE10  4B 8E 32 38 */	b __ptmf_cmpr
/* 80A7EE14  2C 03 00 00 */	cmpwi r3, 0
/* 80A7EE18  40 82 00 28 */	bne lbl_80A7EE40
/* 80A7EE1C  7F 83 E3 78 */	mr r3, r28
/* 80A7EE20  38 80 00 26 */	li r4, 0x26
/* 80A7EE24  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7EE28  38 A0 00 00 */	li r5, 0
/* 80A7EE2C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80A7EE30  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7EE34  7D 89 03 A6 */	mtctr r12
/* 80A7EE38  4E 80 04 21 */	bctrl 
/* 80A7EE3C  48 00 00 24 */	b lbl_80A7EE60
lbl_80A7EE40:
/* 80A7EE40  7F 83 E3 78 */	mr r3, r28
/* 80A7EE44  38 80 00 2A */	li r4, 0x2a
/* 80A7EE48  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7EE4C  38 A0 00 00 */	li r5, 0
/* 80A7EE50  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80A7EE54  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7EE58  7D 89 03 A6 */	mtctr r12
/* 80A7EE5C  4E 80 04 21 */	bctrl 
lbl_80A7EE60:
/* 80A7EE60  B3 7C 09 96 */	sth r27, 0x996(r28)
/* 80A7EE64  38 00 00 00 */	li r0, 0
/* 80A7EE68  90 1C 09 68 */	stw r0, 0x968(r28)
/* 80A7EE6C  A8 7C 08 F2 */	lha r3, 0x8f2(r28)
/* 80A7EE70  A8 1C 09 96 */	lha r0, 0x996(r28)
/* 80A7EE74  7C 03 00 00 */	cmpw r3, r0
/* 80A7EE78  40 82 00 10 */	bne lbl_80A7EE88
/* 80A7EE7C  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80A7EE80  38 03 00 01 */	addi r0, r3, 1
/* 80A7EE84  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_80A7EE88:
/* 80A7EE88  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80A7EE8C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80A7EE90  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80A7EE94  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80A7EE98  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80A7EE9C  38 03 00 01 */	addi r0, r3, 1
/* 80A7EEA0  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80A7EEA4  48 00 00 90 */	b lbl_80A7EF34
lbl_80A7EEA8:
/* 80A7EEA8  2C 00 00 01 */	cmpwi r0, 1
/* 80A7EEAC  40 82 00 88 */	bne lbl_80A7EF34
/* 80A7EEB0  7F 83 E3 78 */	mr r3, r28
/* 80A7EEB4  A8 9C 09 96 */	lha r4, 0x996(r28)
/* 80A7EEB8  38 A0 00 00 */	li r5, 0
/* 80A7EEBC  A8 1C 09 E0 */	lha r0, 0x9e0(r28)
/* 80A7EEC0  2C 00 00 25 */	cmpwi r0, 0x25
/* 80A7EEC4  40 82 00 14 */	bne lbl_80A7EED8
/* 80A7EEC8  A8 1C 09 DA */	lha r0, 0x9da(r28)
/* 80A7EECC  2C 00 00 00 */	cmpwi r0, 0
/* 80A7EED0  41 81 00 08 */	bgt lbl_80A7EED8
/* 80A7EED4  38 A0 00 01 */	li r5, 1
lbl_80A7EED8:
/* 80A7EED8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80A7EEDC  41 82 00 0C */	beq lbl_80A7EEE8
/* 80A7EEE0  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 80A7EEE4  48 00 00 08 */	b lbl_80A7EEEC
lbl_80A7EEE8:
/* 80A7EEE8  C0 3F 04 F4 */	lfs f1, 0x4f4(r31)
lbl_80A7EEEC:
/* 80A7EEEC  38 A0 00 00 */	li r5, 0
/* 80A7EEF0  4B 6D 50 04 */	b turn__8daNpcF_cFsfi
/* 80A7EEF4  2C 03 00 00 */	cmpwi r3, 0
/* 80A7EEF8  41 82 00 2C */	beq lbl_80A7EF24
/* 80A7EEFC  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80A7EF00  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80A7EF04  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80A7EF08  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80A7EF0C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80A7EF10  B0 1C 08 F8 */	sth r0, 0x8f8(r28)
/* 80A7EF14  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80A7EF18  38 03 00 01 */	addi r0, r3, 1
/* 80A7EF1C  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80A7EF20  48 00 00 14 */	b lbl_80A7EF34
lbl_80A7EF24:
/* 80A7EF24  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80A7EF28  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80A7EF2C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80A7EF30  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
lbl_80A7EF34:
/* 80A7EF34  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80A7EF38  2C 00 00 01 */	cmpwi r0, 1
/* 80A7EF3C  40 81 00 64 */	ble lbl_80A7EFA0
/* 80A7EF40  7F 83 E3 78 */	mr r3, r28
/* 80A7EF44  38 80 00 07 */	li r4, 7
/* 80A7EF48  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7EF4C  38 A0 00 00 */	li r5, 0
/* 80A7EF50  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80A7EF54  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7EF58  7D 89 03 A6 */	mtctr r12
/* 80A7EF5C  4E 80 04 21 */	bctrl 
/* 80A7EF60  38 00 00 00 */	li r0, 0
/* 80A7EF64  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80A7EF68  48 00 00 38 */	b lbl_80A7EFA0
lbl_80A7EF6C:
/* 80A7EF6C  38 80 00 12 */	li r4, 0x12
/* 80A7EF70  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7EF74  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A7EF78  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7EF7C  7D 89 03 A6 */	mtctr r12
/* 80A7EF80  4E 80 04 21 */	bctrl 
/* 80A7EF84  88 1C 09 EC */	lbz r0, 0x9ec(r28)
/* 80A7EF88  28 00 00 00 */	cmplwi r0, 0
/* 80A7EF8C  40 82 00 14 */	bne lbl_80A7EFA0
/* 80A7EF90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A7EF94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A7EF98  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A7EF9C  4B 5C 34 CC */	b reset__14dEvt_control_cFv
lbl_80A7EFA0:
/* 80A7EFA0  7F A3 EB 78 */	mr r3, r29
/* 80A7EFA4  39 61 00 70 */	addi r11, r1, 0x70
/* 80A7EFA8  4B 8E 32 78 */	b _restgpr_27
/* 80A7EFAC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A7EFB0  7C 08 03 A6 */	mtlr r0
/* 80A7EFB4  38 21 00 70 */	addi r1, r1, 0x70
/* 80A7EFB8  4E 80 00 20 */	blr 
