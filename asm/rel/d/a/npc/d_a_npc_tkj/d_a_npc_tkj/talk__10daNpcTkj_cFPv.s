lbl_80574B30:
/* 80574B30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80574B34  7C 08 02 A6 */	mflr r0
/* 80574B38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80574B3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80574B40  4B DE D6 9C */	b _savegpr_29
/* 80574B44  7C 7F 1B 78 */	mr r31, r3
/* 80574B48  3B A0 00 00 */	li r29, 0
/* 80574B4C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80574B50  2C 00 00 02 */	cmpwi r0, 2
/* 80574B54  41 82 00 2C */	beq lbl_80574B80
/* 80574B58  40 80 01 B4 */	bge lbl_80574D0C
/* 80574B5C  2C 00 00 00 */	cmpwi r0, 0
/* 80574B60  40 80 00 0C */	bge lbl_80574B6C
/* 80574B64  48 00 01 A8 */	b lbl_80574D0C
/* 80574B68  48 00 01 A4 */	b lbl_80574D0C
lbl_80574B6C:
/* 80574B6C  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80574B70  38 A0 00 00 */	li r5, 0
/* 80574B74  4B BD 70 7C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80574B78  38 00 00 02 */	li r0, 2
/* 80574B7C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80574B80:
/* 80574B80  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80574B84  28 00 00 00 */	cmplwi r0, 0
/* 80574B88  40 82 00 A4 */	bne lbl_80574C2C
/* 80574B8C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80574B90  2C 00 00 01 */	cmpwi r0, 1
/* 80574B94  41 82 00 2C */	beq lbl_80574BC0
/* 80574B98  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80574B9C  4B BD 0B 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 80574BA0  38 00 00 00 */	li r0, 0
/* 80574BA4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80574BA8  3C 60 80 57 */	lis r3, lit_4286@ha
/* 80574BAC  C0 03 66 34 */	lfs f0, lit_4286@l(r3)
/* 80574BB0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80574BB4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80574BB8  38 00 00 01 */	li r0, 1
/* 80574BBC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80574BC0:
/* 80574BC0  38 00 00 00 */	li r0, 0
/* 80574BC4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80574BC8  7F E3 FB 78 */	mr r3, r31
/* 80574BCC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80574BD0  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80574BD4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80574BD8  4B AA 5B 38 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80574BDC  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80574BE0  7C 60 07 34 */	extsh r0, r3
/* 80574BE4  7C 04 00 00 */	cmpw r4, r0
/* 80574BE8  40 82 00 0C */	bne lbl_80574BF4
/* 80574BEC  3B A0 00 01 */	li r29, 1
/* 80574BF0  48 00 00 40 */	b lbl_80574C30
lbl_80574BF4:
/* 80574BF4  7F E3 FB 78 */	mr r3, r31
/* 80574BF8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80574BFC  4B AA 5B 14 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80574C00  7C 64 1B 78 */	mr r4, r3
/* 80574C04  7F E3 FB 78 */	mr r3, r31
/* 80574C08  38 A0 FF FF */	li r5, -1
/* 80574C0C  38 C0 FF FF */	li r6, -1
/* 80574C10  38 E0 00 0F */	li r7, 0xf
/* 80574C14  39 00 00 00 */	li r8, 0
/* 80574C18  4B BD 6A 30 */	b step__8daNpcT_cFsiiii
/* 80574C1C  2C 03 00 00 */	cmpwi r3, 0
/* 80574C20  41 82 00 10 */	beq lbl_80574C30
/* 80574C24  3B A0 00 01 */	li r29, 1
/* 80574C28  48 00 00 08 */	b lbl_80574C30
lbl_80574C2C:
/* 80574C2C  3B A0 00 01 */	li r29, 1
lbl_80574C30:
/* 80574C30  2C 1D 00 00 */	cmpwi r29, 0
/* 80574C34  41 82 00 D8 */	beq lbl_80574D0C
/* 80574C38  7F E3 FB 78 */	mr r3, r31
/* 80574C3C  38 80 00 00 */	li r4, 0
/* 80574C40  38 A0 00 00 */	li r5, 0
/* 80574C44  38 C0 00 00 */	li r6, 0
/* 80574C48  38 E0 00 00 */	li r7, 0
/* 80574C4C  4B BD 70 2C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80574C50  2C 03 00 00 */	cmpwi r3, 0
/* 80574C54  41 82 00 B8 */	beq lbl_80574D0C
/* 80574C58  38 7F 09 74 */	addi r3, r31, 0x974
/* 80574C5C  38 81 00 08 */	addi r4, r1, 8
/* 80574C60  4B CD 58 C8 */	b getEventId__10dMsgFlow_cFPi
/* 80574C64  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80574C68  38 00 FF FF */	li r0, -1
/* 80574C6C  90 1F 0F A0 */	stw r0, 0xfa0(r31)
/* 80574C70  2C 03 00 01 */	cmpwi r3, 1
/* 80574C74  40 82 00 6C */	bne lbl_80574CE0
/* 80574C78  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80574C7C  3C 03 00 01 */	addis r0, r3, 1
/* 80574C80  28 00 FF FF */	cmplwi r0, 0xffff
/* 80574C84  40 82 00 28 */	bne lbl_80574CAC
/* 80574C88  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80574C8C  80 81 00 08 */	lwz r4, 8(r1)
/* 80574C90  38 A0 00 00 */	li r5, 0
/* 80574C94  38 C0 FF FF */	li r6, -1
/* 80574C98  38 E0 FF FF */	li r7, -1
/* 80574C9C  39 00 00 00 */	li r8, 0
/* 80574CA0  39 20 00 00 */	li r9, 0
/* 80574CA4  4B AA 6F 44 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80574CA8  90 7F 0D 90 */	stw r3, 0xd90(r31)
lbl_80574CAC:
/* 80574CAC  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80574CB0  4B AA C6 EC */	b fpcEx_IsExist__FUi
/* 80574CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80574CB8  41 82 00 54 */	beq lbl_80574D0C
/* 80574CBC  38 00 00 01 */	li r0, 1
/* 80574CC0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80574CC4  7F E3 FB 78 */	mr r3, r31
/* 80574CC8  4B BD 55 5C */	b evtChange__8daNpcT_cFv
/* 80574CCC  80 01 00 08 */	lwz r0, 8(r1)
/* 80574CD0  90 1F 0F A0 */	stw r0, 0xfa0(r31)
/* 80574CD4  38 00 00 03 */	li r0, 3
/* 80574CD8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80574CDC  48 00 00 30 */	b lbl_80574D0C
lbl_80574CE0:
/* 80574CE0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80574CE4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80574CE8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80574CEC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80574CF0  4B BD 09 F0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80574CF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80574CF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80574CFC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80574D00  4B AC D7 68 */	b reset__14dEvt_control_cFv
/* 80574D04  38 00 00 03 */	li r0, 3
/* 80574D08  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80574D0C:
/* 80574D0C  38 60 00 00 */	li r3, 0
/* 80574D10  39 61 00 20 */	addi r11, r1, 0x20
/* 80574D14  4B DE D5 14 */	b _restgpr_29
/* 80574D18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80574D1C  7C 08 03 A6 */	mtlr r0
/* 80574D20  38 21 00 20 */	addi r1, r1, 0x20
/* 80574D24  4E 80 00 20 */	blr 
