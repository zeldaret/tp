lbl_8056C5B4:
/* 8056C5B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8056C5B8  7C 08 02 A6 */	mflr r0
/* 8056C5BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8056C5C0  39 61 00 40 */	addi r11, r1, 0x40
/* 8056C5C4  4B DF 5C 05 */	bl _savegpr_24
/* 8056C5C8  7C 78 1B 78 */	mr r24, r3
/* 8056C5CC  7C 99 23 78 */	mr r25, r4
/* 8056C5D0  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha /* 0x805716C8@ha */
/* 8056C5D4  3B E3 16 C8 */	addi r31, r3, m__18daNpc_Taro_Param_c@l /* 0x805716C8@l */
/* 8056C5D8  3B A0 00 00 */	li r29, 0
/* 8056C5DC  3B 80 FF FF */	li r28, -1
/* 8056C5E0  3B 60 00 00 */	li r27, 0
/* 8056C5E4  3B 40 00 00 */	li r26, 0
/* 8056C5E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056C5EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056C5F0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8056C5F4  7F C3 F3 78 */	mr r3, r30
/* 8056C5F8  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056C5FC  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056C600  38 A5 02 9C */	addi r5, r5, 0x29c
/* 8056C604  38 C0 00 03 */	li r6, 3
/* 8056C608  4B AD BA E5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056C60C  28 03 00 00 */	cmplwi r3, 0
/* 8056C610  41 82 00 08 */	beq lbl_8056C618
/* 8056C614  83 83 00 00 */	lwz r28, 0(r3)
lbl_8056C618:
/* 8056C618  7F C3 F3 78 */	mr r3, r30
/* 8056C61C  7F 24 CB 78 */	mr r4, r25
/* 8056C620  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056C624  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056C628  38 A5 02 A0 */	addi r5, r5, 0x2a0
/* 8056C62C  38 C0 00 03 */	li r6, 3
/* 8056C630  4B AD BA BD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056C634  28 03 00 00 */	cmplwi r3, 0
/* 8056C638  41 82 00 08 */	beq lbl_8056C640
/* 8056C63C  83 63 00 00 */	lwz r27, 0(r3)
lbl_8056C640:
/* 8056C640  7F C3 F3 78 */	mr r3, r30
/* 8056C644  7F 24 CB 78 */	mr r4, r25
/* 8056C648  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056C64C  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056C650  38 A5 02 A6 */	addi r5, r5, 0x2a6
/* 8056C654  38 C0 00 03 */	li r6, 3
/* 8056C658  4B AD BA 95 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056C65C  28 03 00 00 */	cmplwi r3, 0
/* 8056C660  41 82 00 08 */	beq lbl_8056C668
/* 8056C664  83 43 00 00 */	lwz r26, 0(r3)
lbl_8056C668:
/* 8056C668  80 7F 02 08 */	lwz r3, 0x208(r31)
/* 8056C66C  80 1F 02 0C */	lwz r0, 0x20c(r31)
/* 8056C670  90 61 00 10 */	stw r3, 0x10(r1)
/* 8056C674  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056C678  80 7F 02 10 */	lwz r3, 0x210(r31)
/* 8056C67C  80 1F 02 14 */	lwz r0, 0x214(r31)
/* 8056C680  90 61 00 18 */	stw r3, 0x18(r1)
/* 8056C684  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8056C688  93 01 00 10 */	stw r24, 0x10(r1)
/* 8056C68C  38 78 10 D0 */	addi r3, r24, 0x10d0
/* 8056C690  4B BD 90 79 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056C694  90 61 00 14 */	stw r3, 0x14(r1)
/* 8056C698  38 78 10 D8 */	addi r3, r24, 0x10d8
/* 8056C69C  4B BD 90 6D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056C6A0  90 61 00 18 */	stw r3, 0x18(r1)
/* 8056C6A4  38 78 10 C8 */	addi r3, r24, 0x10c8
/* 8056C6A8  4B BD 90 61 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056C6AC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8056C6B0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8056C6B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056C6B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056C6BC  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 8056C6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056C6C4  90 04 5E F4 */	stw r0, 0x5ef4(r4)
/* 8056C6C8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8056C6CC  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 8056C6D0  90 64 5E FC */	stw r3, 0x5efc(r4)
/* 8056C6D4  38 00 00 00 */	li r0, 0
/* 8056C6D8  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 8056C6DC  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 8056C6E0  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 8056C6E4  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 8056C6E8  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 8056C6EC  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 8056C6F0  7F C3 F3 78 */	mr r3, r30
/* 8056C6F4  7F 24 CB 78 */	mr r4, r25
/* 8056C6F8  4B AD B6 55 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8056C6FC  2C 03 00 00 */	cmpwi r3, 0
/* 8056C700  41 82 00 30 */	beq lbl_8056C730
/* 8056C704  2C 1C 00 01 */	cmpwi r28, 1
/* 8056C708  41 82 00 28 */	beq lbl_8056C730
/* 8056C70C  40 80 00 24 */	bge lbl_8056C730
/* 8056C710  2C 1C 00 00 */	cmpwi r28, 0
/* 8056C714  40 80 00 08 */	bge lbl_8056C71C
/* 8056C718  48 00 00 18 */	b lbl_8056C730
lbl_8056C71C:
/* 8056C71C  7F 03 C3 78 */	mr r3, r24
/* 8056C720  80 98 0A 7C */	lwz r4, 0xa7c(r24)
/* 8056C724  38 A1 00 10 */	addi r5, r1, 0x10
/* 8056C728  4B BD F4 C9 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056C72C  93 78 0D C4 */	stw r27, 0xdc4(r24)
lbl_8056C730:
/* 8056C730  80 7F 02 18 */	lwz r3, 0x218(r31)
/* 8056C734  80 1F 02 1C */	lwz r0, 0x21c(r31)
/* 8056C738  90 61 00 08 */	stw r3, 8(r1)
/* 8056C73C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8056C740  2C 1C 00 01 */	cmpwi r28, 1
/* 8056C744  41 82 00 F0 */	beq lbl_8056C834
/* 8056C748  40 80 01 68 */	bge lbl_8056C8B0
/* 8056C74C  2C 1C 00 00 */	cmpwi r28, 0
/* 8056C750  40 80 00 08 */	bge lbl_8056C758
/* 8056C754  48 00 01 5C */	b lbl_8056C8B0
lbl_8056C758:
/* 8056C758  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 8056C75C  2C 00 00 01 */	cmpwi r0, 1
/* 8056C760  41 82 00 28 */	beq lbl_8056C788
/* 8056C764  38 78 0B A8 */	addi r3, r24, 0xba8
/* 8056C768  4B BD 8F 95 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056C76C  38 00 00 00 */	li r0, 0
/* 8056C770  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 8056C774  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056C778  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 8056C77C  98 18 0C FF */	stb r0, 0xcff(r24)
/* 8056C780  38 00 00 01 */	li r0, 1
/* 8056C784  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_8056C788:
/* 8056C788  38 00 00 00 */	li r0, 0
/* 8056C78C  98 18 0C FF */	stb r0, 0xcff(r24)
/* 8056C790  A8 98 0D C8 */	lha r4, 0xdc8(r24)
/* 8056C794  A8 18 0D 7A */	lha r0, 0xd7a(r24)
/* 8056C798  7C 04 00 00 */	cmpw r4, r0
/* 8056C79C  41 82 00 80 */	beq lbl_8056C81C
/* 8056C7A0  7F 03 C3 78 */	mr r3, r24
/* 8056C7A4  38 A0 00 1F */	li r5, 0x1f
/* 8056C7A8  38 C0 00 24 */	li r6, 0x24
/* 8056C7AC  38 E0 00 0F */	li r7, 0xf
/* 8056C7B0  39 00 00 00 */	li r8, 0
/* 8056C7B4  4B BD EE 95 */	bl step__8daNpcT_cFsiiii
/* 8056C7B8  2C 03 00 00 */	cmpwi r3, 0
/* 8056C7BC  41 82 00 F4 */	beq lbl_8056C8B0
/* 8056C7C0  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 8056C7C4  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056C7C8  41 82 00 24 */	beq lbl_8056C7EC
/* 8056C7CC  83 38 0B 5C */	lwz r25, 0xb5c(r24)
/* 8056C7D0  38 78 0B 50 */	addi r3, r24, 0xb50
/* 8056C7D4  4B BD 90 C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056C7D8  93 38 0B 5C */	stw r25, 0xb5c(r24)
/* 8056C7DC  38 00 00 1F */	li r0, 0x1f
/* 8056C7E0  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 8056C7E4  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056C7E8  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_8056C7EC:
/* 8056C7EC  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 8056C7F0  2C 00 00 00 */	cmpwi r0, 0
/* 8056C7F4  41 82 00 BC */	beq lbl_8056C8B0
/* 8056C7F8  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 8056C7FC  38 78 0B 74 */	addi r3, r24, 0xb74
/* 8056C800  4B BD 90 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056C804  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 8056C808  38 00 00 00 */	li r0, 0
/* 8056C80C  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 8056C810  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056C814  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
/* 8056C818  48 00 00 98 */	b lbl_8056C8B0
lbl_8056C81C:
/* 8056C81C  38 78 0D C4 */	addi r3, r24, 0xdc4
/* 8056C820  48 00 49 E9 */	bl func_80571208
/* 8056C824  2C 03 00 00 */	cmpwi r3, 0
/* 8056C828  40 82 00 88 */	bne lbl_8056C8B0
/* 8056C82C  3B A0 00 01 */	li r29, 1
/* 8056C830  48 00 00 80 */	b lbl_8056C8B0
lbl_8056C834:
/* 8056C834  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 8056C838  2C 00 00 01 */	cmpwi r0, 1
/* 8056C83C  41 82 00 28 */	beq lbl_8056C864
/* 8056C840  38 78 0B A8 */	addi r3, r24, 0xba8
/* 8056C844  4B BD 8E B9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056C848  38 00 00 00 */	li r0, 0
/* 8056C84C  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 8056C850  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056C854  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 8056C858  98 18 0C FF */	stb r0, 0xcff(r24)
/* 8056C85C  38 00 00 01 */	li r0, 1
/* 8056C860  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_8056C864:
/* 8056C864  38 00 00 00 */	li r0, 0
/* 8056C868  98 18 0C FF */	stb r0, 0xcff(r24)
/* 8056C86C  93 41 00 08 */	stw r26, 8(r1)
/* 8056C870  7F 03 C3 78 */	mr r3, r24
/* 8056C874  38 81 00 08 */	addi r4, r1, 8
/* 8056C878  38 A0 00 00 */	li r5, 0
/* 8056C87C  38 C1 00 10 */	addi r6, r1, 0x10
/* 8056C880  38 E0 00 00 */	li r7, 0
/* 8056C884  4B BD F3 F5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056C888  2C 03 00 00 */	cmpwi r3, 0
/* 8056C88C  41 82 00 24 */	beq lbl_8056C8B0
/* 8056C890  2C 1A 00 00 */	cmpwi r26, 0
/* 8056C894  40 82 00 18 */	bne lbl_8056C8AC
/* 8056C898  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 8056C89C  28 00 00 01 */	cmplwi r0, 1
/* 8056C8A0  40 82 00 10 */	bne lbl_8056C8B0
/* 8056C8A4  3B A0 00 01 */	li r29, 1
/* 8056C8A8  48 00 00 08 */	b lbl_8056C8B0
lbl_8056C8AC:
/* 8056C8AC  3B A0 00 01 */	li r29, 1
lbl_8056C8B0:
/* 8056C8B0  7F A3 EB 78 */	mr r3, r29
/* 8056C8B4  39 61 00 40 */	addi r11, r1, 0x40
/* 8056C8B8  4B DF 59 5D */	bl _restgpr_24
/* 8056C8BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8056C8C0  7C 08 03 A6 */	mtlr r0
/* 8056C8C4  38 21 00 40 */	addi r1, r1, 0x40
/* 8056C8C8  4E 80 00 20 */	blr 
