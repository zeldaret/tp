lbl_80A6D160:
/* 80A6D160  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A6D164  7C 08 02 A6 */	mflr r0
/* 80A6D168  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A6D16C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6D170  4B 8F 50 59 */	bl _savegpr_24
/* 80A6D174  7C 79 1B 78 */	mr r25, r3
/* 80A6D178  7C 9A 23 78 */	mr r26, r4
/* 80A6D17C  3B E0 00 00 */	li r31, 0
/* 80A6D180  3B C0 FF FF */	li r30, -1
/* 80A6D184  3B A0 00 00 */	li r29, 0
/* 80A6D188  3B 80 00 00 */	li r28, 0
/* 80A6D18C  3B 60 00 00 */	li r27, 0
/* 80A6D190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A6D194  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A6D198  3B 03 4F F8 */	addi r24, r3, 0x4ff8
/* 80A6D19C  7F 03 C3 78 */	mr r3, r24
/* 80A6D1A0  3C A0 80 A7 */	lis r5, d_a_npc_lud__stringBase0@ha /* 0x80A6FECC@ha */
/* 80A6D1A4  38 A5 FE CC */	addi r5, r5, d_a_npc_lud__stringBase0@l /* 0x80A6FECC@l */
/* 80A6D1A8  38 A5 00 A5 */	addi r5, r5, 0xa5
/* 80A6D1AC  38 C0 00 03 */	li r6, 3
/* 80A6D1B0  4B 5D AF 3D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A6D1B4  28 03 00 00 */	cmplwi r3, 0
/* 80A6D1B8  41 82 00 08 */	beq lbl_80A6D1C0
/* 80A6D1BC  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A6D1C0:
/* 80A6D1C0  7F 03 C3 78 */	mr r3, r24
/* 80A6D1C4  7F 44 D3 78 */	mr r4, r26
/* 80A6D1C8  3C A0 80 A7 */	lis r5, d_a_npc_lud__stringBase0@ha /* 0x80A6FECC@ha */
/* 80A6D1CC  38 A5 FE CC */	addi r5, r5, d_a_npc_lud__stringBase0@l /* 0x80A6FECC@l */
/* 80A6D1D0  38 A5 00 A9 */	addi r5, r5, 0xa9
/* 80A6D1D4  38 C0 00 03 */	li r6, 3
/* 80A6D1D8  4B 5D AF 15 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A6D1DC  28 03 00 00 */	cmplwi r3, 0
/* 80A6D1E0  41 82 00 08 */	beq lbl_80A6D1E8
/* 80A6D1E4  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A6D1E8:
/* 80A6D1E8  7F 03 C3 78 */	mr r3, r24
/* 80A6D1EC  7F 44 D3 78 */	mr r4, r26
/* 80A6D1F0  3C A0 80 A7 */	lis r5, d_a_npc_lud__stringBase0@ha /* 0x80A6FECC@ha */
/* 80A6D1F4  38 A5 FE CC */	addi r5, r5, d_a_npc_lud__stringBase0@l /* 0x80A6FECC@l */
/* 80A6D1F8  38 A5 00 AF */	addi r5, r5, 0xaf
/* 80A6D1FC  38 C0 00 03 */	li r6, 3
/* 80A6D200  4B 5D AE ED */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A6D204  28 03 00 00 */	cmplwi r3, 0
/* 80A6D208  41 82 00 08 */	beq lbl_80A6D210
/* 80A6D20C  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A6D210:
/* 80A6D210  7F 03 C3 78 */	mr r3, r24
/* 80A6D214  7F 44 D3 78 */	mr r4, r26
/* 80A6D218  3C A0 80 A7 */	lis r5, d_a_npc_lud__stringBase0@ha /* 0x80A6FECC@ha */
/* 80A6D21C  38 A5 FE CC */	addi r5, r5, d_a_npc_lud__stringBase0@l /* 0x80A6FECC@l */
/* 80A6D220  38 A5 00 B6 */	addi r5, r5, 0xb6
/* 80A6D224  38 C0 00 03 */	li r6, 3
/* 80A6D228  4B 5D AE C5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A6D22C  28 03 00 00 */	cmplwi r3, 0
/* 80A6D230  41 82 00 08 */	beq lbl_80A6D238
/* 80A6D234  83 63 00 00 */	lwz r27, 0(r3)
lbl_80A6D238:
/* 80A6D238  7F 03 C3 78 */	mr r3, r24
/* 80A6D23C  7F 44 D3 78 */	mr r4, r26
/* 80A6D240  4B 5D AB 0D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A6D244  2C 03 00 00 */	cmpwi r3, 0
/* 80A6D248  41 82 00 DC */	beq lbl_80A6D324
/* 80A6D24C  2C 1E 00 02 */	cmpwi r30, 2
/* 80A6D250  41 82 00 84 */	beq lbl_80A6D2D4
/* 80A6D254  40 80 00 14 */	bge lbl_80A6D268
/* 80A6D258  2C 1E 00 00 */	cmpwi r30, 0
/* 80A6D25C  41 82 00 18 */	beq lbl_80A6D274
/* 80A6D260  40 80 00 28 */	bge lbl_80A6D288
/* 80A6D264  48 00 00 C0 */	b lbl_80A6D324
lbl_80A6D268:
/* 80A6D268  2C 1E 00 04 */	cmpwi r30, 4
/* 80A6D26C  40 80 00 B8 */	bge lbl_80A6D324
/* 80A6D270  48 00 00 6C */	b lbl_80A6D2DC
lbl_80A6D274:
/* 80A6D274  38 00 00 00 */	li r0, 0
/* 80A6D278  90 19 0F C8 */	stw r0, 0xfc8(r25)
/* 80A6D27C  38 00 00 01 */	li r0, 1
/* 80A6D280  90 19 0F CC */	stw r0, 0xfcc(r25)
/* 80A6D284  48 00 00 A0 */	b lbl_80A6D324
lbl_80A6D288:
/* 80A6D288  83 59 0B 5C */	lwz r26, 0xb5c(r25)
/* 80A6D28C  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80A6D290  4B 6D 86 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D294  93 59 0B 5C */	stw r26, 0xb5c(r25)
/* 80A6D298  38 00 00 0D */	li r0, 0xd
/* 80A6D29C  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80A6D2A0  3C 60 80 A7 */	lis r3, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6D2A4  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)  /* 0x80A6FE44@l */
/* 80A6D2A8  D0 19 0B 68 */	stfs f0, 0xb68(r25)
/* 80A6D2AC  83 59 0B 80 */	lwz r26, 0xb80(r25)
/* 80A6D2B0  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80A6D2B4  4B 6D 85 E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D2B8  93 59 0B 80 */	stw r26, 0xb80(r25)
/* 80A6D2BC  38 00 00 0E */	li r0, 0xe
/* 80A6D2C0  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80A6D2C4  3C 60 80 A7 */	lis r3, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6D2C8  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)  /* 0x80A6FE44@l */
/* 80A6D2CC  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 80A6D2D0  48 00 00 54 */	b lbl_80A6D324
lbl_80A6D2D4:
/* 80A6D2D4  93 B9 0D C4 */	stw r29, 0xdc4(r25)
/* 80A6D2D8  48 00 00 4C */	b lbl_80A6D324
lbl_80A6D2DC:
/* 80A6D2DC  83 59 0B 5C */	lwz r26, 0xb5c(r25)
/* 80A6D2E0  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80A6D2E4  4B 6D 85 B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D2E8  93 59 0B 5C */	stw r26, 0xb5c(r25)
/* 80A6D2EC  38 00 00 03 */	li r0, 3
/* 80A6D2F0  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80A6D2F4  3C 60 80 A7 */	lis r3, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6D2F8  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)  /* 0x80A6FE44@l */
/* 80A6D2FC  D0 19 0B 68 */	stfs f0, 0xb68(r25)
/* 80A6D300  83 59 0B 80 */	lwz r26, 0xb80(r25)
/* 80A6D304  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80A6D308  4B 6D 85 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D30C  93 59 0B 80 */	stw r26, 0xb80(r25)
/* 80A6D310  38 00 00 02 */	li r0, 2
/* 80A6D314  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80A6D318  3C 60 80 A7 */	lis r3, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6D31C  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)  /* 0x80A6FE44@l */
/* 80A6D320  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_80A6D324:
/* 80A6D324  2C 1E 00 02 */	cmpwi r30, 2
/* 80A6D328  41 82 00 44 */	beq lbl_80A6D36C
/* 80A6D32C  40 80 00 14 */	bge lbl_80A6D340
/* 80A6D330  2C 1E 00 00 */	cmpwi r30, 0
/* 80A6D334  41 82 00 18 */	beq lbl_80A6D34C
/* 80A6D338  40 80 00 2C */	bge lbl_80A6D364
/* 80A6D33C  48 00 00 F8 */	b lbl_80A6D434
lbl_80A6D340:
/* 80A6D340  2C 1E 00 04 */	cmpwi r30, 4
/* 80A6D344  40 80 00 F0 */	bge lbl_80A6D434
/* 80A6D348  48 00 00 E8 */	b lbl_80A6D430
lbl_80A6D34C:
/* 80A6D34C  7F 23 CB 78 */	mr r3, r25
/* 80A6D350  7F 84 E3 78 */	mr r4, r28
/* 80A6D354  7F 65 DB 78 */	mr r5, r27
/* 80A6D358  4B FF FB 71 */	bl mop__11daNpc_Lud_cFii
/* 80A6D35C  3B E0 00 01 */	li r31, 1
/* 80A6D360  48 00 00 D4 */	b lbl_80A6D434
lbl_80A6D364:
/* 80A6D364  3B E0 00 01 */	li r31, 1
/* 80A6D368  48 00 00 CC */	b lbl_80A6D434
lbl_80A6D36C:
/* 80A6D36C  80 19 0D C4 */	lwz r0, 0xdc4(r25)
/* 80A6D370  2C 00 00 00 */	cmpwi r0, 0
/* 80A6D374  41 82 00 B4 */	beq lbl_80A6D428
/* 80A6D378  38 79 0D C4 */	addi r3, r25, 0xdc4
/* 80A6D37C  48 00 27 59 */	bl func_80A6FAD4
/* 80A6D380  2C 03 00 00 */	cmpwi r3, 0
/* 80A6D384  40 82 00 90 */	bne lbl_80A6D414
/* 80A6D388  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 80A6D38C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A6D390  41 82 00 28 */	beq lbl_80A6D3B8
/* 80A6D394  83 59 0B 5C */	lwz r26, 0xb5c(r25)
/* 80A6D398  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80A6D39C  4B 6D 84 FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D3A0  93 59 0B 5C */	stw r26, 0xb5c(r25)
/* 80A6D3A4  38 00 00 0C */	li r0, 0xc
/* 80A6D3A8  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80A6D3AC  3C 60 80 A7 */	lis r3, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6D3B0  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)  /* 0x80A6FE44@l */
/* 80A6D3B4  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_80A6D3B8:
/* 80A6D3B8  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80A6D3BC  2C 00 00 0D */	cmpwi r0, 0xd
/* 80A6D3C0  41 82 00 28 */	beq lbl_80A6D3E8
/* 80A6D3C4  83 59 0B 80 */	lwz r26, 0xb80(r25)
/* 80A6D3C8  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80A6D3CC  4B 6D 84 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6D3D0  93 59 0B 80 */	stw r26, 0xb80(r25)
/* 80A6D3D4  38 00 00 0D */	li r0, 0xd
/* 80A6D3D8  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80A6D3DC  3C 60 80 A7 */	lis r3, lit_4218@ha /* 0x80A6FE44@ha */
/* 80A6D3E0  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)  /* 0x80A6FE44@l */
/* 80A6D3E4  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_80A6D3E8:
/* 80A6D3E8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500FF@ha */
/* 80A6D3EC  38 03 00 FF */	addi r0, r3, 0x00FF /* 0x000500FF@l */
/* 80A6D3F0  90 01 00 08 */	stw r0, 8(r1)
/* 80A6D3F4  38 79 05 80 */	addi r3, r25, 0x580
/* 80A6D3F8  38 81 00 08 */	addi r4, r1, 8
/* 80A6D3FC  38 A0 FF FF */	li r5, -1
/* 80A6D400  81 99 05 80 */	lwz r12, 0x580(r25)
/* 80A6D404  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A6D408  7D 89 03 A6 */	mtctr r12
/* 80A6D40C  4E 80 04 21 */	bctrl 
/* 80A6D410  48 00 00 24 */	b lbl_80A6D434
lbl_80A6D414:
/* 80A6D414  7F 23 CB 78 */	mr r3, r25
/* 80A6D418  7F 84 E3 78 */	mr r4, r28
/* 80A6D41C  7F 65 DB 78 */	mr r5, r27
/* 80A6D420  4B FF FA A9 */	bl mop__11daNpc_Lud_cFii
/* 80A6D424  48 00 00 10 */	b lbl_80A6D434
lbl_80A6D428:
/* 80A6D428  3B E0 00 01 */	li r31, 1
/* 80A6D42C  48 00 00 08 */	b lbl_80A6D434
lbl_80A6D430:
/* 80A6D430  3B E0 00 01 */	li r31, 1
lbl_80A6D434:
/* 80A6D434  7F E3 FB 78 */	mr r3, r31
/* 80A6D438  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6D43C  4B 8F 4D D9 */	bl _restgpr_24
/* 80A6D440  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A6D444  7C 08 03 A6 */	mtlr r0
/* 80A6D448  38 21 00 30 */	addi r1, r1, 0x30
/* 80A6D44C  4E 80 00 20 */	blr 
