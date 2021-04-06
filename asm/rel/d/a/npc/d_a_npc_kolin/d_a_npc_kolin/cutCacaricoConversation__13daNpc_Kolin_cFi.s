lbl_805579DC:
/* 805579DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805579E0  7C 08 02 A6 */	mflr r0
/* 805579E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805579E8  39 61 00 20 */	addi r11, r1, 0x20
/* 805579EC  4B E0 A7 E9 */	bl _savegpr_27
/* 805579F0  7C 7E 1B 78 */	mr r30, r3
/* 805579F4  7C 9B 23 78 */	mr r27, r4
/* 805579F8  3B E0 00 00 */	li r31, 0
/* 805579FC  3B 80 FF FF */	li r28, -1
/* 80557A00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80557A04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80557A08  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80557A0C  7F A3 EB 78 */	mr r3, r29
/* 80557A10  3C A0 80 56 */	lis r5, d_a_npc_kolin__stringBase0@ha /* 0x8055A77C@ha */
/* 80557A14  38 A5 A7 7C */	addi r5, r5, d_a_npc_kolin__stringBase0@l /* 0x8055A77C@l */
/* 80557A18  38 A5 01 39 */	addi r5, r5, 0x139
/* 80557A1C  38 C0 00 03 */	li r6, 3
/* 80557A20  4B AF 06 CD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80557A24  28 03 00 00 */	cmplwi r3, 0
/* 80557A28  41 82 00 08 */	beq lbl_80557A30
/* 80557A2C  83 83 00 00 */	lwz r28, 0(r3)
lbl_80557A30:
/* 80557A30  7F A3 EB 78 */	mr r3, r29
/* 80557A34  7F 64 DB 78 */	mr r4, r27
/* 80557A38  4B AF 03 15 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80557A3C  2C 03 00 00 */	cmpwi r3, 0
/* 80557A40  41 82 00 48 */	beq lbl_80557A88
/* 80557A44  2C 1C 00 01 */	cmpwi r28, 1
/* 80557A48  41 82 00 40 */	beq lbl_80557A88
/* 80557A4C  40 80 00 3C */	bge lbl_80557A88
/* 80557A50  2C 1C 00 00 */	cmpwi r28, 0
/* 80557A54  40 80 00 08 */	bge lbl_80557A5C
/* 80557A58  48 00 00 30 */	b lbl_80557A88
lbl_80557A5C:
/* 80557A5C  7F C3 F3 78 */	mr r3, r30
/* 80557A60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80557A64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80557A68  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80557A6C  4B AC 2C A5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80557A70  B0 7E 0D C8 */	sth r3, 0xdc8(r30)
/* 80557A74  A8 1E 0D D8 */	lha r0, 0xdd8(r30)
/* 80557A78  2C 00 00 01 */	cmpwi r0, 1
/* 80557A7C  40 82 00 0C */	bne lbl_80557A88
/* 80557A80  38 00 00 00 */	li r0, 0
/* 80557A84  B0 1E 0D D8 */	sth r0, 0xdd8(r30)
lbl_80557A88:
/* 80557A88  2C 1C 00 01 */	cmpwi r28, 1
/* 80557A8C  41 82 00 EC */	beq lbl_80557B78
/* 80557A90  40 80 01 28 */	bge lbl_80557BB8
/* 80557A94  2C 1C 00 00 */	cmpwi r28, 0
/* 80557A98  40 80 00 08 */	bge lbl_80557AA0
/* 80557A9C  48 00 01 1C */	b lbl_80557BB8
lbl_80557AA0:
/* 80557AA0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80557AA4  2C 00 00 01 */	cmpwi r0, 1
/* 80557AA8  41 82 00 2C */	beq lbl_80557AD4
/* 80557AAC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80557AB0  4B BE DC 4D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80557AB4  38 00 00 00 */	li r0, 0
/* 80557AB8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80557ABC  3C 60 80 56 */	lis r3, lit_4110@ha /* 0x8055A6A0@ha */
/* 80557AC0  C0 03 A6 A0 */	lfs f0, lit_4110@l(r3)  /* 0x8055A6A0@l */
/* 80557AC4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80557AC8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80557ACC  38 00 00 01 */	li r0, 1
/* 80557AD0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80557AD4:
/* 80557AD4  38 00 00 00 */	li r0, 0
/* 80557AD8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80557ADC  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 80557AE0  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80557AE4  7C 04 00 00 */	cmpw r4, r0
/* 80557AE8  41 82 00 88 */	beq lbl_80557B70
/* 80557AEC  7F C3 F3 78 */	mr r3, r30
/* 80557AF0  38 A0 00 0D */	li r5, 0xd
/* 80557AF4  38 C0 00 0A */	li r6, 0xa
/* 80557AF8  38 E0 00 0F */	li r7, 0xf
/* 80557AFC  39 00 00 00 */	li r8, 0
/* 80557B00  4B BF 3B 49 */	bl step__8daNpcT_cFsiiii
/* 80557B04  2C 03 00 00 */	cmpwi r3, 0
/* 80557B08  41 82 00 B0 */	beq lbl_80557BB8
/* 80557B0C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80557B10  2C 00 00 0D */	cmpwi r0, 0xd
/* 80557B14  41 82 00 28 */	beq lbl_80557B3C
/* 80557B18  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80557B1C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80557B20  4B BE DD 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80557B24  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80557B28  38 00 00 0D */	li r0, 0xd
/* 80557B2C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80557B30  3C 60 80 56 */	lis r3, lit_4742@ha /* 0x8055A6B8@ha */
/* 80557B34  C0 03 A6 B8 */	lfs f0, lit_4742@l(r3)  /* 0x8055A6B8@l */
/* 80557B38  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80557B3C:
/* 80557B3C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80557B40  2C 00 00 01 */	cmpwi r0, 1
/* 80557B44  41 82 00 74 */	beq lbl_80557BB8
/* 80557B48  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80557B4C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80557B50  4B BE DD 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80557B54  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80557B58  38 00 00 01 */	li r0, 1
/* 80557B5C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80557B60  3C 60 80 56 */	lis r3, lit_4742@ha /* 0x8055A6B8@ha */
/* 80557B64  C0 03 A6 B8 */	lfs f0, lit_4742@l(r3)  /* 0x8055A6B8@l */
/* 80557B68  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80557B6C  48 00 00 4C */	b lbl_80557BB8
lbl_80557B70:
/* 80557B70  3B E0 00 01 */	li r31, 1
/* 80557B74  48 00 00 44 */	b lbl_80557BB8
lbl_80557B78:
/* 80557B78  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80557B7C  2C 00 00 01 */	cmpwi r0, 1
/* 80557B80  41 82 00 2C */	beq lbl_80557BAC
/* 80557B84  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80557B88  4B BE DB 75 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80557B8C  38 00 00 00 */	li r0, 0
/* 80557B90  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80557B94  3C 60 80 56 */	lis r3, lit_4110@ha /* 0x8055A6A0@ha */
/* 80557B98  C0 03 A6 A0 */	lfs f0, lit_4110@l(r3)  /* 0x8055A6A0@l */
/* 80557B9C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80557BA0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80557BA4  38 00 00 01 */	li r0, 1
/* 80557BA8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80557BAC:
/* 80557BAC  38 00 00 00 */	li r0, 0
/* 80557BB0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80557BB4  3B E0 00 01 */	li r31, 1
lbl_80557BB8:
/* 80557BB8  7F E3 FB 78 */	mr r3, r31
/* 80557BBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80557BC0  4B E0 A6 61 */	bl _restgpr_27
/* 80557BC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80557BC8  7C 08 03 A6 */	mtlr r0
/* 80557BCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80557BD0  4E 80 00 20 */	blr 
