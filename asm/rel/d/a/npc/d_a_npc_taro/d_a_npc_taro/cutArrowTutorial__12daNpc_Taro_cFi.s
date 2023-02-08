lbl_8056C8CC:
/* 8056C8CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8056C8D0  7C 08 02 A6 */	mflr r0
/* 8056C8D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8056C8D8  39 61 00 40 */	addi r11, r1, 0x40
/* 8056C8DC  4B DF 58 F1 */	bl _savegpr_25
/* 8056C8E0  7C 7A 1B 78 */	mr r26, r3
/* 8056C8E4  7C 9B 23 78 */	mr r27, r4
/* 8056C8E8  3B C0 00 00 */	li r30, 0
/* 8056C8EC  3B A0 FF FF */	li r29, -1
/* 8056C8F0  3B 80 00 00 */	li r28, 0
/* 8056C8F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056C8F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056C8FC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8056C900  7F E3 FB 78 */	mr r3, r31
/* 8056C904  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056C908  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056C90C  38 A5 02 9C */	addi r5, r5, 0x29c
/* 8056C910  38 C0 00 03 */	li r6, 3
/* 8056C914  4B AD B7 D9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056C918  28 03 00 00 */	cmplwi r3, 0
/* 8056C91C  41 82 00 08 */	beq lbl_8056C924
/* 8056C920  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8056C924:
/* 8056C924  7F E3 FB 78 */	mr r3, r31
/* 8056C928  7F 64 DB 78 */	mr r4, r27
/* 8056C92C  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056C930  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056C934  38 A5 02 A0 */	addi r5, r5, 0x2a0
/* 8056C938  38 C0 00 03 */	li r6, 3
/* 8056C93C  4B AD B7 B1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056C940  28 03 00 00 */	cmplwi r3, 0
/* 8056C944  41 82 00 08 */	beq lbl_8056C94C
/* 8056C948  83 83 00 00 */	lwz r28, 0(r3)
lbl_8056C94C:
/* 8056C94C  7F E3 FB 78 */	mr r3, r31
/* 8056C950  7F 64 DB 78 */	mr r4, r27
/* 8056C954  4B AD B3 F9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8056C958  2C 03 00 00 */	cmpwi r3, 0
/* 8056C95C  41 82 04 8C */	beq lbl_8056CDE8
/* 8056C960  28 1D 00 0A */	cmplwi r29, 0xa
/* 8056C964  41 81 04 84 */	bgt lbl_8056CDE8
/* 8056C968  3C 60 80 57 */	lis r3, lit_7781@ha /* 0x8057317C@ha */
/* 8056C96C  38 63 31 7C */	addi r3, r3, lit_7781@l /* 0x8057317C@l */
/* 8056C970  57 A0 10 3A */	slwi r0, r29, 2
/* 8056C974  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056C978  7C 09 03 A6 */	mtctr r0
/* 8056C97C  4E 80 04 20 */	bctr 
lbl_8056C980:
/* 8056C980  38 7A 0B 98 */	addi r3, r26, 0xb98
/* 8056C984  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056C988  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056C98C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056C990  4B BD 8D 51 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056C994  48 00 04 54 */	b lbl_8056CDE8
lbl_8056C998:
/* 8056C998  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 8056C99C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056C9A0  41 82 00 28 */	beq lbl_8056C9C8
/* 8056C9A4  83 9A 0B 5C */	lwz r28, 0xb5c(r26)
/* 8056C9A8  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 8056C9AC  4B BD 8E ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056C9B0  93 9A 0B 5C */	stw r28, 0xb5c(r26)
/* 8056C9B4  38 00 00 1F */	li r0, 0x1f
/* 8056C9B8  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 8056C9BC  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056C9C0  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056C9C4  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_8056C9C8:
/* 8056C9C8  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 8056C9CC  2C 00 00 00 */	cmpwi r0, 0
/* 8056C9D0  41 82 00 28 */	beq lbl_8056C9F8
/* 8056C9D4  83 9A 0B 80 */	lwz r28, 0xb80(r26)
/* 8056C9D8  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 8056C9DC  4B BD 8E BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056C9E0  93 9A 0B 80 */	stw r28, 0xb80(r26)
/* 8056C9E4  38 00 00 00 */	li r0, 0
/* 8056C9E8  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 8056C9EC  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056C9F0  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056C9F4  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_8056C9F8:
/* 8056C9F8  7F 43 D3 78 */	mr r3, r26
/* 8056C9FC  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 8056CA00  4B BD E0 19 */	bl setAngle__8daNpcT_cFs
/* 8056CA04  38 60 00 42 */	li r3, 0x42
/* 8056CA08  88 9A 04 E2 */	lbz r4, 0x4e2(r26)
/* 8056CA0C  7C 84 07 74 */	extsb r4, r4
/* 8056CA10  38 A1 00 10 */	addi r5, r1, 0x10
/* 8056CA14  38 C1 00 08 */	addi r6, r1, 8
/* 8056CA18  4B BD FA E9 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8056CA1C  2C 03 00 00 */	cmpwi r3, 0
/* 8056CA20  41 82 00 2C */	beq lbl_8056CA4C
/* 8056CA24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056CA28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056CA2C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8056CA30  38 81 00 10 */	addi r4, r1, 0x10
/* 8056CA34  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 8056CA38  38 C0 00 00 */	li r6, 0
/* 8056CA3C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8056CA40  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8056CA44  7D 89 03 A6 */	mtctr r12
/* 8056CA48  4E 80 04 21 */	bctrl 
lbl_8056CA4C:
/* 8056CA4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056CA50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056CA54  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 8056CA58  28 03 00 00 */	cmplwi r3, 0
/* 8056CA5C  41 82 00 30 */	beq lbl_8056CA8C
/* 8056CA60  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 8056CA64  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8056CA68  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 8056CA6C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8056CA70  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 8056CA74  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8056CA78  38 81 00 10 */	addi r4, r1, 0x10
/* 8056CA7C  A8 A3 04 B6 */	lha r5, 0x4b6(r3)
/* 8056CA80  39 83 18 E0 */	addi r12, r3, 0x18e0
/* 8056CA84  4B DF 56 01 */	bl __ptmf_scall
/* 8056CA88  60 00 00 00 */	nop 
lbl_8056CA8C:
/* 8056CA8C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8056CA90  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8056CA94  80 63 00 00 */	lwz r3, 0(r3)
/* 8056CA98  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8056CA9C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000017@ha */
/* 8056CAA0  38 84 00 17 */	addi r4, r4, 0x0017 /* 0x01000017@l */
/* 8056CAA4  4B D4 29 F9 */	bl subBgmStart__8Z2SeqMgrFUl
/* 8056CAA8  38 60 00 3C */	li r3, 0x3c
/* 8056CAAC  4B BE 00 41 */	bl daNpcT_onTmpBit__FUl
/* 8056CAB0  38 60 00 3F */	li r3, 0x3f
/* 8056CAB4  4B BE 00 79 */	bl daNpcT_offTmpBit__FUl
/* 8056CAB8  38 60 00 40 */	li r3, 0x40
/* 8056CABC  4B BE 00 71 */	bl daNpcT_offTmpBit__FUl
/* 8056CAC0  38 60 00 41 */	li r3, 0x41
/* 8056CAC4  4B BE 00 69 */	bl daNpcT_offTmpBit__FUl
/* 8056CAC8  48 00 03 20 */	b lbl_8056CDE8
lbl_8056CACC:
/* 8056CACC  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 8056CAD0  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056CAD4  41 82 00 28 */	beq lbl_8056CAFC
/* 8056CAD8  83 9A 0B 5C */	lwz r28, 0xb5c(r26)
/* 8056CADC  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 8056CAE0  4B BD 8D B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056CAE4  93 9A 0B 5C */	stw r28, 0xb5c(r26)
/* 8056CAE8  38 00 00 1F */	li r0, 0x1f
/* 8056CAEC  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 8056CAF0  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CAF4  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CAF8  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_8056CAFC:
/* 8056CAFC  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 8056CB00  2C 00 00 00 */	cmpwi r0, 0
/* 8056CB04  41 82 00 28 */	beq lbl_8056CB2C
/* 8056CB08  83 9A 0B 80 */	lwz r28, 0xb80(r26)
/* 8056CB0C  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 8056CB10  4B BD 8D 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056CB14  93 9A 0B 80 */	stw r28, 0xb80(r26)
/* 8056CB18  38 00 00 00 */	li r0, 0
/* 8056CB1C  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 8056CB20  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CB24  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CB28  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_8056CB2C:
/* 8056CB2C  7F 43 D3 78 */	mr r3, r26
/* 8056CB30  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 8056CB34  4B BD DE E5 */	bl setAngle__8daNpcT_cFs
/* 8056CB38  2C 1D 00 03 */	cmpwi r29, 3
/* 8056CB3C  40 82 00 60 */	bne lbl_8056CB9C
/* 8056CB40  7F 43 D3 78 */	mr r3, r26
/* 8056CB44  4B FF A0 91 */	bl getArrowP__12daNpc_Taro_cFv
/* 8056CB48  7C 64 1B 78 */	mr r4, r3
/* 8056CB4C  38 7A 11 60 */	addi r3, r26, 0x1160
/* 8056CB50  4B BD 8B 91 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056CB54  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8056CB58  2C 00 00 00 */	cmpwi r0, 0
/* 8056CB5C  41 82 00 28 */	beq lbl_8056CB84
/* 8056CB60  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056CB64  4B BD 8B 99 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056CB68  38 00 00 00 */	li r0, 0
/* 8056CB6C  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8056CB70  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CB74  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CB78  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056CB7C  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056CB80  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8056CB84:
/* 8056CB84  38 00 00 00 */	li r0, 0
/* 8056CB88  B0 1A 0C D4 */	sth r0, 0xcd4(r26)
/* 8056CB8C  B0 1A 0C D6 */	sth r0, 0xcd6(r26)
/* 8056CB90  38 00 00 01 */	li r0, 1
/* 8056CB94  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056CB98  48 00 02 50 */	b lbl_8056CDE8
lbl_8056CB9C:
/* 8056CB9C  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8056CBA0  2C 00 00 00 */	cmpwi r0, 0
/* 8056CBA4  41 82 00 28 */	beq lbl_8056CBCC
/* 8056CBA8  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056CBAC  4B BD 8B 51 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056CBB0  38 00 00 00 */	li r0, 0
/* 8056CBB4  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8056CBB8  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CBBC  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CBC0  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056CBC4  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056CBC8  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8056CBCC:
/* 8056CBCC  38 00 00 00 */	li r0, 0
/* 8056CBD0  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056CBD4  48 00 02 14 */	b lbl_8056CDE8
lbl_8056CBD8:
/* 8056CBD8  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 8056CBDC  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056CBE0  41 82 00 28 */	beq lbl_8056CC08
/* 8056CBE4  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 8056CBE8  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 8056CBEC  4B BD 8C AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056CBF0  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 8056CBF4  38 00 00 1F */	li r0, 0x1f
/* 8056CBF8  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 8056CBFC  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CC00  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CC04  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_8056CC08:
/* 8056CC08  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 8056CC0C  2C 00 00 00 */	cmpwi r0, 0
/* 8056CC10  41 82 00 28 */	beq lbl_8056CC38
/* 8056CC14  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 8056CC18  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 8056CC1C  4B BD 8C 7D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056CC20  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 8056CC24  38 00 00 00 */	li r0, 0
/* 8056CC28  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 8056CC2C  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CC30  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CC34  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_8056CC38:
/* 8056CC38  93 9A 0D C4 */	stw r28, 0xdc4(r26)
/* 8056CC3C  38 60 00 4C */	li r3, 0x4c
/* 8056CC40  4B BD FE 6D */	bl daNpcT_chkEvtBit__FUl
/* 8056CC44  2C 03 00 00 */	cmpwi r3, 0
/* 8056CC48  40 82 00 70 */	bne lbl_8056CCB8
/* 8056CC4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056CC50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056CC54  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8056CC58  7C 00 07 74 */	extsb r0, r0
/* 8056CC5C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8056CC60  7C 63 02 14 */	add r3, r3, r0
/* 8056CC64  83 23 5D 74 */	lwz r25, 0x5d74(r3)
/* 8056CC68  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8056CC6C  2C 00 00 04 */	cmpwi r0, 4
/* 8056CC70  41 82 00 2C */	beq lbl_8056CC9C
/* 8056CC74  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056CC78  4B BD 8A 85 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056CC7C  38 00 00 00 */	li r0, 0
/* 8056CC80  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8056CC84  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CC88  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CC8C  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056CC90  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056CC94  38 00 00 04 */	li r0, 4
/* 8056CC98  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8056CC9C:
/* 8056CC9C  38 00 00 00 */	li r0, 0
/* 8056CCA0  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056CCA4  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8056CCA8  38 99 00 D8 */	addi r4, r25, 0xd8
/* 8056CCAC  4B D0 3F 59 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8056CCB0  B0 7A 0D C8 */	sth r3, 0xdc8(r26)
/* 8056CCB4  48 00 00 1C */	b lbl_8056CCD0
lbl_8056CCB8:
/* 8056CCB8  7F 43 D3 78 */	mr r3, r26
/* 8056CCBC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056CCC0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056CCC4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056CCC8  4B AA DA 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8056CCCC  B0 7A 0D C8 */	sth r3, 0xdc8(r26)
lbl_8056CCD0:
/* 8056CCD0  A8 1A 0D D8 */	lha r0, 0xdd8(r26)
/* 8056CCD4  2C 00 00 01 */	cmpwi r0, 1
/* 8056CCD8  40 82 00 0C */	bne lbl_8056CCE4
/* 8056CCDC  38 00 00 00 */	li r0, 0
/* 8056CCE0  B0 1A 0D D8 */	sth r0, 0xdd8(r26)
lbl_8056CCE4:
/* 8056CCE4  7F 43 D3 78 */	mr r3, r26
/* 8056CCE8  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 8056CCEC  4B BD DD 2D */	bl setAngle__8daNpcT_cFs
/* 8056CCF0  38 7A 0B 98 */	addi r3, r26, 0xb98
/* 8056CCF4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056CCF8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056CCFC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056CD00  4B BD 89 E1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056CD04  48 00 00 E4 */	b lbl_8056CDE8
lbl_8056CD08:
/* 8056CD08  7F 43 D3 78 */	mr r3, r26
/* 8056CD0C  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 8056CD10  4B BD DD 09 */	bl setAngle__8daNpcT_cFs
/* 8056CD14  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8056CD18  2C 00 00 00 */	cmpwi r0, 0
/* 8056CD1C  41 82 00 28 */	beq lbl_8056CD44
/* 8056CD20  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056CD24  4B BD 89 D9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056CD28  38 00 00 00 */	li r0, 0
/* 8056CD2C  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8056CD30  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CD34  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CD38  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056CD3C  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056CD40  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8056CD44:
/* 8056CD44  38 00 00 00 */	li r0, 0
/* 8056CD48  B0 1A 0C D4 */	sth r0, 0xcd4(r26)
/* 8056CD4C  B0 1A 0C D6 */	sth r0, 0xcd6(r26)
/* 8056CD50  38 00 00 01 */	li r0, 1
/* 8056CD54  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056CD58  48 00 00 90 */	b lbl_8056CDE8
lbl_8056CD5C:
/* 8056CD5C  93 9A 0D C4 */	stw r28, 0xdc4(r26)
/* 8056CD60  48 00 00 88 */	b lbl_8056CDE8
lbl_8056CD64:
/* 8056CD64  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 8056CD68  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056CD6C  41 82 00 28 */	beq lbl_8056CD94
/* 8056CD70  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 8056CD74  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 8056CD78  4B BD 8B 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056CD7C  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 8056CD80  38 00 00 1F */	li r0, 0x1f
/* 8056CD84  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 8056CD88  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CD8C  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CD90  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_8056CD94:
/* 8056CD94  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 8056CD98  2C 00 00 00 */	cmpwi r0, 0
/* 8056CD9C  41 82 00 28 */	beq lbl_8056CDC4
/* 8056CDA0  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 8056CDA4  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 8056CDA8  4B BD 8A F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056CDAC  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 8056CDB0  38 00 00 00 */	li r0, 0
/* 8056CDB4  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 8056CDB8  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CDBC  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CDC0  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_8056CDC4:
/* 8056CDC4  93 9A 0D C4 */	stw r28, 0xdc4(r26)
/* 8056CDC8  7F 43 D3 78 */	mr r3, r26
/* 8056CDCC  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 8056CDD0  4B BD DC 49 */	bl setAngle__8daNpcT_cFs
/* 8056CDD4  38 7A 0B 98 */	addi r3, r26, 0xb98
/* 8056CDD8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056CDDC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056CDE0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056CDE4  4B BD 88 FD */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8056CDE8:
/* 8056CDE8  28 1D 00 0A */	cmplwi r29, 0xa
/* 8056CDEC  41 81 02 B0 */	bgt lbl_8056D09C
/* 8056CDF0  3C 60 80 57 */	lis r3, lit_7782@ha /* 0x80573150@ha */
/* 8056CDF4  38 63 31 50 */	addi r3, r3, lit_7782@l /* 0x80573150@l */
/* 8056CDF8  57 A0 10 3A */	slwi r0, r29, 2
/* 8056CDFC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056CE00  7C 09 03 A6 */	mtctr r0
/* 8056CE04  4E 80 04 20 */	bctr 
lbl_8056CE08:
/* 8056CE08  7F 43 D3 78 */	mr r3, r26
/* 8056CE0C  81 9A 0E 3C */	lwz r12, 0xe3c(r26)
/* 8056CE10  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8056CE14  7D 89 03 A6 */	mtctr r12
/* 8056CE18  4E 80 04 21 */	bctrl 
/* 8056CE1C  3B C0 00 01 */	li r30, 1
/* 8056CE20  48 00 02 7C */	b lbl_8056D09C
lbl_8056CE24:
/* 8056CE24  7F E3 FB 78 */	mr r3, r31
/* 8056CE28  7F 64 DB 78 */	mr r4, r27
/* 8056CE2C  4B AD AF 21 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8056CE30  2C 03 00 00 */	cmpwi r3, 0
/* 8056CE34  40 82 00 A0 */	bne lbl_8056CED4
/* 8056CE38  38 7A 11 60 */	addi r3, r26, 0x1160
/* 8056CE3C  4B BD 88 CD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056CE40  28 03 00 00 */	cmplwi r3, 0
/* 8056CE44  41 82 00 1C */	beq lbl_8056CE60
/* 8056CE48  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 8056CE4C  D0 1A 0D 6C */	stfs f0, 0xd6c(r26)
/* 8056CE50  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 8056CE54  D0 1A 0D 70 */	stfs f0, 0xd70(r26)
/* 8056CE58  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 8056CE5C  D0 1A 0D 74 */	stfs f0, 0xd74(r26)
lbl_8056CE60:
/* 8056CE60  80 7A 0B C8 */	lwz r3, 0xbc8(r26)
/* 8056CE64  38 1A 0D 6C */	addi r0, r26, 0xd6c
/* 8056CE68  7C 63 00 50 */	subf r3, r3, r0
/* 8056CE6C  30 03 FF FF */	addic r0, r3, -1
/* 8056CE70  7C 00 19 10 */	subfe r0, r0, r3
/* 8056CE74  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056CE78  40 82 00 10 */	bne lbl_8056CE88
/* 8056CE7C  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8056CE80  2C 00 00 03 */	cmpwi r0, 3
/* 8056CE84  41 82 00 34 */	beq lbl_8056CEB8
lbl_8056CE88:
/* 8056CE88  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056CE8C  4B BD 88 71 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056CE90  38 00 00 00 */	li r0, 0
/* 8056CE94  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8056CE98  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CE9C  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CEA0  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056CEA4  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056CEA8  38 00 00 03 */	li r0, 3
/* 8056CEAC  90 1A 0C E0 */	stw r0, 0xce0(r26)
/* 8056CEB0  38 00 00 01 */	li r0, 1
/* 8056CEB4  48 00 00 08 */	b lbl_8056CEBC
lbl_8056CEB8:
/* 8056CEB8  38 00 00 00 */	li r0, 0
lbl_8056CEBC:
/* 8056CEBC  2C 00 00 00 */	cmpwi r0, 0
/* 8056CEC0  41 82 00 0C */	beq lbl_8056CECC
/* 8056CEC4  38 1A 0D 6C */	addi r0, r26, 0xd6c
/* 8056CEC8  90 1A 0B C8 */	stw r0, 0xbc8(r26)
lbl_8056CECC:
/* 8056CECC  38 00 00 00 */	li r0, 0
/* 8056CED0  98 1A 0C FF */	stb r0, 0xcff(r26)
lbl_8056CED4:
/* 8056CED4  3B C0 00 01 */	li r30, 1
/* 8056CED8  48 00 01 C4 */	b lbl_8056D09C
lbl_8056CEDC:
/* 8056CEDC  38 60 00 4C */	li r3, 0x4c
/* 8056CEE0  4B BD FB CD */	bl daNpcT_chkEvtBit__FUl
/* 8056CEE4  2C 03 00 00 */	cmpwi r3, 0
/* 8056CEE8  41 82 00 40 */	beq lbl_8056CF28
/* 8056CEEC  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8056CEF0  2C 00 00 01 */	cmpwi r0, 1
/* 8056CEF4  41 82 00 2C */	beq lbl_8056CF20
/* 8056CEF8  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056CEFC  4B BD 88 01 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056CF00  38 00 00 00 */	li r0, 0
/* 8056CF04  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8056CF08  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CF0C  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CF10  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056CF14  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056CF18  38 00 00 01 */	li r0, 1
/* 8056CF1C  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8056CF20:
/* 8056CF20  38 00 00 00 */	li r0, 0
/* 8056CF24  98 1A 0C FF */	stb r0, 0xcff(r26)
lbl_8056CF28:
/* 8056CF28  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 8056CF2C  48 00 42 DD */	bl func_80571208
/* 8056CF30  2C 03 00 00 */	cmpwi r3, 0
/* 8056CF34  40 82 01 68 */	bne lbl_8056D09C
/* 8056CF38  A8 9A 0D C8 */	lha r4, 0xdc8(r26)
/* 8056CF3C  A8 1A 0D 7A */	lha r0, 0xd7a(r26)
/* 8056CF40  7C 04 00 00 */	cmpw r4, r0
/* 8056CF44  41 82 00 20 */	beq lbl_8056CF64
/* 8056CF48  7F 43 D3 78 */	mr r3, r26
/* 8056CF4C  38 A0 00 1F */	li r5, 0x1f
/* 8056CF50  38 C0 00 24 */	li r6, 0x24
/* 8056CF54  38 E0 00 0F */	li r7, 0xf
/* 8056CF58  39 00 00 00 */	li r8, 0
/* 8056CF5C  4B BD E6 ED */	bl step__8daNpcT_cFsiiii
/* 8056CF60  48 00 01 3C */	b lbl_8056D09C
lbl_8056CF64:
/* 8056CF64  3B C0 00 01 */	li r30, 1
/* 8056CF68  48 00 01 34 */	b lbl_8056D09C
lbl_8056CF6C:
/* 8056CF6C  3B C0 00 01 */	li r30, 1
/* 8056CF70  48 00 01 2C */	b lbl_8056D09C
lbl_8056CF74:
/* 8056CF74  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 8056CF78  48 00 42 91 */	bl func_80571208
/* 8056CF7C  2C 03 00 00 */	cmpwi r3, 0
/* 8056CF80  40 82 01 1C */	bne lbl_8056D09C
/* 8056CF84  3B C0 00 01 */	li r30, 1
/* 8056CF88  48 00 01 14 */	b lbl_8056D09C
lbl_8056CF8C:
/* 8056CF8C  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 8056CF90  48 00 42 79 */	bl func_80571208
/* 8056CF94  2C 03 00 00 */	cmpwi r3, 0
/* 8056CF98  40 82 01 04 */	bne lbl_8056D09C
/* 8056CF9C  38 60 00 4C */	li r3, 0x4c
/* 8056CFA0  4B BD FB 0D */	bl daNpcT_chkEvtBit__FUl
/* 8056CFA4  2C 03 00 00 */	cmpwi r3, 0
/* 8056CFA8  40 82 00 70 */	bne lbl_8056D018
/* 8056CFAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056CFB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056CFB4  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8056CFB8  7C 00 07 74 */	extsb r0, r0
/* 8056CFBC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8056CFC0  7C 63 02 14 */	add r3, r3, r0
/* 8056CFC4  83 23 5D 74 */	lwz r25, 0x5d74(r3)
/* 8056CFC8  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8056CFCC  2C 00 00 04 */	cmpwi r0, 4
/* 8056CFD0  41 82 00 2C */	beq lbl_8056CFFC
/* 8056CFD4  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056CFD8  4B BD 87 25 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056CFDC  38 00 00 00 */	li r0, 0
/* 8056CFE0  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8056CFE4  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056CFE8  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056CFEC  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056CFF0  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056CFF4  38 00 00 04 */	li r0, 4
/* 8056CFF8  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8056CFFC:
/* 8056CFFC  38 00 00 00 */	li r0, 0
/* 8056D000  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056D004  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8056D008  38 99 00 D8 */	addi r4, r25, 0xd8
/* 8056D00C  4B D0 3B F9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8056D010  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8056D014  48 00 00 58 */	b lbl_8056D06C
lbl_8056D018:
/* 8056D018  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 8056D01C  2C 00 00 01 */	cmpwi r0, 1
/* 8056D020  41 82 00 2C */	beq lbl_8056D04C
/* 8056D024  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 8056D028  4B BD 86 D5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056D02C  38 00 00 00 */	li r0, 0
/* 8056D030  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 8056D034  3C 60 80 57 */	lis r3, lit_4472@ha /* 0x805717AC@ha */
/* 8056D038  C0 03 17 AC */	lfs f0, lit_4472@l(r3)  /* 0x805717AC@l */
/* 8056D03C  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 8056D040  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056D044  38 00 00 01 */	li r0, 1
/* 8056D048  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_8056D04C:
/* 8056D04C  38 00 00 00 */	li r0, 0
/* 8056D050  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 8056D054  7F 43 D3 78 */	mr r3, r26
/* 8056D058  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056D05C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056D060  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056D064  4B AA D6 AD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8056D068  B0 61 00 0A */	sth r3, 0xa(r1)
lbl_8056D06C:
/* 8056D06C  A8 81 00 0A */	lha r4, 0xa(r1)
/* 8056D070  A8 1A 0D 7A */	lha r0, 0xd7a(r26)
/* 8056D074  7C 04 00 00 */	cmpw r4, r0
/* 8056D078  41 82 00 20 */	beq lbl_8056D098
/* 8056D07C  7F 43 D3 78 */	mr r3, r26
/* 8056D080  38 A0 00 1F */	li r5, 0x1f
/* 8056D084  38 C0 00 24 */	li r6, 0x24
/* 8056D088  38 E0 00 0F */	li r7, 0xf
/* 8056D08C  39 00 00 00 */	li r8, 0
/* 8056D090  4B BD E5 B9 */	bl step__8daNpcT_cFsiiii
/* 8056D094  48 00 00 08 */	b lbl_8056D09C
lbl_8056D098:
/* 8056D098  3B C0 00 01 */	li r30, 1
lbl_8056D09C:
/* 8056D09C  7F C3 F3 78 */	mr r3, r30
/* 8056D0A0  39 61 00 40 */	addi r11, r1, 0x40
/* 8056D0A4  4B DF 51 75 */	bl _restgpr_25
/* 8056D0A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8056D0AC  7C 08 03 A6 */	mtlr r0
/* 8056D0B0  38 21 00 40 */	addi r1, r1, 0x40
/* 8056D0B4  4E 80 00 20 */	blr 
