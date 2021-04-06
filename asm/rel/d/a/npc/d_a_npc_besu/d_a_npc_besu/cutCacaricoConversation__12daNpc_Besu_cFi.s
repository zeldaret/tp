lbl_8053B058:
/* 8053B058  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053B05C  7C 08 02 A6 */	mflr r0
/* 8053B060  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053B064  39 61 00 20 */	addi r11, r1, 0x20
/* 8053B068  4B E2 71 6D */	bl _savegpr_27
/* 8053B06C  7C 7E 1B 78 */	mr r30, r3
/* 8053B070  7C 9B 23 78 */	mr r27, r4
/* 8053B074  3B E0 00 00 */	li r31, 0
/* 8053B078  3B 80 FF FF */	li r28, -1
/* 8053B07C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8053B080  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8053B084  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 8053B088  7F A3 EB 78 */	mr r3, r29
/* 8053B08C  3C A0 80 54 */	lis r5, d_a_npc_besu__stringBase0@ha /* 0x8053E908@ha */
/* 8053B090  38 A5 E9 08 */	addi r5, r5, d_a_npc_besu__stringBase0@l /* 0x8053E908@l */
/* 8053B094  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 8053B098  38 C0 00 03 */	li r6, 3
/* 8053B09C  4B B0 D0 51 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053B0A0  28 03 00 00 */	cmplwi r3, 0
/* 8053B0A4  41 82 00 08 */	beq lbl_8053B0AC
/* 8053B0A8  83 83 00 00 */	lwz r28, 0(r3)
lbl_8053B0AC:
/* 8053B0AC  7F A3 EB 78 */	mr r3, r29
/* 8053B0B0  7F 64 DB 78 */	mr r4, r27
/* 8053B0B4  4B B0 CC 99 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8053B0B8  2C 03 00 00 */	cmpwi r3, 0
/* 8053B0BC  41 82 00 48 */	beq lbl_8053B104
/* 8053B0C0  2C 1C 00 01 */	cmpwi r28, 1
/* 8053B0C4  41 82 00 40 */	beq lbl_8053B104
/* 8053B0C8  40 80 00 3C */	bge lbl_8053B104
/* 8053B0CC  2C 1C 00 00 */	cmpwi r28, 0
/* 8053B0D0  40 80 00 08 */	bge lbl_8053B0D8
/* 8053B0D4  48 00 00 30 */	b lbl_8053B104
lbl_8053B0D8:
/* 8053B0D8  7F C3 F3 78 */	mr r3, r30
/* 8053B0DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8053B0E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8053B0E4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8053B0E8  4B AD F6 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8053B0EC  B0 7E 0D C8 */	sth r3, 0xdc8(r30)
/* 8053B0F0  A8 1E 0D D8 */	lha r0, 0xdd8(r30)
/* 8053B0F4  2C 00 00 01 */	cmpwi r0, 1
/* 8053B0F8  40 82 00 0C */	bne lbl_8053B104
/* 8053B0FC  38 00 00 00 */	li r0, 0
/* 8053B100  B0 1E 0D D8 */	sth r0, 0xdd8(r30)
lbl_8053B104:
/* 8053B104  2C 1C 00 01 */	cmpwi r28, 1
/* 8053B108  41 82 00 EC */	beq lbl_8053B1F4
/* 8053B10C  40 80 01 28 */	bge lbl_8053B234
/* 8053B110  2C 1C 00 00 */	cmpwi r28, 0
/* 8053B114  40 80 00 08 */	bge lbl_8053B11C
/* 8053B118  48 00 01 1C */	b lbl_8053B234
lbl_8053B11C:
/* 8053B11C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8053B120  2C 00 00 01 */	cmpwi r0, 1
/* 8053B124  41 82 00 2C */	beq lbl_8053B150
/* 8053B128  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053B12C  4B C0 A5 D1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8053B130  38 00 00 00 */	li r0, 0
/* 8053B134  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8053B138  3C 60 80 54 */	lis r3, lit_4337@ha /* 0x8053E844@ha */
/* 8053B13C  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)  /* 0x8053E844@l */
/* 8053B140  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8053B144  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053B148  38 00 00 01 */	li r0, 1
/* 8053B14C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8053B150:
/* 8053B150  38 00 00 00 */	li r0, 0
/* 8053B154  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053B158  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 8053B15C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8053B160  7C 04 00 00 */	cmpw r4, r0
/* 8053B164  41 82 00 88 */	beq lbl_8053B1EC
/* 8053B168  7F C3 F3 78 */	mr r3, r30
/* 8053B16C  38 A0 00 1C */	li r5, 0x1c
/* 8053B170  38 C0 00 11 */	li r6, 0x11
/* 8053B174  38 E0 00 0F */	li r7, 0xf
/* 8053B178  39 00 00 00 */	li r8, 0
/* 8053B17C  4B C1 04 CD */	bl step__8daNpcT_cFsiiii
/* 8053B180  2C 03 00 00 */	cmpwi r3, 0
/* 8053B184  41 82 00 B0 */	beq lbl_8053B234
/* 8053B188  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8053B18C  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8053B190  41 82 00 28 */	beq lbl_8053B1B8
/* 8053B194  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8053B198  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8053B19C  4B C0 A6 FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B1A0  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8053B1A4  38 00 00 1C */	li r0, 0x1c
/* 8053B1A8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8053B1AC  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053B1B0  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053B1B4  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8053B1B8:
/* 8053B1B8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8053B1BC  2C 00 00 00 */	cmpwi r0, 0
/* 8053B1C0  41 82 00 74 */	beq lbl_8053B234
/* 8053B1C4  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8053B1C8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8053B1CC  4B C0 A6 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B1D0  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8053B1D4  38 00 00 00 */	li r0, 0
/* 8053B1D8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8053B1DC  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053B1E0  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053B1E4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 8053B1E8  48 00 00 4C */	b lbl_8053B234
lbl_8053B1EC:
/* 8053B1EC  3B E0 00 01 */	li r31, 1
/* 8053B1F0  48 00 00 44 */	b lbl_8053B234
lbl_8053B1F4:
/* 8053B1F4  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8053B1F8  2C 00 00 01 */	cmpwi r0, 1
/* 8053B1FC  41 82 00 2C */	beq lbl_8053B228
/* 8053B200  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8053B204  4B C0 A4 F9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8053B208  38 00 00 00 */	li r0, 0
/* 8053B20C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8053B210  3C 60 80 54 */	lis r3, lit_4337@ha /* 0x8053E844@ha */
/* 8053B214  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)  /* 0x8053E844@l */
/* 8053B218  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8053B21C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053B220  38 00 00 01 */	li r0, 1
/* 8053B224  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8053B228:
/* 8053B228  38 00 00 00 */	li r0, 0
/* 8053B22C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8053B230  3B E0 00 01 */	li r31, 1
lbl_8053B234:
/* 8053B234  7F E3 FB 78 */	mr r3, r31
/* 8053B238  39 61 00 20 */	addi r11, r1, 0x20
/* 8053B23C  4B E2 6F E5 */	bl _restgpr_27
/* 8053B240  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053B244  7C 08 03 A6 */	mtlr r0
/* 8053B248  38 21 00 20 */	addi r1, r1, 0x20
/* 8053B24C  4E 80 00 20 */	blr 
