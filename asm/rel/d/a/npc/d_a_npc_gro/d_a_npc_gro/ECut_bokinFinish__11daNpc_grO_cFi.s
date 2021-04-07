lbl_809DE0D0:
/* 809DE0D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809DE0D4  7C 08 02 A6 */	mflr r0
/* 809DE0D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809DE0DC  39 61 00 30 */	addi r11, r1, 0x30
/* 809DE0E0  4B 98 40 F5 */	bl _savegpr_27
/* 809DE0E4  7C 7F 1B 78 */	mr r31, r3
/* 809DE0E8  7C 9B 23 78 */	mr r27, r4
/* 809DE0EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809DE0F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809DE0F4  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 809DE0F8  3B A0 00 00 */	li r29, 0
/* 809DE0FC  3B 80 FF FF */	li r28, -1
/* 809DE100  3C 60 80 9E */	lis r3, lit_5690@ha /* 0x809DF2B0@ha */
/* 809DE104  38 83 F2 B0 */	addi r4, r3, lit_5690@l /* 0x809DF2B0@l */
/* 809DE108  80 64 00 00 */	lwz r3, 0(r4)
/* 809DE10C  80 04 00 04 */	lwz r0, 4(r4)
/* 809DE110  90 61 00 08 */	stw r3, 8(r1)
/* 809DE114  90 01 00 0C */	stw r0, 0xc(r1)
/* 809DE118  93 E1 00 08 */	stw r31, 8(r1)
/* 809DE11C  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 809DE120  4B 77 25 CD */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809DE124  90 61 00 0C */	stw r3, 0xc(r1)
/* 809DE128  7F C3 F3 78 */	mr r3, r30
/* 809DE12C  7F 64 DB 78 */	mr r4, r27
/* 809DE130  3C A0 80 9E */	lis r5, d_a_npc_gro__stringBase0@ha /* 0x809DF2B8@ha */
/* 809DE134  38 A5 F2 B8 */	addi r5, r5, d_a_npc_gro__stringBase0@l /* 0x809DF2B8@l */
/* 809DE138  38 A5 00 3C */	addi r5, r5, 0x3c
/* 809DE13C  38 C0 00 03 */	li r6, 3
/* 809DE140  4B 66 9F AD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809DE144  28 03 00 00 */	cmplwi r3, 0
/* 809DE148  41 82 00 08 */	beq lbl_809DE150
/* 809DE14C  83 83 00 00 */	lwz r28, 0(r3)
lbl_809DE150:
/* 809DE150  7F C3 F3 78 */	mr r3, r30
/* 809DE154  7F 64 DB 78 */	mr r4, r27
/* 809DE158  4B 66 9B F5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809DE15C  2C 03 00 00 */	cmpwi r3, 0
/* 809DE160  41 82 00 98 */	beq lbl_809DE1F8
/* 809DE164  2C 1C 00 14 */	cmpwi r28, 0x14
/* 809DE168  41 82 00 60 */	beq lbl_809DE1C8
/* 809DE16C  40 80 00 1C */	bge lbl_809DE188
/* 809DE170  2C 1C 00 0A */	cmpwi r28, 0xa
/* 809DE174  41 82 00 40 */	beq lbl_809DE1B4
/* 809DE178  40 80 00 80 */	bge lbl_809DE1F8
/* 809DE17C  2C 1C 00 00 */	cmpwi r28, 0
/* 809DE180  41 82 00 14 */	beq lbl_809DE194
/* 809DE184  48 00 00 74 */	b lbl_809DE1F8
lbl_809DE188:
/* 809DE188  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 809DE18C  41 82 00 50 */	beq lbl_809DE1DC
/* 809DE190  48 00 00 68 */	b lbl_809DE1F8
lbl_809DE194:
/* 809DE194  38 60 00 0B */	li r3, 0xb
/* 809DE198  4B 77 75 9D */	bl daNpcF_offTmpBit__FUl
/* 809DE19C  38 60 00 0C */	li r3, 0xc
/* 809DE1A0  4B 77 75 95 */	bl daNpcF_offTmpBit__FUl
/* 809DE1A4  7F E3 FB 78 */	mr r3, r31
/* 809DE1A8  38 80 00 02 */	li r4, 2
/* 809DE1AC  4B FF F2 2D */	bl setLookMode__11daNpc_grO_cFi
/* 809DE1B0  48 00 00 48 */	b lbl_809DE1F8
lbl_809DE1B4:
/* 809DE1B4  7F E3 FB 78 */	mr r3, r31
/* 809DE1B8  80 9F 0E 1C */	lwz r4, 0xe1c(r31)
/* 809DE1BC  38 A1 00 08 */	addi r5, r1, 8
/* 809DE1C0  4B 77 5B 5D */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809DE1C4  48 00 00 34 */	b lbl_809DE1F8
lbl_809DE1C8:
/* 809DE1C8  7F E3 FB 78 */	mr r3, r31
/* 809DE1CC  80 9F 0E 1C */	lwz r4, 0xe1c(r31)
/* 809DE1D0  38 A1 00 08 */	addi r5, r1, 8
/* 809DE1D4  4B 77 5B 49 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809DE1D8  48 00 00 20 */	b lbl_809DE1F8
lbl_809DE1DC:
/* 809DE1DC  7F E3 FB 78 */	mr r3, r31
/* 809DE1E0  80 9F 0E 1C */	lwz r4, 0xe1c(r31)
/* 809DE1E4  38 A1 00 08 */	addi r5, r1, 8
/* 809DE1E8  4B 77 5B 35 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809DE1EC  7F E3 FB 78 */	mr r3, r31
/* 809DE1F0  38 80 00 02 */	li r4, 2
/* 809DE1F4  4B FF F1 E5 */	bl setLookMode__11daNpc_grO_cFi
lbl_809DE1F8:
/* 809DE1F8  2C 1C 00 14 */	cmpwi r28, 0x14
/* 809DE1FC  41 82 00 90 */	beq lbl_809DE28C
/* 809DE200  40 80 00 1C */	bge lbl_809DE21C
/* 809DE204  2C 1C 00 0A */	cmpwi r28, 0xa
/* 809DE208  41 82 00 60 */	beq lbl_809DE268
/* 809DE20C  40 80 00 E0 */	bge lbl_809DE2EC
/* 809DE210  2C 1C 00 00 */	cmpwi r28, 0
/* 809DE214  41 82 00 14 */	beq lbl_809DE228
/* 809DE218  48 00 00 D4 */	b lbl_809DE2EC
lbl_809DE21C:
/* 809DE21C  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 809DE220  41 82 00 9C */	beq lbl_809DE2BC
/* 809DE224  48 00 00 C8 */	b lbl_809DE2EC
lbl_809DE228:
/* 809DE228  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 809DE22C  4B 77 24 C1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809DE230  28 03 00 00 */	cmplwi r3, 0
/* 809DE234  40 82 00 2C */	bne lbl_809DE260
/* 809DE238  3C 60 80 9E */	lis r3, s_sub__FPvPv@ha /* 0x809DE084@ha */
/* 809DE23C  38 63 E0 84 */	addi r3, r3, s_sub__FPvPv@l /* 0x809DE084@l */
/* 809DE240  7F E4 FB 78 */	mr r4, r31
/* 809DE244  4B 64 30 F5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 809DE248  7C 64 1B 79 */	or. r4, r3, r3
/* 809DE24C  41 82 00 A4 */	beq lbl_809DE2F0
/* 809DE250  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 809DE254  4B 77 24 69 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809DE258  3B A0 00 01 */	li r29, 1
/* 809DE25C  48 00 00 94 */	b lbl_809DE2F0
lbl_809DE260:
/* 809DE260  3B A0 00 01 */	li r29, 1
/* 809DE264  48 00 00 8C */	b lbl_809DE2F0
lbl_809DE268:
/* 809DE268  7F E3 FB 78 */	mr r3, r31
/* 809DE26C  38 80 00 00 */	li r4, 0
/* 809DE270  38 A0 00 00 */	li r5, 0
/* 809DE274  38 C1 00 08 */	addi r6, r1, 8
/* 809DE278  4B 77 5B 0D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809DE27C  2C 03 00 00 */	cmpwi r3, 0
/* 809DE280  41 82 00 70 */	beq lbl_809DE2F0
/* 809DE284  3B A0 00 01 */	li r29, 1
/* 809DE288  48 00 00 68 */	b lbl_809DE2F0
lbl_809DE28C:
/* 809DE28C  7F E3 FB 78 */	mr r3, r31
/* 809DE290  38 80 00 00 */	li r4, 0
/* 809DE294  38 A0 00 00 */	li r5, 0
/* 809DE298  38 C1 00 08 */	addi r6, r1, 8
/* 809DE29C  4B 77 5A E9 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809DE2A0  2C 03 00 00 */	cmpwi r3, 0
/* 809DE2A4  41 82 00 08 */	beq lbl_809DE2AC
/* 809DE2A8  3B A0 00 01 */	li r29, 1
lbl_809DE2AC:
/* 809DE2AC  7F E3 FB 78 */	mr r3, r31
/* 809DE2B0  38 80 00 02 */	li r4, 2
/* 809DE2B4  4B FF F1 25 */	bl setLookMode__11daNpc_grO_cFi
/* 809DE2B8  48 00 00 38 */	b lbl_809DE2F0
lbl_809DE2BC:
/* 809DE2BC  7F E3 FB 78 */	mr r3, r31
/* 809DE2C0  38 80 00 00 */	li r4, 0
/* 809DE2C4  38 A0 00 00 */	li r5, 0
/* 809DE2C8  38 C1 00 08 */	addi r6, r1, 8
/* 809DE2CC  4B 77 5A B9 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809DE2D0  2C 03 00 00 */	cmpwi r3, 0
/* 809DE2D4  41 82 00 08 */	beq lbl_809DE2DC
/* 809DE2D8  3B A0 00 01 */	li r29, 1
lbl_809DE2DC:
/* 809DE2DC  7F E3 FB 78 */	mr r3, r31
/* 809DE2E0  38 80 00 02 */	li r4, 2
/* 809DE2E4  4B FF F0 F5 */	bl setLookMode__11daNpc_grO_cFi
/* 809DE2E8  48 00 00 08 */	b lbl_809DE2F0
lbl_809DE2EC:
/* 809DE2EC  3B A0 00 01 */	li r29, 1
lbl_809DE2F0:
/* 809DE2F0  7F A3 EB 78 */	mr r3, r29
/* 809DE2F4  39 61 00 30 */	addi r11, r1, 0x30
/* 809DE2F8  4B 98 3F 29 */	bl _restgpr_27
/* 809DE2FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809DE300  7C 08 03 A6 */	mtlr r0
/* 809DE304  38 21 00 30 */	addi r1, r1, 0x30
/* 809DE308  4E 80 00 20 */	blr 
