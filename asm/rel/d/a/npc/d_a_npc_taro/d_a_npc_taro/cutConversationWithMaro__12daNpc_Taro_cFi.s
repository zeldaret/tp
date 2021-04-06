lbl_8056C14C:
/* 8056C14C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8056C150  7C 08 02 A6 */	mflr r0
/* 8056C154  90 01 00 44 */	stw r0, 0x44(r1)
/* 8056C158  39 61 00 40 */	addi r11, r1, 0x40
/* 8056C15C  4B DF 60 6D */	bl _savegpr_24
/* 8056C160  7C 78 1B 78 */	mr r24, r3
/* 8056C164  7C 99 23 78 */	mr r25, r4
/* 8056C168  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha /* 0x805716C8@ha */
/* 8056C16C  3B E3 16 C8 */	addi r31, r3, m__18daNpc_Taro_Param_c@l /* 0x805716C8@l */
/* 8056C170  3B A0 00 00 */	li r29, 0
/* 8056C174  3B 80 FF FF */	li r28, -1
/* 8056C178  3B 60 00 00 */	li r27, 0
/* 8056C17C  3B 40 00 00 */	li r26, 0
/* 8056C180  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056C184  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056C188  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8056C18C  7F C3 F3 78 */	mr r3, r30
/* 8056C190  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056C194  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056C198  38 A5 02 9C */	addi r5, r5, 0x29c
/* 8056C19C  38 C0 00 03 */	li r6, 3
/* 8056C1A0  4B AD BF 4D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056C1A4  28 03 00 00 */	cmplwi r3, 0
/* 8056C1A8  41 82 00 08 */	beq lbl_8056C1B0
/* 8056C1AC  83 83 00 00 */	lwz r28, 0(r3)
lbl_8056C1B0:
/* 8056C1B0  7F C3 F3 78 */	mr r3, r30
/* 8056C1B4  7F 24 CB 78 */	mr r4, r25
/* 8056C1B8  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056C1BC  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056C1C0  38 A5 02 A6 */	addi r5, r5, 0x2a6
/* 8056C1C4  38 C0 00 03 */	li r6, 3
/* 8056C1C8  4B AD BF 25 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056C1CC  28 03 00 00 */	cmplwi r3, 0
/* 8056C1D0  41 82 00 08 */	beq lbl_8056C1D8
/* 8056C1D4  83 63 00 00 */	lwz r27, 0(r3)
lbl_8056C1D8:
/* 8056C1D8  7F C3 F3 78 */	mr r3, r30
/* 8056C1DC  7F 24 CB 78 */	mr r4, r25
/* 8056C1E0  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056C1E4  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056C1E8  38 A5 02 AC */	addi r5, r5, 0x2ac
/* 8056C1EC  38 C0 00 03 */	li r6, 3
/* 8056C1F0  4B AD BE FD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056C1F4  28 03 00 00 */	cmplwi r3, 0
/* 8056C1F8  41 82 00 08 */	beq lbl_8056C200
/* 8056C1FC  83 43 00 00 */	lwz r26, 0(r3)
lbl_8056C200:
/* 8056C200  80 7F 01 F4 */	lwz r3, 0x1f4(r31)
/* 8056C204  80 1F 01 F8 */	lwz r0, 0x1f8(r31)
/* 8056C208  90 61 00 08 */	stw r3, 8(r1)
/* 8056C20C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8056C210  93 01 00 08 */	stw r24, 8(r1)
/* 8056C214  38 78 10 C8 */	addi r3, r24, 0x10c8
/* 8056C218  4B BD 94 F1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056C21C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8056C220  80 01 00 08 */	lwz r0, 8(r1)
/* 8056C224  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056C228  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056C22C  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 8056C230  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 8056C234  38 00 00 00 */	li r0, 0
/* 8056C238  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 8056C23C  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 8056C240  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 8056C244  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 8056C248  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 8056C24C  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 8056C250  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 8056C254  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 8056C258  7F C3 F3 78 */	mr r3, r30
/* 8056C25C  7F 24 CB 78 */	mr r4, r25
/* 8056C260  4B AD BA ED */	bl getIsAddvance__16dEvent_manager_cFi
/* 8056C264  2C 03 00 00 */	cmpwi r3, 0
/* 8056C268  41 82 00 60 */	beq lbl_8056C2C8
/* 8056C26C  2C 1C 00 04 */	cmpwi r28, 4
/* 8056C270  41 82 00 38 */	beq lbl_8056C2A8
/* 8056C274  40 80 00 54 */	bge lbl_8056C2C8
/* 8056C278  2C 1C 00 00 */	cmpwi r28, 0
/* 8056C27C  41 82 00 08 */	beq lbl_8056C284
/* 8056C280  48 00 00 48 */	b lbl_8056C2C8
lbl_8056C284:
/* 8056C284  7F 03 C3 78 */	mr r3, r24
/* 8056C288  80 98 0A 7C */	lwz r4, 0xa7c(r24)
/* 8056C28C  38 A1 00 08 */	addi r5, r1, 8
/* 8056C290  4B BD F9 61 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056C294  7F 03 C3 78 */	mr r3, r24
/* 8056C298  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8056C29C  4B AA E4 75 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8056C2A0  B0 78 0D C8 */	sth r3, 0xdc8(r24)
/* 8056C2A4  48 00 00 24 */	b lbl_8056C2C8
lbl_8056C2A8:
/* 8056C2A8  7F 03 C3 78 */	mr r3, r24
/* 8056C2AC  80 98 0A 7C */	lwz r4, 0xa7c(r24)
/* 8056C2B0  38 A1 00 08 */	addi r5, r1, 8
/* 8056C2B4  4B BD F9 3D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056C2B8  7F 03 C3 78 */	mr r3, r24
/* 8056C2BC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8056C2C0  4B AA E4 51 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8056C2C4  B0 78 0D C8 */	sth r3, 0xdc8(r24)
lbl_8056C2C8:
/* 8056C2C8  80 7F 01 FC */	lwz r3, 0x1fc(r31)
/* 8056C2CC  80 1F 02 00 */	lwz r0, 0x200(r31)
/* 8056C2D0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8056C2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056C2D8  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 8056C2DC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8056C2E0  2C 1C 00 00 */	cmpwi r28, 0
/* 8056C2E4  41 82 00 14 */	beq lbl_8056C2F8
/* 8056C2E8  41 80 02 B0 */	blt lbl_8056C598
/* 8056C2EC  2C 1C 00 05 */	cmpwi r28, 5
/* 8056C2F0  40 80 02 A8 */	bge lbl_8056C598
/* 8056C2F4  48 00 01 04 */	b lbl_8056C3F8
lbl_8056C2F8:
/* 8056C2F8  83 21 00 0C */	lwz r25, 0xc(r1)
/* 8056C2FC  38 78 0B A8 */	addi r3, r24, 0xba8
/* 8056C300  4B BD 94 09 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056C304  7C 63 C8 50 */	subf r3, r3, r25
/* 8056C308  30 03 FF FF */	addic r0, r3, -1
/* 8056C30C  7C 00 19 10 */	subfe r0, r0, r3
/* 8056C310  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056C314  40 82 00 10 */	bne lbl_8056C324
/* 8056C318  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 8056C31C  2C 00 00 02 */	cmpwi r0, 2
/* 8056C320  41 82 00 30 */	beq lbl_8056C350
lbl_8056C324:
/* 8056C324  38 78 0B A8 */	addi r3, r24, 0xba8
/* 8056C328  4B BD 93 D5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056C32C  38 00 00 00 */	li r0, 0
/* 8056C330  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 8056C334  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056C338  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 8056C33C  98 18 0C FF */	stb r0, 0xcff(r24)
/* 8056C340  38 00 00 02 */	li r0, 2
/* 8056C344  90 18 0C E0 */	stw r0, 0xce0(r24)
/* 8056C348  38 00 00 01 */	li r0, 1
/* 8056C34C  48 00 00 08 */	b lbl_8056C354
lbl_8056C350:
/* 8056C350  38 00 00 00 */	li r0, 0
lbl_8056C354:
/* 8056C354  2C 00 00 00 */	cmpwi r0, 0
/* 8056C358  41 82 00 28 */	beq lbl_8056C380
/* 8056C35C  7F 23 CB 78 */	mr r3, r25
/* 8056C360  4B AA C9 81 */	bl fopAc_IsActor__FPv
/* 8056C364  2C 03 00 00 */	cmpwi r3, 0
/* 8056C368  41 82 00 18 */	beq lbl_8056C380
/* 8056C36C  38 78 0B A8 */	addi r3, r24, 0xba8
/* 8056C370  7F 24 CB 78 */	mr r4, r25
/* 8056C374  4B BD 93 6D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056C378  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 8056C37C  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
lbl_8056C380:
/* 8056C380  38 00 00 00 */	li r0, 0
/* 8056C384  98 18 0C FF */	stb r0, 0xcff(r24)
/* 8056C388  A8 98 0D C8 */	lha r4, 0xdc8(r24)
/* 8056C38C  A8 18 0D 7A */	lha r0, 0xd7a(r24)
/* 8056C390  7C 04 00 00 */	cmpw r4, r0
/* 8056C394  40 82 00 0C */	bne lbl_8056C3A0
/* 8056C398  3B A0 00 01 */	li r29, 1
/* 8056C39C  48 00 00 50 */	b lbl_8056C3EC
lbl_8056C3A0:
/* 8056C3A0  7F 03 C3 78 */	mr r3, r24
/* 8056C3A4  38 A0 FF FF */	li r5, -1
/* 8056C3A8  38 C0 00 24 */	li r6, 0x24
/* 8056C3AC  38 E0 00 0F */	li r7, 0xf
/* 8056C3B0  39 00 00 00 */	li r8, 0
/* 8056C3B4  4B BD F2 95 */	bl step__8daNpcT_cFsiiii
/* 8056C3B8  2C 03 00 00 */	cmpwi r3, 0
/* 8056C3BC  41 82 00 30 */	beq lbl_8056C3EC
/* 8056C3C0  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 8056C3C4  2C 00 00 19 */	cmpwi r0, 0x19
/* 8056C3C8  41 82 00 24 */	beq lbl_8056C3EC
/* 8056C3CC  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 8056C3D0  38 78 0B 74 */	addi r3, r24, 0xb74
/* 8056C3D4  4B BD 94 C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056C3D8  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 8056C3DC  38 00 00 19 */	li r0, 0x19
/* 8056C3E0  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 8056C3E4  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056C3E8  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_8056C3EC:
/* 8056C3EC  A8 18 0D C8 */	lha r0, 0xdc8(r24)
/* 8056C3F0  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 8056C3F4  48 00 01 A4 */	b lbl_8056C598
lbl_8056C3F8:
/* 8056C3F8  38 1C FF FE */	addi r0, r28, -2
/* 8056C3FC  28 00 00 01 */	cmplwi r0, 1
/* 8056C400  40 81 00 0C */	ble lbl_8056C40C
/* 8056C404  2C 1C 00 04 */	cmpwi r28, 4
/* 8056C408  40 82 00 A8 */	bne lbl_8056C4B0
lbl_8056C40C:
/* 8056C40C  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 8056C410  2C 00 00 00 */	cmpwi r0, 0
/* 8056C414  41 82 00 24 */	beq lbl_8056C438
/* 8056C418  38 78 0B A8 */	addi r3, r24, 0xba8
/* 8056C41C  4B BD 92 E1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056C420  38 00 00 00 */	li r0, 0
/* 8056C424  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 8056C428  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056C42C  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 8056C430  98 18 0C FF */	stb r0, 0xcff(r24)
/* 8056C434  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_8056C438:
/* 8056C438  38 00 00 00 */	li r0, 0
/* 8056C43C  98 18 0C FF */	stb r0, 0xcff(r24)
/* 8056C440  A8 98 04 B6 */	lha r4, 0x4b6(r24)
/* 8056C444  A8 18 0D 7A */	lha r0, 0xd7a(r24)
/* 8056C448  7C 04 00 00 */	cmpw r4, r0
/* 8056C44C  40 82 00 14 */	bne lbl_8056C460
/* 8056C450  2C 1C 00 03 */	cmpwi r28, 3
/* 8056C454  40 82 00 EC */	bne lbl_8056C540
/* 8056C458  3B A0 00 01 */	li r29, 1
/* 8056C45C  48 00 00 E4 */	b lbl_8056C540
lbl_8056C460:
/* 8056C460  7F 03 C3 78 */	mr r3, r24
/* 8056C464  38 A0 FF FF */	li r5, -1
/* 8056C468  38 C0 00 24 */	li r6, 0x24
/* 8056C46C  38 E0 00 0F */	li r7, 0xf
/* 8056C470  39 00 00 00 */	li r8, 0
/* 8056C474  4B BD F1 D5 */	bl step__8daNpcT_cFsiiii
/* 8056C478  2C 03 00 00 */	cmpwi r3, 0
/* 8056C47C  41 82 00 C4 */	beq lbl_8056C540
/* 8056C480  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 8056C484  2C 00 00 19 */	cmpwi r0, 0x19
/* 8056C488  41 82 00 B8 */	beq lbl_8056C540
/* 8056C48C  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 8056C490  38 78 0B 74 */	addi r3, r24, 0xb74
/* 8056C494  4B BD 94 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056C498  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 8056C49C  38 00 00 19 */	li r0, 0x19
/* 8056C4A0  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 8056C4A4  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056C4A8  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
/* 8056C4AC  48 00 00 94 */	b lbl_8056C540
lbl_8056C4B0:
/* 8056C4B0  83 21 00 0C */	lwz r25, 0xc(r1)
/* 8056C4B4  38 78 0B A8 */	addi r3, r24, 0xba8
/* 8056C4B8  4B BD 92 51 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056C4BC  7C 63 C8 50 */	subf r3, r3, r25
/* 8056C4C0  30 03 FF FF */	addic r0, r3, -1
/* 8056C4C4  7C 00 19 10 */	subfe r0, r0, r3
/* 8056C4C8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056C4CC  40 82 00 10 */	bne lbl_8056C4DC
/* 8056C4D0  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 8056C4D4  2C 00 00 02 */	cmpwi r0, 2
/* 8056C4D8  41 82 00 30 */	beq lbl_8056C508
lbl_8056C4DC:
/* 8056C4DC  38 78 0B A8 */	addi r3, r24, 0xba8
/* 8056C4E0  4B BD 92 1D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056C4E4  38 00 00 00 */	li r0, 0
/* 8056C4E8  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 8056C4EC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056C4F0  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 8056C4F4  98 18 0C FF */	stb r0, 0xcff(r24)
/* 8056C4F8  38 00 00 02 */	li r0, 2
/* 8056C4FC  90 18 0C E0 */	stw r0, 0xce0(r24)
/* 8056C500  38 00 00 01 */	li r0, 1
/* 8056C504  48 00 00 08 */	b lbl_8056C50C
lbl_8056C508:
/* 8056C508  38 00 00 00 */	li r0, 0
lbl_8056C50C:
/* 8056C50C  2C 00 00 00 */	cmpwi r0, 0
/* 8056C510  41 82 00 28 */	beq lbl_8056C538
/* 8056C514  7F 23 CB 78 */	mr r3, r25
/* 8056C518  4B AA C7 C9 */	bl fopAc_IsActor__FPv
/* 8056C51C  2C 03 00 00 */	cmpwi r3, 0
/* 8056C520  41 82 00 18 */	beq lbl_8056C538
/* 8056C524  38 78 0B A8 */	addi r3, r24, 0xba8
/* 8056C528  7F 24 CB 78 */	mr r4, r25
/* 8056C52C  4B BD 91 B5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056C530  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 8056C534  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
lbl_8056C538:
/* 8056C538  38 00 00 00 */	li r0, 0
/* 8056C53C  98 18 0C FF */	stb r0, 0xcff(r24)
lbl_8056C540:
/* 8056C540  2C 1C 00 03 */	cmpwi r28, 3
/* 8056C544  41 82 00 54 */	beq lbl_8056C598
/* 8056C548  93 61 00 10 */	stw r27, 0x10(r1)
/* 8056C54C  93 41 00 14 */	stw r26, 0x14(r1)
/* 8056C550  7F 03 C3 78 */	mr r3, r24
/* 8056C554  38 81 00 10 */	addi r4, r1, 0x10
/* 8056C558  38 A0 00 00 */	li r5, 0
/* 8056C55C  38 C1 00 08 */	addi r6, r1, 8
/* 8056C560  38 E0 00 00 */	li r7, 0
/* 8056C564  4B BD F7 15 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056C568  2C 03 00 00 */	cmpwi r3, 0
/* 8056C56C  41 82 00 2C */	beq lbl_8056C598
/* 8056C570  2C 1B 00 00 */	cmpwi r27, 0
/* 8056C574  40 82 00 20 */	bne lbl_8056C594
/* 8056C578  2C 1A 00 00 */	cmpwi r26, 0
/* 8056C57C  40 82 00 18 */	bne lbl_8056C594
/* 8056C580  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 8056C584  28 00 00 01 */	cmplwi r0, 1
/* 8056C588  40 82 00 10 */	bne lbl_8056C598
/* 8056C58C  3B A0 00 01 */	li r29, 1
/* 8056C590  48 00 00 08 */	b lbl_8056C598
lbl_8056C594:
/* 8056C594  3B A0 00 01 */	li r29, 1
lbl_8056C598:
/* 8056C598  7F A3 EB 78 */	mr r3, r29
/* 8056C59C  39 61 00 40 */	addi r11, r1, 0x40
/* 8056C5A0  4B DF 5C 75 */	bl _restgpr_24
/* 8056C5A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8056C5A8  7C 08 03 A6 */	mtlr r0
/* 8056C5AC  38 21 00 40 */	addi r1, r1, 0x40
/* 8056C5B0  4E 80 00 20 */	blr 
