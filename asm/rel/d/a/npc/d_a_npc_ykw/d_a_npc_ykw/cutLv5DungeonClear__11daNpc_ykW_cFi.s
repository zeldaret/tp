lbl_80B62AF8:
/* 80B62AF8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80B62AFC  7C 08 02 A6 */	mflr r0
/* 80B62B00  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B62B04  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80B62B08  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80B62B0C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80B62B10  4B 7F F6 A9 */	bl _savegpr_20
/* 80B62B14  7C 7F 1B 78 */	mr r31, r3
/* 80B62B18  7C 95 23 78 */	mr r21, r4
/* 80B62B1C  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B62B20  3B A3 7C 38 */	addi r29, r3, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B62B24  3B 60 00 00 */	li r27, 0
/* 80B62B28  3B 40 FF FF */	li r26, -1
/* 80B62B2C  3B 20 00 00 */	li r25, 0
/* 80B62B30  3B 00 00 00 */	li r24, 0
/* 80B62B34  3A E0 00 00 */	li r23, 0
/* 80B62B38  8A DF 10 70 */	lbz r22, 0x1070(r31)
/* 80B62B3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B62B40  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B62B44  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80B62B48  7F 83 E3 78 */	mr r3, r28
/* 80B62B4C  3C A0 80 B6 */	lis r5, d_a_npc_ykw__stringBase0@ha /* 0x80B67E68@ha */
/* 80B62B50  38 A5 7E 68 */	addi r5, r5, d_a_npc_ykw__stringBase0@l /* 0x80B67E68@l */
/* 80B62B54  38 A5 00 B4 */	addi r5, r5, 0xb4
/* 80B62B58  38 C0 00 03 */	li r6, 3
/* 80B62B5C  4B 4E 55 91 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B62B60  28 03 00 00 */	cmplwi r3, 0
/* 80B62B64  41 82 00 08 */	beq lbl_80B62B6C
/* 80B62B68  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B62B6C:
/* 80B62B6C  7F 83 E3 78 */	mr r3, r28
/* 80B62B70  7E A4 AB 78 */	mr r4, r21
/* 80B62B74  3C A0 80 B6 */	lis r5, d_a_npc_ykw__stringBase0@ha /* 0x80B67E68@ha */
/* 80B62B78  38 A5 7E 68 */	addi r5, r5, d_a_npc_ykw__stringBase0@l /* 0x80B67E68@l */
/* 80B62B7C  38 A5 00 BE */	addi r5, r5, 0xbe
/* 80B62B80  38 C0 00 03 */	li r6, 3
/* 80B62B84  4B 4E 55 69 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B62B88  28 03 00 00 */	cmplwi r3, 0
/* 80B62B8C  41 82 00 08 */	beq lbl_80B62B94
/* 80B62B90  83 23 00 00 */	lwz r25, 0(r3)
lbl_80B62B94:
/* 80B62B94  7F 83 E3 78 */	mr r3, r28
/* 80B62B98  7E A4 AB 78 */	mr r4, r21
/* 80B62B9C  3C A0 80 B6 */	lis r5, d_a_npc_ykw__stringBase0@ha /* 0x80B67E68@ha */
/* 80B62BA0  38 A5 7E 68 */	addi r5, r5, d_a_npc_ykw__stringBase0@l /* 0x80B67E68@l */
/* 80B62BA4  38 A5 00 C4 */	addi r5, r5, 0xc4
/* 80B62BA8  38 C0 00 03 */	li r6, 3
/* 80B62BAC  4B 4E 55 41 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B62BB0  28 03 00 00 */	cmplwi r3, 0
/* 80B62BB4  41 82 00 08 */	beq lbl_80B62BBC
/* 80B62BB8  83 03 00 00 */	lwz r24, 0(r3)
lbl_80B62BBC:
/* 80B62BBC  7F 83 E3 78 */	mr r3, r28
/* 80B62BC0  7E A4 AB 78 */	mr r4, r21
/* 80B62BC4  3C A0 80 B6 */	lis r5, d_a_npc_ykw__stringBase0@ha /* 0x80B67E68@ha */
/* 80B62BC8  38 A5 7E 68 */	addi r5, r5, d_a_npc_ykw__stringBase0@l /* 0x80B67E68@l */
/* 80B62BCC  38 A5 00 B8 */	addi r5, r5, 0xb8
/* 80B62BD0  38 C0 00 03 */	li r6, 3
/* 80B62BD4  4B 4E 55 19 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B62BD8  28 03 00 00 */	cmplwi r3, 0
/* 80B62BDC  41 82 00 08 */	beq lbl_80B62BE4
/* 80B62BE0  82 E3 00 00 */	lwz r23, 0(r3)
lbl_80B62BE4:
/* 80B62BE4  80 7D 01 88 */	lwz r3, 0x188(r29)
/* 80B62BE8  80 1D 01 8C */	lwz r0, 0x18c(r29)
/* 80B62BEC  90 61 00 34 */	stw r3, 0x34(r1)
/* 80B62BF0  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B62BF4  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80B62BF8  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B62BFC  4B 5E 2B 0D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B62C00  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B62C04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B62C08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B62C0C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B62C10  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 80B62C14  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 80B62C18  38 00 00 00 */	li r0, 0
/* 80B62C1C  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 80B62C20  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80B62C24  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80B62C28  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80B62C2C  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80B62C30  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80B62C34  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80B62C38  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80B62C3C  7F 83 E3 78 */	mr r3, r28
/* 80B62C40  7E A4 AB 78 */	mr r4, r21
/* 80B62C44  4B 4E 51 09 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B62C48  2C 03 00 00 */	cmpwi r3, 0
/* 80B62C4C  41 82 05 54 */	beq lbl_80B631A0
/* 80B62C50  28 1A 00 63 */	cmplwi r26, 0x63
/* 80B62C54  41 81 05 4C */	bgt lbl_80B631A0
/* 80B62C58  3C 60 80 B7 */	lis r3, lit_6524@ha /* 0x80B689FC@ha */
/* 80B62C5C  38 63 89 FC */	addi r3, r3, lit_6524@l /* 0x80B689FC@l */
/* 80B62C60  57 40 10 3A */	slwi r0, r26, 2
/* 80B62C64  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B62C68  7C 09 03 A6 */	mtctr r0
/* 80B62C6C  4E 80 04 20 */	bctr 
lbl_80B62C70:
/* 80B62C70  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B62C74  2C 00 00 0C */	cmpwi r0, 0xc
/* 80B62C78  41 82 00 24 */	beq lbl_80B62C9C
/* 80B62C7C  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 80B62C80  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B62C84  4B 5E 2C 15 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62C88  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 80B62C8C  38 00 00 0C */	li r0, 0xc
/* 80B62C90  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B62C94  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B62C98  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B62C9C:
/* 80B62C9C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B62CA0  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B62CA4  41 82 00 24 */	beq lbl_80B62CC8
/* 80B62CA8  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80B62CAC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B62CB0  4B 5E 2B E9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62CB4  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80B62CB8  38 00 00 0D */	li r0, 0xd
/* 80B62CBC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B62CC0  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B62CC4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B62CC8:
/* 80B62CC8  38 00 FF FF */	li r0, -1
/* 80B62CCC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B62CD0  38 00 00 00 */	li r0, 0
/* 80B62CD4  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80B62CD8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80B62CDC  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80B62CE0  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80B62CE4  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B62CE8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B62CEC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B62CF0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B62CF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B62CF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B62CFC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B62D00  38 81 00 60 */	addi r4, r1, 0x60
/* 80B62D04  38 A0 80 00 */	li r5, -32768
/* 80B62D08  38 C0 00 00 */	li r6, 0
/* 80B62D0C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B62D10  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B62D14  7D 89 03 A6 */	mtctr r12
/* 80B62D18  4E 80 04 21 */	bctrl 
/* 80B62D1C  38 00 00 00 */	li r0, 0
/* 80B62D20  98 1F 10 70 */	stb r0, 0x1070(r31)
/* 80B62D24  8A DF 10 70 */	lbz r22, 0x1070(r31)
/* 80B62D28  38 00 00 01 */	li r0, 1
/* 80B62D2C  98 1F 10 68 */	stb r0, 0x1068(r31)
/* 80B62D30  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80B62D34  4B 5E 29 D5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B62D38  28 03 00 00 */	cmplwi r3, 0
/* 80B62D3C  41 82 04 64 */	beq lbl_80B631A0
/* 80B62D40  38 00 00 01 */	li r0, 1
/* 80B62D44  98 03 0F CE */	stb r0, 0xfce(r3)
/* 80B62D48  48 00 04 58 */	b lbl_80B631A0
lbl_80B62D4C:
/* 80B62D4C  38 60 00 0B */	li r3, 0xb
/* 80B62D50  4B 5E 9D DD */	bl daNpcT_offTmpBit__FUl
/* 80B62D54  38 60 00 0C */	li r3, 0xc
/* 80B62D58  4B 5E 9D D5 */	bl daNpcT_offTmpBit__FUl
/* 80B62D5C  38 60 00 0D */	li r3, 0xd
/* 80B62D60  4B 5E 9D CD */	bl daNpcT_offTmpBit__FUl
lbl_80B62D64:
/* 80B62D64  7F E3 FB 78 */	mr r3, r31
/* 80B62D68  38 80 01 F9 */	li r4, 0x1f9
/* 80B62D6C  38 A1 00 34 */	addi r5, r1, 0x34
/* 80B62D70  4B 5E 8E 81 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B62D74  48 00 04 2C */	b lbl_80B631A0
lbl_80B62D78:
/* 80B62D78  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B62D7C  2C 00 00 00 */	cmpwi r0, 0
/* 80B62D80  41 82 00 24 */	beq lbl_80B62DA4
/* 80B62D84  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 80B62D88  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B62D8C  4B 5E 2B 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62D90  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 80B62D94  38 00 00 00 */	li r0, 0
/* 80B62D98  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B62D9C  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80B62DA0  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B62DA4:
/* 80B62DA4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B62DA8  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B62DAC  41 82 03 F4 */	beq lbl_80B631A0
/* 80B62DB0  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 80B62DB4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B62DB8  4B 5E 2A E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62DBC  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 80B62DC0  38 00 00 0F */	li r0, 0xf
/* 80B62DC4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B62DC8  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80B62DCC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B62DD0  48 00 03 D0 */	b lbl_80B631A0
lbl_80B62DD4:
/* 80B62DD4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B62DD8  2C 00 00 07 */	cmpwi r0, 7
/* 80B62DDC  41 82 00 24 */	beq lbl_80B62E00
/* 80B62DE0  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 80B62DE4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B62DE8  4B 5E 2A B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62DEC  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 80B62DF0  38 00 00 07 */	li r0, 7
/* 80B62DF4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B62DF8  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B62DFC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B62E00:
/* 80B62E00  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B62E04  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B62E08  41 82 03 98 */	beq lbl_80B631A0
/* 80B62E0C  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 80B62E10  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B62E14  4B 5E 2A 85 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62E18  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 80B62E1C  38 00 00 10 */	li r0, 0x10
/* 80B62E20  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B62E24  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B62E28  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B62E2C  48 00 03 74 */	b lbl_80B631A0
lbl_80B62E30:
/* 80B62E30  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B62E34  2C 00 00 07 */	cmpwi r0, 7
/* 80B62E38  41 82 00 24 */	beq lbl_80B62E5C
/* 80B62E3C  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 80B62E40  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B62E44  4B 5E 2A 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62E48  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 80B62E4C  38 00 00 07 */	li r0, 7
/* 80B62E50  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B62E54  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80B62E58  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B62E5C:
/* 80B62E5C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B62E60  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B62E64  41 82 03 3C */	beq lbl_80B631A0
/* 80B62E68  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 80B62E6C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B62E70  4B 5E 2A 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62E74  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 80B62E78  38 00 00 11 */	li r0, 0x11
/* 80B62E7C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B62E80  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80B62E84  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B62E88  48 00 03 18 */	b lbl_80B631A0
lbl_80B62E8C:
/* 80B62E8C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B62E90  2C 00 00 08 */	cmpwi r0, 8
/* 80B62E94  41 82 00 24 */	beq lbl_80B62EB8
/* 80B62E98  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 80B62E9C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B62EA0  4B 5E 29 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62EA4  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 80B62EA8  38 00 00 08 */	li r0, 8
/* 80B62EAC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B62EB0  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80B62EB4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B62EB8:
/* 80B62EB8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B62EBC  2C 00 00 17 */	cmpwi r0, 0x17
/* 80B62EC0  41 82 00 24 */	beq lbl_80B62EE4
/* 80B62EC4  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 80B62EC8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B62ECC  4B 5E 29 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62ED0  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 80B62ED4  38 00 00 17 */	li r0, 0x17
/* 80B62ED8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B62EDC  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80B62EE0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B62EE4:
/* 80B62EE4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050109@ha */
/* 80B62EE8  38 03 01 09 */	addi r0, r3, 0x0109 /* 0x00050109@l */
/* 80B62EEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B62EF0  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B62EF4  38 81 00 18 */	addi r4, r1, 0x18
/* 80B62EF8  38 A0 FF FF */	li r5, -1
/* 80B62EFC  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80B62F00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B62F04  7D 89 03 A6 */	mtctr r12
/* 80B62F08  4E 80 04 21 */	bctrl 
/* 80B62F0C  48 00 02 94 */	b lbl_80B631A0
lbl_80B62F10:
/* 80B62F10  92 FF 0D C4 */	stw r23, 0xdc4(r31)
/* 80B62F14  48 00 02 8C */	b lbl_80B631A0
lbl_80B62F18:
/* 80B62F18  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B62F1C  2C 00 00 06 */	cmpwi r0, 6
/* 80B62F20  41 82 00 24 */	beq lbl_80B62F44
/* 80B62F24  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 80B62F28  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B62F2C  4B 5E 29 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62F30  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 80B62F34  38 00 00 06 */	li r0, 6
/* 80B62F38  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B62F3C  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80B62F40  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B62F44:
/* 80B62F44  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B62F48  2C 00 00 0E */	cmpwi r0, 0xe
/* 80B62F4C  41 82 02 54 */	beq lbl_80B631A0
/* 80B62F50  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 80B62F54  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B62F58  4B 5E 29 41 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62F5C  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 80B62F60  38 00 00 0E */	li r0, 0xe
/* 80B62F64  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B62F68  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80B62F6C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B62F70  48 00 02 30 */	b lbl_80B631A0
lbl_80B62F74:
/* 80B62F74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B62F78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B62F7C  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80B62F80  7C 00 07 74 */	extsb r0, r0
/* 80B62F84  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80B62F88  7C 63 02 14 */	add r3, r3, r0
/* 80B62F8C  80 83 5D 74 */	lwz r4, 0x5d74(r3)
/* 80B62F90  38 64 00 E4 */	addi r3, r4, 0xe4
/* 80B62F94  38 84 00 D8 */	addi r4, r4, 0xd8
/* 80B62F98  4B 70 DC 6D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B62F9C  B0 7F 10 58 */	sth r3, 0x1058(r31)
/* 80B62FA0  38 00 00 06 */	li r0, 6
/* 80B62FA4  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80B62FA8  38 00 00 00 */	li r0, 0
/* 80B62FAC  90 1F 10 38 */	stw r0, 0x1038(r31)
/* 80B62FB0  48 00 01 F0 */	b lbl_80B631A0
lbl_80B62FB4:
/* 80B62FB4  38 00 00 02 */	li r0, 2
/* 80B62FB8  98 1F 10 70 */	stb r0, 0x1070(r31)
/* 80B62FBC  92 FF 10 30 */	stw r23, 0x1030(r31)
/* 80B62FC0  48 00 01 E0 */	b lbl_80B631A0
lbl_80B62FC4:
/* 80B62FC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B62FC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B62FCC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B62FD0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B62FD4  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005A@ha */
/* 80B62FD8  38 84 00 5A */	addi r4, r4, 0x005A /* 0x0200005A@l */
/* 80B62FDC  4B 74 CB B9 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 80B62FE0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B62FE4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B62FE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80B62FEC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B62FF0  4B 74 CE 29 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 80B62FF4  92 FF 0D C4 */	stw r23, 0xdc4(r31)
/* 80B62FF8  48 00 01 A8 */	b lbl_80B631A0
lbl_80B62FFC:
/* 80B62FFC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B63000  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B63004  80 63 00 00 */	lwz r3, 0(r3)
/* 80B63008  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B6300C  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005B@ha */
/* 80B63010  38 84 00 5B */	addi r4, r4, 0x005B /* 0x0200005B@l */
/* 80B63014  4B 74 CB 81 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 80B63018  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B6301C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B63020  80 63 00 00 */	lwz r3, 0(r3)
/* 80B63024  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B63028  4B 74 CD F1 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 80B6302C  48 00 01 74 */	b lbl_80B631A0
lbl_80B63030:
/* 80B63030  38 00 00 01 */	li r0, 1
/* 80B63034  98 1F 10 69 */	stb r0, 0x1069(r31)
/* 80B63038  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 80B6303C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B63040  4B 5E 28 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B63044  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 80B63048  38 00 00 07 */	li r0, 7
/* 80B6304C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B63050  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B63054  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
/* 80B63058  48 00 01 48 */	b lbl_80B631A0
lbl_80B6305C:
/* 80B6305C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B63060  2C 00 00 08 */	cmpwi r0, 8
/* 80B63064  41 82 00 24 */	beq lbl_80B63088
/* 80B63068  82 9F 0B 5C */	lwz r20, 0xb5c(r31)
/* 80B6306C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B63070  4B 5E 28 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B63074  92 9F 0B 5C */	stw r20, 0xb5c(r31)
/* 80B63078  38 00 00 08 */	li r0, 8
/* 80B6307C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B63080  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B63084  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B63088:
/* 80B63088  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B6308C  2C 00 00 13 */	cmpwi r0, 0x13
/* 80B63090  41 82 00 24 */	beq lbl_80B630B4
/* 80B63094  82 9F 0B 80 */	lwz r20, 0xb80(r31)
/* 80B63098  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B6309C  4B 5E 27 FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B630A0  92 9F 0B 80 */	stw r20, 0xb80(r31)
/* 80B630A4  38 00 00 13 */	li r0, 0x13
/* 80B630A8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B630AC  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B630B0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B630B4:
/* 80B630B4  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80B630B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B630BC  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80B630C0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B630C4  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80B630C8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B630CC  7F E3 FB 78 */	mr r3, r31
/* 80B630D0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B630D4  4B 5E 78 35 */	bl setPos__8daNpcT_cF4cXyz
/* 80B630D8  7F E3 FB 78 */	mr r3, r31
/* 80B630DC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B630E0  4B 5E 79 39 */	bl setAngle__8daNpcT_cFs
/* 80B630E4  C0 1D 01 98 */	lfs f0, 0x198(r29)
/* 80B630E8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B630EC  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B630F0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B630F4  C0 1D 01 9C */	lfs f0, 0x19c(r29)
/* 80B630F8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B630FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B63100  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B63104  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B63108  38 81 00 60 */	addi r4, r1, 0x60
/* 80B6310C  38 A0 78 00 */	li r5, 0x7800
/* 80B63110  38 C0 00 00 */	li r6, 0
/* 80B63114  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B63118  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B6311C  7D 89 03 A6 */	mtctr r12
/* 80B63120  4E 80 04 21 */	bctrl 
/* 80B63124  7F 83 E3 78 */	mr r3, r28
/* 80B63128  38 81 00 60 */	addi r4, r1, 0x60
/* 80B6312C  4B 4E 52 99 */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 80B63130  38 00 00 01 */	li r0, 1
/* 80B63134  98 1F 10 69 */	stb r0, 0x1069(r31)
/* 80B63138  38 60 00 00 */	li r3, 0
/* 80B6313C  38 80 00 00 */	li r4, 0
/* 80B63140  C0 3D 00 E0 */	lfs f1, 0xe0(r29)
/* 80B63144  4B 64 56 C9 */	bl dKy_custom_colset__FUcUcf
/* 80B63148  38 00 00 00 */	li r0, 0
/* 80B6314C  98 1F 10 70 */	stb r0, 0x1070(r31)
/* 80B63150  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B63154  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B63158  80 63 00 00 */	lwz r3, 0(r3)
/* 80B6315C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B63160  38 80 00 00 */	li r4, 0
/* 80B63164  4B 74 CD 79 */	bl bgmStreamStop__8Z2SeqMgrFUl
/* 80B63168  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B6316C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B63170  80 63 00 00 */	lwz r3, 0(r3)
/* 80B63174  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B63178  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005B@ha */
/* 80B6317C  38 84 00 5B */	addi r4, r4, 0x005B /* 0x0200005B@l */
/* 80B63180  4B 74 CA 15 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 80B63184  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B63188  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B6318C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B63190  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B63194  4B 74 CC 85 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 80B63198  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B6319C  4B 6E 73 29 */	bl remove__10dMsgFlow_cFv
lbl_80B631A0:
/* 80B631A0  80 7D 01 90 */	lwz r3, 0x190(r29)
/* 80B631A4  80 1D 01 94 */	lwz r0, 0x194(r29)
/* 80B631A8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80B631AC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B631B0  2C 1A 00 0E */	cmpwi r26, 0xe
/* 80B631B4  41 82 02 4C */	beq lbl_80B63400
/* 80B631B8  40 80 00 4C */	bge lbl_80B63204
/* 80B631BC  2C 1A 00 09 */	cmpwi r26, 9
/* 80B631C0  41 82 04 FC */	beq lbl_80B636BC
/* 80B631C4  40 80 00 28 */	bge lbl_80B631EC
/* 80B631C8  2C 1A 00 01 */	cmpwi r26, 1
/* 80B631CC  41 82 04 F0 */	beq lbl_80B636BC
/* 80B631D0  40 80 00 10 */	bge lbl_80B631E0
/* 80B631D4  2C 1A 00 00 */	cmpwi r26, 0
/* 80B631D8  40 80 00 74 */	bge lbl_80B6324C
/* 80B631DC  48 00 04 E0 */	b lbl_80B636BC
lbl_80B631E0:
/* 80B631E0  2C 1A 00 07 */	cmpwi r26, 7
/* 80B631E4  40 80 01 0C */	bge lbl_80B632F0
/* 80B631E8  48 00 00 6C */	b lbl_80B63254
lbl_80B631EC:
/* 80B631EC  2C 1A 00 0C */	cmpwi r26, 0xc
/* 80B631F0  41 82 02 D0 */	beq lbl_80B634C0
/* 80B631F4  40 80 02 D4 */	bge lbl_80B634C8
/* 80B631F8  2C 1A 00 0B */	cmpwi r26, 0xb
/* 80B631FC  40 80 02 04 */	bge lbl_80B63400
/* 80B63200  48 00 01 24 */	b lbl_80B63324
lbl_80B63204:
/* 80B63204  2C 1A 00 17 */	cmpwi r26, 0x17
/* 80B63208  41 82 04 B4 */	beq lbl_80B636BC
/* 80B6320C  40 80 00 28 */	bge lbl_80B63234
/* 80B63210  2C 1A 00 11 */	cmpwi r26, 0x11
/* 80B63214  41 82 04 78 */	beq lbl_80B6368C
/* 80B63218  40 80 00 10 */	bge lbl_80B63228
/* 80B6321C  2C 1A 00 10 */	cmpwi r26, 0x10
/* 80B63220  40 80 04 54 */	bge lbl_80B63674
/* 80B63224  48 00 04 40 */	b lbl_80B63664
lbl_80B63228:
/* 80B63228  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80B6322C  40 80 00 28 */	bge lbl_80B63254
/* 80B63230  48 00 04 8C */	b lbl_80B636BC
lbl_80B63234:
/* 80B63234  2C 1A 00 63 */	cmpwi r26, 0x63
/* 80B63238  41 82 04 5C */	beq lbl_80B63694
/* 80B6323C  40 80 04 80 */	bge lbl_80B636BC
/* 80B63240  2C 1A 00 19 */	cmpwi r26, 0x19
/* 80B63244  40 80 04 78 */	bge lbl_80B636BC
/* 80B63248  48 00 00 0C */	b lbl_80B63254
lbl_80B6324C:
/* 80B6324C  3B 60 00 01 */	li r27, 1
/* 80B63250  48 00 04 6C */	b lbl_80B636BC
lbl_80B63254:
/* 80B63254  93 21 00 2C */	stw r25, 0x2c(r1)
/* 80B63258  2C 1A 00 03 */	cmpwi r26, 3
/* 80B6325C  40 82 00 10 */	bne lbl_80B6326C
/* 80B63260  80 1F 0B 84 */	lwz r0, 0xb84(r31)
/* 80B63264  2C 00 00 00 */	cmpwi r0, 0
/* 80B63268  41 81 00 0C */	bgt lbl_80B63274
lbl_80B6326C:
/* 80B6326C  2C 1A 00 15 */	cmpwi r26, 0x15
/* 80B63270  40 82 00 08 */	bne lbl_80B63278
lbl_80B63274:
/* 80B63274  3B 00 00 01 */	li r24, 1
lbl_80B63278:
/* 80B63278  7F E3 FB 78 */	mr r3, r31
/* 80B6327C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B63280  7F 05 C3 78 */	mr r5, r24
/* 80B63284  38 C1 00 34 */	addi r6, r1, 0x34
/* 80B63288  38 E0 00 00 */	li r7, 0
/* 80B6328C  4B 5E 89 ED */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B63290  2C 03 00 00 */	cmpwi r3, 0
/* 80B63294  41 82 00 24 */	beq lbl_80B632B8
/* 80B63298  2C 19 00 00 */	cmpwi r25, 0
/* 80B6329C  40 82 00 18 */	bne lbl_80B632B4
/* 80B632A0  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B632A4  28 00 00 01 */	cmplwi r0, 1
/* 80B632A8  40 82 00 10 */	bne lbl_80B632B8
/* 80B632AC  3B 60 00 01 */	li r27, 1
/* 80B632B0  48 00 00 08 */	b lbl_80B632B8
lbl_80B632B4:
/* 80B632B4  3B 60 00 01 */	li r27, 1
lbl_80B632B8:
/* 80B632B8  2C 1A 00 04 */	cmpwi r26, 4
/* 80B632BC  41 82 00 24 */	beq lbl_80B632E0
/* 80B632C0  2C 1A 00 06 */	cmpwi r26, 6
/* 80B632C4  41 82 00 1C */	beq lbl_80B632E0
/* 80B632C8  2C 1A 00 16 */	cmpwi r26, 0x16
/* 80B632CC  41 82 00 14 */	beq lbl_80B632E0
/* 80B632D0  2C 1A 00 14 */	cmpwi r26, 0x14
/* 80B632D4  41 82 00 0C */	beq lbl_80B632E0
/* 80B632D8  2C 1A 00 18 */	cmpwi r26, 0x18
/* 80B632DC  40 82 03 E0 */	bne lbl_80B636BC
lbl_80B632E0:
/* 80B632E0  2C 18 00 00 */	cmpwi r24, 0
/* 80B632E4  40 82 03 D8 */	bne lbl_80B636BC
/* 80B632E8  3B 60 00 01 */	li r27, 1
/* 80B632EC  48 00 03 D0 */	b lbl_80B636BC
lbl_80B632F0:
/* 80B632F0  80 1F 0B 84 */	lwz r0, 0xb84(r31)
/* 80B632F4  2C 00 00 00 */	cmpwi r0, 0
/* 80B632F8  40 81 03 C4 */	ble lbl_80B636BC
/* 80B632FC  2C 1A 00 08 */	cmpwi r26, 8
/* 80B63300  40 82 00 1C */	bne lbl_80B6331C
/* 80B63304  88 1F 10 70 */	lbz r0, 0x1070(r31)
/* 80B63308  28 00 00 01 */	cmplwi r0, 1
/* 80B6330C  41 82 00 10 */	beq lbl_80B6331C
/* 80B63310  38 00 00 01 */	li r0, 1
/* 80B63314  98 1F 10 70 */	stb r0, 0x1070(r31)
/* 80B63318  92 FF 10 30 */	stw r23, 0x1030(r31)
lbl_80B6331C:
/* 80B6331C  3B 60 00 01 */	li r27, 1
/* 80B63320  48 00 03 9C */	b lbl_80B636BC
lbl_80B63324:
/* 80B63324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B63328  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B6332C  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80B63330  7C 00 07 74 */	extsb r0, r0
/* 80B63334  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80B63338  7C 63 02 14 */	add r3, r3, r0
/* 80B6333C  82 83 5D 74 */	lwz r20, 0x5d74(r3)
/* 80B63340  C0 1D 01 A0 */	lfs f0, 0x1a0(r29)
/* 80B63344  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B63348  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 80B6334C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B63350  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 80B63354  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B63358  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B6335C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B63360  38 80 80 00 */	li r4, -32768
/* 80B63364  4B 4A 90 79 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B63368  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B6336C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B63370  38 81 00 54 */	addi r4, r1, 0x54
/* 80B63374  7C 85 23 78 */	mr r5, r4
/* 80B63378  4B 7E 39 F5 */	bl PSMTXMultVec
/* 80B6337C  38 94 00 E4 */	addi r4, r20, 0xe4
/* 80B63380  38 61 00 54 */	addi r3, r1, 0x54
/* 80B63384  7C 65 1B 78 */	mr r5, r3
/* 80B63388  4B 7E 3D 09 */	bl PSVECAdd
/* 80B6338C  7F E3 FB 78 */	mr r3, r31
/* 80B63390  38 81 00 54 */	addi r4, r1, 0x54
/* 80B63394  C0 3D 01 A8 */	lfs f1, 0x1a8(r29)
/* 80B63398  C0 5D 01 AC */	lfs f2, 0x1ac(r29)
/* 80B6339C  38 A0 50 00 */	li r5, 0x5000
/* 80B633A0  38 C0 00 00 */	li r6, 0
/* 80B633A4  4B FF E7 01 */	bl putUtuwaHeart__11daNpc_ykW_cFP4cXyzffsP4cXyz
/* 80B633A8  7C 64 1B 79 */	or. r4, r3, r3
/* 80B633AC  41 82 03 10 */	beq lbl_80B636BC
/* 80B633B0  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80B633B4  4B 4E 02 A9 */	bl setPt2__14dEvt_control_cFPv
/* 80B633B8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802B1@ha */
/* 80B633BC  38 03 02 B1 */	addi r0, r3, 0x02B1 /* 0x000802B1@l */
/* 80B633C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B633C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B633C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B633CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B633D0  38 81 00 14 */	addi r4, r1, 0x14
/* 80B633D4  38 A1 00 54 */	addi r5, r1, 0x54
/* 80B633D8  38 C0 00 00 */	li r6, 0
/* 80B633DC  38 E0 00 00 */	li r7, 0
/* 80B633E0  C0 3D 00 F0 */	lfs f1, 0xf0(r29)
/* 80B633E4  FC 40 08 90 */	fmr f2, f1
/* 80B633E8  C0 7D 01 00 */	lfs f3, 0x100(r29)
/* 80B633EC  FC 80 18 90 */	fmr f4, f3
/* 80B633F0  39 00 00 00 */	li r8, 0
/* 80B633F4  4B 74 85 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B633F8  3B 60 00 01 */	li r27, 1
/* 80B633FC  48 00 02 C0 */	b lbl_80B636BC
lbl_80B63400:
/* 80B63400  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80B63404  2C 00 00 00 */	cmpwi r0, 0
/* 80B63408  40 82 00 18 */	bne lbl_80B63420
/* 80B6340C  7F 83 E3 78 */	mr r3, r28
/* 80B63410  7E A4 AB 78 */	mr r4, r21
/* 80B63414  4B 4E 49 39 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B63418  2C 03 00 00 */	cmpwi r3, 0
/* 80B6341C  41 82 00 78 */	beq lbl_80B63494
lbl_80B63420:
/* 80B63420  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80B63424  48 00 44 AD */	bl func_80B678D0
/* 80B63428  2C 03 00 00 */	cmpwi r3, 0
/* 80B6342C  40 82 00 68 */	bne lbl_80B63494
/* 80B63430  2C 1A 00 0B */	cmpwi r26, 0xb
/* 80B63434  40 82 00 60 */	bne lbl_80B63494
/* 80B63438  38 00 00 00 */	li r0, 0
/* 80B6343C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B63440  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)  /* 0x80450FDC@l */
/* 80B63444  3C 60 80 B6 */	lis r3, srchItemHeart__11daNpc_ykW_cFPvPv@ha /* 0x80B5F924@ha */
/* 80B63448  38 63 F9 24 */	addi r3, r3, srchItemHeart__11daNpc_ykW_cFPvPv@l /* 0x80B5F924@l */
/* 80B6344C  7F E4 FB 78 */	mr r4, r31
/* 80B63450  4B 4B DE E9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80B63454  38 E0 00 00 */	li r7, 0
/* 80B63458  38 60 00 00 */	li r3, 0
/* 80B6345C  3C 80 80 42 */	lis r4, mFindActorPtrs__8daNpcT_c@ha /* 0x80425708@ha */
/* 80B63460  38 C4 57 08 */	addi r6, r4, mFindActorPtrs__8daNpcT_c@l /* 0x80425708@l */
/* 80B63464  3C 80 80 45 */	lis r4, mFindCount__8daNpcT_c@ha /* 0x80450FDC@ha */
/* 80B63468  38 84 0F DC */	addi r4, r4, mFindCount__8daNpcT_c@l /* 0x80450FDC@l */
/* 80B6346C  48 00 00 1C */	b lbl_80B63488
lbl_80B63470:
/* 80B63470  7C A6 18 2E */	lwzx r5, r6, r3
/* 80B63474  80 05 04 9C */	lwz r0, 0x49c(r5)
/* 80B63478  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80B6347C  90 05 04 9C */	stw r0, 0x49c(r5)
/* 80B63480  38 E7 00 01 */	addi r7, r7, 1
/* 80B63484  38 63 00 04 */	addi r3, r3, 4
lbl_80B63488:
/* 80B63488  80 04 00 00 */	lwz r0, 0(r4)
/* 80B6348C  7C 07 00 00 */	cmpw r7, r0
/* 80B63490  41 80 FF E0 */	blt lbl_80B63470
lbl_80B63494:
/* 80B63494  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80B63498  7C 00 00 34 */	cntlzw r0, r0
/* 80B6349C  54 1B DE 3E */	rlwinm r27, r0, 0x1b, 0x18, 0x1f
/* 80B634A0  2C 1A 00 0E */	cmpwi r26, 0xe
/* 80B634A4  40 82 02 18 */	bne lbl_80B636BC
/* 80B634A8  C0 3F 10 54 */	lfs f1, 0x1054(r31)
/* 80B634AC  C0 1D 00 F0 */	lfs f0, 0xf0(r29)
/* 80B634B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B634B4  40 80 02 08 */	bge lbl_80B636BC
/* 80B634B8  3B 60 00 00 */	li r27, 0
/* 80B634BC  48 00 02 00 */	b lbl_80B636BC
lbl_80B634C0:
/* 80B634C0  3B 60 00 01 */	li r27, 1
/* 80B634C4  48 00 01 F8 */	b lbl_80B636BC
lbl_80B634C8:
/* 80B634C8  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80B634CC  48 00 44 05 */	bl func_80B678D0
/* 80B634D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B634D4  40 82 01 88 */	bne lbl_80B6365C
/* 80B634D8  C0 1D 00 F0 */	lfs f0, 0xf0(r29)
/* 80B634DC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B634E0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B634E4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B634E8  4B 70 43 85 */	bl cM_rnd__Fv
/* 80B634EC  C0 1D 01 6C */	lfs f0, 0x16c(r29)
/* 80B634F0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B634F4  C0 1D 01 0C */	lfs f0, 0x10c(r29)
/* 80B634F8  EF E0 00 72 */	fmuls f31, f0, f1
/* 80B634FC  C0 5D 01 50 */	lfs f2, 0x150(r29)
/* 80B63500  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80B63504  C0 3D 01 AC */	lfs f1, 0x1ac(r29)
/* 80B63508  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B6350C  C0 1D 01 B0 */	lfs f0, 0x1b0(r29)
/* 80B63510  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80B63514  EC 02 00 2A */	fadds f0, f2, f0
/* 80B63518  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B6351C  EC 02 07 F2 */	fmuls f0, f2, f31
/* 80B63520  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B63524  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B63528  38 00 00 00 */	li r0, 0
/* 80B6352C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80B63530  B0 01 00 26 */	sth r0, 0x26(r1)
/* 80B63534  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80B63538  A8 7F 10 58 */	lha r3, 0x1058(r31)
/* 80B6353C  B0 61 00 26 */	sth r3, 0x26(r1)
/* 80B63540  80 1F 10 38 */	lwz r0, 0x1038(r31)
/* 80B63544  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B63548  41 82 00 10 */	beq lbl_80B63558
/* 80B6354C  3C 63 00 01 */	addis r3, r3, 1
/* 80B63550  38 03 80 00 */	addi r0, r3, -32768
/* 80B63554  B0 01 00 26 */	sth r0, 0x26(r1)
lbl_80B63558:
/* 80B63558  C0 3D 01 B8 */	lfs f1, 0x1b8(r29)
/* 80B6355C  4B 70 44 31 */	bl cM_rndFX__Ff
/* 80B63560  C0 1D 01 B4 */	lfs f0, 0x1b4(r29)
/* 80B63564  EC 20 08 2A */	fadds f1, f0, f1
/* 80B63568  C0 1D 01 BC */	lfs f0, 0x1bc(r29)
/* 80B6356C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B63570  FC 00 00 1E */	fctiwz f0, f0
/* 80B63574  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80B63578  80 61 00 74 */	lwz r3, 0x74(r1)
/* 80B6357C  A8 1F 10 58 */	lha r0, 0x1058(r31)
/* 80B63580  7C 00 1A 14 */	add r0, r0, r3
/* 80B63584  B0 1F 10 58 */	sth r0, 0x1058(r31)
/* 80B63588  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80B6358C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B63590  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80B63594  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80B63598  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80B6359C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B635A0  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 80B635A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80B635A8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B635AC  38 00 00 00 */	li r0, 0
/* 80B635B0  90 01 00 08 */	stw r0, 8(r1)
/* 80B635B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B635B8  38 61 00 54 */	addi r3, r1, 0x54
/* 80B635BC  38 80 00 00 */	li r4, 0
/* 80B635C0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B635C4  7C 05 07 74 */	extsb r5, r0
/* 80B635C8  38 C1 00 24 */	addi r6, r1, 0x24
/* 80B635CC  38 E1 00 48 */	addi r7, r1, 0x48
/* 80B635D0  39 01 00 20 */	addi r8, r1, 0x20
/* 80B635D4  39 21 00 1C */	addi r9, r1, 0x1c
/* 80B635D8  39 40 FF FF */	li r10, -1
/* 80B635DC  4B 4B 8F D5 */	bl fopAcM_fastCreateItem__FPC4cXyziiPC5csXyzPC4cXyzPfPfiiPFPv_i
/* 80B635E0  7C 75 1B 79 */	or. r21, r3, r3
/* 80B635E4  41 82 00 50 */	beq lbl_80B63634
/* 80B635E8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802B0@ha */
/* 80B635EC  38 03 02 B0 */	addi r0, r3, 0x02B0 /* 0x000802B0@l */
/* 80B635F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B635F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B635F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B635FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B63600  38 81 00 10 */	addi r4, r1, 0x10
/* 80B63604  38 A1 00 54 */	addi r5, r1, 0x54
/* 80B63608  38 C0 00 00 */	li r6, 0
/* 80B6360C  38 E0 00 00 */	li r7, 0
/* 80B63610  C0 3D 00 F0 */	lfs f1, 0xf0(r29)
/* 80B63614  FC 40 08 90 */	fmr f2, f1
/* 80B63618  C0 7D 01 00 */	lfs f3, 0x100(r29)
/* 80B6361C  FC 80 18 90 */	fmr f4, f3
/* 80B63620  39 00 00 00 */	li r8, 0
/* 80B63624  4B 74 83 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B63628  80 15 04 9C */	lwz r0, 0x49c(r21)
/* 80B6362C  60 00 40 00 */	ori r0, r0, 0x4000
/* 80B63630  90 15 04 9C */	stw r0, 0x49c(r21)
lbl_80B63634:
/* 80B63634  C0 1D 01 C0 */	lfs f0, 0x1c0(r29)
/* 80B63638  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80B6363C  FC 00 00 1E */	fctiwz f0, f0
/* 80B63640  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80B63644  80 61 00 74 */	lwz r3, 0x74(r1)
/* 80B63648  38 03 00 06 */	addi r0, r3, 6
/* 80B6364C  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80B63650  80 7F 10 38 */	lwz r3, 0x1038(r31)
/* 80B63654  38 03 00 01 */	addi r0, r3, 1
/* 80B63658  90 1F 10 38 */	stw r0, 0x1038(r31)
lbl_80B6365C:
/* 80B6365C  3B 60 00 01 */	li r27, 1
/* 80B63660  48 00 00 5C */	b lbl_80B636BC
lbl_80B63664:
/* 80B63664  80 1F 10 30 */	lwz r0, 0x1030(r31)
/* 80B63668  7C 00 00 34 */	cntlzw r0, r0
/* 80B6366C  54 1B DE 3E */	rlwinm r27, r0, 0x1b, 0x18, 0x1f
/* 80B63670  48 00 00 4C */	b lbl_80B636BC
lbl_80B63674:
/* 80B63674  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80B63678  48 00 42 59 */	bl func_80B678D0
/* 80B6367C  2C 03 00 00 */	cmpwi r3, 0
/* 80B63680  40 82 00 3C */	bne lbl_80B636BC
/* 80B63684  3B 60 00 01 */	li r27, 1
/* 80B63688  48 00 00 34 */	b lbl_80B636BC
lbl_80B6368C:
/* 80B6368C  3B 60 00 01 */	li r27, 1
/* 80B63690  48 00 00 2C */	b lbl_80B636BC
lbl_80B63694:
/* 80B63694  7F E3 FB 78 */	mr r3, r31
/* 80B63698  38 80 00 00 */	li r4, 0
/* 80B6369C  C0 3D 00 E0 */	lfs f1, 0xe0(r29)
/* 80B636A0  FC 40 08 90 */	fmr f2, f1
/* 80B636A4  38 A0 50 00 */	li r5, 0x5000
/* 80B636A8  38 C0 00 00 */	li r6, 0
/* 80B636AC  4B FF E3 F9 */	bl putUtuwaHeart__11daNpc_ykW_cFP4cXyzffsP4cXyz
/* 80B636B0  28 03 00 00 */	cmplwi r3, 0
/* 80B636B4  41 82 00 08 */	beq lbl_80B636BC
/* 80B636B8  3B 60 00 01 */	li r27, 1
lbl_80B636BC:
/* 80B636BC  88 7F 10 70 */	lbz r3, 0x1070(r31)
/* 80B636C0  2C 03 00 01 */	cmpwi r3, 1
/* 80B636C4  41 82 00 18 */	beq lbl_80B636DC
/* 80B636C8  40 80 00 08 */	bge lbl_80B636D0
/* 80B636CC  48 00 00 9C */	b lbl_80B63768
lbl_80B636D0:
/* 80B636D0  2C 03 00 03 */	cmpwi r3, 3
/* 80B636D4  40 80 00 94 */	bge lbl_80B63768
/* 80B636D8  48 00 00 4C */	b lbl_80B63724
lbl_80B636DC:
/* 80B636DC  56 C0 06 3E */	clrlwi r0, r22, 0x18
/* 80B636E0  7C 00 18 40 */	cmplw r0, r3
/* 80B636E4  41 82 00 0C */	beq lbl_80B636F0
/* 80B636E8  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B636EC  D0 1F 10 54 */	stfs f0, 0x1054(r31)
lbl_80B636F0:
/* 80B636F0  38 7F 10 30 */	addi r3, r31, 0x1030
/* 80B636F4  48 00 41 DD */	bl func_80B678D0
/* 80B636F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B636FC  40 82 00 6C */	bne lbl_80B63768
/* 80B63700  38 7F 10 54 */	addi r3, r31, 0x1054
/* 80B63704  C0 3D 00 F0 */	lfs f1, 0xf0(r29)
/* 80B63708  C0 5D 01 C4 */	lfs f2, 0x1c4(r29)
/* 80B6370C  4B 70 D0 35 */	bl cLib_chaseF__FPfff
/* 80B63710  38 60 00 00 */	li r3, 0
/* 80B63714  38 80 00 06 */	li r4, 6
/* 80B63718  C0 3F 10 54 */	lfs f1, 0x1054(r31)
/* 80B6371C  4B 64 50 F1 */	bl dKy_custom_colset__FUcUcf
/* 80B63720  48 00 00 48 */	b lbl_80B63768
lbl_80B63724:
/* 80B63724  56 C0 06 3E */	clrlwi r0, r22, 0x18
/* 80B63728  7C 00 18 40 */	cmplw r0, r3
/* 80B6372C  41 82 00 0C */	beq lbl_80B63738
/* 80B63730  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B63734  D0 1F 10 54 */	stfs f0, 0x1054(r31)
lbl_80B63738:
/* 80B63738  38 7F 10 30 */	addi r3, r31, 0x1030
/* 80B6373C  48 00 41 95 */	bl func_80B678D0
/* 80B63740  2C 03 00 00 */	cmpwi r3, 0
/* 80B63744  40 82 00 24 */	bne lbl_80B63768
/* 80B63748  38 7F 10 54 */	addi r3, r31, 0x1054
/* 80B6374C  C0 3D 00 F0 */	lfs f1, 0xf0(r29)
/* 80B63750  C0 5D 01 C8 */	lfs f2, 0x1c8(r29)
/* 80B63754  4B 70 CF ED */	bl cLib_chaseF__FPfff
/* 80B63758  38 60 00 06 */	li r3, 6
/* 80B6375C  38 80 00 00 */	li r4, 0
/* 80B63760  C0 3F 10 54 */	lfs f1, 0x1054(r31)
/* 80B63764  4B 64 50 A9 */	bl dKy_custom_colset__FUcUcf
lbl_80B63768:
/* 80B63768  2C 1A 00 16 */	cmpwi r26, 0x16
/* 80B6376C  41 82 00 F0 */	beq lbl_80B6385C
/* 80B63770  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B63774  4B 5E 1F 95 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B63778  28 03 00 00 */	cmplwi r3, 0
/* 80B6377C  41 82 00 AC */	beq lbl_80B63828
/* 80B63780  2C 1A 00 03 */	cmpwi r26, 3
/* 80B63784  41 82 00 18 */	beq lbl_80B6379C
/* 80B63788  38 1A FF FA */	addi r0, r26, -6
/* 80B6378C  28 00 00 01 */	cmplwi r0, 1
/* 80B63790  40 81 00 0C */	ble lbl_80B6379C
/* 80B63794  2C 1A 00 08 */	cmpwi r26, 8
/* 80B63798  40 82 00 90 */	bne lbl_80B63828
lbl_80B6379C:
/* 80B6379C  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 80B637A0  D0 1F 0D 6C */	stfs f0, 0xd6c(r31)
/* 80B637A4  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 80B637A8  D0 1F 0D 70 */	stfs f0, 0xd70(r31)
/* 80B637AC  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 80B637B0  D0 1F 0D 74 */	stfs f0, 0xd74(r31)
/* 80B637B4  80 7F 0B C8 */	lwz r3, 0xbc8(r31)
/* 80B637B8  38 1F 0D 6C */	addi r0, r31, 0xd6c
/* 80B637BC  7C 63 00 50 */	subf r3, r3, r0
/* 80B637C0  30 03 FF FF */	addic r0, r3, -1
/* 80B637C4  7C 00 19 10 */	subfe r0, r0, r3
/* 80B637C8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B637CC  40 82 00 10 */	bne lbl_80B637DC
/* 80B637D0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B637D4  2C 00 00 03 */	cmpwi r0, 3
/* 80B637D8  41 82 00 30 */	beq lbl_80B63808
lbl_80B637DC:
/* 80B637DC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B637E0  4B 5E 1F 1D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B637E4  38 00 00 00 */	li r0, 0
/* 80B637E8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B637EC  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B637F0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B637F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B637F8  38 00 00 03 */	li r0, 3
/* 80B637FC  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80B63800  38 00 00 01 */	li r0, 1
/* 80B63804  48 00 00 08 */	b lbl_80B6380C
lbl_80B63808:
/* 80B63808  38 00 00 00 */	li r0, 0
lbl_80B6380C:
/* 80B6380C  2C 00 00 00 */	cmpwi r0, 0
/* 80B63810  41 82 00 0C */	beq lbl_80B6381C
/* 80B63814  38 1F 0D 6C */	addi r0, r31, 0xd6c
/* 80B63818  90 1F 0B C8 */	stw r0, 0xbc8(r31)
lbl_80B6381C:
/* 80B6381C  38 00 00 00 */	li r0, 0
/* 80B63820  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B63824  48 00 00 38 */	b lbl_80B6385C
lbl_80B63828:
/* 80B63828  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6382C  2C 00 00 00 */	cmpwi r0, 0
/* 80B63830  41 82 00 24 */	beq lbl_80B63854
/* 80B63834  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B63838  4B 5E 1E C5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B6383C  38 00 00 00 */	li r0, 0
/* 80B63840  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B63844  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B63848  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6384C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B63850  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B63854:
/* 80B63854  38 00 00 00 */	li r0, 0
/* 80B63858  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B6385C:
/* 80B6385C  38 00 00 00 */	li r0, 0
/* 80B63860  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B63864  38 00 00 01 */	li r0, 1
/* 80B63868  98 1F 10 60 */	stb r0, 0x1060(r31)
/* 80B6386C  98 1F 10 61 */	stb r0, 0x1061(r31)
/* 80B63870  7F 63 DB 78 */	mr r3, r27
/* 80B63874  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80B63878  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80B6387C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80B63880  4B 7F E9 85 */	bl _restgpr_20
/* 80B63884  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80B63888  7C 08 03 A6 */	mtlr r0
/* 80B6388C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80B63890  4E 80 00 20 */	blr 
