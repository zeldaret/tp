lbl_809658F8:
/* 809658F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809658FC  7C 08 02 A6 */	mflr r0
/* 80965900  90 01 00 24 */	stw r0, 0x24(r1)
/* 80965904  39 61 00 20 */	addi r11, r1, 0x20
/* 80965908  4B 9F C8 C9 */	bl _savegpr_26
/* 8096590C  7C 7C 1B 78 */	mr r28, r3
/* 80965910  7C 9A 23 78 */	mr r26, r4
/* 80965914  3C 60 80 96 */	lis r3, m__18daNpc_Bans_Param_c@ha /* 0x80967E20@ha */
/* 80965918  3B E3 7E 20 */	addi r31, r3, m__18daNpc_Bans_Param_c@l /* 0x80967E20@l */
/* 8096591C  3B C0 00 00 */	li r30, 0
/* 80965920  3B A0 FF FF */	li r29, -1
/* 80965924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80965928  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096592C  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80965930  7F 63 DB 78 */	mr r3, r27
/* 80965934  3C A0 80 96 */	lis r5, d_a_npc_bans__stringBase0@ha /* 0x80967F6C@ha */
/* 80965938  38 A5 7F 6C */	addi r5, r5, d_a_npc_bans__stringBase0@l /* 0x80967F6C@l */
/* 8096593C  38 A5 00 8A */	addi r5, r5, 0x8a
/* 80965940  38 C0 00 03 */	li r6, 3
/* 80965944  4B 6E 27 A9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80965948  28 03 00 00 */	cmplwi r3, 0
/* 8096594C  41 82 00 08 */	beq lbl_80965954
/* 80965950  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80965954:
/* 80965954  7F 63 DB 78 */	mr r3, r27
/* 80965958  7F 44 D3 78 */	mr r4, r26
/* 8096595C  3C A0 80 96 */	lis r5, d_a_npc_bans__stringBase0@ha /* 0x80967F6C@ha */
/* 80965960  38 A5 7F 6C */	addi r5, r5, d_a_npc_bans__stringBase0@l /* 0x80967F6C@l */
/* 80965964  38 A5 00 8E */	addi r5, r5, 0x8e
/* 80965968  38 C0 00 03 */	li r6, 3
/* 8096596C  4B 6E 27 81 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80965970  7F 63 DB 78 */	mr r3, r27
/* 80965974  7F 44 D3 78 */	mr r4, r26
/* 80965978  4B 6E 23 D5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8096597C  2C 03 00 00 */	cmpwi r3, 0
/* 80965980  41 82 01 1C */	beq lbl_80965A9C
/* 80965984  2C 1D 00 02 */	cmpwi r29, 2
/* 80965988  41 82 01 14 */	beq lbl_80965A9C
/* 8096598C  40 80 00 10 */	bge lbl_8096599C
/* 80965990  2C 1D 00 01 */	cmpwi r29, 1
/* 80965994  40 80 00 14 */	bge lbl_809659A8
/* 80965998  48 00 01 04 */	b lbl_80965A9C
lbl_8096599C:
/* 8096599C  2C 1D 00 04 */	cmpwi r29, 4
/* 809659A0  40 80 00 FC */	bge lbl_80965A9C
/* 809659A4  48 00 00 7C */	b lbl_80965A20
lbl_809659A8:
/* 809659A8  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 809659AC  2C 00 00 03 */	cmpwi r0, 3
/* 809659B0  41 82 00 24 */	beq lbl_809659D4
/* 809659B4  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 809659B8  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 809659BC  4B 7D FE DD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809659C0  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 809659C4  38 00 00 03 */	li r0, 3
/* 809659C8  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 809659CC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 809659D0  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_809659D4:
/* 809659D4  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 809659D8  2C 00 00 12 */	cmpwi r0, 0x12
/* 809659DC  41 82 00 24 */	beq lbl_80965A00
/* 809659E0  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 809659E4  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 809659E8  4B 7D FE B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809659EC  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 809659F0  38 00 00 12 */	li r0, 0x12
/* 809659F4  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 809659F8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 809659FC  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80965A00:
/* 80965A00  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80965A04  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80965A08  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80965A0C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80965A10  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80965A14  38 60 00 39 */	li r3, 0x39
/* 80965A18  4B 7E 70 D5 */	bl daNpcT_onTmpBit__FUl
/* 80965A1C  48 00 00 80 */	b lbl_80965A9C
lbl_80965A20:
/* 80965A20  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80965A24  2C 00 00 03 */	cmpwi r0, 3
/* 80965A28  41 82 00 24 */	beq lbl_80965A4C
/* 80965A2C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80965A30  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80965A34  4B 7D FE 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965A38  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80965A3C  38 00 00 03 */	li r0, 3
/* 80965A40  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80965A44  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80965A48  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80965A4C:
/* 80965A4C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80965A50  2C 00 00 13 */	cmpwi r0, 0x13
/* 80965A54  41 82 00 24 */	beq lbl_80965A78
/* 80965A58  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80965A5C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80965A60  4B 7D FE 39 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965A64  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80965A68  38 00 00 13 */	li r0, 0x13
/* 80965A6C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80965A70  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80965A74  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80965A78:
/* 80965A78  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80965A7C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80965A80  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80965A84  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80965A88  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80965A8C  38 00 00 00 */	li r0, 0
/* 80965A90  98 1C 12 66 */	stb r0, 0x1266(r28)
/* 80965A94  38 60 00 39 */	li r3, 0x39
/* 80965A98  4B 7E 70 95 */	bl daNpcT_offTmpBit__FUl
lbl_80965A9C:
/* 80965A9C  2C 1D 00 02 */	cmpwi r29, 2
/* 80965AA0  41 82 02 10 */	beq lbl_80965CB0
/* 80965AA4  40 80 00 10 */	bge lbl_80965AB4
/* 80965AA8  2C 1D 00 01 */	cmpwi r29, 1
/* 80965AAC  40 80 00 14 */	bge lbl_80965AC0
/* 80965AB0  48 00 02 00 */	b lbl_80965CB0
lbl_80965AB4:
/* 80965AB4  2C 1D 00 04 */	cmpwi r29, 4
/* 80965AB8  40 80 01 F8 */	bge lbl_80965CB0
/* 80965ABC  48 00 01 00 */	b lbl_80965BBC
lbl_80965AC0:
/* 80965AC0  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80965AC4  2C 00 00 00 */	cmpwi r0, 0
/* 80965AC8  41 82 00 24 */	beq lbl_80965AEC
/* 80965ACC  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80965AD0  4B 7D FC 2D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80965AD4  38 00 00 00 */	li r0, 0
/* 80965AD8  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80965ADC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80965AE0  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80965AE4  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80965AE8  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80965AEC:
/* 80965AEC  38 00 00 00 */	li r0, 0
/* 80965AF0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80965AF4  38 7C 12 3C */	addi r3, r28, 0x123c
/* 80965AF8  4B 7D FC 11 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80965AFC  7C 64 1B 78 */	mr r4, r3
/* 80965B00  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80965B04  2C 00 00 12 */	cmpwi r0, 0x12
/* 80965B08  40 82 00 AC */	bne lbl_80965BB4
/* 80965B0C  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 80965B10  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80965B14  4B 90 B0 F1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80965B18  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 80965B1C  38 7F 00 00 */	addi r3, r31, 0
/* 80965B20  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80965B24  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80965B28  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80965B2C  4B 7D FE F9 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80965B30  2C 03 00 00 */	cmpwi r3, 0
/* 80965B34  41 82 01 7C */	beq lbl_80965CB0
/* 80965B38  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80965B3C  2C 00 00 02 */	cmpwi r0, 2
/* 80965B40  41 82 00 24 */	beq lbl_80965B64
/* 80965B44  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80965B48  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80965B4C  4B 7D FD 4D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965B50  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80965B54  38 00 00 02 */	li r0, 2
/* 80965B58  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80965B5C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80965B60  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80965B64:
/* 80965B64  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80965B68  2C 00 00 08 */	cmpwi r0, 8
/* 80965B6C  41 82 00 24 */	beq lbl_80965B90
/* 80965B70  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80965B74  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80965B78  4B 7D FD 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965B7C  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80965B80  38 00 00 08 */	li r0, 8
/* 80965B84  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80965B88  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80965B8C  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80965B90:
/* 80965B90  7F 83 E3 78 */	mr r3, r28
/* 80965B94  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80965B98  4B 7E 4E 81 */	bl setAngle__8daNpcT_cFs
/* 80965B9C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80965BA0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80965BA4  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80965BA8  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80965BAC  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80965BB0  48 00 01 00 */	b lbl_80965CB0
lbl_80965BB4:
/* 80965BB4  3B C0 00 01 */	li r30, 1
/* 80965BB8  48 00 00 F8 */	b lbl_80965CB0
lbl_80965BBC:
/* 80965BBC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80965BC0  2C 00 00 00 */	cmpwi r0, 0
/* 80965BC4  41 82 00 24 */	beq lbl_80965BE8
/* 80965BC8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80965BCC  4B 7D FB 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80965BD0  38 00 00 00 */	li r0, 0
/* 80965BD4  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80965BD8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80965BDC  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80965BE0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80965BE4  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80965BE8:
/* 80965BE8  38 00 00 00 */	li r0, 0
/* 80965BEC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80965BF0  38 7C 12 3C */	addi r3, r28, 0x123c
/* 80965BF4  4B 7D FB 15 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80965BF8  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80965BFC  2C 00 00 13 */	cmpwi r0, 0x13
/* 80965C00  40 82 00 AC */	bne lbl_80965CAC
/* 80965C04  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80965C08  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80965C0C  4B 90 AF F9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80965C10  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 80965C14  38 7F 00 00 */	addi r3, r31, 0
/* 80965C18  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80965C1C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80965C20  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80965C24  4B 7D FE 01 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80965C28  2C 03 00 00 */	cmpwi r3, 0
/* 80965C2C  41 82 00 84 */	beq lbl_80965CB0
/* 80965C30  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80965C34  2C 00 00 03 */	cmpwi r0, 3
/* 80965C38  41 82 00 24 */	beq lbl_80965C5C
/* 80965C3C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80965C40  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80965C44  4B 7D FC 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965C48  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80965C4C  38 00 00 03 */	li r0, 3
/* 80965C50  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80965C54  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80965C58  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80965C5C:
/* 80965C5C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80965C60  2C 00 00 07 */	cmpwi r0, 7
/* 80965C64  41 82 00 24 */	beq lbl_80965C88
/* 80965C68  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80965C6C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80965C70  4B 7D FC 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80965C74  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80965C78  38 00 00 07 */	li r0, 7
/* 80965C7C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80965C80  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80965C84  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80965C88:
/* 80965C88  7F 83 E3 78 */	mr r3, r28
/* 80965C8C  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80965C90  4B 7E 4D 89 */	bl setAngle__8daNpcT_cFs
/* 80965C94  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80965C98  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80965C9C  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80965CA0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80965CA4  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80965CA8  48 00 00 08 */	b lbl_80965CB0
lbl_80965CAC:
/* 80965CAC  3B C0 00 01 */	li r30, 1
lbl_80965CB0:
/* 80965CB0  7F C3 F3 78 */	mr r3, r30
/* 80965CB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80965CB8  4B 9F C5 65 */	bl _restgpr_26
/* 80965CBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80965CC0  7C 08 03 A6 */	mtlr r0
/* 80965CC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80965CC8  4E 80 00 20 */	blr 
