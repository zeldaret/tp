lbl_8053B250:
/* 8053B250  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8053B254  7C 08 02 A6 */	mflr r0
/* 8053B258  90 01 00 44 */	stw r0, 0x44(r1)
/* 8053B25C  39 61 00 40 */	addi r11, r1, 0x40
/* 8053B260  4B E2 6F 70 */	b _savegpr_26
/* 8053B264  7C 7B 1B 78 */	mr r27, r3
/* 8053B268  7C 9A 23 78 */	mr r26, r4
/* 8053B26C  38 7B 0B A0 */	addi r3, r27, 0xba0
/* 8053B270  4B C0 A4 98 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053B274  7C 7F 1B 78 */	mr r31, r3
/* 8053B278  3B A0 00 00 */	li r29, 0
/* 8053B27C  3B 80 FF FF */	li r28, -1
/* 8053B280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053B284  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053B288  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8053B28C  7F C3 F3 78 */	mr r3, r30
/* 8053B290  7F 44 D3 78 */	mr r4, r26
/* 8053B294  3C A0 80 54 */	lis r5, struct_8053E908+0x0@ha
/* 8053B298  38 A5 E9 08 */	addi r5, r5, struct_8053E908+0x0@l
/* 8053B29C  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 8053B2A0  38 C0 00 03 */	li r6, 3
/* 8053B2A4  4B B0 CE 48 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053B2A8  28 03 00 00 */	cmplwi r3, 0
/* 8053B2AC  41 82 00 08 */	beq lbl_8053B2B4
/* 8053B2B0  83 83 00 00 */	lwz r28, 0(r3)
lbl_8053B2B4:
/* 8053B2B4  7F C3 F3 78 */	mr r3, r30
/* 8053B2B8  7F 44 D3 78 */	mr r4, r26
/* 8053B2BC  4B B0 CA 90 */	b getIsAddvance__16dEvent_manager_cFi
/* 8053B2C0  2C 03 00 00 */	cmpwi r3, 0
/* 8053B2C4  41 82 01 BC */	beq lbl_8053B480
/* 8053B2C8  2C 1C 00 01 */	cmpwi r28, 1
/* 8053B2CC  41 82 01 48 */	beq lbl_8053B414
/* 8053B2D0  40 80 01 B0 */	bge lbl_8053B480
/* 8053B2D4  2C 1C 00 00 */	cmpwi r28, 0
/* 8053B2D8  40 80 00 08 */	bge lbl_8053B2E0
/* 8053B2DC  48 00 01 A4 */	b lbl_8053B480
lbl_8053B2E0:
/* 8053B2E0  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8053B2E4  2C 00 00 13 */	cmpwi r0, 0x13
/* 8053B2E8  41 82 00 28 */	beq lbl_8053B310
/* 8053B2EC  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 8053B2F0  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8053B2F4  4B C0 A5 A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B2F8  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 8053B2FC  38 00 00 13 */	li r0, 0x13
/* 8053B300  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8053B304  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053B308  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053B30C  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8053B310:
/* 8053B310  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8053B314  2C 00 00 06 */	cmpwi r0, 6
/* 8053B318  41 82 00 28 */	beq lbl_8053B340
/* 8053B31C  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 8053B320  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8053B324  4B C0 A5 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B328  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 8053B32C  38 00 00 06 */	li r0, 6
/* 8053B330  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8053B334  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053B338  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053B33C  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8053B340:
/* 8053B340  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8053B344  2C 00 00 00 */	cmpwi r0, 0
/* 8053B348  41 82 00 28 */	beq lbl_8053B370
/* 8053B34C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8053B350  4B C0 A3 AC */	b remove__18daNpcT_ActorMngr_cFv
/* 8053B354  38 00 00 00 */	li r0, 0
/* 8053B358  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8053B35C  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053B360  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053B364  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8053B368  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053B36C  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8053B370:
/* 8053B370  38 00 00 00 */	li r0, 0
/* 8053B374  B0 1B 0C D4 */	sth r0, 0xcd4(r27)
/* 8053B378  B0 1B 0C D6 */	sth r0, 0xcd6(r27)
/* 8053B37C  38 00 00 01 */	li r0, 1
/* 8053B380  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053B384  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8053B388  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8053B38C  28 04 00 FF */	cmplwi r4, 0xff
/* 8053B390  38 00 FF FF */	li r0, -1
/* 8053B394  41 82 00 08 */	beq lbl_8053B39C
/* 8053B398  7C 80 23 78 */	mr r0, r4
lbl_8053B39C:
/* 8053B39C  2C 00 FF FF */	cmpwi r0, -1
/* 8053B3A0  40 81 00 E0 */	ble lbl_8053B480
/* 8053B3A4  28 04 00 FF */	cmplwi r4, 0xff
/* 8053B3A8  38 60 FF FF */	li r3, -1
/* 8053B3AC  41 82 00 08 */	beq lbl_8053B3B4
/* 8053B3B0  54 83 04 3E */	clrlwi r3, r4, 0x10
lbl_8053B3B4:
/* 8053B3B4  88 9F 04 E2 */	lbz r4, 0x4e2(r31)
/* 8053B3B8  7C 84 07 74 */	extsb r4, r4
/* 8053B3BC  38 A1 00 10 */	addi r5, r1, 0x10
/* 8053B3C0  38 C1 00 08 */	addi r6, r1, 8
/* 8053B3C4  4B C1 11 3C */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8053B3C8  2C 03 00 00 */	cmpwi r3, 0
/* 8053B3CC  41 82 00 B4 */	beq lbl_8053B480
/* 8053B3D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053B3D4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8053B3D8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8053B3DC  38 81 00 10 */	addi r4, r1, 0x10
/* 8053B3E0  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 8053B3E4  38 C0 00 00 */	li r6, 0
/* 8053B3E8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8053B3EC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8053B3F0  7D 89 03 A6 */	mtctr r12
/* 8053B3F4  4E 80 04 21 */	bctrl 
/* 8053B3F8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8053B3FC  A8 01 00 0A */	lha r0, 0xa(r1)
/* 8053B400  B0 03 06 06 */	sth r0, 0x606(r3)
/* 8053B404  7F C3 F3 78 */	mr r3, r30
/* 8053B408  38 81 00 10 */	addi r4, r1, 0x10
/* 8053B40C  4B B0 CF B8 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 8053B410  48 00 00 70 */	b lbl_8053B480
lbl_8053B414:
/* 8053B414  A8 7F 04 B4 */	lha r3, 0x4b4(r31)
/* 8053B418  3C 03 00 00 */	addis r0, r3, 0
/* 8053B41C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8053B420  38 80 FF FF */	li r4, -1
/* 8053B424  41 82 00 08 */	beq lbl_8053B42C
/* 8053B428  54 64 04 3E */	clrlwi r4, r3, 0x10
lbl_8053B42C:
/* 8053B42C  7F 63 DB 78 */	mr r3, r27
/* 8053B430  38 A0 00 00 */	li r5, 0
/* 8053B434  4B C1 07 BC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8053B438  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8053B43C  2C 00 00 01 */	cmpwi r0, 1
/* 8053B440  41 82 00 2C */	beq lbl_8053B46C
/* 8053B444  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8053B448  4B C0 A2 B4 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053B44C  38 00 00 00 */	li r0, 0
/* 8053B450  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8053B454  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053B458  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053B45C  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8053B460  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053B464  38 00 00 01 */	li r0, 1
/* 8053B468  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8053B46C:
/* 8053B46C  38 00 00 00 */	li r0, 0
/* 8053B470  B0 1B 0C D4 */	sth r0, 0xcd4(r27)
/* 8053B474  B0 1B 0C D6 */	sth r0, 0xcd6(r27)
/* 8053B478  38 00 00 01 */	li r0, 1
/* 8053B47C  98 1B 0C FF */	stb r0, 0xcff(r27)
lbl_8053B480:
/* 8053B480  2C 1C 00 01 */	cmpwi r28, 1
/* 8053B484  41 82 00 1C */	beq lbl_8053B4A0
/* 8053B488  40 80 00 8C */	bge lbl_8053B514
/* 8053B48C  2C 1C 00 00 */	cmpwi r28, 0
/* 8053B490  40 80 00 08 */	bge lbl_8053B498
/* 8053B494  48 00 00 80 */	b lbl_8053B514
lbl_8053B498:
/* 8053B498  3B A0 00 01 */	li r29, 1
/* 8053B49C  48 00 00 78 */	b lbl_8053B514
lbl_8053B4A0:
/* 8053B4A0  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8053B4A4  2C 00 00 01 */	cmpwi r0, 1
/* 8053B4A8  41 82 00 2C */	beq lbl_8053B4D4
/* 8053B4AC  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8053B4B0  4B C0 A2 4C */	b remove__18daNpcT_ActorMngr_cFv
/* 8053B4B4  38 00 00 00 */	li r0, 0
/* 8053B4B8  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8053B4BC  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053B4C0  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053B4C4  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8053B4C8  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053B4CC  38 00 00 01 */	li r0, 1
/* 8053B4D0  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8053B4D4:
/* 8053B4D4  38 00 00 00 */	li r0, 0
/* 8053B4D8  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053B4DC  7F 63 DB 78 */	mr r3, r27
/* 8053B4E0  38 80 00 00 */	li r4, 0
/* 8053B4E4  38 A0 00 00 */	li r5, 0
/* 8053B4E8  38 C0 00 00 */	li r6, 0
/* 8053B4EC  38 E0 00 00 */	li r7, 0
/* 8053B4F0  4B C1 07 88 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8053B4F4  2C 03 00 00 */	cmpwi r3, 0
/* 8053B4F8  41 82 00 1C */	beq lbl_8053B514
/* 8053B4FC  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 8053B500  28 00 00 01 */	cmplwi r0, 1
/* 8053B504  40 82 00 10 */	bne lbl_8053B514
/* 8053B508  38 7B 0B A0 */	addi r3, r27, 0xba0
/* 8053B50C  4B C0 A1 F0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053B510  3B A0 00 01 */	li r29, 1
lbl_8053B514:
/* 8053B514  7F A3 EB 78 */	mr r3, r29
/* 8053B518  39 61 00 40 */	addi r11, r1, 0x40
/* 8053B51C  4B E2 6D 00 */	b _restgpr_26
/* 8053B520  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8053B524  7C 08 03 A6 */	mtlr r0
/* 8053B528  38 21 00 40 */	addi r1, r1, 0x40
/* 8053B52C  4E 80 00 20 */	blr 
