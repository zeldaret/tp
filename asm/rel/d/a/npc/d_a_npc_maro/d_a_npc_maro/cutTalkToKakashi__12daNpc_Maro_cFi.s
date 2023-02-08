lbl_80561E70:
/* 80561E70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80561E74  7C 08 02 A6 */	mflr r0
/* 80561E78  90 01 00 44 */	stw r0, 0x44(r1)
/* 80561E7C  39 61 00 40 */	addi r11, r1, 0x40
/* 80561E80  4B E0 03 4D */	bl _savegpr_25
/* 80561E84  7C 7B 1B 78 */	mr r27, r3
/* 80561E88  7C 99 23 78 */	mr r25, r4
/* 80561E8C  3C 60 80 56 */	lis r3, m__18daNpc_Maro_Param_c@ha /* 0x80564BAC@ha */
/* 80561E90  3B E3 4B AC */	addi r31, r3, m__18daNpc_Maro_Param_c@l /* 0x80564BAC@l */
/* 80561E94  3B A0 00 00 */	li r29, 0
/* 80561E98  3B 80 FF FF */	li r28, -1
/* 80561E9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80561EA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80561EA4  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80561EA8  3B 5E 40 C0 */	addi r26, r30, 0x40c0
/* 80561EAC  7F 43 D3 78 */	mr r3, r26
/* 80561EB0  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 80561EB4  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 80561EB8  38 A5 02 1B */	addi r5, r5, 0x21b
/* 80561EBC  38 C0 00 03 */	li r6, 3
/* 80561EC0  4B AE 62 2D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80561EC4  28 03 00 00 */	cmplwi r3, 0
/* 80561EC8  41 82 00 08 */	beq lbl_80561ED0
/* 80561ECC  83 83 00 00 */	lwz r28, 0(r3)
lbl_80561ED0:
/* 80561ED0  7F 43 D3 78 */	mr r3, r26
/* 80561ED4  7F 24 CB 78 */	mr r4, r25
/* 80561ED8  4B AE 5E 75 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80561EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80561EE0  41 82 02 10 */	beq lbl_805620F0
/* 80561EE4  2C 1C 00 01 */	cmpwi r28, 1
/* 80561EE8  41 82 00 FC */	beq lbl_80561FE4
/* 80561EEC  40 80 02 04 */	bge lbl_805620F0
/* 80561EF0  2C 1C 00 00 */	cmpwi r28, 0
/* 80561EF4  40 80 00 08 */	bge lbl_80561EFC
/* 80561EF8  48 00 01 F8 */	b lbl_805620F0
lbl_80561EFC:
/* 80561EFC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561F00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80561F04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80561F08  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80561F0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80561F10  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80561F14  4B AA AE 51 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80561F18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80561F1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80561F20  A8 9B 0D 7A */	lha r4, 0xd7a(r27)
/* 80561F24  4B AA A5 11 */	bl mDoMtx_YrotM__FPA4_fs
/* 80561F28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80561F2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80561F30  38 81 00 14 */	addi r4, r1, 0x14
/* 80561F34  38 A1 00 08 */	addi r5, r1, 8
/* 80561F38  4B DE 4E 35 */	bl PSMTXMultVec
/* 80561F3C  38 61 00 08 */	addi r3, r1, 8
/* 80561F40  4B AA AE 25 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80561F44  38 61 00 08 */	addi r3, r1, 8
/* 80561F48  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80561F4C  3B 44 61 C0 */	addi r26, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80561F50  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80561F54  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80561F58  4B D0 EC AD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80561F5C  7C 64 1B 78 */	mr r4, r3
/* 80561F60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80561F64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80561F68  4B AA A4 CD */	bl mDoMtx_YrotM__FPA4_fs
/* 80561F6C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561F70  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80561F74  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80561F78  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80561F7C  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80561F80  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80561F84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80561F88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80561F8C  38 81 00 14 */	addi r4, r1, 0x14
/* 80561F90  38 A1 00 08 */	addi r5, r1, 8
/* 80561F94  4B DE 4D D9 */	bl PSMTXMultVec
/* 80561F98  38 7B 09 30 */	addi r3, r27, 0x930
/* 80561F9C  38 81 00 08 */	addi r4, r1, 8
/* 80561FA0  4B D0 5D 89 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80561FA4  7F C3 F3 78 */	mr r3, r30
/* 80561FA8  38 9B 09 30 */	addi r4, r27, 0x930
/* 80561FAC  4B B1 24 F5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80561FB0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80561FB4  38 61 00 08 */	addi r3, r1, 8
/* 80561FB8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80561FBC  4B D0 EC 49 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80561FC0  7C 65 1B 78 */	mr r5, r3
/* 80561FC4  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 80561FC8  38 81 00 08 */	addi r4, r1, 8
/* 80561FCC  38 C0 00 00 */	li r6, 0
/* 80561FD0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80561FD4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80561FD8  7D 89 03 A6 */	mtctr r12
/* 80561FDC  4E 80 04 21 */	bctrl 
/* 80561FE0  48 00 01 10 */	b lbl_805620F0
lbl_80561FE4:
/* 80561FE4  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 80561FE8  2C 00 00 09 */	cmpwi r0, 9
/* 80561FEC  41 82 00 24 */	beq lbl_80562010
/* 80561FF0  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 80561FF4  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 80561FF8  4B BE 38 A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80561FFC  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 80562000  38 00 00 09 */	li r0, 9
/* 80562004  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 80562008  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8056200C  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_80562010:
/* 80562010  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80562014  2C 00 00 00 */	cmpwi r0, 0
/* 80562018  41 82 00 24 */	beq lbl_8056203C
/* 8056201C  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 80562020  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80562024  4B BE 38 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562028  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 8056202C  38 00 00 00 */	li r0, 0
/* 80562030  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80562034  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80562038  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8056203C:
/* 8056203C  38 7B 10 C4 */	addi r3, r27, 0x10c4
/* 80562040  4B BE 36 C9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80562044  7C 7A 1B 78 */	mr r26, r3
/* 80562048  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8056204C  4B BE 36 BD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80562050  7C 63 D0 50 */	subf r3, r3, r26
/* 80562054  30 03 FF FF */	addic r0, r3, -1
/* 80562058  7C 00 19 10 */	subfe r0, r0, r3
/* 8056205C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80562060  40 82 00 10 */	bne lbl_80562070
/* 80562064  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80562068  2C 00 00 02 */	cmpwi r0, 2
/* 8056206C  41 82 00 30 */	beq lbl_8056209C
lbl_80562070:
/* 80562070  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80562074  4B BE 36 89 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562078  38 00 00 00 */	li r0, 0
/* 8056207C  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80562080  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80562084  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80562088  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056208C  38 00 00 02 */	li r0, 2
/* 80562090  90 1B 0C E0 */	stw r0, 0xce0(r27)
/* 80562094  38 00 00 01 */	li r0, 1
/* 80562098  48 00 00 08 */	b lbl_805620A0
lbl_8056209C:
/* 8056209C  38 00 00 00 */	li r0, 0
lbl_805620A0:
/* 805620A0  2C 00 00 00 */	cmpwi r0, 0
/* 805620A4  41 82 00 28 */	beq lbl_805620CC
/* 805620A8  7F 43 D3 78 */	mr r3, r26
/* 805620AC  4B AB 6C 35 */	bl fopAc_IsActor__FPv
/* 805620B0  2C 03 00 00 */	cmpwi r3, 0
/* 805620B4  41 82 00 18 */	beq lbl_805620CC
/* 805620B8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 805620BC  7F 44 D3 78 */	mr r4, r26
/* 805620C0  4B BE 36 21 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 805620C4  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 805620C8  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
lbl_805620CC:
/* 805620CC  38 00 00 00 */	li r0, 0
/* 805620D0  B0 1B 0C D4 */	sth r0, 0xcd4(r27)
/* 805620D4  B0 1B 0C D6 */	sth r0, 0xcd6(r27)
/* 805620D8  38 00 00 01 */	li r0, 1
/* 805620DC  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 805620E0  7F 63 DB 78 */	mr r3, r27
/* 805620E4  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 805620E8  38 A0 00 00 */	li r5, 0
/* 805620EC  4B BE 9B 05 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_805620F0:
/* 805620F0  2C 1C 00 01 */	cmpwi r28, 1
/* 805620F4  41 82 00 38 */	beq lbl_8056212C
/* 805620F8  40 80 00 5C */	bge lbl_80562154
/* 805620FC  2C 1C 00 00 */	cmpwi r28, 0
/* 80562100  40 80 00 08 */	bge lbl_80562108
/* 80562104  48 00 00 50 */	b lbl_80562154
lbl_80562108:
/* 80562108  38 00 00 01 */	li r0, 1
/* 8056210C  90 1B 0D BC */	stw r0, 0xdbc(r27)
/* 80562110  7F 63 DB 78 */	mr r3, r27
/* 80562114  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 80562118  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8056211C  7D 89 03 A6 */	mtctr r12
/* 80562120  4E 80 04 21 */	bctrl 
/* 80562124  3B A0 00 01 */	li r29, 1
/* 80562128  48 00 00 30 */	b lbl_80562158
lbl_8056212C:
/* 8056212C  7F 63 DB 78 */	mr r3, r27
/* 80562130  38 80 00 00 */	li r4, 0
/* 80562134  38 A0 00 00 */	li r5, 0
/* 80562138  38 C0 00 00 */	li r6, 0
/* 8056213C  38 E0 00 00 */	li r7, 0
/* 80562140  4B BE 9B 39 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80562144  2C 03 00 00 */	cmpwi r3, 0
/* 80562148  41 82 00 10 */	beq lbl_80562158
/* 8056214C  3B A0 00 01 */	li r29, 1
/* 80562150  48 00 00 08 */	b lbl_80562158
lbl_80562154:
/* 80562154  3B A0 00 01 */	li r29, 1
lbl_80562158:
/* 80562158  7F A3 EB 78 */	mr r3, r29
/* 8056215C  39 61 00 40 */	addi r11, r1, 0x40
/* 80562160  4B E0 00 B9 */	bl _restgpr_25
/* 80562164  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80562168  7C 08 03 A6 */	mtlr r0
/* 8056216C  38 21 00 40 */	addi r1, r1, 0x40
/* 80562170  4E 80 00 20 */	blr 
