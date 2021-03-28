lbl_80A61AD4:
/* 80A61AD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A61AD8  7C 08 02 A6 */	mflr r0
/* 80A61ADC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A61AE0  39 61 00 40 */	addi r11, r1, 0x40
/* 80A61AE4  4B 90 06 DC */	b _savegpr_22
/* 80A61AE8  7C 76 1B 78 */	mr r22, r3
/* 80A61AEC  7C 97 23 78 */	mr r23, r4
/* 80A61AF0  3C 60 80 A6 */	lis r3, m__19daNpc_Kyury_Param_c@ha
/* 80A61AF4  3B C3 38 AC */	addi r30, r3, m__19daNpc_Kyury_Param_c@l
/* 80A61AF8  3B 80 00 00 */	li r28, 0
/* 80A61AFC  3B 60 FF FF */	li r27, -1
/* 80A61B00  3B 40 00 00 */	li r26, 0
/* 80A61B04  3B 20 00 00 */	li r25, 0
/* 80A61B08  3B 00 00 00 */	li r24, 0
/* 80A61B0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A61B10  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A61B14  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80A61B18  7F A3 EB 78 */	mr r3, r29
/* 80A61B1C  3C A0 80 A6 */	lis r5, struct_80A639C4+0x0@ha
/* 80A61B20  38 A5 39 C4 */	addi r5, r5, struct_80A639C4+0x0@l
/* 80A61B24  38 A5 00 3A */	addi r5, r5, 0x3a
/* 80A61B28  38 C0 00 03 */	li r6, 3
/* 80A61B2C  4B 5E 65 C0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A61B30  28 03 00 00 */	cmplwi r3, 0
/* 80A61B34  41 82 00 08 */	beq lbl_80A61B3C
/* 80A61B38  83 63 00 00 */	lwz r27, 0(r3)
lbl_80A61B3C:
/* 80A61B3C  7F A3 EB 78 */	mr r3, r29
/* 80A61B40  7E E4 BB 78 */	mr r4, r23
/* 80A61B44  3C A0 80 A6 */	lis r5, struct_80A639C4+0x0@ha
/* 80A61B48  38 A5 39 C4 */	addi r5, r5, struct_80A639C4+0x0@l
/* 80A61B4C  38 A5 00 3E */	addi r5, r5, 0x3e
/* 80A61B50  38 C0 00 03 */	li r6, 3
/* 80A61B54  4B 5E 65 98 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A61B58  28 03 00 00 */	cmplwi r3, 0
/* 80A61B5C  41 82 00 08 */	beq lbl_80A61B64
/* 80A61B60  83 43 00 00 */	lwz r26, 0(r3)
lbl_80A61B64:
/* 80A61B64  7F A3 EB 78 */	mr r3, r29
/* 80A61B68  7E E4 BB 78 */	mr r4, r23
/* 80A61B6C  3C A0 80 A6 */	lis r5, struct_80A639C4+0x0@ha
/* 80A61B70  38 A5 39 C4 */	addi r5, r5, struct_80A639C4+0x0@l
/* 80A61B74  38 A5 00 44 */	addi r5, r5, 0x44
/* 80A61B78  38 C0 00 03 */	li r6, 3
/* 80A61B7C  4B 5E 65 70 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A61B80  28 03 00 00 */	cmplwi r3, 0
/* 80A61B84  41 82 00 08 */	beq lbl_80A61B8C
/* 80A61B88  83 23 00 00 */	lwz r25, 0(r3)
lbl_80A61B8C:
/* 80A61B8C  7F A3 EB 78 */	mr r3, r29
/* 80A61B90  7E E4 BB 78 */	mr r4, r23
/* 80A61B94  3C A0 80 A6 */	lis r5, struct_80A639C4+0x0@ha
/* 80A61B98  38 A5 39 C4 */	addi r5, r5, struct_80A639C4+0x0@l
/* 80A61B9C  38 A5 00 4B */	addi r5, r5, 0x4b
/* 80A61BA0  38 C0 00 03 */	li r6, 3
/* 80A61BA4  4B 5E 65 48 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A61BA8  28 03 00 00 */	cmplwi r3, 0
/* 80A61BAC  41 82 00 08 */	beq lbl_80A61BB4
/* 80A61BB0  83 03 00 00 */	lwz r24, 0(r3)
lbl_80A61BB4:
/* 80A61BB4  7F A3 EB 78 */	mr r3, r29
/* 80A61BB8  7E E4 BB 78 */	mr r4, r23
/* 80A61BBC  4B 5E 61 90 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A61BC0  2C 03 00 00 */	cmpwi r3, 0
/* 80A61BC4  41 82 00 D8 */	beq lbl_80A61C9C
/* 80A61BC8  2C 1B 00 02 */	cmpwi r27, 2
/* 80A61BCC  41 82 00 D0 */	beq lbl_80A61C9C
/* 80A61BD0  40 80 00 14 */	bge lbl_80A61BE4
/* 80A61BD4  2C 1B 00 00 */	cmpwi r27, 0
/* 80A61BD8  41 82 00 18 */	beq lbl_80A61BF0
/* 80A61BDC  40 80 00 58 */	bge lbl_80A61C34
/* 80A61BE0  48 00 00 BC */	b lbl_80A61C9C
lbl_80A61BE4:
/* 80A61BE4  2C 1B 00 04 */	cmpwi r27, 4
/* 80A61BE8  41 82 00 B4 */	beq lbl_80A61C9C
/* 80A61BEC  48 00 00 B0 */	b lbl_80A61C9C
lbl_80A61BF0:
/* 80A61BF0  38 76 0F 8C */	addi r3, r22, 0xf8c
/* 80A61BF4  4B 6E 3B 14 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A61BF8  7C 64 1B 78 */	mr r4, r3
/* 80A61BFC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80A61C00  4B 5E 1A 5C */	b setPt2__14dEvt_control_cFPv
/* 80A61C04  7E C3 B3 78 */	mr r3, r22
/* 80A61C08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A61C0C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A61C10  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A61C14  4B 5B 8A FC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A61C18  B0 76 0D C8 */	sth r3, 0xdc8(r22)
/* 80A61C1C  A8 16 0D D8 */	lha r0, 0xdd8(r22)
/* 80A61C20  2C 00 00 01 */	cmpwi r0, 1
/* 80A61C24  40 82 00 78 */	bne lbl_80A61C9C
/* 80A61C28  38 00 00 00 */	li r0, 0
/* 80A61C2C  B0 16 0D D8 */	sth r0, 0xdd8(r22)
/* 80A61C30  48 00 00 6C */	b lbl_80A61C9C
lbl_80A61C34:
/* 80A61C34  80 16 0B 58 */	lwz r0, 0xb58(r22)
/* 80A61C38  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A61C3C  41 82 00 24 */	beq lbl_80A61C60
/* 80A61C40  82 F6 0B 5C */	lwz r23, 0xb5c(r22)
/* 80A61C44  38 76 0B 50 */	addi r3, r22, 0xb50
/* 80A61C48  4B 6E 3C 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A61C4C  92 F6 0B 5C */	stw r23, 0xb5c(r22)
/* 80A61C50  38 00 00 0C */	li r0, 0xc
/* 80A61C54  90 16 0B 58 */	stw r0, 0xb58(r22)
/* 80A61C58  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A61C5C  D0 16 0B 68 */	stfs f0, 0xb68(r22)
lbl_80A61C60:
/* 80A61C60  80 16 0B 7C */	lwz r0, 0xb7c(r22)
/* 80A61C64  2C 00 00 05 */	cmpwi r0, 5
/* 80A61C68  41 82 00 24 */	beq lbl_80A61C8C
/* 80A61C6C  82 F6 0B 80 */	lwz r23, 0xb80(r22)
/* 80A61C70  38 76 0B 74 */	addi r3, r22, 0xb74
/* 80A61C74  4B 6E 3C 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A61C78  92 F6 0B 80 */	stw r23, 0xb80(r22)
/* 80A61C7C  38 00 00 05 */	li r0, 5
/* 80A61C80  90 16 0B 7C */	stw r0, 0xb7c(r22)
/* 80A61C84  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A61C88  D0 16 0B 8C */	stfs f0, 0xb8c(r22)
lbl_80A61C8C:
/* 80A61C8C  7E C3 B3 78 */	mr r3, r22
/* 80A61C90  80 96 0A 7C */	lwz r4, 0xa7c(r22)
/* 80A61C94  38 A0 00 00 */	li r5, 0
/* 80A61C98  4B 6E 9F 58 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A61C9C:
/* 80A61C9C  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80A61CA0  80 1E 01 08 */	lwz r0, 0x108(r30)
/* 80A61CA4  90 61 00 08 */	stw r3, 8(r1)
/* 80A61CA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A61CAC  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 80A61CB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A61CB4  2C 1B 00 02 */	cmpwi r27, 2
/* 80A61CB8  41 82 00 E4 */	beq lbl_80A61D9C
/* 80A61CBC  40 80 00 14 */	bge lbl_80A61CD0
/* 80A61CC0  2C 1B 00 00 */	cmpwi r27, 0
/* 80A61CC4  41 82 00 18 */	beq lbl_80A61CDC
/* 80A61CC8  40 80 00 80 */	bge lbl_80A61D48
/* 80A61CCC  48 00 01 E8 */	b lbl_80A61EB4
lbl_80A61CD0:
/* 80A61CD0  2C 1B 00 04 */	cmpwi r27, 4
/* 80A61CD4  41 82 01 44 */	beq lbl_80A61E18
/* 80A61CD8  48 00 01 DC */	b lbl_80A61EB4
lbl_80A61CDC:
/* 80A61CDC  80 16 0C E0 */	lwz r0, 0xce0(r22)
/* 80A61CE0  2C 00 00 01 */	cmpwi r0, 1
/* 80A61CE4  41 82 00 28 */	beq lbl_80A61D0C
/* 80A61CE8  38 76 0B A8 */	addi r3, r22, 0xba8
/* 80A61CEC  4B 6E 3A 10 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A61CF0  38 00 00 00 */	li r0, 0
/* 80A61CF4  90 16 0B C8 */	stw r0, 0xbc8(r22)
/* 80A61CF8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A61CFC  D0 16 0C F4 */	stfs f0, 0xcf4(r22)
/* 80A61D00  98 16 0C FF */	stb r0, 0xcff(r22)
/* 80A61D04  38 00 00 01 */	li r0, 1
/* 80A61D08  90 16 0C E0 */	stw r0, 0xce0(r22)
lbl_80A61D0C:
/* 80A61D0C  38 00 00 00 */	li r0, 0
/* 80A61D10  98 16 0C FF */	stb r0, 0xcff(r22)
/* 80A61D14  A8 96 0D C8 */	lha r4, 0xdc8(r22)
/* 80A61D18  A8 16 0D 7A */	lha r0, 0xd7a(r22)
/* 80A61D1C  7C 04 00 00 */	cmpw r4, r0
/* 80A61D20  40 82 00 0C */	bne lbl_80A61D2C
/* 80A61D24  3B 80 00 01 */	li r28, 1
/* 80A61D28  48 00 01 8C */	b lbl_80A61EB4
lbl_80A61D2C:
/* 80A61D2C  7E C3 B3 78 */	mr r3, r22
/* 80A61D30  38 A0 00 0B */	li r5, 0xb
/* 80A61D34  38 C0 00 0B */	li r6, 0xb
/* 80A61D38  38 E0 00 0F */	li r7, 0xf
/* 80A61D3C  39 00 00 00 */	li r8, 0
/* 80A61D40  4B 6E 99 08 */	b step__8daNpcT_cFsiiii
/* 80A61D44  48 00 01 70 */	b lbl_80A61EB4
lbl_80A61D48:
/* 80A61D48  93 41 00 08 */	stw r26, 8(r1)
/* 80A61D4C  93 21 00 0C */	stw r25, 0xc(r1)
/* 80A61D50  7E C3 B3 78 */	mr r3, r22
/* 80A61D54  38 81 00 08 */	addi r4, r1, 8
/* 80A61D58  38 A0 00 00 */	li r5, 0
/* 80A61D5C  38 C0 00 00 */	li r6, 0
/* 80A61D60  38 E0 00 00 */	li r7, 0
/* 80A61D64  4B 6E 9F 14 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A61D68  2C 03 00 00 */	cmpwi r3, 0
/* 80A61D6C  41 82 01 48 */	beq lbl_80A61EB4
/* 80A61D70  2C 1A 00 00 */	cmpwi r26, 0
/* 80A61D74  40 82 00 20 */	bne lbl_80A61D94
/* 80A61D78  2C 19 00 00 */	cmpwi r25, 0
/* 80A61D7C  40 82 00 18 */	bne lbl_80A61D94
/* 80A61D80  88 16 09 9A */	lbz r0, 0x99a(r22)
/* 80A61D84  28 00 00 01 */	cmplwi r0, 1
/* 80A61D88  40 82 01 2C */	bne lbl_80A61EB4
/* 80A61D8C  3B 80 00 01 */	li r28, 1
/* 80A61D90  48 00 01 24 */	b lbl_80A61EB4
lbl_80A61D94:
/* 80A61D94  3B 80 00 01 */	li r28, 1
/* 80A61D98  48 00 01 1C */	b lbl_80A61EB4
lbl_80A61D9C:
/* 80A61D9C  38 76 0F 8C */	addi r3, r22, 0xf8c
/* 80A61DA0  4B 6E 39 68 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A61DA4  7C 77 1B 78 */	mr r23, r3
/* 80A61DA8  80 76 0B C8 */	lwz r3, 0xbc8(r22)
/* 80A61DAC  38 17 05 50 */	addi r0, r23, 0x550
/* 80A61DB0  7C 63 00 50 */	subf r3, r3, r0
/* 80A61DB4  30 03 FF FF */	addic r0, r3, -1
/* 80A61DB8  7C 00 19 10 */	subfe r0, r0, r3
/* 80A61DBC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A61DC0  40 82 00 10 */	bne lbl_80A61DD0
/* 80A61DC4  80 16 0C E0 */	lwz r0, 0xce0(r22)
/* 80A61DC8  2C 00 00 03 */	cmpwi r0, 3
/* 80A61DCC  41 82 00 30 */	beq lbl_80A61DFC
lbl_80A61DD0:
/* 80A61DD0  38 76 0B A8 */	addi r3, r22, 0xba8
/* 80A61DD4  4B 6E 39 28 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A61DD8  38 00 00 00 */	li r0, 0
/* 80A61DDC  90 16 0B C8 */	stw r0, 0xbc8(r22)
/* 80A61DE0  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A61DE4  D0 16 0C F4 */	stfs f0, 0xcf4(r22)
/* 80A61DE8  98 16 0C FF */	stb r0, 0xcff(r22)
/* 80A61DEC  38 00 00 03 */	li r0, 3
/* 80A61DF0  90 16 0C E0 */	stw r0, 0xce0(r22)
/* 80A61DF4  38 00 00 01 */	li r0, 1
/* 80A61DF8  48 00 00 08 */	b lbl_80A61E00
lbl_80A61DFC:
/* 80A61DFC  38 00 00 00 */	li r0, 0
lbl_80A61E00:
/* 80A61E00  2C 00 00 00 */	cmpwi r0, 0
/* 80A61E04  41 82 00 0C */	beq lbl_80A61E10
/* 80A61E08  38 17 05 50 */	addi r0, r23, 0x550
/* 80A61E0C  90 16 0B C8 */	stw r0, 0xbc8(r22)
lbl_80A61E10:
/* 80A61E10  38 00 00 00 */	li r0, 0
/* 80A61E14  98 16 0C FF */	stb r0, 0xcff(r22)
lbl_80A61E18:
/* 80A61E18  80 16 0C E0 */	lwz r0, 0xce0(r22)
/* 80A61E1C  2C 00 00 01 */	cmpwi r0, 1
/* 80A61E20  41 82 00 28 */	beq lbl_80A61E48
/* 80A61E24  38 76 0B A8 */	addi r3, r22, 0xba8
/* 80A61E28  4B 6E 38 D4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A61E2C  38 00 00 00 */	li r0, 0
/* 80A61E30  90 16 0B C8 */	stw r0, 0xbc8(r22)
/* 80A61E34  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A61E38  D0 16 0C F4 */	stfs f0, 0xcf4(r22)
/* 80A61E3C  98 16 0C FF */	stb r0, 0xcff(r22)
/* 80A61E40  38 00 00 01 */	li r0, 1
/* 80A61E44  90 16 0C E0 */	stw r0, 0xce0(r22)
lbl_80A61E48:
/* 80A61E48  38 00 00 00 */	li r0, 0
/* 80A61E4C  98 16 0C FF */	stb r0, 0xcff(r22)
/* 80A61E50  93 41 00 08 */	stw r26, 8(r1)
/* 80A61E54  93 21 00 0C */	stw r25, 0xc(r1)
/* 80A61E58  7E C3 B3 78 */	mr r3, r22
/* 80A61E5C  38 81 00 08 */	addi r4, r1, 8
/* 80A61E60  7F 05 C3 78 */	mr r5, r24
/* 80A61E64  38 C0 00 00 */	li r6, 0
/* 80A61E68  38 E0 00 00 */	li r7, 0
/* 80A61E6C  4B 6E 9E 0C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A61E70  2C 03 00 00 */	cmpwi r3, 0
/* 80A61E74  41 82 00 40 */	beq lbl_80A61EB4
/* 80A61E78  2C 1A 00 00 */	cmpwi r26, 0
/* 80A61E7C  40 82 00 34 */	bne lbl_80A61EB0
/* 80A61E80  2C 19 00 00 */	cmpwi r25, 0
/* 80A61E84  40 82 00 2C */	bne lbl_80A61EB0
/* 80A61E88  88 16 09 9A */	lbz r0, 0x99a(r22)
/* 80A61E8C  28 00 00 01 */	cmplwi r0, 1
/* 80A61E90  40 82 00 24 */	bne lbl_80A61EB4
/* 80A61E94  38 76 0B 98 */	addi r3, r22, 0xb98
/* 80A61E98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A61E9C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A61EA0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A61EA4  4B 6E 38 3C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A61EA8  3B 80 00 01 */	li r28, 1
/* 80A61EAC  48 00 00 08 */	b lbl_80A61EB4
lbl_80A61EB0:
/* 80A61EB0  3B 80 00 01 */	li r28, 1
lbl_80A61EB4:
/* 80A61EB4  7F 83 E3 78 */	mr r3, r28
/* 80A61EB8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A61EBC  4B 90 03 50 */	b _restgpr_22
/* 80A61EC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A61EC4  7C 08 03 A6 */	mtlr r0
/* 80A61EC8  38 21 00 40 */	addi r1, r1, 0x40
/* 80A61ECC  4E 80 00 20 */	blr 
