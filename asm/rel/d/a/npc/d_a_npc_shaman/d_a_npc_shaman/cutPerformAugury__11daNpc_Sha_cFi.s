lbl_80AE4974:
/* 80AE4974  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AE4978  7C 08 02 A6 */	mflr r0
/* 80AE497C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AE4980  39 61 00 60 */	addi r11, r1, 0x60
/* 80AE4984  4B 87 D8 41 */	bl _savegpr_23
/* 80AE4988  7C 78 1B 78 */	mr r24, r3
/* 80AE498C  7C 99 23 78 */	mr r25, r4
/* 80AE4990  3B C0 00 00 */	li r30, 0
/* 80AE4994  3B A0 FF FF */	li r29, -1
/* 80AE4998  3B 80 00 00 */	li r28, 0
/* 80AE499C  3B 60 00 00 */	li r27, 0
/* 80AE49A0  3B 40 00 00 */	li r26, 0
/* 80AE49A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE49A8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE49AC  3A FF 4F F8 */	addi r23, r31, 0x4ff8
/* 80AE49B0  7E E3 BB 78 */	mr r3, r23
/* 80AE49B4  3C A0 80 AE */	lis r5, d_a_npc_shaman__stringBase0@ha /* 0x80AE6CCC@ha */
/* 80AE49B8  38 A5 6C CC */	addi r5, r5, d_a_npc_shaman__stringBase0@l /* 0x80AE6CCC@l */
/* 80AE49BC  38 A5 00 35 */	addi r5, r5, 0x35
/* 80AE49C0  38 C0 00 03 */	li r6, 3
/* 80AE49C4  4B 56 37 29 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AE49C8  28 03 00 00 */	cmplwi r3, 0
/* 80AE49CC  41 82 00 08 */	beq lbl_80AE49D4
/* 80AE49D0  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80AE49D4:
/* 80AE49D4  7E E3 BB 78 */	mr r3, r23
/* 80AE49D8  7F 24 CB 78 */	mr r4, r25
/* 80AE49DC  3C A0 80 AE */	lis r5, d_a_npc_shaman__stringBase0@ha /* 0x80AE6CCC@ha */
/* 80AE49E0  38 A5 6C CC */	addi r5, r5, d_a_npc_shaman__stringBase0@l /* 0x80AE6CCC@l */
/* 80AE49E4  38 A5 00 39 */	addi r5, r5, 0x39
/* 80AE49E8  38 C0 00 03 */	li r6, 3
/* 80AE49EC  4B 56 37 01 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AE49F0  28 03 00 00 */	cmplwi r3, 0
/* 80AE49F4  41 82 00 08 */	beq lbl_80AE49FC
/* 80AE49F8  83 83 00 00 */	lwz r28, 0(r3)
lbl_80AE49FC:
/* 80AE49FC  7E E3 BB 78 */	mr r3, r23
/* 80AE4A00  7F 24 CB 78 */	mr r4, r25
/* 80AE4A04  3C A0 80 AE */	lis r5, d_a_npc_shaman__stringBase0@ha /* 0x80AE6CCC@ha */
/* 80AE4A08  38 A5 6C CC */	addi r5, r5, d_a_npc_shaman__stringBase0@l /* 0x80AE6CCC@l */
/* 80AE4A0C  38 A5 00 3F */	addi r5, r5, 0x3f
/* 80AE4A10  38 C0 00 03 */	li r6, 3
/* 80AE4A14  4B 56 36 D9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AE4A18  28 03 00 00 */	cmplwi r3, 0
/* 80AE4A1C  41 82 00 08 */	beq lbl_80AE4A24
/* 80AE4A20  83 63 00 00 */	lwz r27, 0(r3)
lbl_80AE4A24:
/* 80AE4A24  7E E3 BB 78 */	mr r3, r23
/* 80AE4A28  7F 24 CB 78 */	mr r4, r25
/* 80AE4A2C  3C A0 80 AE */	lis r5, d_a_npc_shaman__stringBase0@ha /* 0x80AE6CCC@ha */
/* 80AE4A30  38 A5 6C CC */	addi r5, r5, d_a_npc_shaman__stringBase0@l /* 0x80AE6CCC@l */
/* 80AE4A34  38 A5 00 46 */	addi r5, r5, 0x46
/* 80AE4A38  38 C0 00 03 */	li r6, 3
/* 80AE4A3C  4B 56 36 B1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AE4A40  28 03 00 00 */	cmplwi r3, 0
/* 80AE4A44  41 82 00 08 */	beq lbl_80AE4A4C
/* 80AE4A48  83 43 00 00 */	lwz r26, 0(r3)
lbl_80AE4A4C:
/* 80AE4A4C  7E E3 BB 78 */	mr r3, r23
/* 80AE4A50  7F 24 CB 78 */	mr r4, r25
/* 80AE4A54  4B 56 32 F9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80AE4A58  2C 03 00 00 */	cmpwi r3, 0
/* 80AE4A5C  41 82 01 18 */	beq lbl_80AE4B74
/* 80AE4A60  28 1D 00 07 */	cmplwi r29, 7
/* 80AE4A64  41 81 01 10 */	bgt lbl_80AE4B74
/* 80AE4A68  3C 60 80 AE */	lis r3, lit_5097@ha /* 0x80AE70FC@ha */
/* 80AE4A6C  38 63 70 FC */	addi r3, r3, lit_5097@l /* 0x80AE70FC@l */
/* 80AE4A70  57 A0 10 3A */	slwi r0, r29, 2
/* 80AE4A74  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AE4A78  7C 09 03 A6 */	mtctr r0
/* 80AE4A7C  4E 80 04 20 */	bctr 
lbl_80AE4A80:
/* 80AE4A80  3C 60 FF FE */	lis r3, 0xFFFE /* 0xFFFE7961@ha */
/* 80AE4A84  38 03 79 61 */	addi r0, r3, 0x7961 /* 0xFFFE7961@l */
/* 80AE4A88  90 18 0F 9C */	stw r0, 0xf9c(r24)
/* 80AE4A8C  A0 1F 4F A4 */	lhz r0, 0x4fa4(r31)
/* 80AE4A90  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80AE4A94  B0 1F 4F A4 */	sth r0, 0x4fa4(r31)
/* 80AE4A98  7F 03 C3 78 */	mr r3, r24
/* 80AE4A9C  80 98 0A 7C */	lwz r4, 0xa7c(r24)
/* 80AE4AA0  38 A0 00 00 */	li r5, 0
/* 80AE4AA4  4B 66 71 4D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AE4AA8  48 00 00 CC */	b lbl_80AE4B74
lbl_80AE4AAC:
/* 80AE4AAC  93 58 0D C4 */	stw r26, 0xdc4(r24)
/* 80AE4AB0  48 00 00 C4 */	b lbl_80AE4B74
lbl_80AE4AB4:
/* 80AE4AB4  A0 1F 4F A4 */	lhz r0, 0x4fa4(r31)
/* 80AE4AB8  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80AE4ABC  B0 1F 4F A4 */	sth r0, 0x4fa4(r31)
/* 80AE4AC0  7F 03 C3 78 */	mr r3, r24
/* 80AE4AC4  80 98 0A 7C */	lwz r4, 0xa7c(r24)
/* 80AE4AC8  38 A0 00 00 */	li r5, 0
/* 80AE4ACC  4B 66 71 25 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AE4AD0  48 00 00 A4 */	b lbl_80AE4B74
lbl_80AE4AD4:
/* 80AE4AD4  A0 1F 4F A4 */	lhz r0, 0x4fa4(r31)
/* 80AE4AD8  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80AE4ADC  B0 1F 4F A4 */	sth r0, 0x4fa4(r31)
/* 80AE4AE0  7F 03 C3 78 */	mr r3, r24
/* 80AE4AE4  38 80 07 72 */	li r4, 0x772
/* 80AE4AE8  38 A0 00 00 */	li r5, 0
/* 80AE4AEC  4B 66 71 05 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AE4AF0  48 00 00 84 */	b lbl_80AE4B74
lbl_80AE4AF4:
/* 80AE4AF4  A0 1F 4F A4 */	lhz r0, 0x4fa4(r31)
/* 80AE4AF8  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80AE4AFC  B0 1F 4F A4 */	sth r0, 0x4fa4(r31)
/* 80AE4B00  7F 03 C3 78 */	mr r3, r24
/* 80AE4B04  38 80 07 73 */	li r4, 0x773
/* 80AE4B08  38 A0 00 00 */	li r5, 0
/* 80AE4B0C  4B 66 70 E5 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AE4B10  48 00 00 64 */	b lbl_80AE4B74
lbl_80AE4B14:
/* 80AE4B14  38 60 00 02 */	li r3, 2
/* 80AE4B18  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 80AE4B1C  7C 04 07 74 */	extsb r4, r0
/* 80AE4B20  38 A1 00 20 */	addi r5, r1, 0x20
/* 80AE4B24  38 C1 00 0C */	addi r6, r1, 0xc
/* 80AE4B28  4B 66 79 D9 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80AE4B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80AE4B30  41 82 00 2C */	beq lbl_80AE4B5C
/* 80AE4B34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE4B38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE4B3C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AE4B40  38 81 00 20 */	addi r4, r1, 0x20
/* 80AE4B44  A8 A1 00 0E */	lha r5, 0xe(r1)
/* 80AE4B48  38 C0 00 00 */	li r6, 0
/* 80AE4B4C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80AE4B50  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80AE4B54  7D 89 03 A6 */	mtctr r12
/* 80AE4B58  4E 80 04 21 */	bctrl 
lbl_80AE4B5C:
/* 80AE4B5C  38 60 00 0B */	li r3, 0xb
/* 80AE4B60  4B 66 7F CD */	bl daNpcT_offTmpBit__FUl
/* 80AE4B64  48 00 00 10 */	b lbl_80AE4B74
lbl_80AE4B68:
/* 80AE4B68  93 58 0D C4 */	stw r26, 0xdc4(r24)
/* 80AE4B6C  38 60 00 0B */	li r3, 0xb
/* 80AE4B70  4B 66 7F BD */	bl daNpcT_offTmpBit__FUl
lbl_80AE4B74:
/* 80AE4B74  3C 60 80 AE */	lis r3, lit_4995@ha /* 0x80AE6CC0@ha */
/* 80AE4B78  38 83 6C C0 */	addi r4, r3, lit_4995@l /* 0x80AE6CC0@l */
/* 80AE4B7C  80 64 00 00 */	lwz r3, 0(r4)
/* 80AE4B80  80 04 00 04 */	lwz r0, 4(r4)
/* 80AE4B84  90 61 00 14 */	stw r3, 0x14(r1)
/* 80AE4B88  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AE4B8C  80 04 00 08 */	lwz r0, 8(r4)
/* 80AE4B90  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AE4B94  2C 1D 00 02 */	cmpwi r29, 2
/* 80AE4B98  41 82 02 24 */	beq lbl_80AE4DBC
/* 80AE4B9C  40 80 00 14 */	bge lbl_80AE4BB0
/* 80AE4BA0  2C 1D 00 00 */	cmpwi r29, 0
/* 80AE4BA4  41 82 00 1C */	beq lbl_80AE4BC0
/* 80AE4BA8  40 80 00 A8 */	bge lbl_80AE4C50
/* 80AE4BAC  48 00 02 5C */	b lbl_80AE4E08
lbl_80AE4BB0:
/* 80AE4BB0  2C 1D 00 08 */	cmpwi r29, 8
/* 80AE4BB4  40 80 02 54 */	bge lbl_80AE4E08
/* 80AE4BB8  2C 1D 00 06 */	cmpwi r29, 6
/* 80AE4BBC  40 80 02 00 */	bge lbl_80AE4DBC
lbl_80AE4BC0:
/* 80AE4BC0  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80AE4BC4  2C 00 00 01 */	cmpwi r0, 1
/* 80AE4BC8  41 82 00 2C */	beq lbl_80AE4BF4
/* 80AE4BCC  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80AE4BD0  4B 66 0B 2D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AE4BD4  38 00 00 00 */	li r0, 0
/* 80AE4BD8  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80AE4BDC  3C 60 80 AE */	lis r3, lit_4185@ha /* 0x80AE6C74@ha */
/* 80AE4BE0  C0 03 6C 74 */	lfs f0, lit_4185@l(r3)  /* 0x80AE6C74@l */
/* 80AE4BE4  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80AE4BE8  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80AE4BEC  38 00 00 01 */	li r0, 1
/* 80AE4BF0  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80AE4BF4:
/* 80AE4BF4  38 00 00 00 */	li r0, 0
/* 80AE4BF8  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80AE4BFC  93 81 00 14 */	stw r28, 0x14(r1)
/* 80AE4C00  93 61 00 18 */	stw r27, 0x18(r1)
/* 80AE4C04  7F 03 C3 78 */	mr r3, r24
/* 80AE4C08  38 81 00 14 */	addi r4, r1, 0x14
/* 80AE4C0C  38 A0 00 00 */	li r5, 0
/* 80AE4C10  38 C0 00 00 */	li r6, 0
/* 80AE4C14  38 E0 00 00 */	li r7, 0
/* 80AE4C18  4B 66 70 61 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AE4C1C  2C 03 00 00 */	cmpwi r3, 0
/* 80AE4C20  41 82 01 E8 */	beq lbl_80AE4E08
/* 80AE4C24  2C 1C 00 00 */	cmpwi r28, 0
/* 80AE4C28  40 82 00 20 */	bne lbl_80AE4C48
/* 80AE4C2C  2C 1B 00 00 */	cmpwi r27, 0
/* 80AE4C30  40 82 00 18 */	bne lbl_80AE4C48
/* 80AE4C34  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80AE4C38  28 00 00 01 */	cmplwi r0, 1
/* 80AE4C3C  40 82 01 CC */	bne lbl_80AE4E08
/* 80AE4C40  3B C0 00 01 */	li r30, 1
/* 80AE4C44  48 00 01 C4 */	b lbl_80AE4E08
lbl_80AE4C48:
/* 80AE4C48  3B C0 00 01 */	li r30, 1
/* 80AE4C4C  48 00 01 BC */	b lbl_80AE4E08
lbl_80AE4C50:
/* 80AE4C50  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80AE4C54  2C 00 00 00 */	cmpwi r0, 0
/* 80AE4C58  41 82 00 28 */	beq lbl_80AE4C80
/* 80AE4C5C  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80AE4C60  4B 66 0A 9D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AE4C64  38 00 00 00 */	li r0, 0
/* 80AE4C68  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80AE4C6C  3C 60 80 AE */	lis r3, lit_4185@ha /* 0x80AE6C74@ha */
/* 80AE4C70  C0 03 6C 74 */	lfs f0, lit_4185@l(r3)  /* 0x80AE6C74@l */
/* 80AE4C74  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80AE4C78  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80AE4C7C  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80AE4C80:
/* 80AE4C80  38 00 00 00 */	li r0, 0
/* 80AE4C84  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80AE4C88  7F 03 C3 78 */	mr r3, r24
/* 80AE4C8C  38 80 00 00 */	li r4, 0
/* 80AE4C90  38 A0 00 00 */	li r5, 0
/* 80AE4C94  38 C0 00 00 */	li r6, 0
/* 80AE4C98  38 E0 00 00 */	li r7, 0
/* 80AE4C9C  4B 66 6F DD */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AE4CA0  2C 03 00 00 */	cmpwi r3, 0
/* 80AE4CA4  41 82 01 64 */	beq lbl_80AE4E08
/* 80AE4CA8  38 78 09 74 */	addi r3, r24, 0x974
/* 80AE4CAC  38 81 00 08 */	addi r4, r1, 8
/* 80AE4CB0  4B 76 58 79 */	bl getEventId__10dMsgFlow_cFPi
/* 80AE4CB4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80AE4CB8  2C 00 00 16 */	cmpwi r0, 0x16
/* 80AE4CBC  41 82 00 08 */	beq lbl_80AE4CC4
/* 80AE4CC0  48 00 00 E8 */	b lbl_80AE4DA8
lbl_80AE4CC4:
/* 80AE4CC4  80 78 0F 9C */	lwz r3, 0xf9c(r24)
/* 80AE4CC8  3C 03 00 02 */	addis r0, r3, 2
/* 80AE4CCC  28 00 79 61 */	cmplwi r0, 0x7961
/* 80AE4CD0  40 82 00 24 */	bne lbl_80AE4CF4
/* 80AE4CD4  7F 03 C3 78 */	mr r3, r24
/* 80AE4CD8  4B FF F9 05 */	bl getSceneChangeNoTableIx__11daNpc_Sha_cFv
/* 80AE4CDC  90 78 0F 9C */	stw r3, 0xf9c(r24)
/* 80AE4CE0  80 98 0F 9C */	lwz r4, 0xf9c(r24)
/* 80AE4CE4  2C 04 00 00 */	cmpwi r4, 0
/* 80AE4CE8  41 80 00 0C */	blt lbl_80AE4CF4
/* 80AE4CEC  7F 03 C3 78 */	mr r3, r24
/* 80AE4CF0  4B FF FB E1 */	bl setTempBit__11daNpc_Sha_cFi
lbl_80AE4CF4:
/* 80AE4CF4  80 18 0F 9C */	lwz r0, 0xf9c(r24)
/* 80AE4CF8  2C 00 FF FE */	cmpwi r0, -2
/* 80AE4CFC  40 82 00 18 */	bne lbl_80AE4D14
/* 80AE4D00  38 00 00 03 */	li r0, 3
/* 80AE4D04  B0 18 0E 30 */	sth r0, 0xe30(r24)
/* 80AE4D08  7F 03 C3 78 */	mr r3, r24
/* 80AE4D0C  4B 66 55 19 */	bl evtChange__8daNpcT_cFv
/* 80AE4D10  48 00 00 F8 */	b lbl_80AE4E08
lbl_80AE4D14:
/* 80AE4D14  2C 00 FF FF */	cmpwi r0, -1
/* 80AE4D18  40 82 00 18 */	bne lbl_80AE4D30
/* 80AE4D1C  38 00 00 04 */	li r0, 4
/* 80AE4D20  B0 18 0E 30 */	sth r0, 0xe30(r24)
/* 80AE4D24  7F 03 C3 78 */	mr r3, r24
/* 80AE4D28  4B 66 54 FD */	bl evtChange__8daNpcT_cFv
/* 80AE4D2C  48 00 00 DC */	b lbl_80AE4E08
lbl_80AE4D30:
/* 80AE4D30  2C 00 00 00 */	cmpwi r0, 0
/* 80AE4D34  41 80 00 60 */	blt lbl_80AE4D94
/* 80AE4D38  38 00 00 01 */	li r0, 1
/* 80AE4D3C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80AE4D40  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80AE4D44  98 03 13 0A */	stb r0, 0x130a(r3)
/* 80AE4D48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE4D4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE4D50  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80AE4D54  38 80 13 01 */	li r4, 0x1301
/* 80AE4D58  4B 54 FC 35 */	bl onEventBit__11dSv_event_cFUs
/* 80AE4D5C  80 18 0F 9C */	lwz r0, 0xf9c(r24)
/* 80AE4D60  54 00 10 3A */	slwi r0, r0, 2
/* 80AE4D64  3C 60 80 AE */	lis r3, mSceneChangeNoTable__11daNpc_Sha_c@ha /* 0x80AE7134@ha */
/* 80AE4D68  38 63 71 34 */	addi r3, r3, mSceneChangeNoTable__11daNpc_Sha_c@l /* 0x80AE7134@l */
/* 80AE4D6C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AE4D70  3C 80 80 AE */	lis r4, lit_4185@ha /* 0x80AE6C74@ha */
/* 80AE4D74  C0 24 6C 74 */	lfs f1, lit_4185@l(r4)  /* 0x80AE6C74@l */
/* 80AE4D78  38 80 00 00 */	li r4, 0
/* 80AE4D7C  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 80AE4D80  7C 05 07 74 */	extsb r5, r0
/* 80AE4D84  38 C0 00 00 */	li r6, 0
/* 80AE4D88  38 E0 FF FF */	li r7, -1
/* 80AE4D8C  4B 54 23 E5 */	bl dStage_changeScene__FifUlScsi
/* 80AE4D90  48 00 00 78 */	b lbl_80AE4E08
lbl_80AE4D94:
/* 80AE4D94  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80AE4D98  28 00 00 01 */	cmplwi r0, 1
/* 80AE4D9C  40 82 00 6C */	bne lbl_80AE4E08
/* 80AE4DA0  3B C0 00 01 */	li r30, 1
/* 80AE4DA4  48 00 00 64 */	b lbl_80AE4E08
lbl_80AE4DA8:
/* 80AE4DA8  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80AE4DAC  28 00 00 01 */	cmplwi r0, 1
/* 80AE4DB0  40 82 00 58 */	bne lbl_80AE4E08
/* 80AE4DB4  3B C0 00 01 */	li r30, 1
/* 80AE4DB8  48 00 00 50 */	b lbl_80AE4E08
lbl_80AE4DBC:
/* 80AE4DBC  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80AE4DC0  2C 00 00 00 */	cmpwi r0, 0
/* 80AE4DC4  41 82 00 28 */	beq lbl_80AE4DEC
/* 80AE4DC8  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80AE4DCC  4B 66 09 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AE4DD0  38 00 00 00 */	li r0, 0
/* 80AE4DD4  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80AE4DD8  3C 60 80 AE */	lis r3, lit_4185@ha /* 0x80AE6C74@ha */
/* 80AE4DDC  C0 03 6C 74 */	lfs f0, lit_4185@l(r3)  /* 0x80AE6C74@l */
/* 80AE4DE0  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80AE4DE4  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80AE4DE8  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80AE4DEC:
/* 80AE4DEC  38 00 00 00 */	li r0, 0
/* 80AE4DF0  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80AE4DF4  38 78 0D C4 */	addi r3, r24, 0xdc4
/* 80AE4DF8  48 00 16 41 */	bl func_80AE6438
/* 80AE4DFC  2C 03 00 00 */	cmpwi r3, 0
/* 80AE4E00  40 82 00 08 */	bne lbl_80AE4E08
/* 80AE4E04  3B C0 00 01 */	li r30, 1
lbl_80AE4E08:
/* 80AE4E08  7F C3 F3 78 */	mr r3, r30
/* 80AE4E0C  39 61 00 60 */	addi r11, r1, 0x60
/* 80AE4E10  4B 87 D4 01 */	bl _restgpr_23
/* 80AE4E14  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AE4E18  7C 08 03 A6 */	mtlr r0
/* 80AE4E1C  38 21 00 60 */	addi r1, r1, 0x60
/* 80AE4E20  4E 80 00 20 */	blr 
