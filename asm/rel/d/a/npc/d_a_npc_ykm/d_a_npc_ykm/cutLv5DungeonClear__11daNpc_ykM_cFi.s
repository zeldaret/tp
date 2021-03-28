lbl_80B58A38:
/* 80B58A38  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B58A3C  7C 08 02 A6 */	mflr r0
/* 80B58A40  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B58A44  39 61 00 50 */	addi r11, r1, 0x50
/* 80B58A48  4B 80 97 78 */	b _savegpr_22
/* 80B58A4C  7C 77 1B 78 */	mr r23, r3
/* 80B58A50  7C 98 23 78 */	mr r24, r4
/* 80B58A54  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha
/* 80B58A58  3B C3 D7 94 */	addi r30, r3, m__17daNpc_ykM_Param_c@l
/* 80B58A5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B58A60  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B58A64  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 80B58A68  3B 60 00 00 */	li r27, 0
/* 80B58A6C  3B 40 FF FF */	li r26, -1
/* 80B58A70  3B 20 00 00 */	li r25, 0
/* 80B58A74  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80B58A78  7F A3 EB 78 */	mr r3, r29
/* 80B58A7C  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B58A80  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B58A84  38 A5 00 97 */	addi r5, r5, 0x97
/* 80B58A88  38 C0 00 03 */	li r6, 3
/* 80B58A8C  4B 4E F6 60 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B58A90  28 03 00 00 */	cmplwi r3, 0
/* 80B58A94  41 82 00 08 */	beq lbl_80B58A9C
/* 80B58A98  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B58A9C:
/* 80B58A9C  7F A3 EB 78 */	mr r3, r29
/* 80B58AA0  7F 04 C3 78 */	mr r4, r24
/* 80B58AA4  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B58AA8  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B58AAC  38 A5 00 9B */	addi r5, r5, 0x9b
/* 80B58AB0  38 C0 00 03 */	li r6, 3
/* 80B58AB4  4B 4E F6 38 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B58AB8  28 03 00 00 */	cmplwi r3, 0
/* 80B58ABC  41 82 00 08 */	beq lbl_80B58AC4
/* 80B58AC0  83 23 00 00 */	lwz r25, 0(r3)
lbl_80B58AC4:
/* 80B58AC4  7F A3 EB 78 */	mr r3, r29
/* 80B58AC8  7F 04 C3 78 */	mr r4, r24
/* 80B58ACC  4B 4E F2 80 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B58AD0  2C 03 00 00 */	cmpwi r3, 0
/* 80B58AD4  41 82 06 5C */	beq lbl_80B59130
/* 80B58AD8  2C 1A 00 0B */	cmpwi r26, 0xb
/* 80B58ADC  41 82 06 54 */	beq lbl_80B59130
/* 80B58AE0  40 80 00 5C */	bge lbl_80B58B3C
/* 80B58AE4  2C 1A 00 05 */	cmpwi r26, 5
/* 80B58AE8  41 82 02 CC */	beq lbl_80B58DB4
/* 80B58AEC  40 80 00 2C */	bge lbl_80B58B18
/* 80B58AF0  2C 1A 00 02 */	cmpwi r26, 2
/* 80B58AF4  41 82 01 D4 */	beq lbl_80B58CC8
/* 80B58AF8  40 80 00 14 */	bge lbl_80B58B0C
/* 80B58AFC  2C 1A 00 00 */	cmpwi r26, 0
/* 80B58B00  41 82 00 88 */	beq lbl_80B58B88
/* 80B58B04  40 80 01 30 */	bge lbl_80B58C34
/* 80B58B08  48 00 06 28 */	b lbl_80B59130
lbl_80B58B0C:
/* 80B58B0C  2C 1A 00 04 */	cmpwi r26, 4
/* 80B58B10  40 80 02 48 */	bge lbl_80B58D58
/* 80B58B14  48 00 02 14 */	b lbl_80B58D28
lbl_80B58B18:
/* 80B58B18  2C 1A 00 08 */	cmpwi r26, 8
/* 80B58B1C  41 82 03 80 */	beq lbl_80B58E9C
/* 80B58B20  40 80 00 10 */	bge lbl_80B58B30
/* 80B58B24  2C 1A 00 07 */	cmpwi r26, 7
/* 80B58B28  40 80 03 44 */	bge lbl_80B58E6C
/* 80B58B2C  48 00 02 E4 */	b lbl_80B58E10
lbl_80B58B30:
/* 80B58B30  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B58B34  40 80 03 EC */	bge lbl_80B58F20
/* 80B58B38  48 00 05 F8 */	b lbl_80B59130
lbl_80B58B3C:
/* 80B58B3C  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 80B58B40  41 82 05 18 */	beq lbl_80B59058
/* 80B58B44  40 80 00 2C */	bge lbl_80B58B70
/* 80B58B48  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80B58B4C  41 82 04 44 */	beq lbl_80B58F90
/* 80B58B50  40 80 00 14 */	bge lbl_80B58B64
/* 80B58B54  2C 1A 00 0D */	cmpwi r26, 0xd
/* 80B58B58  41 82 04 1C */	beq lbl_80B58F74
/* 80B58B5C  40 80 05 D4 */	bge lbl_80B59130
/* 80B58B60  48 00 03 C8 */	b lbl_80B58F28
lbl_80B58B64:
/* 80B58B64  2C 1A 00 16 */	cmpwi r26, 0x16
/* 80B58B68  40 80 05 C8 */	bge lbl_80B59130
/* 80B58B6C  48 00 04 BC */	b lbl_80B59028
lbl_80B58B70:
/* 80B58B70  2C 1A 00 63 */	cmpwi r26, 0x63
/* 80B58B74  41 82 05 00 */	beq lbl_80B59074
/* 80B58B78  40 80 05 B8 */	bge lbl_80B59130
/* 80B58B7C  2C 1A 00 20 */	cmpwi r26, 0x20
/* 80B58B80  40 80 05 B0 */	bge lbl_80B59130
/* 80B58B84  48 00 04 E4 */	b lbl_80B59068
lbl_80B58B88:
/* 80B58B88  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B58B8C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B58B90  41 82 00 24 */	beq lbl_80B58BB4
/* 80B58B94  83 37 0B 5C */	lwz r25, 0xb5c(r23)
/* 80B58B98  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B58B9C  4B 5E CC FC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58BA0  93 37 0B 5C */	stw r25, 0xb5c(r23)
/* 80B58BA4  38 00 00 0F */	li r0, 0xf
/* 80B58BA8  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B58BAC  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B58BB0  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_80B58BB4:
/* 80B58BB4  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B58BB8  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80B58BBC  41 82 00 24 */	beq lbl_80B58BE0
/* 80B58BC0  83 37 0B 80 */	lwz r25, 0xb80(r23)
/* 80B58BC4  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B58BC8  4B 5E CC D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58BCC  93 37 0B 80 */	stw r25, 0xb80(r23)
/* 80B58BD0  38 00 00 1B */	li r0, 0x1b
/* 80B58BD4  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B58BD8  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B58BDC  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
lbl_80B58BE0:
/* 80B58BE0  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 80B58BE4  2C 00 00 00 */	cmpwi r0, 0
/* 80B58BE8  41 82 00 24 */	beq lbl_80B58C0C
/* 80B58BEC  38 77 0B A8 */	addi r3, r23, 0xba8
/* 80B58BF0  4B 5E CB 0C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B58BF4  38 00 00 00 */	li r0, 0
/* 80B58BF8  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 80B58BFC  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B58C00  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 80B58C04  98 17 0C FF */	stb r0, 0xcff(r23)
/* 80B58C08  90 17 0C E0 */	stw r0, 0xce0(r23)
lbl_80B58C0C:
/* 80B58C0C  38 60 00 00 */	li r3, 0
/* 80B58C10  B0 77 0C D4 */	sth r3, 0xcd4(r23)
/* 80B58C14  B0 77 0C D6 */	sth r3, 0xcd6(r23)
/* 80B58C18  38 00 00 01 */	li r0, 1
/* 80B58C1C  98 17 0C FF */	stb r0, 0xcff(r23)
/* 80B58C20  98 77 0E 25 */	stb r3, 0xe25(r23)
/* 80B58C24  80 17 04 9C */	lwz r0, 0x49c(r23)
/* 80B58C28  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80B58C2C  90 17 04 9C */	stw r0, 0x49c(r23)
/* 80B58C30  48 00 05 00 */	b lbl_80B59130
lbl_80B58C34:
/* 80B58C34  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B58C38  2C 00 00 23 */	cmpwi r0, 0x23
/* 80B58C3C  41 82 00 24 */	beq lbl_80B58C60
/* 80B58C40  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B58C44  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B58C48  4B 5E CC 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58C4C  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B58C50  38 00 00 23 */	li r0, 0x23
/* 80B58C54  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B58C58  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B58C5C  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
lbl_80B58C60:
/* 80B58C60  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050107@ha */
/* 80B58C64  38 03 01 07 */	addi r0, r3, 0x0107 /* 0x00050107@l */
/* 80B58C68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B58C6C  38 77 05 80 */	addi r3, r23, 0x580
/* 80B58C70  38 81 00 0C */	addi r4, r1, 0xc
/* 80B58C74  38 A0 FF FF */	li r5, -1
/* 80B58C78  81 97 05 80 */	lwz r12, 0x580(r23)
/* 80B58C7C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B58C80  7D 89 03 A6 */	mtctr r12
/* 80B58C84  4E 80 04 21 */	bctrl 
/* 80B58C88  93 37 0D C4 */	stw r25, 0xdc4(r23)
/* 80B58C8C  7F 83 E3 78 */	mr r3, r28
/* 80B58C90  7E E4 BB 78 */	mr r4, r23
/* 80B58C94  4B 4C 1A 7C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B58C98  7C 65 1B 78 */	mr r5, r3
/* 80B58C9C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B58CA0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B58CA4  38 C0 00 00 */	li r6, 0
/* 80B58CA8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B58CAC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B58CB0  7D 89 03 A6 */	mtctr r12
/* 80B58CB4  4E 80 04 21 */	bctrl 
/* 80B58CB8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B58CBC  7E E4 BB 78 */	mr r4, r23
/* 80B58CC0  4B 4E A9 9C */	b setPt2__14dEvt_control_cFPv
/* 80B58CC4  48 00 04 6C */	b lbl_80B59130
lbl_80B58CC8:
/* 80B58CC8  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B58CCC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B58CD0  41 82 00 24 */	beq lbl_80B58CF4
/* 80B58CD4  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B58CD8  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B58CDC  4B 5E CB BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58CE0  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B58CE4  38 00 00 0F */	li r0, 0xf
/* 80B58CE8  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B58CEC  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B58CF0  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_80B58CF4:
/* 80B58CF4  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B58CF8  2C 00 00 15 */	cmpwi r0, 0x15
/* 80B58CFC  41 82 00 24 */	beq lbl_80B58D20
/* 80B58D00  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B58D04  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B58D08  4B 5E CB 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58D0C  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B58D10  38 00 00 15 */	li r0, 0x15
/* 80B58D14  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B58D18  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B58D1C  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
lbl_80B58D20:
/* 80B58D20  93 37 0D C4 */	stw r25, 0xdc4(r23)
/* 80B58D24  48 00 04 0C */	b lbl_80B59130
lbl_80B58D28:
/* 80B58D28  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B58D2C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80B58D30  41 82 04 00 */	beq lbl_80B59130
/* 80B58D34  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B58D38  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B58D3C  4B 5E CB 5C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58D40  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B58D44  38 00 00 16 */	li r0, 0x16
/* 80B58D48  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B58D4C  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B58D50  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
/* 80B58D54  48 00 03 DC */	b lbl_80B59130
lbl_80B58D58:
/* 80B58D58  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B58D5C  2C 00 00 08 */	cmpwi r0, 8
/* 80B58D60  41 82 00 24 */	beq lbl_80B58D84
/* 80B58D64  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B58D68  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B58D6C  4B 5E CB 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58D70  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B58D74  38 00 00 08 */	li r0, 8
/* 80B58D78  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B58D7C  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B58D80  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_80B58D84:
/* 80B58D84  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B58D88  2C 00 00 17 */	cmpwi r0, 0x17
/* 80B58D8C  41 82 03 A4 */	beq lbl_80B59130
/* 80B58D90  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B58D94  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B58D98  4B 5E CB 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58D9C  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B58DA0  38 00 00 17 */	li r0, 0x17
/* 80B58DA4  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B58DA8  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B58DAC  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
/* 80B58DB0  48 00 03 80 */	b lbl_80B59130
lbl_80B58DB4:
/* 80B58DB4  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B58DB8  2C 00 00 09 */	cmpwi r0, 9
/* 80B58DBC  41 82 00 24 */	beq lbl_80B58DE0
/* 80B58DC0  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B58DC4  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B58DC8  4B 5E CA D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58DCC  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B58DD0  38 00 00 09 */	li r0, 9
/* 80B58DD4  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B58DD8  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B58DDC  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_80B58DE0:
/* 80B58DE0  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B58DE4  2C 00 00 18 */	cmpwi r0, 0x18
/* 80B58DE8  41 82 03 48 */	beq lbl_80B59130
/* 80B58DEC  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B58DF0  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B58DF4  4B 5E CA A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58DF8  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B58DFC  38 00 00 18 */	li r0, 0x18
/* 80B58E00  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B58E04  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B58E08  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
/* 80B58E0C  48 00 03 24 */	b lbl_80B59130
lbl_80B58E10:
/* 80B58E10  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B58E14  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B58E18  41 82 00 24 */	beq lbl_80B58E3C
/* 80B58E1C  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B58E20  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B58E24  4B 5E CA 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58E28  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B58E2C  38 00 00 0F */	li r0, 0xf
/* 80B58E30  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B58E34  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B58E38  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_80B58E3C:
/* 80B58E3C  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B58E40  2C 00 00 19 */	cmpwi r0, 0x19
/* 80B58E44  41 82 02 EC */	beq lbl_80B59130
/* 80B58E48  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B58E4C  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B58E50  4B 5E CA 48 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58E54  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B58E58  38 00 00 19 */	li r0, 0x19
/* 80B58E5C  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B58E60  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B58E64  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
/* 80B58E68  48 00 02 C8 */	b lbl_80B59130
lbl_80B58E6C:
/* 80B58E6C  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B58E70  2C 00 00 09 */	cmpwi r0, 9
/* 80B58E74  41 82 02 BC */	beq lbl_80B59130
/* 80B58E78  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B58E7C  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B58E80  4B 5E CA 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58E84  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B58E88  38 00 00 09 */	li r0, 9
/* 80B58E8C  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B58E90  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B58E94  D0 17 0B 68 */	stfs f0, 0xb68(r23)
/* 80B58E98  48 00 02 98 */	b lbl_80B59130
lbl_80B58E9C:
/* 80B58E9C  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B58EA0  2C 00 00 0B */	cmpwi r0, 0xb
/* 80B58EA4  41 82 00 24 */	beq lbl_80B58EC8
/* 80B58EA8  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B58EAC  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B58EB0  4B 5E C9 E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58EB4  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B58EB8  38 00 00 0B */	li r0, 0xb
/* 80B58EBC  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B58EC0  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B58EC4  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_80B58EC8:
/* 80B58EC8  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B58ECC  2C 00 00 25 */	cmpwi r0, 0x25
/* 80B58ED0  41 82 00 24 */	beq lbl_80B58EF4
/* 80B58ED4  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B58ED8  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B58EDC  4B 5E C9 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58EE0  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B58EE4  38 00 00 25 */	li r0, 0x25
/* 80B58EE8  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B58EEC  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B58EF0  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
lbl_80B58EF4:
/* 80B58EF4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050108@ha */
/* 80B58EF8  38 03 01 08 */	addi r0, r3, 0x0108 /* 0x00050108@l */
/* 80B58EFC  90 01 00 08 */	stw r0, 8(r1)
/* 80B58F00  38 77 05 80 */	addi r3, r23, 0x580
/* 80B58F04  38 81 00 08 */	addi r4, r1, 8
/* 80B58F08  38 A0 FF FF */	li r5, -1
/* 80B58F0C  81 97 05 80 */	lwz r12, 0x580(r23)
/* 80B58F10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B58F14  7D 89 03 A6 */	mtctr r12
/* 80B58F18  4E 80 04 21 */	bctrl 
/* 80B58F1C  48 00 02 14 */	b lbl_80B59130
lbl_80B58F20:
/* 80B58F20  93 37 0D C4 */	stw r25, 0xdc4(r23)
/* 80B58F24  48 00 02 0C */	b lbl_80B59130
lbl_80B58F28:
/* 80B58F28  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B58F2C  2C 00 00 07 */	cmpwi r0, 7
/* 80B58F30  41 82 00 24 */	beq lbl_80B58F54
/* 80B58F34  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B58F38  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B58F3C  4B 5E C9 5C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58F40  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B58F44  38 00 00 07 */	li r0, 7
/* 80B58F48  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B58F4C  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B58F50  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_80B58F54:
/* 80B58F54  93 37 0D C4 */	stw r25, 0xdc4(r23)
/* 80B58F58  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80B58F5C  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 80B58F60  80 63 00 00 */	lwz r3, 0(r3)
/* 80B58F64  80 03 08 90 */	lwz r0, 0x890(r3)
/* 80B58F68  64 00 80 00 */	oris r0, r0, 0x8000
/* 80B58F6C  90 03 08 90 */	stw r0, 0x890(r3)
/* 80B58F70  48 00 01 C0 */	b lbl_80B59130
lbl_80B58F74:
/* 80B58F74  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B58F78  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B58F7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B58F80  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B58F84  38 80 00 28 */	li r4, 0x28
/* 80B58F88  4B 75 6F 54 */	b bgmStreamStop__8Z2SeqMgrFUl
/* 80B58F8C  48 00 01 A4 */	b lbl_80B59130
lbl_80B58F90:
/* 80B58F90  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B58F94  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B58F98  41 82 00 24 */	beq lbl_80B58FBC
/* 80B58F9C  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B58FA0  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B58FA4  4B 5E C8 F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58FA8  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B58FAC  38 00 00 0F */	li r0, 0xf
/* 80B58FB0  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B58FB4  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B58FB8  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_80B58FBC:
/* 80B58FBC  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B58FC0  2C 00 00 24 */	cmpwi r0, 0x24
/* 80B58FC4  41 82 00 24 */	beq lbl_80B58FE8
/* 80B58FC8  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B58FCC  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B58FD0  4B 5E C8 C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B58FD4  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B58FD8  38 00 00 24 */	li r0, 0x24
/* 80B58FDC  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B58FE0  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B58FE4  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
lbl_80B58FE8:
/* 80B58FE8  38 77 14 A0 */	addi r3, r23, 0x14a0
/* 80B58FEC  4B 5E C7 1C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B58FF0  7C 79 1B 78 */	mr r25, r3
/* 80B58FF4  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 80B58FF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B58FFC  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80B59000  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B59004  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 80B59008  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B5900C  7E E3 BB 78 */	mr r3, r23
/* 80B59010  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B59014  4B 5F 18 F4 */	b setPos__8daNpcT_cF4cXyz
/* 80B59018  7E E3 BB 78 */	mr r3, r23
/* 80B5901C  A8 99 04 B6 */	lha r4, 0x4b6(r25)
/* 80B59020  4B 5F 19 F8 */	b setAngle__8daNpcT_cFs
/* 80B59024  48 00 01 0C */	b lbl_80B59130
lbl_80B59028:
/* 80B59028  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B5902C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80B59030  41 82 01 00 */	beq lbl_80B59130
/* 80B59034  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B59038  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B5903C  4B 5E C8 5C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B59040  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B59044  38 00 00 0C */	li r0, 0xc
/* 80B59048  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B5904C  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B59050  D0 17 0B 68 */	stfs f0, 0xb68(r23)
/* 80B59054  48 00 00 DC */	b lbl_80B59130
lbl_80B59058:
/* 80B59058  38 00 00 01 */	li r0, 1
/* 80B5905C  98 17 15 81 */	stb r0, 0x1581(r23)
/* 80B59060  98 17 15 7A */	stb r0, 0x157a(r23)
/* 80B59064  48 00 00 CC */	b lbl_80B59130
lbl_80B59068:
/* 80B59068  38 00 00 00 */	li r0, 0
/* 80B5906C  98 17 15 7A */	stb r0, 0x157a(r23)
/* 80B59070  48 00 00 C0 */	b lbl_80B59130
lbl_80B59074:
/* 80B59074  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B59078  2C 00 00 0B */	cmpwi r0, 0xb
/* 80B5907C  41 82 00 24 */	beq lbl_80B590A0
/* 80B59080  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B59084  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B59088  4B 5E C8 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5908C  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B59090  38 00 00 0B */	li r0, 0xb
/* 80B59094  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B59098  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5909C  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_80B590A0:
/* 80B590A0  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B590A4  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80B590A8  41 82 00 24 */	beq lbl_80B590CC
/* 80B590AC  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B590B0  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B590B4  4B 5E C7 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B590B8  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B590BC  38 00 00 1C */	li r0, 0x1c
/* 80B590C0  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B590C4  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B590C8  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
lbl_80B590CC:
/* 80B590CC  38 77 14 A0 */	addi r3, r23, 0x14a0
/* 80B590D0  4B 5E C6 38 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B590D4  7C 79 1B 78 */	mr r25, r3
/* 80B590D8  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 80B590DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B590E0  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80B590E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B590E8  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 80B590EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B590F0  7E E3 BB 78 */	mr r3, r23
/* 80B590F4  38 81 00 10 */	addi r4, r1, 0x10
/* 80B590F8  4B 5F 18 10 */	b setPos__8daNpcT_cF4cXyz
/* 80B590FC  7E E3 BB 78 */	mr r3, r23
/* 80B59100  A8 99 04 B6 */	lha r4, 0x4b6(r25)
/* 80B59104  4B 5F 19 14 */	b setAngle__8daNpcT_cFs
/* 80B59108  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5910C  D0 17 05 2C */	stfs f0, 0x52c(r23)
/* 80B59110  D0 17 04 F8 */	stfs f0, 0x4f8(r23)
/* 80B59114  D0 17 04 FC */	stfs f0, 0x4fc(r23)
/* 80B59118  D0 17 05 00 */	stfs f0, 0x500(r23)
/* 80B5911C  38 00 00 00 */	li r0, 0
/* 80B59120  98 17 15 7A */	stb r0, 0x157a(r23)
/* 80B59124  98 17 15 80 */	stb r0, 0x1580(r23)
/* 80B59128  38 00 00 01 */	li r0, 1
/* 80B5912C  98 17 15 81 */	stb r0, 0x1581(r23)
lbl_80B59130:
/* 80B59130  2C 1A 00 0C */	cmpwi r26, 0xc
/* 80B59134  41 82 02 30 */	beq lbl_80B59364
/* 80B59138  40 80 00 4C */	bge lbl_80B59184
/* 80B5913C  2C 1A 00 04 */	cmpwi r26, 4
/* 80B59140  41 82 02 10 */	beq lbl_80B59350
/* 80B59144  40 80 00 28 */	bge lbl_80B5916C
/* 80B59148  2C 1A 00 01 */	cmpwi r26, 1
/* 80B5914C  41 82 00 84 */	beq lbl_80B591D0
/* 80B59150  40 80 00 10 */	bge lbl_80B59160
/* 80B59154  2C 1A 00 00 */	cmpwi r26, 0
/* 80B59158  40 80 00 70 */	bge lbl_80B591C8
/* 80B5915C  48 00 02 64 */	b lbl_80B593C0
lbl_80B59160:
/* 80B59160  2C 1A 00 03 */	cmpwi r26, 3
/* 80B59164  40 80 01 D8 */	bge lbl_80B5933C
/* 80B59168  48 00 01 CC */	b lbl_80B59334
lbl_80B5916C:
/* 80B5916C  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B59170  41 82 01 F4 */	beq lbl_80B59364
/* 80B59174  40 80 00 5C */	bge lbl_80B591D0
/* 80B59178  2C 1A 00 09 */	cmpwi r26, 9
/* 80B5917C  40 80 02 44 */	bge lbl_80B593C0
/* 80B59180  48 00 01 B4 */	b lbl_80B59334
lbl_80B59184:
/* 80B59184  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 80B59188  40 80 00 28 */	bge lbl_80B591B0
/* 80B5918C  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80B59190  41 82 02 08 */	beq lbl_80B59398
/* 80B59194  40 80 00 10 */	bge lbl_80B591A4
/* 80B59198  2C 1A 00 0E */	cmpwi r26, 0xe
/* 80B5919C  40 80 02 24 */	bge lbl_80B593C0
/* 80B591A0  48 00 01 F0 */	b lbl_80B59390
lbl_80B591A4:
/* 80B591A4  2C 1A 00 16 */	cmpwi r26, 0x16
/* 80B591A8  40 80 02 18 */	bge lbl_80B593C0
/* 80B591AC  48 00 01 88 */	b lbl_80B59334
lbl_80B591B0:
/* 80B591B0  2C 1A 00 63 */	cmpwi r26, 0x63
/* 80B591B4  41 82 01 80 */	beq lbl_80B59334
/* 80B591B8  40 80 02 08 */	bge lbl_80B593C0
/* 80B591BC  2C 1A 00 20 */	cmpwi r26, 0x20
/* 80B591C0  40 80 02 00 */	bge lbl_80B593C0
/* 80B591C4  48 00 01 70 */	b lbl_80B59334
lbl_80B591C8:
/* 80B591C8  3B 60 00 01 */	li r27, 1
/* 80B591CC  48 00 01 F4 */	b lbl_80B593C0
lbl_80B591D0:
/* 80B591D0  80 17 0D C4 */	lwz r0, 0xdc4(r23)
/* 80B591D4  2C 00 00 00 */	cmpwi r0, 0
/* 80B591D8  40 82 00 18 */	bne lbl_80B591F0
/* 80B591DC  7F A3 EB 78 */	mr r3, r29
/* 80B591E0  7F 04 C3 78 */	mr r4, r24
/* 80B591E4  4B 4E EB 68 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B591E8  2C 03 00 00 */	cmpwi r3, 0
/* 80B591EC  41 82 00 64 */	beq lbl_80B59250
lbl_80B591F0:
/* 80B591F0  38 77 14 A0 */	addi r3, r23, 0x14a0
/* 80B591F4  4B 5E C5 14 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B591F8  7C 78 1B 78 */	mr r24, r3
/* 80B591FC  38 77 0D C4 */	addi r3, r23, 0xdc4
/* 80B59200  48 00 41 79 */	bl func_80B5D378
/* 80B59204  2C 03 00 00 */	cmpwi r3, 0
/* 80B59208  40 82 00 10 */	bne lbl_80B59218
/* 80B5920C  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B59210  D0 17 05 2C */	stfs f0, 0x52c(r23)
/* 80B59214  48 00 00 3C */	b lbl_80B59250
lbl_80B59218:
/* 80B59218  38 77 04 D0 */	addi r3, r23, 0x4d0
/* 80B5921C  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 80B59220  4B 71 79 E4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B59224  B0 77 04 DE */	sth r3, 0x4de(r23)
/* 80B59228  38 77 04 E6 */	addi r3, r23, 0x4e6
/* 80B5922C  A8 97 04 DE */	lha r4, 0x4de(r23)
/* 80B59230  38 A0 00 04 */	li r5, 4
/* 80B59234  38 C0 08 00 */	li r6, 0x800
/* 80B59238  4B 71 73 D0 */	b cLib_addCalcAngleS2__FPssss
/* 80B5923C  A8 17 04 E6 */	lha r0, 0x4e6(r23)
/* 80B59240  B0 17 0D 7A */	sth r0, 0xd7a(r23)
/* 80B59244  38 7E 00 00 */	addi r3, r30, 0
/* 80B59248  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 80B5924C  D0 17 05 2C */	stfs f0, 0x52c(r23)
lbl_80B59250:
/* 80B59250  2C 1A 00 01 */	cmpwi r26, 1
/* 80B59254  40 82 00 C0 */	bne lbl_80B59314
/* 80B59258  3B 20 00 00 */	li r25, 0
/* 80B5925C  3B 00 00 00 */	li r24, 0
lbl_80B59260:
/* 80B59260  3A D8 0F 94 */	addi r22, r24, 0xf94
/* 80B59264  7E D7 B2 14 */	add r22, r23, r22
/* 80B59268  7E C3 B3 78 */	mr r3, r22
/* 80B5926C  4B 52 B3 EC */	b ChkCoHit__12dCcD_GObjInfFv
/* 80B59270  28 03 00 00 */	cmplwi r3, 0
/* 80B59274  41 82 00 1C */	beq lbl_80B59290
/* 80B59278  38 76 00 E8 */	addi r3, r22, 0xe8
/* 80B5927C  4B 52 A4 0C */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80B59280  80 1F 5D AC */	lwz r0, 0x5dac(r31)
/* 80B59284  7C 00 18 40 */	cmplw r0, r3
/* 80B59288  40 82 00 08 */	bne lbl_80B59290
/* 80B5928C  3B 60 00 01 */	li r27, 1
lbl_80B59290:
/* 80B59290  3B 39 00 01 */	addi r25, r25, 1
/* 80B59294  2C 19 00 04 */	cmpwi r25, 4
/* 80B59298  3B 18 01 38 */	addi r24, r24, 0x138
/* 80B5929C  41 80 FF C4 */	blt lbl_80B59260
/* 80B592A0  2C 1B 00 00 */	cmpwi r27, 0
/* 80B592A4  40 82 00 2C */	bne lbl_80B592D0
/* 80B592A8  38 77 0E 58 */	addi r3, r23, 0xe58
/* 80B592AC  4B 52 B3 AC */	b ChkCoHit__12dCcD_GObjInfFv
/* 80B592B0  28 03 00 00 */	cmplwi r3, 0
/* 80B592B4  41 82 00 1C */	beq lbl_80B592D0
/* 80B592B8  38 77 0F 40 */	addi r3, r23, 0xf40
/* 80B592BC  4B 52 A3 CC */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80B592C0  80 1F 5D AC */	lwz r0, 0x5dac(r31)
/* 80B592C4  7C 00 18 40 */	cmplw r0, r3
/* 80B592C8  40 82 00 08 */	bne lbl_80B592D0
/* 80B592CC  3B 60 00 01 */	li r27, 1
lbl_80B592D0:
/* 80B592D0  2C 1B 00 00 */	cmpwi r27, 0
/* 80B592D4  41 82 00 40 */	beq lbl_80B59314
/* 80B592D8  7E E3 BB 78 */	mr r3, r23
/* 80B592DC  7F 84 E3 78 */	mr r4, r28
/* 80B592E0  4B 4C 14 30 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B592E4  7C 65 1B 78 */	mr r5, r3
/* 80B592E8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B592EC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B592F0  38 05 40 00 */	addi r0, r5, 0x4000
/* 80B592F4  7C 05 07 34 */	extsh r5, r0
/* 80B592F8  38 C0 00 00 */	li r6, 0
/* 80B592FC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B59300  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B59304  7D 89 03 A6 */	mtctr r12
/* 80B59308  4E 80 04 21 */	bctrl 
/* 80B5930C  38 00 00 01 */	li r0, 1
/* 80B59310  98 17 15 80 */	stb r0, 0x1580(r23)
lbl_80B59314:
/* 80B59314  2C 1A 00 0B */	cmpwi r26, 0xb
/* 80B59318  40 82 00 A8 */	bne lbl_80B593C0
/* 80B5931C  38 00 00 01 */	li r0, 1
/* 80B59320  98 17 15 80 */	stb r0, 0x1580(r23)
/* 80B59324  80 17 0D C4 */	lwz r0, 0xdc4(r23)
/* 80B59328  7C 00 00 34 */	cntlzw r0, r0
/* 80B5932C  54 1B DE 3E */	rlwinm r27, r0, 0x1b, 0x18, 0x1f
/* 80B59330  48 00 00 90 */	b lbl_80B593C0
lbl_80B59334:
/* 80B59334  3B 60 00 01 */	li r27, 1
/* 80B59338  48 00 00 88 */	b lbl_80B593C0
lbl_80B5933C:
/* 80B5933C  80 17 0B 84 */	lwz r0, 0xb84(r23)
/* 80B59340  2C 00 00 00 */	cmpwi r0, 0
/* 80B59344  40 81 00 7C */	ble lbl_80B593C0
/* 80B59348  3B 60 00 01 */	li r27, 1
/* 80B5934C  48 00 00 74 */	b lbl_80B593C0
lbl_80B59350:
/* 80B59350  80 17 0B 84 */	lwz r0, 0xb84(r23)
/* 80B59354  2C 00 00 00 */	cmpwi r0, 0
/* 80B59358  40 81 00 68 */	ble lbl_80B593C0
/* 80B5935C  3B 60 00 01 */	li r27, 1
/* 80B59360  48 00 00 60 */	b lbl_80B593C0
lbl_80B59364:
/* 80B59364  80 17 0D C4 */	lwz r0, 0xdc4(r23)
/* 80B59368  2C 00 00 00 */	cmpwi r0, 0
/* 80B5936C  41 82 00 1C */	beq lbl_80B59388
/* 80B59370  38 77 0D C4 */	addi r3, r23, 0xdc4
/* 80B59374  48 00 40 05 */	bl func_80B5D378
/* 80B59378  2C 03 00 00 */	cmpwi r3, 0
/* 80B5937C  40 82 00 44 */	bne lbl_80B593C0
/* 80B59380  3B 60 00 01 */	li r27, 1
/* 80B59384  48 00 00 3C */	b lbl_80B593C0
lbl_80B59388:
/* 80B59388  3B 60 00 01 */	li r27, 1
/* 80B5938C  48 00 00 34 */	b lbl_80B593C0
lbl_80B59390:
/* 80B59390  3B 60 00 01 */	li r27, 1
/* 80B59394  48 00 00 2C */	b lbl_80B593C0
lbl_80B59398:
/* 80B59398  38 00 00 01 */	li r0, 1
/* 80B5939C  98 17 15 80 */	stb r0, 0x1580(r23)
/* 80B593A0  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B593A4  4B 5E C6 80 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B593A8  2C 03 00 00 */	cmpwi r3, 0
/* 80B593AC  41 82 00 14 */	beq lbl_80B593C0
/* 80B593B0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B593B4  38 00 78 00 */	li r0, 0x7800
/* 80B593B8  B0 03 06 06 */	sth r0, 0x606(r3)
/* 80B593BC  3B 60 00 01 */	li r27, 1
lbl_80B593C0:
/* 80B593C0  38 77 14 A0 */	addi r3, r23, 0x14a0
/* 80B593C4  4B 5E C3 44 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B593C8  28 03 00 00 */	cmplwi r3, 0
/* 80B593CC  41 82 00 C0 */	beq lbl_80B5948C
/* 80B593D0  38 1A FF FE */	addi r0, r26, -2
/* 80B593D4  28 00 00 06 */	cmplwi r0, 6
/* 80B593D8  40 81 00 20 */	ble lbl_80B593F8
/* 80B593DC  38 1A FF EC */	addi r0, r26, -20
/* 80B593E0  28 00 00 01 */	cmplwi r0, 1
/* 80B593E4  40 81 00 14 */	ble lbl_80B593F8
/* 80B593E8  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 80B593EC  41 82 00 0C */	beq lbl_80B593F8
/* 80B593F0  2C 1A 00 1F */	cmpwi r26, 0x1f
/* 80B593F4  40 82 00 98 */	bne lbl_80B5948C
lbl_80B593F8:
/* 80B593F8  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 80B593FC  D0 17 0D 6C */	stfs f0, 0xd6c(r23)
/* 80B59400  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 80B59404  D0 17 0D 70 */	stfs f0, 0xd70(r23)
/* 80B59408  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 80B5940C  D0 17 0D 74 */	stfs f0, 0xd74(r23)
/* 80B59410  38 00 C0 00 */	li r0, -16384
/* 80B59414  B0 17 0D 8C */	sth r0, 0xd8c(r23)
/* 80B59418  80 77 0B C8 */	lwz r3, 0xbc8(r23)
/* 80B5941C  38 17 0D 6C */	addi r0, r23, 0xd6c
/* 80B59420  7C 63 00 50 */	subf r3, r3, r0
/* 80B59424  30 03 FF FF */	addic r0, r3, -1
/* 80B59428  7C 00 19 10 */	subfe r0, r0, r3
/* 80B5942C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B59430  40 82 00 10 */	bne lbl_80B59440
/* 80B59434  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 80B59438  2C 00 00 03 */	cmpwi r0, 3
/* 80B5943C  41 82 00 30 */	beq lbl_80B5946C
lbl_80B59440:
/* 80B59440  38 77 0B A8 */	addi r3, r23, 0xba8
/* 80B59444  4B 5E C2 B8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B59448  38 00 00 00 */	li r0, 0
/* 80B5944C  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 80B59450  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B59454  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 80B59458  98 17 0C FF */	stb r0, 0xcff(r23)
/* 80B5945C  38 00 00 03 */	li r0, 3
/* 80B59460  90 17 0C E0 */	stw r0, 0xce0(r23)
/* 80B59464  38 00 00 01 */	li r0, 1
/* 80B59468  48 00 00 08 */	b lbl_80B59470
lbl_80B5946C:
/* 80B5946C  38 00 00 00 */	li r0, 0
lbl_80B59470:
/* 80B59470  2C 00 00 00 */	cmpwi r0, 0
/* 80B59474  41 82 00 0C */	beq lbl_80B59480
/* 80B59478  38 17 0D 6C */	addi r0, r23, 0xd6c
/* 80B5947C  90 17 0B C8 */	stw r0, 0xbc8(r23)
lbl_80B59480:
/* 80B59480  38 00 00 00 */	li r0, 0
/* 80B59484  98 17 0C FF */	stb r0, 0xcff(r23)
/* 80B59488  48 00 00 38 */	b lbl_80B594C0
lbl_80B5948C:
/* 80B5948C  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 80B59490  2C 00 00 00 */	cmpwi r0, 0
/* 80B59494  41 82 00 24 */	beq lbl_80B594B8
/* 80B59498  38 77 0B A8 */	addi r3, r23, 0xba8
/* 80B5949C  4B 5E C2 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B594A0  38 00 00 00 */	li r0, 0
/* 80B594A4  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 80B594A8  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B594AC  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 80B594B0  98 17 0C FF */	stb r0, 0xcff(r23)
/* 80B594B4  90 17 0C E0 */	stw r0, 0xce0(r23)
lbl_80B594B8:
/* 80B594B8  38 00 00 00 */	li r0, 0
/* 80B594BC  98 17 0C FF */	stb r0, 0xcff(r23)
lbl_80B594C0:
/* 80B594C0  2C 1A 00 08 */	cmpwi r26, 8
/* 80B594C4  40 82 00 0C */	bne lbl_80B594D0
/* 80B594C8  38 00 00 00 */	li r0, 0
/* 80B594CC  98 17 15 80 */	stb r0, 0x1580(r23)
lbl_80B594D0:
/* 80B594D0  38 00 00 01 */	li r0, 1
/* 80B594D4  98 17 15 75 */	stb r0, 0x1575(r23)
/* 80B594D8  98 17 15 74 */	stb r0, 0x1574(r23)
/* 80B594DC  38 00 00 00 */	li r0, 0
/* 80B594E0  98 17 0E 26 */	stb r0, 0xe26(r23)
/* 80B594E4  7F 63 DB 78 */	mr r3, r27
/* 80B594E8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B594EC  4B 80 8D 20 */	b _restgpr_22
/* 80B594F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B594F4  7C 08 03 A6 */	mtlr r0
/* 80B594F8  38 21 00 50 */	addi r1, r1, 0x50
/* 80B594FC  4E 80 00 20 */	blr 
