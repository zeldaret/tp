lbl_8055DF7C:
/* 8055DF7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055DF80  7C 08 02 A6 */	mflr r0
/* 8055DF84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055DF88  39 61 00 20 */	addi r11, r1, 0x20
/* 8055DF8C  4B E0 42 49 */	bl _savegpr_27
/* 8055DF90  7C 7E 1B 78 */	mr r30, r3
/* 8055DF94  7C 9B 23 78 */	mr r27, r4
/* 8055DF98  3B E0 00 00 */	li r31, 0
/* 8055DF9C  3B 80 FF FF */	li r28, -1
/* 8055DFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055DFA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055DFA8  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 8055DFAC  7F A3 EB 78 */	mr r3, r29
/* 8055DFB0  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8055DFB4  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8055DFB8  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8055DFBC  38 C0 00 03 */	li r6, 3
/* 8055DFC0  4B AE A1 2D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055DFC4  28 03 00 00 */	cmplwi r3, 0
/* 8055DFC8  41 82 00 08 */	beq lbl_8055DFD0
/* 8055DFCC  83 83 00 00 */	lwz r28, 0(r3)
lbl_8055DFD0:
/* 8055DFD0  7F A3 EB 78 */	mr r3, r29
/* 8055DFD4  7F 64 DB 78 */	mr r4, r27
/* 8055DFD8  4B AE 9D 75 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8055DFDC  2C 03 00 00 */	cmpwi r3, 0
/* 8055DFE0  41 82 00 34 */	beq lbl_8055E014
/* 8055DFE4  2C 1C 00 01 */	cmpwi r28, 1
/* 8055DFE8  41 82 00 2C */	beq lbl_8055E014
/* 8055DFEC  40 80 00 28 */	bge lbl_8055E014
/* 8055DFF0  2C 1C 00 00 */	cmpwi r28, 0
/* 8055DFF4  40 80 00 08 */	bge lbl_8055DFFC
/* 8055DFF8  48 00 00 1C */	b lbl_8055E014
lbl_8055DFFC:
/* 8055DFFC  7F C3 F3 78 */	mr r3, r30
/* 8055E000  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055E004  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055E008  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8055E00C  4B AB C7 05 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8055E010  B0 7E 0D C8 */	sth r3, 0xdc8(r30)
lbl_8055E014:
/* 8055E014  2C 1C 00 01 */	cmpwi r28, 1
/* 8055E018  41 82 00 EC */	beq lbl_8055E104
/* 8055E01C  40 80 00 EC */	bge lbl_8055E108
/* 8055E020  2C 1C 00 00 */	cmpwi r28, 0
/* 8055E024  40 80 00 08 */	bge lbl_8055E02C
/* 8055E028  48 00 00 E0 */	b lbl_8055E108
lbl_8055E02C:
/* 8055E02C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8055E030  2C 00 00 01 */	cmpwi r0, 1
/* 8055E034  41 82 00 2C */	beq lbl_8055E060
/* 8055E038  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8055E03C  4B BE 76 C1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055E040  38 00 00 00 */	li r0, 0
/* 8055E044  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8055E048  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 8055E04C  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 8055E050  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8055E054  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8055E058  38 00 00 01 */	li r0, 1
/* 8055E05C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8055E060:
/* 8055E060  38 00 00 00 */	li r0, 0
/* 8055E064  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8055E068  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 8055E06C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8055E070  7C 04 00 00 */	cmpw r4, r0
/* 8055E074  41 82 00 88 */	beq lbl_8055E0FC
/* 8055E078  7F C3 F3 78 */	mr r3, r30
/* 8055E07C  38 A0 00 09 */	li r5, 9
/* 8055E080  38 C0 00 07 */	li r6, 7
/* 8055E084  38 E0 00 0F */	li r7, 0xf
/* 8055E088  39 00 00 00 */	li r8, 0
/* 8055E08C  4B BE D5 BD */	bl step__8daNpcT_cFsiiii
/* 8055E090  2C 03 00 00 */	cmpwi r3, 0
/* 8055E094  41 82 00 74 */	beq lbl_8055E108
/* 8055E098  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8055E09C  2C 00 00 09 */	cmpwi r0, 9
/* 8055E0A0  41 82 00 28 */	beq lbl_8055E0C8
/* 8055E0A4  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8055E0A8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8055E0AC  4B BE 77 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055E0B0  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8055E0B4  38 00 00 09 */	li r0, 9
/* 8055E0B8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8055E0BC  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 8055E0C0  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 8055E0C4  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8055E0C8:
/* 8055E0C8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8055E0CC  2C 00 00 00 */	cmpwi r0, 0
/* 8055E0D0  41 82 00 38 */	beq lbl_8055E108
/* 8055E0D4  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8055E0D8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8055E0DC  4B BE 77 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055E0E0  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8055E0E4  38 00 00 00 */	li r0, 0
/* 8055E0E8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8055E0EC  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 8055E0F0  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 8055E0F4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 8055E0F8  48 00 00 10 */	b lbl_8055E108
lbl_8055E0FC:
/* 8055E0FC  3B E0 00 01 */	li r31, 1
/* 8055E100  48 00 00 08 */	b lbl_8055E108
lbl_8055E104:
/* 8055E104  3B E0 00 01 */	li r31, 1
lbl_8055E108:
/* 8055E108  7F E3 FB 78 */	mr r3, r31
/* 8055E10C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055E110  4B E0 41 11 */	bl _restgpr_27
/* 8055E114  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055E118  7C 08 03 A6 */	mtlr r0
/* 8055E11C  38 21 00 20 */	addi r1, r1, 0x20
/* 8055E120  4E 80 00 20 */	blr 
