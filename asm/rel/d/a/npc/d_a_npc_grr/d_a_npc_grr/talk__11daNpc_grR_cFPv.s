lbl_809E2B48:
/* 809E2B48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E2B4C  7C 08 02 A6 */	mflr r0
/* 809E2B50  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E2B54  39 61 00 20 */	addi r11, r1, 0x20
/* 809E2B58  4B 97 F6 81 */	bl _savegpr_28
/* 809E2B5C  7C 7D 1B 78 */	mr r29, r3
/* 809E2B60  3B E0 00 00 */	li r31, 0
/* 809E2B64  3B C0 00 00 */	li r30, 0
/* 809E2B68  38 00 00 00 */	li r0, 0
/* 809E2B6C  90 01 00 08 */	stw r0, 8(r1)
/* 809E2B70  A0 03 0E 0E */	lhz r0, 0xe0e(r3)
/* 809E2B74  2C 00 00 02 */	cmpwi r0, 2
/* 809E2B78  41 82 00 84 */	beq lbl_809E2BFC
/* 809E2B7C  40 80 02 EC */	bge lbl_809E2E68
/* 809E2B80  2C 00 00 00 */	cmpwi r0, 0
/* 809E2B84  41 82 00 0C */	beq lbl_809E2B90
/* 809E2B88  48 00 02 E0 */	b lbl_809E2E68
/* 809E2B8C  48 00 02 DC */	b lbl_809E2E68
lbl_809E2B90:
/* 809E2B90  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809E2B94  28 00 00 00 */	cmplwi r0, 0
/* 809E2B98  40 82 02 D0 */	bne lbl_809E2E68
/* 809E2B9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E2BA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E2BA4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 809E2BA8  3C 80 80 9E */	lis r4, d_a_npc_grr__stringBase0@ha /* 0x809E3BCC@ha */
/* 809E2BAC  38 84 3B CC */	addi r4, r4, d_a_npc_grr__stringBase0@l /* 0x809E3BCC@l */
/* 809E2BB0  38 84 00 0A */	addi r4, r4, 0xa
/* 809E2BB4  4B 98 5D E1 */	bl strcmp
/* 809E2BB8  2C 03 00 00 */	cmpwi r3, 0
/* 809E2BBC  40 82 00 18 */	bne lbl_809E2BD4
/* 809E2BC0  88 1D 0E 18 */	lbz r0, 0xe18(r29)
/* 809E2BC4  28 00 00 00 */	cmplwi r0, 0
/* 809E2BC8  40 82 00 0C */	bne lbl_809E2BD4
/* 809E2BCC  38 60 00 0B */	li r3, 0xb
/* 809E2BD0  4B 77 2B 65 */	bl daNpcF_offTmpBit__FUl
lbl_809E2BD4:
/* 809E2BD4  80 9D 0E 08 */	lwz r4, 0xe08(r29)
/* 809E2BD8  38 00 00 00 */	li r0, 0
/* 809E2BDC  98 1D 0E 18 */	stb r0, 0xe18(r29)
/* 809E2BE0  7F A3 EB 78 */	mr r3, r29
/* 809E2BE4  38 A0 00 00 */	li r5, 0
/* 809E2BE8  4B 77 11 35 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809E2BEC  38 00 00 00 */	li r0, 0
/* 809E2BF0  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809E2BF4  38 00 00 02 */	li r0, 2
/* 809E2BF8  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
lbl_809E2BFC:
/* 809E2BFC  88 1D 09 EA */	lbz r0, 0x9ea(r29)
/* 809E2C00  28 00 00 00 */	cmplwi r0, 0
/* 809E2C04  41 82 00 2C */	beq lbl_809E2C30
/* 809E2C08  3B C0 00 01 */	li r30, 1
/* 809E2C0C  7F A3 EB 78 */	mr r3, r29
/* 809E2C10  38 80 00 03 */	li r4, 3
/* 809E2C14  4B FF F8 6D */	bl setLookMode__11daNpc_grR_cFi
/* 809E2C18  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 809E2C1C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E2C20  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E2C24  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809E2C28  4B 76 DA 95 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809E2C2C  48 00 00 C0 */	b lbl_809E2CEC
lbl_809E2C30:
/* 809E2C30  7F A3 EB 78 */	mr r3, r29
/* 809E2C34  38 80 00 03 */	li r4, 3
/* 809E2C38  4B FF F8 49 */	bl setLookMode__11daNpc_grR_cFi
/* 809E2C3C  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 809E2C40  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E2C44  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E2C48  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809E2C4C  4B 76 DA 71 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809E2C50  7F A3 EB 78 */	mr r3, r29
/* 809E2C54  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809E2C58  4B 63 7A B9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809E2C5C  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 809E2C60  7C 60 07 34 */	extsh r0, r3
/* 809E2C64  7C 04 00 00 */	cmpw r4, r0
/* 809E2C68  40 82 00 0C */	bne lbl_809E2C74
/* 809E2C6C  3B C0 00 01 */	li r30, 1
/* 809E2C70  48 00 00 7C */	b lbl_809E2CEC
lbl_809E2C74:
/* 809E2C74  7F A3 EB 78 */	mr r3, r29
/* 809E2C78  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809E2C7C  4B 63 7A 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809E2C80  7C 64 1B 78 */	mr r4, r3
/* 809E2C84  7F A3 EB 78 */	mr r3, r29
/* 809E2C88  38 A0 00 07 */	li r5, 7
/* 809E2C8C  38 C0 00 0A */	li r6, 0xa
/* 809E2C90  38 E0 00 0F */	li r7, 0xf
/* 809E2C94  4B 77 14 11 */	bl step__8daNpcF_cFsiii
/* 809E2C98  2C 03 00 00 */	cmpwi r3, 0
/* 809E2C9C  41 82 00 50 */	beq lbl_809E2CEC
/* 809E2CA0  7F A3 EB 78 */	mr r3, r29
/* 809E2CA4  38 80 00 07 */	li r4, 7
/* 809E2CA8  3C A0 80 9E */	lis r5, lit_4718@ha /* 0x809E3978@ha */
/* 809E2CAC  C0 25 39 78 */	lfs f1, lit_4718@l(r5)  /* 0x809E3978@l */
/* 809E2CB0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E2CB4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E2CB8  7D 89 03 A6 */	mtctr r12
/* 809E2CBC  4E 80 04 21 */	bctrl 
/* 809E2CC0  7F A3 EB 78 */	mr r3, r29
/* 809E2CC4  38 80 00 00 */	li r4, 0
/* 809E2CC8  3C A0 80 9E */	lis r5, lit_4718@ha /* 0x809E3978@ha */
/* 809E2CCC  C0 25 39 78 */	lfs f1, lit_4718@l(r5)  /* 0x809E3978@l */
/* 809E2CD0  38 A0 00 00 */	li r5, 0
/* 809E2CD4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E2CD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809E2CDC  7D 89 03 A6 */	mtctr r12
/* 809E2CE0  4E 80 04 21 */	bctrl 
/* 809E2CE4  38 00 00 00 */	li r0, 0
/* 809E2CE8  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_809E2CEC:
/* 809E2CEC  2C 1E 00 00 */	cmpwi r30, 0
/* 809E2CF0  41 82 01 44 */	beq lbl_809E2E34
/* 809E2CF4  7F A3 EB 78 */	mr r3, r29
/* 809E2CF8  38 80 00 00 */	li r4, 0
/* 809E2CFC  38 A0 00 01 */	li r5, 1
/* 809E2D00  38 C0 00 00 */	li r6, 0
/* 809E2D04  4B 77 10 81 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809E2D08  2C 03 00 00 */	cmpwi r3, 0
/* 809E2D0C  41 82 01 28 */	beq lbl_809E2E34
/* 809E2D10  88 1D 0E 10 */	lbz r0, 0xe10(r29)
/* 809E2D14  28 00 00 00 */	cmplwi r0, 0
/* 809E2D18  40 82 00 BC */	bne lbl_809E2DD4
/* 809E2D1C  38 7D 09 F8 */	addi r3, r29, 0x9f8
/* 809E2D20  38 81 00 08 */	addi r4, r1, 8
/* 809E2D24  4B 86 78 05 */	bl getEventId__10dMsgFlow_cFPi
/* 809E2D28  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 809E2D2C  28 00 00 01 */	cmplwi r0, 1
/* 809E2D30  40 82 00 9C */	bne lbl_809E2DCC
/* 809E2D34  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809E2D38  80 81 00 08 */	lwz r4, 8(r1)
/* 809E2D3C  38 A0 00 00 */	li r5, 0
/* 809E2D40  38 C0 FF FF */	li r6, -1
/* 809E2D44  38 E0 FF FF */	li r7, -1
/* 809E2D48  39 00 00 00 */	li r8, 0
/* 809E2D4C  39 20 00 00 */	li r9, 0
/* 809E2D50  4B 63 8E 99 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 809E2D54  90 7D 0E 14 */	stw r3, 0xe14(r29)
/* 809E2D58  80 7D 0E 14 */	lwz r3, 0xe14(r29)
/* 809E2D5C  3C 03 00 01 */	addis r0, r3, 1
/* 809E2D60  28 00 FF FF */	cmplwi r0, 0xffff
/* 809E2D64  41 82 00 D0 */	beq lbl_809E2E34
/* 809E2D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E2D6C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E2D70  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 809E2D74  7F A4 EB 78 */	mr r4, r29
/* 809E2D78  3C A0 80 9E */	lis r5, d_a_npc_grr__stringBase0@ha /* 0x809E3BCC@ha */
/* 809E2D7C  38 A5 3B CC */	addi r5, r5, d_a_npc_grr__stringBase0@l /* 0x809E3BCC@l */
/* 809E2D80  38 A5 00 11 */	addi r5, r5, 0x11
/* 809E2D84  38 C0 00 FF */	li r6, 0xff
/* 809E2D88  4B 66 49 D1 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 809E2D8C  7C 7C 1B 78 */	mr r28, r3
/* 809E2D90  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 809E2D94  7F A4 EB 78 */	mr r4, r29
/* 809E2D98  4B 65 F7 81 */	bl reset__14dEvt_control_cFPv
/* 809E2D9C  7F A3 EB 78 */	mr r3, r29
/* 809E2DA0  7F 84 E3 78 */	mr r4, r28
/* 809E2DA4  38 A0 00 01 */	li r5, 1
/* 809E2DA8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809E2DAC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809E2DB0  4B 63 88 35 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 809E2DB4  38 00 00 01 */	li r0, 1
/* 809E2DB8  98 1D 0E 18 */	stb r0, 0xe18(r29)
/* 809E2DBC  98 1D 09 EC */	stb r0, 0x9ec(r29)
/* 809E2DC0  3B E0 00 01 */	li r31, 1
/* 809E2DC4  98 1D 09 ED */	stb r0, 0x9ed(r29)
/* 809E2DC8  48 00 00 6C */	b lbl_809E2E34
lbl_809E2DCC:
/* 809E2DCC  3B E0 00 01 */	li r31, 1
/* 809E2DD0  48 00 00 64 */	b lbl_809E2E34
lbl_809E2DD4:
/* 809E2DD4  28 00 00 01 */	cmplwi r0, 1
/* 809E2DD8  40 82 00 58 */	bne lbl_809E2E30
/* 809E2DDC  38 60 01 8F */	li r3, 0x18f
/* 809E2DE0  4B 77 28 55 */	bl daNpcF_chkEvtBit__FUl
/* 809E2DE4  2C 03 00 00 */	cmpwi r3, 0
/* 809E2DE8  41 82 00 40 */	beq lbl_809E2E28
/* 809E2DEC  A0 1D 0A 32 */	lhz r0, 0xa32(r29)
/* 809E2DF0  7C 00 07 35 */	extsh. r0, r0
/* 809E2DF4  40 82 00 2C */	bne lbl_809E2E20
/* 809E2DF8  38 60 00 24 */	li r3, 0x24
/* 809E2DFC  3C 80 80 9E */	lis r4, lit_4453@ha /* 0x809E3968@ha */
/* 809E2E00  C0 24 39 68 */	lfs f1, lit_4453@l(r4)  /* 0x809E3968@l */
/* 809E2E04  38 80 00 00 */	li r4, 0
/* 809E2E08  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 809E2E0C  7C 05 07 74 */	extsb r5, r0
/* 809E2E10  38 C0 00 00 */	li r6, 0
/* 809E2E14  38 E0 FF FF */	li r7, -1
/* 809E2E18  4B 64 43 59 */	bl dStage_changeScene__FifUlScsi
/* 809E2E1C  48 00 00 18 */	b lbl_809E2E34
lbl_809E2E20:
/* 809E2E20  3B E0 00 01 */	li r31, 1
/* 809E2E24  48 00 00 10 */	b lbl_809E2E34
lbl_809E2E28:
/* 809E2E28  3B E0 00 01 */	li r31, 1
/* 809E2E2C  48 00 00 08 */	b lbl_809E2E34
lbl_809E2E30:
/* 809E2E30  3B E0 00 01 */	li r31, 1
lbl_809E2E34:
/* 809E2E34  2C 1F 00 00 */	cmpwi r31, 0
/* 809E2E38  41 82 00 30 */	beq lbl_809E2E68
/* 809E2E3C  38 00 00 03 */	li r0, 3
/* 809E2E40  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
/* 809E2E44  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 809E2E48  28 00 00 00 */	cmplwi r0, 0
/* 809E2E4C  40 82 00 14 */	bne lbl_809E2E60
/* 809E2E50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E2E54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E2E58  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809E2E5C  4B 65 F6 0D */	bl reset__14dEvt_control_cFv
lbl_809E2E60:
/* 809E2E60  38 00 00 00 */	li r0, 0
/* 809E2E64  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_809E2E68:
/* 809E2E68  7F E3 FB 78 */	mr r3, r31
/* 809E2E6C  39 61 00 20 */	addi r11, r1, 0x20
/* 809E2E70  4B 97 F3 B5 */	bl _restgpr_28
/* 809E2E74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E2E78  7C 08 03 A6 */	mtlr r0
/* 809E2E7C  38 21 00 20 */	addi r1, r1, 0x20
/* 809E2E80  4E 80 00 20 */	blr 
