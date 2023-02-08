lbl_8056D5C0:
/* 8056D5C0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8056D5C4  7C 08 02 A6 */	mflr r0
/* 8056D5C8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8056D5CC  39 61 00 70 */	addi r11, r1, 0x70
/* 8056D5D0  4B DF 4B F9 */	bl _savegpr_24
/* 8056D5D4  7C 7F 1B 78 */	mr r31, r3
/* 8056D5D8  7C 98 23 78 */	mr r24, r4
/* 8056D5DC  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha /* 0x805716C8@ha */
/* 8056D5E0  3B A3 16 C8 */	addi r29, r3, m__18daNpc_Taro_Param_c@l /* 0x805716C8@l */
/* 8056D5E4  3B 60 00 00 */	li r27, 0
/* 8056D5E8  3B 40 FF FF */	li r26, -1
/* 8056D5EC  3B 20 00 00 */	li r25, 0
/* 8056D5F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056D5F4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056D5F8  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 8056D5FC  7F 83 E3 78 */	mr r3, r28
/* 8056D600  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056D604  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056D608  38 A5 02 9C */	addi r5, r5, 0x29c
/* 8056D60C  38 C0 00 03 */	li r6, 3
/* 8056D610  4B AD AA DD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056D614  28 03 00 00 */	cmplwi r3, 0
/* 8056D618  41 82 00 08 */	beq lbl_8056D620
/* 8056D61C  83 43 00 00 */	lwz r26, 0(r3)
lbl_8056D620:
/* 8056D620  7F 83 E3 78 */	mr r3, r28
/* 8056D624  7F 04 C3 78 */	mr r4, r24
/* 8056D628  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056D62C  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056D630  38 A5 02 A6 */	addi r5, r5, 0x2a6
/* 8056D634  38 C0 00 03 */	li r6, 3
/* 8056D638  4B AD AA B5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056D63C  28 03 00 00 */	cmplwi r3, 0
/* 8056D640  41 82 00 08 */	beq lbl_8056D648
/* 8056D644  83 23 00 00 */	lwz r25, 0(r3)
lbl_8056D648:
/* 8056D648  80 7D 02 20 */	lwz r3, 0x220(r29)
/* 8056D64C  80 1D 02 24 */	lwz r0, 0x224(r29)
/* 8056D650  90 61 00 10 */	stw r3, 0x10(r1)
/* 8056D654  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056D658  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8056D65C  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 8056D660  4B BD 80 A9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056D664  90 61 00 14 */	stw r3, 0x14(r1)
/* 8056D668  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8056D66C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056D670  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056D674  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 8056D678  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 8056D67C  38 00 00 00 */	li r0, 0
/* 8056D680  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 8056D684  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 8056D688  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 8056D68C  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 8056D690  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 8056D694  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 8056D698  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 8056D69C  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 8056D6A0  7F 83 E3 78 */	mr r3, r28
/* 8056D6A4  7F 04 C3 78 */	mr r4, r24
/* 8056D6A8  4B AD A6 A5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8056D6AC  2C 03 00 00 */	cmpwi r3, 0
/* 8056D6B0  41 82 08 2C */	beq lbl_8056DEDC
/* 8056D6B4  28 1A 00 28 */	cmplwi r26, 0x28
/* 8056D6B8  41 81 08 24 */	bgt lbl_8056DEDC
/* 8056D6BC  3C 60 80 57 */	lis r3, lit_8207@ha /* 0x8057324C@ha */
/* 8056D6C0  38 63 32 4C */	addi r3, r3, lit_8207@l /* 0x8057324C@l */
/* 8056D6C4  57 40 10 3A */	slwi r0, r26, 2
/* 8056D6C8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056D6CC  7C 09 03 A6 */	mtctr r0
/* 8056D6D0  4E 80 04 20 */	bctr 
lbl_8056D6D4:
/* 8056D6D4  38 00 00 01 */	li r0, 1
/* 8056D6D8  98 1F 11 A0 */	stb r0, 0x11a0(r31)
/* 8056D6DC  48 00 08 00 */	b lbl_8056DEDC
lbl_8056D6E0:
/* 8056D6E0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8056D6E4  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056D6E8  41 82 00 24 */	beq lbl_8056D70C
/* 8056D6EC  83 1F 0B 5C */	lwz r24, 0xb5c(r31)
/* 8056D6F0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8056D6F4  4B BD 81 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056D6F8  93 1F 0B 5C */	stw r24, 0xb5c(r31)
/* 8056D6FC  38 00 00 1F */	li r0, 0x1f
/* 8056D700  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8056D704  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056D708  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8056D70C:
/* 8056D70C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8056D710  2C 00 00 00 */	cmpwi r0, 0
/* 8056D714  41 82 00 24 */	beq lbl_8056D738
/* 8056D718  83 1F 0B 80 */	lwz r24, 0xb80(r31)
/* 8056D71C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8056D720  4B BD 81 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056D724  93 1F 0B 80 */	stw r24, 0xb80(r31)
/* 8056D728  38 00 00 00 */	li r0, 0
/* 8056D72C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8056D730  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056D734  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8056D738:
/* 8056D738  38 60 00 06 */	li r3, 6
/* 8056D73C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8056D740  7C 04 07 74 */	extsb r4, r0
/* 8056D744  38 A1 00 38 */	addi r5, r1, 0x38
/* 8056D748  38 C1 00 18 */	addi r6, r1, 0x18
/* 8056D74C  4B BD ED B5 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8056D750  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056D754  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056D758  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8056D75C  38 81 00 38 */	addi r4, r1, 0x38
/* 8056D760  A8 A1 00 1A */	lha r5, 0x1a(r1)
/* 8056D764  38 C0 00 00 */	li r6, 0
/* 8056D768  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8056D76C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8056D770  7D 89 03 A6 */	mtctr r12
/* 8056D774  4E 80 04 21 */	bctrl 
/* 8056D778  7F 83 E3 78 */	mr r3, r28
/* 8056D77C  38 81 00 38 */	addi r4, r1, 0x38
/* 8056D780  4B AD AC 45 */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 8056D784  C0 5D 01 C0 */	lfs f2, 0x1c0(r29)
/* 8056D788  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8056D78C  C0 3D 01 C4 */	lfs f1, 0x1c4(r29)
/* 8056D790  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8056D794  C0 1D 01 C8 */	lfs f0, 0x1c8(r29)
/* 8056D798  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8056D79C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8056D7A0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8056D7A4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8056D7A8  7F E3 FB 78 */	mr r3, r31
/* 8056D7AC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8056D7B0  4B BD D1 59 */	bl setPos__8daNpcT_cF4cXyz
/* 8056D7B4  7F E3 FB 78 */	mr r3, r31
/* 8056D7B8  38 80 11 C7 */	li r4, 0x11c7
/* 8056D7BC  4B BD D2 5D */	bl setAngle__8daNpcT_cFs
/* 8056D7C0  48 00 07 1C */	b lbl_8056DEDC
lbl_8056D7C4:
/* 8056D7C4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056D7C8  2C 00 00 01 */	cmpwi r0, 1
/* 8056D7CC  41 82 00 28 */	beq lbl_8056D7F4
/* 8056D7D0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056D7D4  4B BD 7F 29 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056D7D8  38 00 00 00 */	li r0, 0
/* 8056D7DC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056D7E0  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056D7E4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056D7E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056D7EC  38 00 00 01 */	li r0, 1
/* 8056D7F0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056D7F4:
/* 8056D7F4  38 00 00 00 */	li r0, 0
/* 8056D7F8  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 8056D7FC  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 8056D800  38 00 00 01 */	li r0, 1
/* 8056D804  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056D808  48 00 06 D4 */	b lbl_8056DEDC
lbl_8056D80C:
/* 8056D80C  7F E3 FB 78 */	mr r3, r31
/* 8056D810  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 8056D814  38 A1 00 10 */	addi r5, r1, 0x10
/* 8056D818  4B BD E3 D9 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056D81C  48 00 06 C0 */	b lbl_8056DEDC
lbl_8056D820:
/* 8056D820  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 8056D824  4B BD 7E E5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056D828  7C 78 1B 78 */	mr r24, r3
/* 8056D82C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056D830  4B BD 7E D9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056D834  7C 63 C0 50 */	subf r3, r3, r24
/* 8056D838  30 03 FF FF */	addic r0, r3, -1
/* 8056D83C  7C 00 19 10 */	subfe r0, r0, r3
/* 8056D840  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056D844  40 82 00 10 */	bne lbl_8056D854
/* 8056D848  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056D84C  2C 00 00 02 */	cmpwi r0, 2
/* 8056D850  41 82 00 30 */	beq lbl_8056D880
lbl_8056D854:
/* 8056D854  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056D858  4B BD 7E A5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056D85C  38 00 00 00 */	li r0, 0
/* 8056D860  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056D864  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056D868  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056D86C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056D870  38 00 00 02 */	li r0, 2
/* 8056D874  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 8056D878  38 00 00 01 */	li r0, 1
/* 8056D87C  48 00 00 08 */	b lbl_8056D884
lbl_8056D880:
/* 8056D880  38 00 00 00 */	li r0, 0
lbl_8056D884:
/* 8056D884  2C 00 00 00 */	cmpwi r0, 0
/* 8056D888  41 82 00 28 */	beq lbl_8056D8B0
/* 8056D88C  7F 03 C3 78 */	mr r3, r24
/* 8056D890  4B AA B4 51 */	bl fopAc_IsActor__FPv
/* 8056D894  2C 03 00 00 */	cmpwi r3, 0
/* 8056D898  41 82 00 18 */	beq lbl_8056D8B0
/* 8056D89C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056D8A0  7F 04 C3 78 */	mr r4, r24
/* 8056D8A4  4B BD 7E 3D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056D8A8  C0 1D 01 5C */	lfs f0, 0x15c(r29)
/* 8056D8AC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
lbl_8056D8B0:
/* 8056D8B0  38 00 00 00 */	li r0, 0
/* 8056D8B4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056D8B8  48 00 06 24 */	b lbl_8056DEDC
lbl_8056D8BC:
/* 8056D8BC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056D8C0  2C 00 00 01 */	cmpwi r0, 1
/* 8056D8C4  41 82 00 28 */	beq lbl_8056D8EC
/* 8056D8C8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056D8CC  4B BD 7E 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056D8D0  38 00 00 00 */	li r0, 0
/* 8056D8D4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056D8D8  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056D8DC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056D8E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056D8E4  38 00 00 01 */	li r0, 1
/* 8056D8E8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056D8EC:
/* 8056D8EC  38 00 00 00 */	li r0, 0
/* 8056D8F0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056D8F4  48 00 05 E8 */	b lbl_8056DEDC
lbl_8056D8F8:
/* 8056D8F8  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 8056D8FC  4B BD 7E 0D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056D900  7C 78 1B 78 */	mr r24, r3
/* 8056D904  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056D908  4B BD 7E 01 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056D90C  7C 63 C0 50 */	subf r3, r3, r24
/* 8056D910  30 03 FF FF */	addic r0, r3, -1
/* 8056D914  7C 00 19 10 */	subfe r0, r0, r3
/* 8056D918  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056D91C  40 82 00 10 */	bne lbl_8056D92C
/* 8056D920  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056D924  2C 00 00 02 */	cmpwi r0, 2
/* 8056D928  41 82 00 30 */	beq lbl_8056D958
lbl_8056D92C:
/* 8056D92C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056D930  4B BD 7D CD */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056D934  38 00 00 00 */	li r0, 0
/* 8056D938  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056D93C  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056D940  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056D944  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056D948  38 00 00 02 */	li r0, 2
/* 8056D94C  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 8056D950  38 00 00 01 */	li r0, 1
/* 8056D954  48 00 00 08 */	b lbl_8056D95C
lbl_8056D958:
/* 8056D958  38 00 00 00 */	li r0, 0
lbl_8056D95C:
/* 8056D95C  2C 00 00 00 */	cmpwi r0, 0
/* 8056D960  41 82 00 28 */	beq lbl_8056D988
/* 8056D964  7F 03 C3 78 */	mr r3, r24
/* 8056D968  4B AA B3 79 */	bl fopAc_IsActor__FPv
/* 8056D96C  2C 03 00 00 */	cmpwi r3, 0
/* 8056D970  41 82 00 18 */	beq lbl_8056D988
/* 8056D974  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056D978  7F 04 C3 78 */	mr r4, r24
/* 8056D97C  4B BD 7D 65 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056D980  C0 1D 01 5C */	lfs f0, 0x15c(r29)
/* 8056D984  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
lbl_8056D988:
/* 8056D988  38 00 00 00 */	li r0, 0
/* 8056D98C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056D990  48 00 05 4C */	b lbl_8056DEDC
lbl_8056D994:
/* 8056D994  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 8056D998  4B BD 7D 71 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056D99C  7C 78 1B 78 */	mr r24, r3
/* 8056D9A0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056D9A4  4B BD 7D 65 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056D9A8  7C 63 C0 50 */	subf r3, r3, r24
/* 8056D9AC  30 03 FF FF */	addic r0, r3, -1
/* 8056D9B0  7C 00 19 10 */	subfe r0, r0, r3
/* 8056D9B4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056D9B8  40 82 00 10 */	bne lbl_8056D9C8
/* 8056D9BC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056D9C0  2C 00 00 02 */	cmpwi r0, 2
/* 8056D9C4  41 82 00 30 */	beq lbl_8056D9F4
lbl_8056D9C8:
/* 8056D9C8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056D9CC  4B BD 7D 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056D9D0  38 00 00 00 */	li r0, 0
/* 8056D9D4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056D9D8  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056D9DC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056D9E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056D9E4  38 00 00 02 */	li r0, 2
/* 8056D9E8  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 8056D9EC  38 00 00 01 */	li r0, 1
/* 8056D9F0  48 00 00 08 */	b lbl_8056D9F8
lbl_8056D9F4:
/* 8056D9F4  38 00 00 00 */	li r0, 0
lbl_8056D9F8:
/* 8056D9F8  2C 00 00 00 */	cmpwi r0, 0
/* 8056D9FC  41 82 00 28 */	beq lbl_8056DA24
/* 8056DA00  7F 03 C3 78 */	mr r3, r24
/* 8056DA04  4B AA B2 DD */	bl fopAc_IsActor__FPv
/* 8056DA08  2C 03 00 00 */	cmpwi r3, 0
/* 8056DA0C  41 82 00 18 */	beq lbl_8056DA24
/* 8056DA10  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056DA14  7F 04 C3 78 */	mr r4, r24
/* 8056DA18  4B BD 7C C9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056DA1C  C0 1D 01 5C */	lfs f0, 0x15c(r29)
/* 8056DA20  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
lbl_8056DA24:
/* 8056DA24  38 00 00 00 */	li r0, 0
/* 8056DA28  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DA2C  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 8056DA30  7F 04 C3 78 */	mr r4, r24
/* 8056DA34  4B AD 5C 29 */	bl setPt2__14dEvt_control_cFPv
/* 8056DA38  48 00 04 A4 */	b lbl_8056DEDC
lbl_8056DA3C:
/* 8056DA3C  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 8056DA40  4B BD 7C C9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056DA44  7C 78 1B 78 */	mr r24, r3
/* 8056DA48  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056DA4C  4B BD 7C BD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056DA50  7C 63 C0 50 */	subf r3, r3, r24
/* 8056DA54  30 03 FF FF */	addic r0, r3, -1
/* 8056DA58  7C 00 19 10 */	subfe r0, r0, r3
/* 8056DA5C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056DA60  40 82 00 10 */	bne lbl_8056DA70
/* 8056DA64  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056DA68  2C 00 00 02 */	cmpwi r0, 2
/* 8056DA6C  41 82 00 30 */	beq lbl_8056DA9C
lbl_8056DA70:
/* 8056DA70  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056DA74  4B BD 7C 89 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056DA78  38 00 00 00 */	li r0, 0
/* 8056DA7C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056DA80  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056DA84  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056DA88  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DA8C  38 00 00 02 */	li r0, 2
/* 8056DA90  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 8056DA94  38 00 00 01 */	li r0, 1
/* 8056DA98  48 00 00 08 */	b lbl_8056DAA0
lbl_8056DA9C:
/* 8056DA9C  38 00 00 00 */	li r0, 0
lbl_8056DAA0:
/* 8056DAA0  2C 00 00 00 */	cmpwi r0, 0
/* 8056DAA4  41 82 00 28 */	beq lbl_8056DACC
/* 8056DAA8  7F 03 C3 78 */	mr r3, r24
/* 8056DAAC  4B AA B2 35 */	bl fopAc_IsActor__FPv
/* 8056DAB0  2C 03 00 00 */	cmpwi r3, 0
/* 8056DAB4  41 82 00 18 */	beq lbl_8056DACC
/* 8056DAB8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056DABC  7F 04 C3 78 */	mr r4, r24
/* 8056DAC0  4B BD 7C 21 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056DAC4  C0 1D 01 5C */	lfs f0, 0x15c(r29)
/* 8056DAC8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
lbl_8056DACC:
/* 8056DACC  38 00 00 00 */	li r0, 0
/* 8056DAD0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DAD4  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 8056DAD8  7F E4 FB 78 */	mr r4, r31
/* 8056DADC  4B AD 5B 81 */	bl setPt2__14dEvt_control_cFPv
/* 8056DAE0  48 00 03 FC */	b lbl_8056DEDC
lbl_8056DAE4:
/* 8056DAE4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056DAE8  2C 00 00 01 */	cmpwi r0, 1
/* 8056DAEC  41 82 00 28 */	beq lbl_8056DB14
/* 8056DAF0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056DAF4  4B BD 7C 09 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056DAF8  38 00 00 00 */	li r0, 0
/* 8056DAFC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056DB00  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056DB04  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056DB08  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DB0C  38 00 00 01 */	li r0, 1
/* 8056DB10  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056DB14:
/* 8056DB14  38 00 00 00 */	li r0, 0
/* 8056DB18  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DB1C  48 00 03 C0 */	b lbl_8056DEDC
lbl_8056DB20:
/* 8056DB20  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8056DB24  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056DB28  41 82 00 24 */	beq lbl_8056DB4C
/* 8056DB2C  83 1F 0B 5C */	lwz r24, 0xb5c(r31)
/* 8056DB30  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8056DB34  4B BD 7D 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056DB38  93 1F 0B 5C */	stw r24, 0xb5c(r31)
/* 8056DB3C  38 00 00 1F */	li r0, 0x1f
/* 8056DB40  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8056DB44  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 8056DB48  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8056DB4C:
/* 8056DB4C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8056DB50  2C 00 00 00 */	cmpwi r0, 0
/* 8056DB54  41 82 00 24 */	beq lbl_8056DB78
/* 8056DB58  83 1F 0B 80 */	lwz r24, 0xb80(r31)
/* 8056DB5C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8056DB60  4B BD 7D 39 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056DB64  93 1F 0B 80 */	stw r24, 0xb80(r31)
/* 8056DB68  38 00 00 00 */	li r0, 0
/* 8056DB6C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8056DB70  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 8056DB74  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8056DB78:
/* 8056DB78  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056DB7C  2C 00 00 01 */	cmpwi r0, 1
/* 8056DB80  41 82 00 28 */	beq lbl_8056DBA8
/* 8056DB84  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056DB88  4B BD 7B 75 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056DB8C  38 00 00 00 */	li r0, 0
/* 8056DB90  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056DB94  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056DB98  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056DB9C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DBA0  38 00 00 01 */	li r0, 1
/* 8056DBA4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056DBA8:
/* 8056DBA8  38 00 00 00 */	li r0, 0
/* 8056DBAC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DBB0  48 00 03 2C */	b lbl_8056DEDC
lbl_8056DBB4:
/* 8056DBB4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8056DBB8  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056DBBC  41 82 00 24 */	beq lbl_8056DBE0
/* 8056DBC0  83 1F 0B 5C */	lwz r24, 0xb5c(r31)
/* 8056DBC4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8056DBC8  4B BD 7C D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056DBCC  93 1F 0B 5C */	stw r24, 0xb5c(r31)
/* 8056DBD0  38 00 00 1F */	li r0, 0x1f
/* 8056DBD4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8056DBD8  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056DBDC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8056DBE0:
/* 8056DBE0  83 1F 0B 80 */	lwz r24, 0xb80(r31)
/* 8056DBE4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8056DBE8  4B BD 7C B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056DBEC  93 1F 0B 80 */	stw r24, 0xb80(r31)
/* 8056DBF0  38 00 00 00 */	li r0, 0
/* 8056DBF4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8056DBF8  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056DBFC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 8056DC00  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056DC04  2C 00 00 01 */	cmpwi r0, 1
/* 8056DC08  41 82 00 28 */	beq lbl_8056DC30
/* 8056DC0C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056DC10  4B BD 7A ED */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056DC14  38 00 00 00 */	li r0, 0
/* 8056DC18  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056DC1C  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056DC20  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056DC24  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DC28  38 00 00 01 */	li r0, 1
/* 8056DC2C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056DC30:
/* 8056DC30  38 00 00 00 */	li r0, 0
/* 8056DC34  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DC38  98 1F 11 A0 */	stb r0, 0x11a0(r31)
/* 8056DC3C  38 60 00 07 */	li r3, 7
/* 8056DC40  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8056DC44  7C 04 07 74 */	extsb r4, r0
/* 8056DC48  38 A1 00 38 */	addi r5, r1, 0x38
/* 8056DC4C  38 C1 00 18 */	addi r6, r1, 0x18
/* 8056DC50  4B BD E8 B1 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8056DC54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056DC58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056DC5C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8056DC60  38 81 00 38 */	addi r4, r1, 0x38
/* 8056DC64  A8 A1 00 1A */	lha r5, 0x1a(r1)
/* 8056DC68  38 C0 00 00 */	li r6, 0
/* 8056DC6C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8056DC70  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8056DC74  7D 89 03 A6 */	mtctr r12
/* 8056DC78  4E 80 04 21 */	bctrl 
/* 8056DC7C  7F 83 E3 78 */	mr r3, r28
/* 8056DC80  38 81 00 38 */	addi r4, r1, 0x38
/* 8056DC84  4B AD A7 41 */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 8056DC88  C0 5D 01 CC */	lfs f2, 0x1cc(r29)
/* 8056DC8C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8056DC90  C0 3D 01 D0 */	lfs f1, 0x1d0(r29)
/* 8056DC94  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8056DC98  C0 1D 01 D4 */	lfs f0, 0x1d4(r29)
/* 8056DC9C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8056DCA0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8056DCA4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8056DCA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8056DCAC  7F E3 FB 78 */	mr r3, r31
/* 8056DCB0  38 81 00 20 */	addi r4, r1, 0x20
/* 8056DCB4  4B BD CC 55 */	bl setPos__8daNpcT_cF4cXyz
/* 8056DCB8  7F E3 FB 78 */	mr r3, r31
/* 8056DCBC  38 80 0A AA */	li r4, 0xaaa
/* 8056DCC0  4B BD CD 59 */	bl setAngle__8daNpcT_cFs
/* 8056DCC4  48 00 02 18 */	b lbl_8056DEDC
lbl_8056DCC8:
/* 8056DCC8  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 8056DCCC  4B BD 7A 3D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056DCD0  7C 78 1B 78 */	mr r24, r3
/* 8056DCD4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056DCD8  4B BD 7A 31 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056DCDC  7C 63 C0 50 */	subf r3, r3, r24
/* 8056DCE0  30 03 FF FF */	addic r0, r3, -1
/* 8056DCE4  7C 00 19 10 */	subfe r0, r0, r3
/* 8056DCE8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056DCEC  40 82 00 10 */	bne lbl_8056DCFC
/* 8056DCF0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056DCF4  2C 00 00 02 */	cmpwi r0, 2
/* 8056DCF8  41 82 00 30 */	beq lbl_8056DD28
lbl_8056DCFC:
/* 8056DCFC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056DD00  4B BD 79 FD */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056DD04  38 00 00 00 */	li r0, 0
/* 8056DD08  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056DD0C  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056DD10  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056DD14  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DD18  38 00 00 02 */	li r0, 2
/* 8056DD1C  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 8056DD20  38 00 00 01 */	li r0, 1
/* 8056DD24  48 00 00 08 */	b lbl_8056DD2C
lbl_8056DD28:
/* 8056DD28  38 00 00 00 */	li r0, 0
lbl_8056DD2C:
/* 8056DD2C  2C 00 00 00 */	cmpwi r0, 0
/* 8056DD30  41 82 00 28 */	beq lbl_8056DD58
/* 8056DD34  7F 03 C3 78 */	mr r3, r24
/* 8056DD38  4B AA AF A9 */	bl fopAc_IsActor__FPv
/* 8056DD3C  2C 03 00 00 */	cmpwi r3, 0
/* 8056DD40  41 82 00 18 */	beq lbl_8056DD58
/* 8056DD44  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056DD48  7F 04 C3 78 */	mr r4, r24
/* 8056DD4C  4B BD 79 95 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056DD50  C0 1D 01 5C */	lfs f0, 0x15c(r29)
/* 8056DD54  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
lbl_8056DD58:
/* 8056DD58  38 00 00 00 */	li r0, 0
/* 8056DD5C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DD60  7F E3 FB 78 */	mr r3, r31
/* 8056DD64  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 8056DD68  38 A1 00 10 */	addi r5, r1, 0x10
/* 8056DD6C  4B BD DE 85 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056DD70  48 00 01 6C */	b lbl_8056DEDC
lbl_8056DD74:
/* 8056DD74  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 8056DD78  4B BD 79 91 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056DD7C  7C 64 1B 78 */	mr r4, r3
/* 8056DD80  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 8056DD84  4B AD 58 D9 */	bl setPt2__14dEvt_control_cFPv
/* 8056DD88  48 00 01 54 */	b lbl_8056DEDC
lbl_8056DD8C:
/* 8056DD8C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056DD90  2C 00 00 01 */	cmpwi r0, 1
/* 8056DD94  41 82 00 28 */	beq lbl_8056DDBC
/* 8056DD98  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056DD9C  4B BD 79 61 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056DDA0  38 00 00 00 */	li r0, 0
/* 8056DDA4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056DDA8  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056DDAC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056DDB0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DDB4  38 00 00 01 */	li r0, 1
/* 8056DDB8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056DDBC:
/* 8056DDBC  38 00 00 00 */	li r0, 0
/* 8056DDC0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DDC4  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 8056DDC8  7F E4 FB 78 */	mr r4, r31
/* 8056DDCC  4B AD 58 91 */	bl setPt2__14dEvt_control_cFPv
/* 8056DDD0  48 00 01 0C */	b lbl_8056DEDC
lbl_8056DDD4:
/* 8056DDD4  38 60 00 07 */	li r3, 7
/* 8056DDD8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8056DDDC  7C 04 07 74 */	extsb r4, r0
/* 8056DDE0  38 A1 00 38 */	addi r5, r1, 0x38
/* 8056DDE4  38 C1 00 18 */	addi r6, r1, 0x18
/* 8056DDE8  4B BD E7 19 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8056DDEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056DDF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056DDF4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8056DDF8  38 81 00 38 */	addi r4, r1, 0x38
/* 8056DDFC  A8 A1 00 1A */	lha r5, 0x1a(r1)
/* 8056DE00  38 C0 00 00 */	li r6, 0
/* 8056DE04  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8056DE08  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8056DE0C  7D 89 03 A6 */	mtctr r12
/* 8056DE10  4E 80 04 21 */	bctrl 
/* 8056DE14  7F 83 E3 78 */	mr r3, r28
/* 8056DE18  38 81 00 38 */	addi r4, r1, 0x38
/* 8056DE1C  4B AD A5 A9 */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 8056DE20  48 00 00 BC */	b lbl_8056DEDC
lbl_8056DE24:
/* 8056DE24  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8056DE28  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056DE2C  41 82 00 24 */	beq lbl_8056DE50
/* 8056DE30  83 1F 0B 5C */	lwz r24, 0xb5c(r31)
/* 8056DE34  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8056DE38  4B BD 7A 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056DE3C  93 1F 0B 5C */	stw r24, 0xb5c(r31)
/* 8056DE40  38 00 00 1F */	li r0, 0x1f
/* 8056DE44  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8056DE48  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056DE4C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8056DE50:
/* 8056DE50  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8056DE54  2C 00 00 00 */	cmpwi r0, 0
/* 8056DE58  41 82 00 24 */	beq lbl_8056DE7C
/* 8056DE5C  83 1F 0B 80 */	lwz r24, 0xb80(r31)
/* 8056DE60  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8056DE64  4B BD 7A 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056DE68  93 1F 0B 80 */	stw r24, 0xb80(r31)
/* 8056DE6C  38 00 00 00 */	li r0, 0
/* 8056DE70  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8056DE74  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056DE78  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8056DE7C:
/* 8056DE7C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056DE80  2C 00 00 01 */	cmpwi r0, 1
/* 8056DE84  41 82 00 28 */	beq lbl_8056DEAC
/* 8056DE88  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056DE8C  4B BD 78 71 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056DE90  38 00 00 00 */	li r0, 0
/* 8056DE94  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056DE98  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056DE9C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056DEA0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DEA4  38 00 00 01 */	li r0, 1
/* 8056DEA8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056DEAC:
/* 8056DEAC  38 00 00 00 */	li r0, 0
/* 8056DEB0  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 8056DEB4  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 8056DEB8  38 00 00 01 */	li r0, 1
/* 8056DEBC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056DEC0  7F E3 FB 78 */	mr r3, r31
/* 8056DEC4  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 8056DEC8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8056DECC  4B BD DD 25 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056DED0  7F E3 FB 78 */	mr r3, r31
/* 8056DED4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8056DED8  4B BD CB 41 */	bl setAngle__8daNpcT_cFs
lbl_8056DEDC:
/* 8056DEDC  80 7D 02 28 */	lwz r3, 0x228(r29)
/* 8056DEE0  80 1D 02 2C */	lwz r0, 0x22c(r29)
/* 8056DEE4  90 61 00 08 */	stw r3, 8(r1)
/* 8056DEE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8056DEEC  28 1A 00 28 */	cmplwi r26, 0x28
/* 8056DEF0  41 81 00 9C */	bgt lbl_8056DF8C
/* 8056DEF4  3C 60 80 57 */	lis r3, lit_8208@ha /* 0x805731A8@ha */
/* 8056DEF8  38 63 31 A8 */	addi r3, r3, lit_8208@l /* 0x805731A8@l */
/* 8056DEFC  57 40 10 3A */	slwi r0, r26, 2
/* 8056DF00  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056DF04  7C 09 03 A6 */	mtctr r0
/* 8056DF08  4E 80 04 20 */	bctr 
lbl_8056DF0C:
/* 8056DF0C  7F E3 FB 78 */	mr r3, r31
/* 8056DF10  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 8056DF14  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8056DF18  7D 89 03 A6 */	mtctr r12
/* 8056DF1C  4E 80 04 21 */	bctrl 
/* 8056DF20  3B 60 00 01 */	li r27, 1
/* 8056DF24  48 00 00 6C */	b lbl_8056DF90
lbl_8056DF28:
/* 8056DF28  3B 60 00 01 */	li r27, 1
/* 8056DF2C  48 00 00 64 */	b lbl_8056DF90
lbl_8056DF30:
/* 8056DF30  93 21 00 08 */	stw r25, 8(r1)
lbl_8056DF34:
/* 8056DF34  7F E3 FB 78 */	mr r3, r31
/* 8056DF38  38 81 00 08 */	addi r4, r1, 8
/* 8056DF3C  38 A0 00 01 */	li r5, 1
/* 8056DF40  38 C1 00 10 */	addi r6, r1, 0x10
/* 8056DF44  38 E0 00 00 */	li r7, 0
/* 8056DF48  4B BD DD 31 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056DF4C  2C 03 00 00 */	cmpwi r3, 0
/* 8056DF50  41 82 00 40 */	beq lbl_8056DF90
/* 8056DF54  3B 60 00 01 */	li r27, 1
/* 8056DF58  48 00 00 38 */	b lbl_8056DF90
lbl_8056DF5C:
/* 8056DF5C  3B 60 00 01 */	li r27, 1
/* 8056DF60  48 00 00 30 */	b lbl_8056DF90
lbl_8056DF64:
/* 8056DF64  7F E3 FB 78 */	mr r3, r31
/* 8056DF68  38 80 00 00 */	li r4, 0
/* 8056DF6C  38 A0 00 01 */	li r5, 1
/* 8056DF70  38 C1 00 10 */	addi r6, r1, 0x10
/* 8056DF74  38 E0 00 00 */	li r7, 0
/* 8056DF78  4B BD DD 01 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056DF7C  2C 03 00 00 */	cmpwi r3, 0
/* 8056DF80  41 82 00 10 */	beq lbl_8056DF90
/* 8056DF84  3B 60 00 01 */	li r27, 1
/* 8056DF88  48 00 00 08 */	b lbl_8056DF90
lbl_8056DF8C:
/* 8056DF8C  3B 60 00 01 */	li r27, 1
lbl_8056DF90:
/* 8056DF90  7F 63 DB 78 */	mr r3, r27
/* 8056DF94  39 61 00 70 */	addi r11, r1, 0x70
/* 8056DF98  4B DF 42 7D */	bl _restgpr_24
/* 8056DF9C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8056DFA0  7C 08 03 A6 */	mtlr r0
/* 8056DFA4  38 21 00 70 */	addi r1, r1, 0x70
/* 8056DFA8  4E 80 00 20 */	blr 
