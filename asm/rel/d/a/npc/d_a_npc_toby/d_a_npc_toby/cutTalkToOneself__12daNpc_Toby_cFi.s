lbl_80B20AB0:
/* 80B20AB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B20AB4  7C 08 02 A6 */	mflr r0
/* 80B20AB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B20ABC  39 61 00 40 */	addi r11, r1, 0x40
/* 80B20AC0  4B 84 17 01 */	bl _savegpr_22
/* 80B20AC4  7C 77 1B 78 */	mr r23, r3
/* 80B20AC8  7C 98 23 78 */	mr r24, r4
/* 80B20ACC  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha /* 0x80B249E4@ha */
/* 80B20AD0  3B E3 49 E4 */	addi r31, r3, m__18daNpc_Toby_Param_c@l /* 0x80B249E4@l */
/* 80B20AD4  3B A0 00 00 */	li r29, 0
/* 80B20AD8  3B 80 FF FF */	li r28, -1
/* 80B20ADC  3B 60 00 00 */	li r27, 0
/* 80B20AE0  3B 40 00 00 */	li r26, 0
/* 80B20AE4  3B 20 00 00 */	li r25, 0
/* 80B20AE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B20AEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B20AF0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80B20AF4  7F C3 F3 78 */	mr r3, r30
/* 80B20AF8  3C A0 80 B2 */	lis r5, d_a_npc_toby__stringBase0@ha /* 0x80B24B8C@ha */
/* 80B20AFC  38 A5 4B 8C */	addi r5, r5, d_a_npc_toby__stringBase0@l /* 0x80B24B8C@l */
/* 80B20B00  38 A5 00 A6 */	addi r5, r5, 0xa6
/* 80B20B04  38 C0 00 03 */	li r6, 3
/* 80B20B08  4B 52 75 E5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B20B0C  28 03 00 00 */	cmplwi r3, 0
/* 80B20B10  41 82 00 08 */	beq lbl_80B20B18
/* 80B20B14  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B20B18:
/* 80B20B18  7F C3 F3 78 */	mr r3, r30
/* 80B20B1C  7F 04 C3 78 */	mr r4, r24
/* 80B20B20  3C A0 80 B2 */	lis r5, d_a_npc_toby__stringBase0@ha /* 0x80B24B8C@ha */
/* 80B20B24  38 A5 4B 8C */	addi r5, r5, d_a_npc_toby__stringBase0@l /* 0x80B24B8C@l */
/* 80B20B28  38 A5 00 B0 */	addi r5, r5, 0xb0
/* 80B20B2C  38 C0 00 03 */	li r6, 3
/* 80B20B30  4B 52 75 BD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B20B34  28 03 00 00 */	cmplwi r3, 0
/* 80B20B38  41 82 00 08 */	beq lbl_80B20B40
/* 80B20B3C  83 63 00 00 */	lwz r27, 0(r3)
lbl_80B20B40:
/* 80B20B40  7F C3 F3 78 */	mr r3, r30
/* 80B20B44  7F 04 C3 78 */	mr r4, r24
/* 80B20B48  3C A0 80 B2 */	lis r5, d_a_npc_toby__stringBase0@ha /* 0x80B24B8C@ha */
/* 80B20B4C  38 A5 4B 8C */	addi r5, r5, d_a_npc_toby__stringBase0@l /* 0x80B24B8C@l */
/* 80B20B50  38 A5 00 AA */	addi r5, r5, 0xaa
/* 80B20B54  38 C0 00 03 */	li r6, 3
/* 80B20B58  4B 52 75 95 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B20B5C  28 03 00 00 */	cmplwi r3, 0
/* 80B20B60  41 82 00 08 */	beq lbl_80B20B68
/* 80B20B64  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B20B68:
/* 80B20B68  7F C3 F3 78 */	mr r3, r30
/* 80B20B6C  7F 04 C3 78 */	mr r4, r24
/* 80B20B70  4B 52 71 DD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B20B74  2C 03 00 00 */	cmpwi r3, 0
/* 80B20B78  41 82 01 60 */	beq lbl_80B20CD8
/* 80B20B7C  28 1C 00 0D */	cmplwi r28, 0xd
/* 80B20B80  41 81 01 58 */	bgt lbl_80B20CD8
/* 80B20B84  3C 60 80 B2 */	lis r3, lit_5477@ha /* 0x80B25590@ha */
/* 80B20B88  38 63 55 90 */	addi r3, r3, lit_5477@l /* 0x80B25590@l */
/* 80B20B8C  57 80 10 3A */	slwi r0, r28, 2
/* 80B20B90  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B20B94  7C 09 03 A6 */	mtctr r0
/* 80B20B98  4E 80 04 20 */	bctr 
lbl_80B20B9C:
/* 80B20B9C  38 60 00 0B */	li r3, 0xb
/* 80B20BA0  4B 62 BF 8D */	bl daNpcT_offTmpBit__FUl
/* 80B20BA4  38 60 00 0C */	li r3, 0xc
/* 80B20BA8  4B 62 BF 85 */	bl daNpcT_offTmpBit__FUl
/* 80B20BAC  7E E3 BB 78 */	mr r3, r23
/* 80B20BB0  80 97 0A 7C */	lwz r4, 0xa7c(r23)
/* 80B20BB4  38 A0 00 00 */	li r5, 0
/* 80B20BB8  4B 62 B0 39 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B20BBC  48 00 01 1C */	b lbl_80B20CD8
lbl_80B20BC0:
/* 80B20BC0  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B20BC4  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B20BC8  41 82 00 24 */	beq lbl_80B20BEC
/* 80B20BCC  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B20BD0  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B20BD4  4B 62 4C C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B20BD8  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B20BDC  38 00 00 10 */	li r0, 0x10
/* 80B20BE0  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B20BE4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B20BE8  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_80B20BEC:
/* 80B20BEC  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B20BF0  2C 00 00 00 */	cmpwi r0, 0
/* 80B20BF4  41 82 00 24 */	beq lbl_80B20C18
/* 80B20BF8  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B20BFC  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B20C00  4B 62 4C 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B20C04  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B20C08  38 00 00 00 */	li r0, 0
/* 80B20C0C  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B20C10  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B20C14  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
lbl_80B20C18:
/* 80B20C18  93 57 0D C4 */	stw r26, 0xdc4(r23)
/* 80B20C1C  48 00 00 BC */	b lbl_80B20CD8
lbl_80B20C20:
/* 80B20C20  38 60 00 01 */	li r3, 1
/* 80B20C24  4B 50 CD 01 */	bl dComIfGs_sense_type_change_Set__FSc
/* 80B20C28  7E E3 BB 78 */	mr r3, r23
/* 80B20C2C  80 97 0A 7C */	lwz r4, 0xa7c(r23)
/* 80B20C30  38 A0 00 00 */	li r5, 0
/* 80B20C34  4B 62 AF BD */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B20C38  48 00 00 A0 */	b lbl_80B20CD8
lbl_80B20C3C:
/* 80B20C3C  93 57 0D C4 */	stw r26, 0xdc4(r23)
/* 80B20C40  48 00 00 98 */	b lbl_80B20CD8
lbl_80B20C44:
/* 80B20C44  93 57 0D C4 */	stw r26, 0xdc4(r23)
/* 80B20C48  48 00 00 90 */	b lbl_80B20CD8
lbl_80B20C4C:
/* 80B20C4C  93 57 0D C4 */	stw r26, 0xdc4(r23)
/* 80B20C50  7E E3 BB 78 */	mr r3, r23
/* 80B20C54  80 97 0A 7C */	lwz r4, 0xa7c(r23)
/* 80B20C58  38 A0 00 00 */	li r5, 0
/* 80B20C5C  4B 62 AF 95 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B20C60  48 00 00 78 */	b lbl_80B20CD8
lbl_80B20C64:
/* 80B20C64  38 00 00 00 */	li r0, 0
/* 80B20C68  90 17 0F F4 */	stw r0, 0xff4(r23)
/* 80B20C6C  48 00 00 6C */	b lbl_80B20CD8
lbl_80B20C70:
/* 80B20C70  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B20C74  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B20C78  41 82 00 24 */	beq lbl_80B20C9C
/* 80B20C7C  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B20C80  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B20C84  4B 62 4C 15 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B20C88  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B20C8C  38 00 00 0A */	li r0, 0xa
/* 80B20C90  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B20C94  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B20C98  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_80B20C9C:
/* 80B20C9C  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B20CA0  2C 00 00 06 */	cmpwi r0, 6
/* 80B20CA4  41 82 00 24 */	beq lbl_80B20CC8
/* 80B20CA8  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B20CAC  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B20CB0  4B 62 4B E9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B20CB4  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B20CB8  38 00 00 06 */	li r0, 6
/* 80B20CBC  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B20CC0  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B20CC4  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
lbl_80B20CC8:
/* 80B20CC8  93 57 0D C4 */	stw r26, 0xdc4(r23)
/* 80B20CCC  48 00 00 0C */	b lbl_80B20CD8
lbl_80B20CD0:
/* 80B20CD0  38 60 FF FF */	li r3, -1
/* 80B20CD4  4B 50 CC 51 */	bl dComIfGs_sense_type_change_Set__FSc
lbl_80B20CD8:
/* 80B20CD8  80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 80B20CDC  80 1F 01 40 */	lwz r0, 0x140(r31)
/* 80B20CE0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80B20CE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B20CE8  28 1C 00 0D */	cmplwi r28, 0xd
/* 80B20CEC  41 81 02 B8 */	bgt lbl_80B20FA4
/* 80B20CF0  3C 60 80 B2 */	lis r3, lit_5478@ha /* 0x80B25558@ha */
/* 80B20CF4  38 63 55 58 */	addi r3, r3, lit_5478@l /* 0x80B25558@l */
/* 80B20CF8  57 80 10 3A */	slwi r0, r28, 2
/* 80B20CFC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B20D00  7C 09 03 A6 */	mtctr r0
/* 80B20D04  4E 80 04 20 */	bctr 
lbl_80B20D08:
/* 80B20D08  7E E3 BB 78 */	mr r3, r23
/* 80B20D0C  38 80 00 00 */	li r4, 0
/* 80B20D10  38 A0 00 00 */	li r5, 0
/* 80B20D14  38 C0 00 00 */	li r6, 0
/* 80B20D18  38 E0 00 00 */	li r7, 0
/* 80B20D1C  4B 62 AF 5D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B20D20  2C 03 00 00 */	cmpwi r3, 0
/* 80B20D24  41 82 02 80 */	beq lbl_80B20FA4
/* 80B20D28  88 17 09 9A */	lbz r0, 0x99a(r23)
/* 80B20D2C  28 00 00 01 */	cmplwi r0, 1
/* 80B20D30  40 82 02 74 */	bne lbl_80B20FA4
/* 80B20D34  38 60 00 EF */	li r3, 0xef
/* 80B20D38  4B 62 BD 35 */	bl daNpcT_offEvtBit__FUl
/* 80B20D3C  3B A0 00 01 */	li r29, 1
/* 80B20D40  48 00 02 64 */	b lbl_80B20FA4
lbl_80B20D44:
/* 80B20D44  38 77 0D C4 */	addi r3, r23, 0xdc4
/* 80B20D48  48 00 39 E1 */	bl func_80B24728
/* 80B20D4C  2C 03 00 00 */	cmpwi r3, 0
/* 80B20D50  40 82 02 54 */	bne lbl_80B20FA4
/* 80B20D54  3B A0 00 01 */	li r29, 1
/* 80B20D58  48 00 02 4C */	b lbl_80B20FA4
lbl_80B20D5C:
/* 80B20D5C  93 61 00 0C */	stw r27, 0xc(r1)
/* 80B20D60  7E E3 BB 78 */	mr r3, r23
/* 80B20D64  38 81 00 0C */	addi r4, r1, 0xc
/* 80B20D68  38 A0 00 00 */	li r5, 0
/* 80B20D6C  38 C0 00 00 */	li r6, 0
/* 80B20D70  38 E0 00 00 */	li r7, 0
/* 80B20D74  4B 62 AF 05 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B20D78  2C 03 00 00 */	cmpwi r3, 0
/* 80B20D7C  41 82 02 28 */	beq lbl_80B20FA4
/* 80B20D80  2C 1B 00 00 */	cmpwi r27, 0
/* 80B20D84  41 82 00 0C */	beq lbl_80B20D90
/* 80B20D88  3B A0 00 01 */	li r29, 1
/* 80B20D8C  48 00 02 18 */	b lbl_80B20FA4
lbl_80B20D90:
/* 80B20D90  88 17 09 9A */	lbz r0, 0x99a(r23)
/* 80B20D94  28 00 00 01 */	cmplwi r0, 1
/* 80B20D98  40 82 02 0C */	bne lbl_80B20FA4
/* 80B20D9C  3B A0 00 01 */	li r29, 1
/* 80B20DA0  48 00 02 04 */	b lbl_80B20FA4
lbl_80B20DA4:
/* 80B20DA4  93 61 00 0C */	stw r27, 0xc(r1)
/* 80B20DA8  2C 1C 00 04 */	cmpwi r28, 4
/* 80B20DAC  41 82 00 0C */	beq lbl_80B20DB8
/* 80B20DB0  2C 1C 00 08 */	cmpwi r28, 8
/* 80B20DB4  40 82 00 08 */	bne lbl_80B20DBC
lbl_80B20DB8:
/* 80B20DB8  3B 20 00 01 */	li r25, 1
lbl_80B20DBC:
/* 80B20DBC  7E E3 BB 78 */	mr r3, r23
/* 80B20DC0  38 81 00 0C */	addi r4, r1, 0xc
/* 80B20DC4  7F 25 CB 78 */	mr r5, r25
/* 80B20DC8  38 C0 00 00 */	li r6, 0
/* 80B20DCC  38 E0 00 00 */	li r7, 0
/* 80B20DD0  4B 62 AE A9 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B20DD4  2C 03 00 00 */	cmpwi r3, 0
/* 80B20DD8  41 82 00 24 */	beq lbl_80B20DFC
/* 80B20DDC  2C 1B 00 00 */	cmpwi r27, 0
/* 80B20DE0  41 82 00 0C */	beq lbl_80B20DEC
/* 80B20DE4  3B A0 00 01 */	li r29, 1
/* 80B20DE8  48 00 00 14 */	b lbl_80B20DFC
lbl_80B20DEC:
/* 80B20DEC  88 17 09 9A */	lbz r0, 0x99a(r23)
/* 80B20DF0  28 00 00 01 */	cmplwi r0, 1
/* 80B20DF4  40 82 00 08 */	bne lbl_80B20DFC
/* 80B20DF8  3B A0 00 01 */	li r29, 1
lbl_80B20DFC:
/* 80B20DFC  4B 71 74 31 */	bl getStatus__12dMsgObject_cFv
/* 80B20E00  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B20E04  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B20E08  40 80 01 9C */	bge lbl_80B20FA4
/* 80B20E0C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B20E10  40 80 00 08 */	bge lbl_80B20E18
/* 80B20E14  48 00 01 90 */	b lbl_80B20FA4
lbl_80B20E18:
/* 80B20E18  4B 71 74 DD */	bl isMsgSendControl__12dMsgObject_cFv
/* 80B20E1C  2C 03 00 00 */	cmpwi r3, 0
/* 80B20E20  41 82 01 84 */	beq lbl_80B20FA4
/* 80B20E24  2C 1C 00 03 */	cmpwi r28, 3
/* 80B20E28  40 82 01 7C */	bne lbl_80B20FA4
/* 80B20E2C  3B A0 00 01 */	li r29, 1
/* 80B20E30  48 00 01 74 */	b lbl_80B20FA4
lbl_80B20E34:
/* 80B20E34  80 17 0D C4 */	lwz r0, 0xdc4(r23)
/* 80B20E38  2C 00 00 00 */	cmpwi r0, 0
/* 80B20E3C  40 82 00 54 */	bne lbl_80B20E90
/* 80B20E40  2C 1C 00 05 */	cmpwi r28, 5
/* 80B20E44  40 82 00 44 */	bne lbl_80B20E88
/* 80B20E48  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007001D@ha */
/* 80B20E4C  38 03 00 1D */	addi r0, r3, 0x001D /* 0x0007001D@l */
/* 80B20E50  90 01 00 08 */	stw r0, 8(r1)
/* 80B20E54  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B20E58  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B20E5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B20E60  38 81 00 08 */	addi r4, r1, 8
/* 80B20E64  38 B7 04 D0 */	addi r5, r23, 0x4d0
/* 80B20E68  38 C0 00 00 */	li r6, 0
/* 80B20E6C  38 E0 00 00 */	li r7, 0
/* 80B20E70  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80B20E74  FC 40 08 90 */	fmr f2, f1
/* 80B20E78  C0 7F 00 EC */	lfs f3, 0xec(r31)
/* 80B20E7C  FC 80 18 90 */	fmr f4, f3
/* 80B20E80  39 00 00 00 */	li r8, 0
/* 80B20E84  4B 78 AB 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80B20E88:
/* 80B20E88  3B A0 00 01 */	li r29, 1
/* 80B20E8C  48 00 01 18 */	b lbl_80B20FA4
lbl_80B20E90:
/* 80B20E90  38 77 0D C4 */	addi r3, r23, 0xdc4
/* 80B20E94  48 00 38 95 */	bl func_80B24728
/* 80B20E98  48 00 01 0C */	b lbl_80B20FA4
lbl_80B20E9C:
/* 80B20E9C  7E E3 BB 78 */	mr r3, r23
/* 80B20EA0  38 80 00 00 */	li r4, 0
/* 80B20EA4  38 A0 00 00 */	li r5, 0
/* 80B20EA8  38 C0 00 00 */	li r6, 0
/* 80B20EAC  38 E0 00 00 */	li r7, 0
/* 80B20EB0  4B 62 AD C9 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B20EB4  2C 03 00 00 */	cmpwi r3, 0
/* 80B20EB8  41 82 00 14 */	beq lbl_80B20ECC
/* 80B20EBC  88 17 09 9A */	lbz r0, 0x99a(r23)
/* 80B20EC0  28 00 00 01 */	cmplwi r0, 1
/* 80B20EC4  40 82 00 08 */	bne lbl_80B20ECC
/* 80B20EC8  3B A0 00 01 */	li r29, 1
lbl_80B20ECC:
/* 80B20ECC  4B 71 73 61 */	bl getStatus__12dMsgObject_cFv
/* 80B20ED0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B20ED4  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B20ED8  40 80 00 58 */	bge lbl_80B20F30
/* 80B20EDC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B20EE0  40 80 00 08 */	bge lbl_80B20EE8
/* 80B20EE4  48 00 00 4C */	b lbl_80B20F30
lbl_80B20EE8:
/* 80B20EE8  4B 71 74 0D */	bl isMsgSendControl__12dMsgObject_cFv
/* 80B20EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80B20EF0  41 82 00 40 */	beq lbl_80B20F30
/* 80B20EF4  2C 1C 00 06 */	cmpwi r28, 6
/* 80B20EF8  40 82 00 18 */	bne lbl_80B20F10
/* 80B20EFC  38 77 0D C4 */	addi r3, r23, 0xdc4
/* 80B20F00  48 00 38 29 */	bl func_80B24728
/* 80B20F04  2C 03 00 00 */	cmpwi r3, 0
/* 80B20F08  40 82 00 08 */	bne lbl_80B20F10
/* 80B20F0C  3B A0 00 01 */	li r29, 1
lbl_80B20F10:
/* 80B20F10  2C 1C 00 07 */	cmpwi r28, 7
/* 80B20F14  40 82 00 1C */	bne lbl_80B20F30
/* 80B20F18  7F C3 F3 78 */	mr r3, r30
/* 80B20F1C  7F 04 C3 78 */	mr r4, r24
/* 80B20F20  4B 52 6E 2D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B20F24  2C 03 00 00 */	cmpwi r3, 0
/* 80B20F28  41 82 00 08 */	beq lbl_80B20F30
/* 80B20F2C  4B 71 73 F5 */	bl onMsgSend__12dMsgObject_cFv
lbl_80B20F30:
/* 80B20F30  38 60 00 EF */	li r3, 0xef
/* 80B20F34  4B 62 BB 79 */	bl daNpcT_chkEvtBit__FUl
/* 80B20F38  2C 03 00 00 */	cmpwi r3, 0
/* 80B20F3C  40 82 00 68 */	bne lbl_80B20FA4
/* 80B20F40  38 60 00 EF */	li r3, 0xef
/* 80B20F44  4B 62 BA E9 */	bl daNpcT_onEvtBit__FUl
/* 80B20F48  48 00 00 5C */	b lbl_80B20FA4
lbl_80B20F4C:
/* 80B20F4C  7E E3 BB 78 */	mr r3, r23
/* 80B20F50  38 80 00 00 */	li r4, 0
/* 80B20F54  38 A0 00 00 */	li r5, 0
/* 80B20F58  38 C0 00 00 */	li r6, 0
/* 80B20F5C  38 E0 00 00 */	li r7, 0
/* 80B20F60  4B 62 AD 19 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B20F64  2C 03 00 00 */	cmpwi r3, 0
/* 80B20F68  41 82 00 3C */	beq lbl_80B20FA4
/* 80B20F6C  88 17 09 9A */	lbz r0, 0x99a(r23)
/* 80B20F70  28 00 00 01 */	cmplwi r0, 1
/* 80B20F74  40 82 00 30 */	bne lbl_80B20FA4
/* 80B20F78  3B A0 00 01 */	li r29, 1
/* 80B20F7C  48 00 00 28 */	b lbl_80B20FA4
lbl_80B20F80:
/* 80B20F80  7E E3 BB 78 */	mr r3, r23
/* 80B20F84  38 80 00 00 */	li r4, 0
/* 80B20F88  38 A0 00 00 */	li r5, 0
/* 80B20F8C  38 C0 00 00 */	li r6, 0
/* 80B20F90  38 E0 00 00 */	li r7, 0
/* 80B20F94  4B 62 AC E5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B20F98  3B A0 00 01 */	li r29, 1
/* 80B20F9C  48 00 00 08 */	b lbl_80B20FA4
lbl_80B20FA0:
/* 80B20FA0  3B A0 00 01 */	li r29, 1
lbl_80B20FA4:
/* 80B20FA4  7F A3 EB 78 */	mr r3, r29
/* 80B20FA8  39 61 00 40 */	addi r11, r1, 0x40
/* 80B20FAC  4B 84 12 61 */	bl _restgpr_22
/* 80B20FB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B20FB4  7C 08 03 A6 */	mtlr r0
/* 80B20FB8  38 21 00 40 */	addi r1, r1, 0x40
/* 80B20FBC  4E 80 00 20 */	blr 
