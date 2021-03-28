lbl_8024ADEC:
/* 8024ADEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024ADF0  7C 08 02 A6 */	mflr r0
/* 8024ADF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024ADF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8024ADFC  48 11 73 E1 */	bl _savegpr_29
/* 8024AE00  7C 7E 1B 78 */	mr r30, r3
/* 8024AE04  7C 86 23 78 */	mr r6, r4
/* 8024AE08  7C BF 2B 78 */	mr r31, r5
/* 8024AE0C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8024AE10  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8024AE14  54 00 18 38 */	slwi r0, r0, 3
/* 8024AE18  7F A4 02 14 */	add r29, r4, r0
/* 8024AE1C  7F A4 EB 78 */	mr r4, r29
/* 8024AE20  7C C5 33 78 */	mr r5, r6
/* 8024AE24  88 1D 00 01 */	lbz r0, 1(r29)
/* 8024AE28  1C E0 00 0C */	mulli r7, r0, 0xc
/* 8024AE2C  3C C0 80 3C */	lis r6, mEventList__10dMsgFlow_c@ha
/* 8024AE30  38 06 1C CC */	addi r0, r6, mEventList__10dMsgFlow_c@l
/* 8024AE34  7D 80 3A 14 */	add r12, r0, r7
/* 8024AE38  48 11 72 4D */	bl __ptmf_scall
/* 8024AE3C  60 00 00 00 */	nop 
/* 8024AE40  88 1D 00 01 */	lbz r0, 1(r29)
/* 8024AE44  2C 00 00 15 */	cmpwi r0, 0x15
/* 8024AE48  41 82 01 64 */	beq lbl_8024AFAC
/* 8024AE4C  40 80 00 1C */	bge lbl_8024AE68
/* 8024AE50  2C 00 00 09 */	cmpwi r0, 9
/* 8024AE54  41 82 00 84 */	beq lbl_8024AED8
/* 8024AE58  40 80 01 68 */	bge lbl_8024AFC0
/* 8024AE5C  2C 00 00 08 */	cmpwi r0, 8
/* 8024AE60  40 80 00 1C */	bge lbl_8024AE7C
/* 8024AE64  48 00 01 5C */	b lbl_8024AFC0
lbl_8024AE68:
/* 8024AE68  2C 00 00 22 */	cmpwi r0, 0x22
/* 8024AE6C  40 80 01 54 */	bge lbl_8024AFC0
/* 8024AE70  2C 00 00 20 */	cmpwi r0, 0x20
/* 8024AE74  40 80 01 38 */	bge lbl_8024AFAC
/* 8024AE78  48 00 01 48 */	b lbl_8024AFC0
lbl_8024AE7C:
/* 8024AE7C  7F C3 F3 78 */	mr r3, r30
/* 8024AE80  38 9E 00 32 */	addi r4, r30, 0x32
/* 8024AE84  38 BE 00 30 */	addi r5, r30, 0x30
/* 8024AE88  38 DD 00 04 */	addi r6, r29, 4
/* 8024AE8C  48 00 02 65 */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024AE90  7F C3 F3 78 */	mr r3, r30
/* 8024AE94  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8024AE98  A0 1D 00 02 */	lhz r0, 2(r29)
/* 8024AE9C  54 00 08 3C */	slwi r0, r0, 1
/* 8024AEA0  7C 84 02 2E */	lhzx r4, r4, r0
/* 8024AEA4  7F E5 FB 78 */	mr r5, r31
/* 8024AEA8  4B FF F9 25 */	bl setNodeIndex__10dMsgFlow_cFUsPP10fopAc_ac_c
/* 8024AEAC  88 1E 00 26 */	lbz r0, 0x26(r30)
/* 8024AEB0  28 00 00 00 */	cmplwi r0, 0
/* 8024AEB4  40 82 01 28 */	bne lbl_8024AFDC
/* 8024AEB8  A3 BE 00 10 */	lhz r29, 0x10(r30)
/* 8024AEBC  7F C3 F3 78 */	mr r3, r30
/* 8024AEC0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 8024AEC4  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 8024AEC8  7F E5 FB 78 */	mr r5, r31
/* 8024AECC  4B FF F9 01 */	bl setNodeIndex__10dMsgFlow_cFUsPP10fopAc_ac_c
/* 8024AED0  B3 BE 00 10 */	sth r29, 0x10(r30)
/* 8024AED4  48 00 01 08 */	b lbl_8024AFDC
lbl_8024AED8:
/* 8024AED8  7F C3 F3 78 */	mr r3, r30
/* 8024AEDC  38 9D 00 04 */	addi r4, r29, 4
/* 8024AEE0  48 00 02 51 */	bl getParam__10dMsgFlow_cFPUc
/* 8024AEE4  2C 03 00 00 */	cmpwi r3, 0
/* 8024AEE8  40 82 00 60 */	bne lbl_8024AF48
/* 8024AEEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024AEF0  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 8024AEF4  80 65 5D B4 */	lwz r3, 0x5db4(r5)
/* 8024AEF8  A0 03 31 20 */	lhz r0, 0x3120(r3)
/* 8024AEFC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8024AF00  40 82 00 2C */	bne lbl_8024AF2C
/* 8024AF04  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 8024AF08  7C 84 07 74 */	extsb r4, r4
/* 8024AF0C  38 65 4E C4 */	addi r3, r5, 0x4ec4
/* 8024AF10  4B DD 94 75 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8024AF14  81 83 00 00 */	lwz r12, 0(r3)
/* 8024AF18  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8024AF1C  7D 89 03 A6 */	mtctr r12
/* 8024AF20  4E 80 04 21 */	bctrl 
/* 8024AF24  A3 A3 00 1C */	lhz r29, 0x1c(r3)
/* 8024AF28  48 00 00 0C */	b lbl_8024AF34
lbl_8024AF2C:
/* 8024AF2C  7C 1D 03 78 */	mr r29, r0
/* 8024AF30  4B E6 9A 09 */	bl setMidnaMsg__9daAlink_cFv
lbl_8024AF34:
/* 8024AF34  7F C3 F3 78 */	mr r3, r30
/* 8024AF38  7F A4 EB 78 */	mr r4, r29
/* 8024AF3C  7F E5 FB 78 */	mr r5, r31
/* 8024AF40  4B FF F6 D9 */	bl setInitValueGroupChange__10dMsgFlow_cFiPP10fopAc_ac_c
/* 8024AF44  48 00 00 98 */	b lbl_8024AFDC
lbl_8024AF48:
/* 8024AF48  7F C3 F3 78 */	mr r3, r30
/* 8024AF4C  38 80 00 00 */	li r4, 0
/* 8024AF50  4B FF F6 31 */	bl setInitValue__10dMsgFlow_cFi
/* 8024AF54  7F C3 F3 78 */	mr r3, r30
/* 8024AF58  38 9D 00 04 */	addi r4, r29, 4
/* 8024AF5C  48 00 01 D5 */	bl getParam__10dMsgFlow_cFPUc
/* 8024AF60  B0 7E 00 1C */	sth r3, 0x1c(r30)
/* 8024AF64  7F C3 F3 78 */	mr r3, r30
/* 8024AF68  A0 9E 00 1C */	lhz r4, 0x1c(r30)
/* 8024AF6C  4B FF F8 19 */	bl getInitNodeIndex__10dMsgFlow_cFUs
/* 8024AF70  7C 64 1B 78 */	mr r4, r3
/* 8024AF74  7F C3 F3 78 */	mr r3, r30
/* 8024AF78  7F E5 FB 78 */	mr r5, r31
/* 8024AF7C  4B FF F8 51 */	bl setNodeIndex__10dMsgFlow_cFUsPP10fopAc_ac_c
/* 8024AF80  88 1E 00 48 */	lbz r0, 0x48(r30)
/* 8024AF84  28 00 00 00 */	cmplwi r0, 0
/* 8024AF88  40 82 00 54 */	bne lbl_8024AFDC
/* 8024AF8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024AF90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024AF94  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8024AF98  4B FE C1 65 */	bl isMidonaMessage__12dMsgObject_cFv
/* 8024AF9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8024AFA0  40 82 00 3C */	bne lbl_8024AFDC
/* 8024AFA4  38 60 00 00 */	li r3, 0
/* 8024AFA8  48 00 00 38 */	b lbl_8024AFE0
lbl_8024AFAC:
/* 8024AFAC  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 8024AFB0  2C 00 00 00 */	cmpwi r0, 0
/* 8024AFB4  41 82 00 0C */	beq lbl_8024AFC0
/* 8024AFB8  38 60 00 00 */	li r3, 0
/* 8024AFBC  48 00 00 24 */	b lbl_8024AFE0
lbl_8024AFC0:
/* 8024AFC0  7F C3 F3 78 */	mr r3, r30
/* 8024AFC4  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8024AFC8  A0 1D 00 02 */	lhz r0, 2(r29)
/* 8024AFCC  54 00 08 3C */	slwi r0, r0, 1
/* 8024AFD0  7C 84 02 2E */	lhzx r4, r4, r0
/* 8024AFD4  7F E5 FB 78 */	mr r5, r31
/* 8024AFD8  4B FF F7 F5 */	bl setNodeIndex__10dMsgFlow_cFUsPP10fopAc_ac_c
lbl_8024AFDC:
/* 8024AFDC  38 60 00 01 */	li r3, 1
lbl_8024AFE0:
/* 8024AFE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8024AFE4  48 11 72 45 */	bl _restgpr_29
/* 8024AFE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024AFEC  7C 08 03 A6 */	mtlr r0
/* 8024AFF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8024AFF4  4E 80 00 20 */	blr 
