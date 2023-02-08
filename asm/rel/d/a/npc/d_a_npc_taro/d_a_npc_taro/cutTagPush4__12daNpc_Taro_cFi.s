lbl_8056DFAC:
/* 8056DFAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8056DFB0  7C 08 02 A6 */	mflr r0
/* 8056DFB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8056DFB8  39 61 00 40 */	addi r11, r1, 0x40
/* 8056DFBC  4B DF 42 15 */	bl _savegpr_26
/* 8056DFC0  7C 7C 1B 78 */	mr r28, r3
/* 8056DFC4  7C 9A 23 78 */	mr r26, r4
/* 8056DFC8  38 7C 0B A0 */	addi r3, r28, 0xba0
/* 8056DFCC  4B BD 77 3D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056DFD0  7C 7F 1B 78 */	mr r31, r3
/* 8056DFD4  3B C0 00 00 */	li r30, 0
/* 8056DFD8  3B A0 FF FF */	li r29, -1
/* 8056DFDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056DFE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056DFE4  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 8056DFE8  7F 63 DB 78 */	mr r3, r27
/* 8056DFEC  7F 44 D3 78 */	mr r4, r26
/* 8056DFF0  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056DFF4  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056DFF8  38 A5 02 9C */	addi r5, r5, 0x29c
/* 8056DFFC  38 C0 00 03 */	li r6, 3
/* 8056E000  4B AD A0 ED */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056E004  28 03 00 00 */	cmplwi r3, 0
/* 8056E008  41 82 00 08 */	beq lbl_8056E010
/* 8056E00C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8056E010:
/* 8056E010  7F 63 DB 78 */	mr r3, r27
/* 8056E014  7F 44 D3 78 */	mr r4, r26
/* 8056E018  4B AD 9D 35 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8056E01C  2C 03 00 00 */	cmpwi r3, 0
/* 8056E020  41 82 01 D8 */	beq lbl_8056E1F8
/* 8056E024  2C 1D 00 01 */	cmpwi r29, 1
/* 8056E028  41 82 01 AC */	beq lbl_8056E1D4
/* 8056E02C  40 80 01 CC */	bge lbl_8056E1F8
/* 8056E030  2C 1D 00 00 */	cmpwi r29, 0
/* 8056E034  40 80 00 08 */	bge lbl_8056E03C
/* 8056E038  48 00 01 C0 */	b lbl_8056E1F8
lbl_8056E03C:
/* 8056E03C  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8056E040  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056E044  41 82 00 28 */	beq lbl_8056E06C
/* 8056E048  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8056E04C  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8056E050  4B BD 78 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E054  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8056E058  38 00 00 1F */	li r0, 0x1f
/* 8056E05C  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8056E060  3C 60 80 57 */	lis r3, lit_5232@ha /* 0x805717D0@ha */
/* 8056E064  C0 03 17 D0 */	lfs f0, lit_5232@l(r3)  /* 0x805717D0@l */
/* 8056E068  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8056E06C:
/* 8056E06C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8056E070  2C 00 00 00 */	cmpwi r0, 0
/* 8056E074  41 82 00 28 */	beq lbl_8056E09C
/* 8056E078  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8056E07C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8056E080  4B BD 78 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E084  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8056E088  38 00 00 00 */	li r0, 0
/* 8056E08C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8056E090  3C 60 80 57 */	lis r3, lit_5232@ha /* 0x805717D0@ha */
/* 8056E094  C0 03 17 D0 */	lfs f0, lit_5232@l(r3)  /* 0x805717D0@l */
/* 8056E098  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_8056E09C:
/* 8056E09C  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8056E0A0  2C 00 00 00 */	cmpwi r0, 0
/* 8056E0A4  41 82 00 28 */	beq lbl_8056E0CC
/* 8056E0A8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8056E0AC  4B BD 76 51 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056E0B0  38 00 00 00 */	li r0, 0
/* 8056E0B4  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 8056E0B8  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056E0BC  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056E0C0  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8056E0C4  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056E0C8  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_8056E0CC:
/* 8056E0CC  38 00 00 00 */	li r0, 0
/* 8056E0D0  B0 1C 0C D4 */	sth r0, 0xcd4(r28)
/* 8056E0D4  B0 1C 0C D6 */	sth r0, 0xcd6(r28)
/* 8056E0D8  38 00 00 01 */	li r0, 1
/* 8056E0DC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056E0E0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8056E0E4  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8056E0E8  28 04 00 FF */	cmplwi r4, 0xff
/* 8056E0EC  38 00 FF FF */	li r0, -1
/* 8056E0F0  41 82 00 08 */	beq lbl_8056E0F8
/* 8056E0F4  7C 80 23 78 */	mr r0, r4
lbl_8056E0F8:
/* 8056E0F8  2C 00 FF FF */	cmpwi r0, -1
/* 8056E0FC  40 81 00 58 */	ble lbl_8056E154
/* 8056E100  28 04 00 FF */	cmplwi r4, 0xff
/* 8056E104  38 60 FF FF */	li r3, -1
/* 8056E108  41 82 00 08 */	beq lbl_8056E110
/* 8056E10C  54 83 04 3E */	clrlwi r3, r4, 0x10
lbl_8056E110:
/* 8056E110  88 9F 04 E2 */	lbz r4, 0x4e2(r31)
/* 8056E114  7C 84 07 74 */	extsb r4, r4
/* 8056E118  38 A1 00 10 */	addi r5, r1, 0x10
/* 8056E11C  38 C1 00 08 */	addi r6, r1, 8
/* 8056E120  4B BD E3 E1 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8056E124  2C 03 00 00 */	cmpwi r3, 0
/* 8056E128  41 82 00 2C */	beq lbl_8056E154
/* 8056E12C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056E130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056E134  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8056E138  38 81 00 10 */	addi r4, r1, 0x10
/* 8056E13C  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 8056E140  38 C0 00 00 */	li r6, 0
/* 8056E144  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8056E148  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8056E14C  7D 89 03 A6 */	mtctr r12
/* 8056E150  4E 80 04 21 */	bctrl 
lbl_8056E154:
/* 8056E154  7F 83 E3 78 */	mr r3, r28
/* 8056E158  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056E15C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056E160  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056E164  4B AA C5 AD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8056E168  7C 64 1B 78 */	mr r4, r3
/* 8056E16C  7F 83 E3 78 */	mr r3, r28
/* 8056E170  4B BD C8 A9 */	bl setAngle__8daNpcT_cFs
/* 8056E174  38 60 00 00 */	li r3, 0
/* 8056E178  38 80 00 00 */	li r4, 0
/* 8056E17C  7C 88 23 78 */	mr r8, r4
/* 8056E180  7C 87 23 78 */	mr r7, r4
/* 8056E184  7C 86 23 78 */	mr r6, r4
/* 8056E188  3C A0 80 57 */	lis r5, lit_4472@ha /* 0x805717AC@ha */
/* 8056E18C  C0 05 17 AC */	lfs f0, lit_4472@l(r5)  /* 0x805717AC@l */
/* 8056E190  38 00 00 02 */	li r0, 2
/* 8056E194  7C 09 03 A6 */	mtctr r0
lbl_8056E198:
/* 8056E198  7C BC 22 14 */	add r5, r28, r4
/* 8056E19C  B1 05 0D 08 */	sth r8, 0xd08(r5)
/* 8056E1A0  B0 E5 0D 0A */	sth r7, 0xd0a(r5)
/* 8056E1A4  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 8056E1A8  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8056E1AC  7C 1C 05 2E */	stfsx f0, r28, r0
/* 8056E1B0  38 63 00 04 */	addi r3, r3, 4
/* 8056E1B4  38 84 00 06 */	addi r4, r4, 6
/* 8056E1B8  42 00 FF E0 */	bdnz lbl_8056E198
/* 8056E1BC  38 00 00 00 */	li r0, 0
/* 8056E1C0  B0 1C 0D 1C */	sth r0, 0xd1c(r28)
/* 8056E1C4  B0 1C 0D 1E */	sth r0, 0xd1e(r28)
/* 8056E1C8  98 1C 0D 20 */	stb r0, 0xd20(r28)
/* 8056E1CC  90 1C 0D BC */	stw r0, 0xdbc(r28)
/* 8056E1D0  48 00 00 28 */	b lbl_8056E1F8
lbl_8056E1D4:
/* 8056E1D4  A8 7F 04 B4 */	lha r3, 0x4b4(r31)
/* 8056E1D8  3C 03 00 00 */	addis r0, r3, 0
/* 8056E1DC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8056E1E0  38 80 FF FF */	li r4, -1
/* 8056E1E4  41 82 00 08 */	beq lbl_8056E1EC
/* 8056E1E8  54 64 04 3E */	clrlwi r4, r3, 0x10
lbl_8056E1EC:
/* 8056E1EC  7F 83 E3 78 */	mr r3, r28
/* 8056E1F0  38 A0 00 00 */	li r5, 0
/* 8056E1F4  4B BD D9 FD */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_8056E1F8:
/* 8056E1F8  2C 1D 00 01 */	cmpwi r29, 1
/* 8056E1FC  41 82 00 1C */	beq lbl_8056E218
/* 8056E200  40 80 00 50 */	bge lbl_8056E250
/* 8056E204  2C 1D 00 00 */	cmpwi r29, 0
/* 8056E208  40 80 00 08 */	bge lbl_8056E210
/* 8056E20C  48 00 00 44 */	b lbl_8056E250
lbl_8056E210:
/* 8056E210  3B C0 00 01 */	li r30, 1
/* 8056E214  48 00 00 40 */	b lbl_8056E254
lbl_8056E218:
/* 8056E218  7F 83 E3 78 */	mr r3, r28
/* 8056E21C  38 80 00 00 */	li r4, 0
/* 8056E220  38 A0 00 00 */	li r5, 0
/* 8056E224  38 C0 00 00 */	li r6, 0
/* 8056E228  38 E0 00 00 */	li r7, 0
/* 8056E22C  4B BD DA 4D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056E230  2C 03 00 00 */	cmpwi r3, 0
/* 8056E234  41 82 00 20 */	beq lbl_8056E254
/* 8056E238  38 00 00 01 */	li r0, 1
/* 8056E23C  98 1C 11 A0 */	stb r0, 0x11a0(r28)
/* 8056E240  38 7C 0B A0 */	addi r3, r28, 0xba0
/* 8056E244  4B BD 74 B9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056E248  3B C0 00 01 */	li r30, 1
/* 8056E24C  48 00 00 08 */	b lbl_8056E254
lbl_8056E250:
/* 8056E250  3B C0 00 01 */	li r30, 1
lbl_8056E254:
/* 8056E254  7F C3 F3 78 */	mr r3, r30
/* 8056E258  39 61 00 40 */	addi r11, r1, 0x40
/* 8056E25C  4B DF 3F C1 */	bl _restgpr_26
/* 8056E260  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8056E264  7C 08 03 A6 */	mtlr r0
/* 8056E268  38 21 00 40 */	addi r1, r1, 0x40
/* 8056E26C  4E 80 00 20 */	blr 
