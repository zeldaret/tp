lbl_8056B000:
/* 8056B000  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8056B004  7C 08 02 A6 */	mflr r0
/* 8056B008  90 01 00 84 */	stw r0, 0x84(r1)
/* 8056B00C  39 61 00 80 */	addi r11, r1, 0x80
/* 8056B010  4B DF 71 B5 */	bl _savegpr_23
/* 8056B014  7C 77 1B 78 */	mr r23, r3
/* 8056B018  7C 98 23 78 */	mr r24, r4
/* 8056B01C  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha /* 0x805716C8@ha */
/* 8056B020  3B E3 16 C8 */	addi r31, r3, m__18daNpc_Taro_Param_c@l /* 0x805716C8@l */
/* 8056B024  3B A0 00 00 */	li r29, 0
/* 8056B028  3B 80 FF FF */	li r28, -1
/* 8056B02C  3B 60 00 00 */	li r27, 0
/* 8056B030  3B 40 00 00 */	li r26, 0
/* 8056B034  3B 20 00 00 */	li r25, 0
/* 8056B038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056B03C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056B040  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8056B044  7F C3 F3 78 */	mr r3, r30
/* 8056B048  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056B04C  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056B050  38 A5 02 9C */	addi r5, r5, 0x29c
/* 8056B054  38 C0 00 03 */	li r6, 3
/* 8056B058  4B AD D0 95 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056B05C  28 03 00 00 */	cmplwi r3, 0
/* 8056B060  41 82 00 08 */	beq lbl_8056B068
/* 8056B064  83 83 00 00 */	lwz r28, 0(r3)
lbl_8056B068:
/* 8056B068  7F C3 F3 78 */	mr r3, r30
/* 8056B06C  7F 04 C3 78 */	mr r4, r24
/* 8056B070  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056B074  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056B078  38 A5 02 A6 */	addi r5, r5, 0x2a6
/* 8056B07C  38 C0 00 03 */	li r6, 3
/* 8056B080  4B AD D0 6D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056B084  28 03 00 00 */	cmplwi r3, 0
/* 8056B088  41 82 00 08 */	beq lbl_8056B090
/* 8056B08C  83 63 00 00 */	lwz r27, 0(r3)
lbl_8056B090:
/* 8056B090  7F C3 F3 78 */	mr r3, r30
/* 8056B094  7F 04 C3 78 */	mr r4, r24
/* 8056B098  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056B09C  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056B0A0  38 A5 02 AC */	addi r5, r5, 0x2ac
/* 8056B0A4  38 C0 00 03 */	li r6, 3
/* 8056B0A8  4B AD D0 45 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056B0AC  28 03 00 00 */	cmplwi r3, 0
/* 8056B0B0  41 82 00 08 */	beq lbl_8056B0B8
/* 8056B0B4  83 43 00 00 */	lwz r26, 0(r3)
lbl_8056B0B8:
/* 8056B0B8  7F C3 F3 78 */	mr r3, r30
/* 8056B0BC  7F 04 C3 78 */	mr r4, r24
/* 8056B0C0  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056B0C4  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056B0C8  38 A5 02 A0 */	addi r5, r5, 0x2a0
/* 8056B0CC  38 C0 00 03 */	li r6, 3
/* 8056B0D0  4B AD D0 1D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056B0D4  28 03 00 00 */	cmplwi r3, 0
/* 8056B0D8  41 82 00 08 */	beq lbl_8056B0E0
/* 8056B0DC  83 23 00 00 */	lwz r25, 0(r3)
lbl_8056B0E0:
/* 8056B0E0  80 7F 01 AC */	lwz r3, 0x1ac(r31)
/* 8056B0E4  80 1F 01 B0 */	lwz r0, 0x1b0(r31)
/* 8056B0E8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8056B0EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8056B0F0  92 E1 00 0C */	stw r23, 0xc(r1)
/* 8056B0F4  38 77 10 C8 */	addi r3, r23, 0x10c8
/* 8056B0F8  4B BD A6 11 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056B0FC  90 61 00 10 */	stw r3, 0x10(r1)
/* 8056B100  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8056B104  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056B108  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056B10C  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 8056B110  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 8056B114  38 00 00 00 */	li r0, 0
/* 8056B118  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 8056B11C  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 8056B120  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 8056B124  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 8056B128  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 8056B12C  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 8056B130  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 8056B134  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 8056B138  7F C3 F3 78 */	mr r3, r30
/* 8056B13C  7F 04 C3 78 */	mr r4, r24
/* 8056B140  4B AD CC 0D */	bl getIsAddvance__16dEvent_manager_cFi
/* 8056B144  2C 03 00 00 */	cmpwi r3, 0
/* 8056B148  41 82 02 00 */	beq lbl_8056B348
/* 8056B14C  28 1C 00 08 */	cmplwi r28, 8
/* 8056B150  41 81 01 F8 */	bgt lbl_8056B348
/* 8056B154  3C 60 80 57 */	lis r3, lit_7059@ha /* 0x8057307C@ha */
/* 8056B158  38 63 30 7C */	addi r3, r3, lit_7059@l /* 0x8057307C@l */
/* 8056B15C  57 80 10 3A */	slwi r0, r28, 2
/* 8056B160  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056B164  7C 09 03 A6 */	mtctr r0
/* 8056B168  4E 80 04 20 */	bctr 
lbl_8056B16C:
/* 8056B16C  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 8056B170  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056B174  41 82 00 24 */	beq lbl_8056B198
/* 8056B178  83 17 0B 5C */	lwz r24, 0xb5c(r23)
/* 8056B17C  38 77 0B 50 */	addi r3, r23, 0xb50
/* 8056B180  4B BD A7 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056B184  93 17 0B 5C */	stw r24, 0xb5c(r23)
/* 8056B188  38 00 00 1F */	li r0, 0x1f
/* 8056B18C  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 8056B190  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056B194  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_8056B198:
/* 8056B198  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 8056B19C  2C 00 00 00 */	cmpwi r0, 0
/* 8056B1A0  41 82 00 24 */	beq lbl_8056B1C4
/* 8056B1A4  83 17 0B 80 */	lwz r24, 0xb80(r23)
/* 8056B1A8  38 77 0B 74 */	addi r3, r23, 0xb74
/* 8056B1AC  4B BD A6 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056B1B0  93 17 0B 80 */	stw r24, 0xb80(r23)
/* 8056B1B4  38 00 00 00 */	li r0, 0
/* 8056B1B8  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 8056B1BC  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056B1C0  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
lbl_8056B1C4:
/* 8056B1C4  93 37 0D C4 */	stw r25, 0xdc4(r23)
/* 8056B1C8  48 00 01 80 */	b lbl_8056B348
lbl_8056B1CC:
/* 8056B1CC  38 60 00 06 */	li r3, 6
/* 8056B1D0  88 17 04 E2 */	lbz r0, 0x4e2(r23)
/* 8056B1D4  7C 04 07 74 */	extsb r4, r0
/* 8056B1D8  38 A1 00 40 */	addi r5, r1, 0x40
/* 8056B1DC  38 C1 00 14 */	addi r6, r1, 0x14
/* 8056B1E0  4B BE 13 21 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8056B1E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056B1E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056B1EC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8056B1F0  38 81 00 40 */	addi r4, r1, 0x40
/* 8056B1F4  A8 A1 00 16 */	lha r5, 0x16(r1)
/* 8056B1F8  38 C0 00 00 */	li r6, 0
/* 8056B1FC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8056B200  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8056B204  7D 89 03 A6 */	mtctr r12
/* 8056B208  4E 80 04 21 */	bctrl 
/* 8056B20C  C0 5F 01 C0 */	lfs f2, 0x1c0(r31)
/* 8056B210  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8056B214  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 8056B218  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8056B21C  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 8056B220  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8056B224  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8056B228  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8056B22C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8056B230  7E E3 BB 78 */	mr r3, r23
/* 8056B234  38 81 00 28 */	addi r4, r1, 0x28
/* 8056B238  4B BD F6 D1 */	bl setPos__8daNpcT_cF4cXyz
/* 8056B23C  7E E3 BB 78 */	mr r3, r23
/* 8056B240  38 80 11 C7 */	li r4, 0x11c7
/* 8056B244  4B BD F7 D5 */	bl setAngle__8daNpcT_cFs
/* 8056B248  48 00 01 00 */	b lbl_8056B348
lbl_8056B24C:
/* 8056B24C  7E E3 BB 78 */	mr r3, r23
/* 8056B250  80 97 0A 7C */	lwz r4, 0xa7c(r23)
/* 8056B254  38 A1 00 0C */	addi r5, r1, 0xc
/* 8056B258  4B BE 09 99 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056B25C  48 00 00 EC */	b lbl_8056B348
lbl_8056B260:
/* 8056B260  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 8056B264  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056B268  41 82 00 24 */	beq lbl_8056B28C
/* 8056B26C  83 17 0B 5C */	lwz r24, 0xb5c(r23)
/* 8056B270  38 77 0B 50 */	addi r3, r23, 0xb50
/* 8056B274  4B BD A6 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056B278  93 17 0B 5C */	stw r24, 0xb5c(r23)
/* 8056B27C  38 00 00 1F */	li r0, 0x1f
/* 8056B280  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 8056B284  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056B288  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_8056B28C:
/* 8056B28C  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 8056B290  2C 00 00 00 */	cmpwi r0, 0
/* 8056B294  41 82 00 24 */	beq lbl_8056B2B8
/* 8056B298  83 17 0B 80 */	lwz r24, 0xb80(r23)
/* 8056B29C  38 77 0B 74 */	addi r3, r23, 0xb74
/* 8056B2A0  4B BD A5 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056B2A4  93 17 0B 80 */	stw r24, 0xb80(r23)
/* 8056B2A8  38 00 00 00 */	li r0, 0
/* 8056B2AC  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 8056B2B0  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056B2B4  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
lbl_8056B2B8:
/* 8056B2B8  38 60 00 07 */	li r3, 7
/* 8056B2BC  88 17 04 E2 */	lbz r0, 0x4e2(r23)
/* 8056B2C0  7C 04 07 74 */	extsb r4, r0
/* 8056B2C4  38 A1 00 40 */	addi r5, r1, 0x40
/* 8056B2C8  38 C1 00 14 */	addi r6, r1, 0x14
/* 8056B2CC  4B BE 12 35 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8056B2D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056B2D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056B2D8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8056B2DC  38 81 00 40 */	addi r4, r1, 0x40
/* 8056B2E0  A8 A1 00 16 */	lha r5, 0x16(r1)
/* 8056B2E4  38 C0 00 00 */	li r6, 0
/* 8056B2E8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8056B2EC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8056B2F0  7D 89 03 A6 */	mtctr r12
/* 8056B2F4  4E 80 04 21 */	bctrl 
/* 8056B2F8  C0 5F 01 CC */	lfs f2, 0x1cc(r31)
/* 8056B2FC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8056B300  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 8056B304  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8056B308  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 8056B30C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8056B310  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8056B314  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8056B318  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8056B31C  7E E3 BB 78 */	mr r3, r23
/* 8056B320  38 81 00 1C */	addi r4, r1, 0x1c
/* 8056B324  4B BD F5 E5 */	bl setPos__8daNpcT_cF4cXyz
/* 8056B328  7E E3 BB 78 */	mr r3, r23
/* 8056B32C  38 80 0A AA */	li r4, 0xaaa
/* 8056B330  4B BD F6 E9 */	bl setAngle__8daNpcT_cFs
/* 8056B334  48 00 00 14 */	b lbl_8056B348
lbl_8056B338:
/* 8056B338  7E E3 BB 78 */	mr r3, r23
/* 8056B33C  80 97 0A 7C */	lwz r4, 0xa7c(r23)
/* 8056B340  38 A1 00 0C */	addi r5, r1, 0xc
/* 8056B344  4B BE 08 AD */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_8056B348:
/* 8056B348  80 7F 01 B4 */	lwz r3, 0x1b4(r31)
/* 8056B34C  80 1F 01 B8 */	lwz r0, 0x1b8(r31)
/* 8056B350  90 61 00 34 */	stw r3, 0x34(r1)
/* 8056B354  90 01 00 38 */	stw r0, 0x38(r1)
/* 8056B358  80 1F 01 BC */	lwz r0, 0x1bc(r31)
/* 8056B35C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8056B360  2C 1C 00 07 */	cmpwi r28, 7
/* 8056B364  41 82 02 D0 */	beq lbl_8056B634
/* 8056B368  40 80 00 1C */	bge lbl_8056B384
/* 8056B36C  2C 1C 00 02 */	cmpwi r28, 2
/* 8056B370  41 82 00 70 */	beq lbl_8056B3E0
/* 8056B374  40 80 00 AC */	bge lbl_8056B420
/* 8056B378  2C 1C 00 00 */	cmpwi r28, 0
/* 8056B37C  40 80 00 14 */	bge lbl_8056B390
/* 8056B380  48 00 02 F0 */	b lbl_8056B670
lbl_8056B384:
/* 8056B384  2C 1C 00 09 */	cmpwi r28, 9
/* 8056B388  40 80 02 E8 */	bge lbl_8056B670
/* 8056B38C  48 00 00 94 */	b lbl_8056B420
lbl_8056B390:
/* 8056B390  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 8056B394  2C 00 00 01 */	cmpwi r0, 1
/* 8056B398  41 82 00 28 */	beq lbl_8056B3C0
/* 8056B39C  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8056B3A0  4B BD A3 5D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056B3A4  38 00 00 00 */	li r0, 0
/* 8056B3A8  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 8056B3AC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056B3B0  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 8056B3B4  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8056B3B8  38 00 00 01 */	li r0, 1
/* 8056B3BC  90 17 0C E0 */	stw r0, 0xce0(r23)
lbl_8056B3C0:
/* 8056B3C0  38 00 00 00 */	li r0, 0
/* 8056B3C4  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8056B3C8  38 77 0D C4 */	addi r3, r23, 0xdc4
/* 8056B3CC  48 00 5E 3D */	bl func_80571208
/* 8056B3D0  2C 03 00 00 */	cmpwi r3, 0
/* 8056B3D4  40 82 02 9C */	bne lbl_8056B670
/* 8056B3D8  3B A0 00 01 */	li r29, 1
/* 8056B3DC  48 00 02 94 */	b lbl_8056B670
lbl_8056B3E0:
/* 8056B3E0  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 8056B3E4  2C 00 00 01 */	cmpwi r0, 1
/* 8056B3E8  41 82 00 28 */	beq lbl_8056B410
/* 8056B3EC  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8056B3F0  4B BD A3 0D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056B3F4  38 00 00 00 */	li r0, 0
/* 8056B3F8  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 8056B3FC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056B400  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 8056B404  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8056B408  38 00 00 01 */	li r0, 1
/* 8056B40C  90 17 0C E0 */	stw r0, 0xce0(r23)
lbl_8056B410:
/* 8056B410  38 00 00 00 */	li r0, 0
/* 8056B414  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8056B418  3B A0 00 01 */	li r29, 1
/* 8056B41C  48 00 02 54 */	b lbl_8056B670
lbl_8056B420:
/* 8056B420  2C 1C 00 07 */	cmpwi r28, 7
/* 8056B424  41 82 01 58 */	beq lbl_8056B57C
/* 8056B428  40 80 00 14 */	bge lbl_8056B43C
/* 8056B42C  2C 1C 00 05 */	cmpwi r28, 5
/* 8056B430  41 82 00 14 */	beq lbl_8056B444
/* 8056B434  40 80 00 AC */	bge lbl_8056B4E0
/* 8056B438  48 00 01 44 */	b lbl_8056B57C
lbl_8056B43C:
/* 8056B43C  2C 1C 00 09 */	cmpwi r28, 9
/* 8056B440  40 80 01 3C */	bge lbl_8056B57C
lbl_8056B444:
/* 8056B444  38 77 10 D8 */	addi r3, r23, 0x10d8
/* 8056B448  4B BD A2 C1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056B44C  7C 78 1B 78 */	mr r24, r3
/* 8056B450  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8056B454  4B BD A2 B5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056B458  7C 63 C0 50 */	subf r3, r3, r24
/* 8056B45C  30 03 FF FF */	addic r0, r3, -1
/* 8056B460  7C 00 19 10 */	subfe r0, r0, r3
/* 8056B464  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056B468  40 82 00 10 */	bne lbl_8056B478
/* 8056B46C  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 8056B470  2C 00 00 02 */	cmpwi r0, 2
/* 8056B474  41 82 00 30 */	beq lbl_8056B4A4
lbl_8056B478:
/* 8056B478  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8056B47C  4B BD A2 81 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056B480  38 00 00 00 */	li r0, 0
/* 8056B484  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 8056B488  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056B48C  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 8056B490  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8056B494  38 00 00 02 */	li r0, 2
/* 8056B498  90 17 0C E0 */	stw r0, 0xce0(r23)
/* 8056B49C  38 00 00 01 */	li r0, 1
/* 8056B4A0  48 00 00 08 */	b lbl_8056B4A8
lbl_8056B4A4:
/* 8056B4A4  38 00 00 00 */	li r0, 0
lbl_8056B4A8:
/* 8056B4A8  2C 00 00 00 */	cmpwi r0, 0
/* 8056B4AC  41 82 00 28 */	beq lbl_8056B4D4
/* 8056B4B0  7F 03 C3 78 */	mr r3, r24
/* 8056B4B4  4B AA D8 2D */	bl fopAc_IsActor__FPv
/* 8056B4B8  2C 03 00 00 */	cmpwi r3, 0
/* 8056B4BC  41 82 00 18 */	beq lbl_8056B4D4
/* 8056B4C0  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8056B4C4  7F 04 C3 78 */	mr r4, r24
/* 8056B4C8  4B BD A2 19 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056B4CC  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 8056B4D0  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
lbl_8056B4D4:
/* 8056B4D4  38 00 00 00 */	li r0, 0
/* 8056B4D8  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8056B4DC  48 00 00 D8 */	b lbl_8056B5B4
lbl_8056B4E0:
/* 8056B4E0  38 77 10 C8 */	addi r3, r23, 0x10c8
/* 8056B4E4  4B BD A2 25 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056B4E8  7C 78 1B 78 */	mr r24, r3
/* 8056B4EC  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8056B4F0  4B BD A2 19 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056B4F4  7C 63 C0 50 */	subf r3, r3, r24
/* 8056B4F8  30 03 FF FF */	addic r0, r3, -1
/* 8056B4FC  7C 00 19 10 */	subfe r0, r0, r3
/* 8056B500  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056B504  40 82 00 10 */	bne lbl_8056B514
/* 8056B508  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 8056B50C  2C 00 00 02 */	cmpwi r0, 2
/* 8056B510  41 82 00 30 */	beq lbl_8056B540
lbl_8056B514:
/* 8056B514  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8056B518  4B BD A1 E5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056B51C  38 00 00 00 */	li r0, 0
/* 8056B520  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 8056B524  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056B528  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 8056B52C  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8056B530  38 00 00 02 */	li r0, 2
/* 8056B534  90 17 0C E0 */	stw r0, 0xce0(r23)
/* 8056B538  38 00 00 01 */	li r0, 1
/* 8056B53C  48 00 00 08 */	b lbl_8056B544
lbl_8056B540:
/* 8056B540  38 00 00 00 */	li r0, 0
lbl_8056B544:
/* 8056B544  2C 00 00 00 */	cmpwi r0, 0
/* 8056B548  41 82 00 28 */	beq lbl_8056B570
/* 8056B54C  7F 03 C3 78 */	mr r3, r24
/* 8056B550  4B AA D7 91 */	bl fopAc_IsActor__FPv
/* 8056B554  2C 03 00 00 */	cmpwi r3, 0
/* 8056B558  41 82 00 18 */	beq lbl_8056B570
/* 8056B55C  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8056B560  7F 04 C3 78 */	mr r4, r24
/* 8056B564  4B BD A1 7D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056B568  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 8056B56C  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
lbl_8056B570:
/* 8056B570  38 00 00 00 */	li r0, 0
/* 8056B574  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8056B578  48 00 00 3C */	b lbl_8056B5B4
lbl_8056B57C:
/* 8056B57C  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 8056B580  2C 00 00 01 */	cmpwi r0, 1
/* 8056B584  41 82 00 28 */	beq lbl_8056B5AC
/* 8056B588  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8056B58C  4B BD A1 71 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056B590  38 00 00 00 */	li r0, 0
/* 8056B594  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 8056B598  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056B59C  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 8056B5A0  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8056B5A4  38 00 00 01 */	li r0, 1
/* 8056B5A8  90 17 0C E0 */	stw r0, 0xce0(r23)
lbl_8056B5AC:
/* 8056B5AC  38 00 00 00 */	li r0, 0
/* 8056B5B0  98 17 0C FF */	stb r0, 0xcff(r23)
lbl_8056B5B4:
/* 8056B5B4  93 61 00 34 */	stw r27, 0x34(r1)
/* 8056B5B8  93 41 00 38 */	stw r26, 0x38(r1)
/* 8056B5BC  7E E3 BB 78 */	mr r3, r23
/* 8056B5C0  38 81 00 34 */	addi r4, r1, 0x34
/* 8056B5C4  38 A0 00 00 */	li r5, 0
/* 8056B5C8  38 C1 00 0C */	addi r6, r1, 0xc
/* 8056B5CC  38 E0 00 00 */	li r7, 0
/* 8056B5D0  4B BE 06 A9 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056B5D4  2C 03 00 00 */	cmpwi r3, 0
/* 8056B5D8  41 82 00 98 */	beq lbl_8056B670
/* 8056B5DC  2C 1B 00 00 */	cmpwi r27, 0
/* 8056B5E0  40 82 00 4C */	bne lbl_8056B62C
/* 8056B5E4  2C 1A 00 00 */	cmpwi r26, 0
/* 8056B5E8  40 82 00 44 */	bne lbl_8056B62C
/* 8056B5EC  38 77 09 74 */	addi r3, r23, 0x974
/* 8056B5F0  38 81 00 08 */	addi r4, r1, 8
/* 8056B5F4  4B CD EF 35 */	bl getEventId__10dMsgFlow_cFPi
/* 8056B5F8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8056B5FC  2C 00 00 19 */	cmpwi r0, 0x19
/* 8056B600  40 82 00 18 */	bne lbl_8056B618
/* 8056B604  38 00 00 09 */	li r0, 9
/* 8056B608  B0 17 0E 30 */	sth r0, 0xe30(r23)
/* 8056B60C  7E E3 BB 78 */	mr r3, r23
/* 8056B610  4B BD EC 15 */	bl evtChange__8daNpcT_cFv
/* 8056B614  48 00 00 5C */	b lbl_8056B670
lbl_8056B618:
/* 8056B618  88 17 09 9A */	lbz r0, 0x99a(r23)
/* 8056B61C  28 00 00 01 */	cmplwi r0, 1
/* 8056B620  40 82 00 50 */	bne lbl_8056B670
/* 8056B624  3B A0 00 01 */	li r29, 1
/* 8056B628  48 00 00 48 */	b lbl_8056B670
lbl_8056B62C:
/* 8056B62C  3B A0 00 01 */	li r29, 1
/* 8056B630  48 00 00 40 */	b lbl_8056B670
lbl_8056B634:
/* 8056B634  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 8056B638  2C 00 00 01 */	cmpwi r0, 1
/* 8056B63C  41 82 00 28 */	beq lbl_8056B664
/* 8056B640  38 77 0B A8 */	addi r3, r23, 0xba8
/* 8056B644  4B BD A0 B9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056B648  38 00 00 00 */	li r0, 0
/* 8056B64C  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 8056B650  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056B654  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 8056B658  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8056B65C  38 00 00 01 */	li r0, 1
/* 8056B660  90 17 0C E0 */	stw r0, 0xce0(r23)
lbl_8056B664:
/* 8056B664  38 00 00 00 */	li r0, 0
/* 8056B668  98 17 0C FF */	stb r0, 0xcff(r23)
/* 8056B66C  3B A0 00 01 */	li r29, 1
lbl_8056B670:
/* 8056B670  7F A3 EB 78 */	mr r3, r29
/* 8056B674  39 61 00 80 */	addi r11, r1, 0x80
/* 8056B678  4B DF 6B 99 */	bl _restgpr_23
/* 8056B67C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8056B680  7C 08 03 A6 */	mtlr r0
/* 8056B684  38 21 00 80 */	addi r1, r1, 0x80
/* 8056B688  4E 80 00 20 */	blr 
