lbl_80954A5C:
/* 80954A5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80954A60  7C 08 02 A6 */	mflr r0
/* 80954A64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80954A68  39 61 00 20 */	addi r11, r1, 0x20
/* 80954A6C  4B A0 D7 69 */	bl _savegpr_27
/* 80954A70  7C 7D 1B 78 */	mr r29, r3
/* 80954A74  7C 9B 23 78 */	mr r27, r4
/* 80954A78  3B E0 00 00 */	li r31, 0
/* 80954A7C  3B C0 FF FF */	li r30, -1
/* 80954A80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80954A84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80954A88  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80954A8C  7F 83 E3 78 */	mr r3, r28
/* 80954A90  3C A0 80 95 */	lis r5, d_a_npc_aru__stringBase0@ha /* 0x8095781C@ha */
/* 80954A94  38 A5 78 1C */	addi r5, r5, d_a_npc_aru__stringBase0@l /* 0x8095781C@l */
/* 80954A98  38 A5 00 C8 */	addi r5, r5, 0xc8
/* 80954A9C  38 C0 00 03 */	li r6, 3
/* 80954AA0  4B 6F 36 4D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80954AA4  28 03 00 00 */	cmplwi r3, 0
/* 80954AA8  41 82 00 08 */	beq lbl_80954AB0
/* 80954AAC  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80954AB0:
/* 80954AB0  7F 83 E3 78 */	mr r3, r28
/* 80954AB4  7F 64 DB 78 */	mr r4, r27
/* 80954AB8  4B 6F 32 95 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80954ABC  2C 03 00 00 */	cmpwi r3, 0
/* 80954AC0  41 82 00 AC */	beq lbl_80954B6C
/* 80954AC4  2C 1E 00 01 */	cmpwi r30, 1
/* 80954AC8  41 82 00 44 */	beq lbl_80954B0C
/* 80954ACC  40 80 00 A0 */	bge lbl_80954B6C
/* 80954AD0  2C 1E 00 00 */	cmpwi r30, 0
/* 80954AD4  40 80 00 08 */	bge lbl_80954ADC
/* 80954AD8  48 00 00 94 */	b lbl_80954B6C
lbl_80954ADC:
/* 80954ADC  7F A3 EB 78 */	mr r3, r29
/* 80954AE0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80954AE4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80954AE8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80954AEC  4B 6C 5C 25 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80954AF0  B0 7D 0D C8 */	sth r3, 0xdc8(r29)
/* 80954AF4  A8 1D 0D D8 */	lha r0, 0xdd8(r29)
/* 80954AF8  2C 00 00 01 */	cmpwi r0, 1
/* 80954AFC  40 82 00 70 */	bne lbl_80954B6C
/* 80954B00  38 00 00 00 */	li r0, 0
/* 80954B04  B0 1D 0D D8 */	sth r0, 0xdd8(r29)
/* 80954B08  48 00 00 64 */	b lbl_80954B6C
lbl_80954B0C:
/* 80954B0C  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80954B10  2C 00 00 0C */	cmpwi r0, 0xc
/* 80954B14  41 82 00 28 */	beq lbl_80954B3C
/* 80954B18  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80954B1C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80954B20  4B 7F 0D 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80954B24  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80954B28  38 00 00 0C */	li r0, 0xc
/* 80954B2C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80954B30  3C 60 80 95 */	lis r3, lit_4804@ha /* 0x809577B4@ha */
/* 80954B34  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)  /* 0x809577B4@l */
/* 80954B38  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80954B3C:
/* 80954B3C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80954B40  2C 00 00 00 */	cmpwi r0, 0
/* 80954B44  41 82 00 28 */	beq lbl_80954B6C
/* 80954B48  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80954B4C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80954B50  4B 7F 0D 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80954B54  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80954B58  38 00 00 00 */	li r0, 0
/* 80954B5C  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80954B60  3C 60 80 95 */	lis r3, lit_4804@ha /* 0x809577B4@ha */
/* 80954B64  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)  /* 0x809577B4@l */
/* 80954B68  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80954B6C:
/* 80954B6C  2C 1E 00 01 */	cmpwi r30, 1
/* 80954B70  41 82 00 80 */	beq lbl_80954BF0
/* 80954B74  40 80 00 7C */	bge lbl_80954BF0
/* 80954B78  2C 1E 00 00 */	cmpwi r30, 0
/* 80954B7C  40 80 00 08 */	bge lbl_80954B84
/* 80954B80  48 00 00 70 */	b lbl_80954BF0
lbl_80954B84:
/* 80954B84  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80954B88  2C 00 00 01 */	cmpwi r0, 1
/* 80954B8C  41 82 00 2C */	beq lbl_80954BB8
/* 80954B90  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80954B94  4B 7F 0B 69 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80954B98  38 00 00 00 */	li r0, 0
/* 80954B9C  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80954BA0  3C 60 80 95 */	lis r3, lit_4100@ha /* 0x80957798@ha */
/* 80954BA4  C0 03 77 98 */	lfs f0, lit_4100@l(r3)  /* 0x80957798@l */
/* 80954BA8  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80954BAC  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80954BB0  38 00 00 01 */	li r0, 1
/* 80954BB4  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80954BB8:
/* 80954BB8  38 00 00 00 */	li r0, 0
/* 80954BBC  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80954BC0  A8 9D 0D C8 */	lha r4, 0xdc8(r29)
/* 80954BC4  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80954BC8  7C 04 00 00 */	cmpw r4, r0
/* 80954BCC  40 82 00 0C */	bne lbl_80954BD8
/* 80954BD0  3B E0 00 01 */	li r31, 1
/* 80954BD4  48 00 00 1C */	b lbl_80954BF0
lbl_80954BD8:
/* 80954BD8  7F A3 EB 78 */	mr r3, r29
/* 80954BDC  38 A0 00 0C */	li r5, 0xc
/* 80954BE0  38 C0 00 0B */	li r6, 0xb
/* 80954BE4  38 E0 00 0F */	li r7, 0xf
/* 80954BE8  39 00 00 00 */	li r8, 0
/* 80954BEC  4B 7F 6A 5D */	bl step__8daNpcT_cFsiiii
lbl_80954BF0:
/* 80954BF0  7F E3 FB 78 */	mr r3, r31
/* 80954BF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80954BF8  4B A0 D6 29 */	bl _restgpr_27
/* 80954BFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80954C00  7C 08 03 A6 */	mtlr r0
/* 80954C04  38 21 00 20 */	addi r1, r1, 0x20
/* 80954C08  4E 80 00 20 */	blr 
