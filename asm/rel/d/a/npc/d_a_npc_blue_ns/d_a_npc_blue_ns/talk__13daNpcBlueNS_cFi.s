lbl_8096AE5C:
/* 8096AE5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8096AE60  7C 08 02 A6 */	mflr r0
/* 8096AE64  90 01 00 34 */	stw r0, 0x34(r1)
/* 8096AE68  39 61 00 30 */	addi r11, r1, 0x30
/* 8096AE6C  4B 9F 73 70 */	b _savegpr_29
/* 8096AE70  7C 7F 1B 78 */	mr r31, r3
/* 8096AE74  3B A0 00 00 */	li r29, 0
/* 8096AE78  A0 03 0D C0 */	lhz r0, 0xdc0(r3)
/* 8096AE7C  2C 00 00 02 */	cmpwi r0, 2
/* 8096AE80  41 82 00 50 */	beq lbl_8096AED0
/* 8096AE84  40 80 00 10 */	bge lbl_8096AE94
/* 8096AE88  2C 00 00 00 */	cmpwi r0, 0
/* 8096AE8C  41 82 00 14 */	beq lbl_8096AEA0
/* 8096AE90  48 00 01 1C */	b lbl_8096AFAC
lbl_8096AE94:
/* 8096AE94  2C 00 00 04 */	cmpwi r0, 4
/* 8096AE98  40 80 01 14 */	bge lbl_8096AFAC
/* 8096AE9C  48 00 00 F4 */	b lbl_8096AF90
lbl_8096AEA0:
/* 8096AEA0  80 9F 0D E4 */	lwz r4, 0xde4(r31)
/* 8096AEA4  38 A0 00 00 */	li r5, 0
/* 8096AEA8  4B 7E 8E 74 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 8096AEAC  38 00 00 00 */	li r0, 0
/* 8096AEB0  90 1F 09 50 */	stw r0, 0x950(r31)
/* 8096AEB4  98 1F 0D EC */	stb r0, 0xdec(r31)
/* 8096AEB8  7F E3 FB 78 */	mr r3, r31
/* 8096AEBC  38 80 00 03 */	li r4, 3
/* 8096AEC0  4B FF F9 39 */	bl setLookMode__13daNpcBlueNS_cFi
/* 8096AEC4  38 00 00 02 */	li r0, 2
/* 8096AEC8  B0 1F 0D C0 */	sth r0, 0xdc0(r31)
/* 8096AECC  48 00 00 E0 */	b lbl_8096AFAC
lbl_8096AED0:
/* 8096AED0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8096AED4  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 8096AED8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8096AEDC  4B 6A F8 34 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8096AEE0  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 8096AEE4  7C 60 07 34 */	extsh r0, r3
/* 8096AEE8  7C 04 00 00 */	cmpw r4, r0
/* 8096AEEC  40 82 00 74 */	bne lbl_8096AF60
/* 8096AEF0  7F E3 FB 78 */	mr r3, r31
/* 8096AEF4  38 80 00 00 */	li r4, 0
/* 8096AEF8  38 A0 00 01 */	li r5, 1
/* 8096AEFC  38 C0 00 00 */	li r6, 0
/* 8096AF00  4B 7E 8E 84 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 8096AF04  2C 03 00 00 */	cmpwi r3, 0
/* 8096AF08  41 82 00 A4 */	beq lbl_8096AFAC
/* 8096AF0C  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 8096AF10  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8096AF14  4B 7E 57 A8 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 8096AF18  38 00 00 00 */	li r0, 0
/* 8096AF1C  90 01 00 08 */	stw r0, 8(r1)
/* 8096AF20  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 8096AF24  38 81 00 08 */	addi r4, r1, 8
/* 8096AF28  4B 8D F6 00 */	b getEventId__10dMsgFlow_cFPi
/* 8096AF2C  3C 60 80 97 */	lis r3, lit_5146@ha
/* 8096AF30  38 83 CD 40 */	addi r4, r3, lit_5146@l
/* 8096AF34  80 64 00 00 */	lwz r3, 0(r4)
/* 8096AF38  80 04 00 04 */	lwz r0, 4(r4)
/* 8096AF3C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8096AF40  90 01 00 10 */	stw r0, 0x10(r1)
/* 8096AF44  80 04 00 08 */	lwz r0, 8(r4)
/* 8096AF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096AF4C  7F E3 FB 78 */	mr r3, r31
/* 8096AF50  38 81 00 0C */	addi r4, r1, 0xc
/* 8096AF54  4B FF F7 FD */	bl setAction__13daNpcBlueNS_cFM13daNpcBlueNS_cFPCvPvi_i
/* 8096AF58  3B A0 00 01 */	li r29, 1
/* 8096AF5C  48 00 00 50 */	b lbl_8096AFAC
lbl_8096AF60:
/* 8096AF60  7F E3 FB 78 */	mr r3, r31
/* 8096AF64  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8096AF68  4B 6A F7 A8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8096AF6C  7C 64 1B 78 */	mr r4, r3
/* 8096AF70  7F E3 FB 78 */	mr r3, r31
/* 8096AF74  38 A0 00 01 */	li r5, 1
/* 8096AF78  4B FF FA 85 */	bl step__13daNpcBlueNS_cFsi
/* 8096AF7C  2C 03 00 00 */	cmpwi r3, 0
/* 8096AF80  41 82 00 2C */	beq lbl_8096AFAC
/* 8096AF84  38 00 00 00 */	li r0, 0
/* 8096AF88  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 8096AF8C  48 00 00 20 */	b lbl_8096AFAC
lbl_8096AF90:
/* 8096AF90  88 1F 09 EC */	lbz r0, 0x9ec(r31)
/* 8096AF94  28 00 00 00 */	cmplwi r0, 0
/* 8096AF98  40 82 00 14 */	bne lbl_8096AFAC
/* 8096AF9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096AFA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8096AFA4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8096AFA8  4B 6D 74 C0 */	b reset__14dEvt_control_cFv
lbl_8096AFAC:
/* 8096AFAC  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 8096AFB0  39 61 00 30 */	addi r11, r1, 0x30
/* 8096AFB4  4B 9F 72 74 */	b _restgpr_29
/* 8096AFB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8096AFBC  7C 08 03 A6 */	mtlr r0
/* 8096AFC0  38 21 00 30 */	addi r1, r1, 0x30
/* 8096AFC4  4E 80 00 20 */	blr 
