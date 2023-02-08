lbl_80B4F128:
/* 80B4F128  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4F12C  7C 08 02 A6 */	mflr r0
/* 80B4F130  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4F134  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4F138  4B 81 30 9D */	bl _savegpr_27
/* 80B4F13C  7C 7D 1B 78 */	mr r29, r3
/* 80B4F140  7C 9B 23 78 */	mr r27, r4
/* 80B4F144  3B E0 00 00 */	li r31, 0
/* 80B4F148  3B C0 FF FF */	li r30, -1
/* 80B4F14C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B4F150  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B4F154  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80B4F158  7F 83 E3 78 */	mr r3, r28
/* 80B4F15C  3C A0 80 B5 */	lis r5, d_a_npc_yelia__stringBase0@ha /* 0x80B52408@ha */
/* 80B4F160  38 A5 24 08 */	addi r5, r5, d_a_npc_yelia__stringBase0@l /* 0x80B52408@l */
/* 80B4F164  38 A5 00 AA */	addi r5, r5, 0xaa
/* 80B4F168  38 C0 00 03 */	li r6, 3
/* 80B4F16C  4B 4F 8F 81 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B4F170  28 03 00 00 */	cmplwi r3, 0
/* 80B4F174  41 82 00 08 */	beq lbl_80B4F17C
/* 80B4F178  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80B4F17C:
/* 80B4F17C  7F 83 E3 78 */	mr r3, r28
/* 80B4F180  7F 64 DB 78 */	mr r4, r27
/* 80B4F184  3C A0 80 B5 */	lis r5, d_a_npc_yelia__stringBase0@ha /* 0x80B52408@ha */
/* 80B4F188  38 A5 24 08 */	addi r5, r5, d_a_npc_yelia__stringBase0@l /* 0x80B52408@l */
/* 80B4F18C  38 A5 00 AE */	addi r5, r5, 0xae
/* 80B4F190  38 C0 00 03 */	li r6, 3
/* 80B4F194  4B 4F 8F 59 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B4F198  7F 83 E3 78 */	mr r3, r28
/* 80B4F19C  7F 64 DB 78 */	mr r4, r27
/* 80B4F1A0  4B 4F 8B AD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B4F1A4  2C 03 00 00 */	cmpwi r3, 0
/* 80B4F1A8  41 82 00 E4 */	beq lbl_80B4F28C
/* 80B4F1AC  2C 1E 00 01 */	cmpwi r30, 1
/* 80B4F1B0  41 82 00 18 */	beq lbl_80B4F1C8
/* 80B4F1B4  40 80 00 08 */	bge lbl_80B4F1BC
/* 80B4F1B8  48 00 00 D4 */	b lbl_80B4F28C
lbl_80B4F1BC:
/* 80B4F1BC  2C 1E 00 03 */	cmpwi r30, 3
/* 80B4F1C0  40 80 00 CC */	bge lbl_80B4F28C
/* 80B4F1C4  48 00 00 68 */	b lbl_80B4F22C
lbl_80B4F1C8:
/* 80B4F1C8  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B4F1CC  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B4F1D0  41 82 00 28 */	beq lbl_80B4F1F8
/* 80B4F1D4  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B4F1D8  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B4F1DC  4B 5F 66 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F1E0  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B4F1E4  38 00 00 0D */	li r0, 0xd
/* 80B4F1E8  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B4F1EC  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B4F1F0  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B4F1F4  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B4F1F8:
/* 80B4F1F8  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B4F1FC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B4F200  41 82 00 8C */	beq lbl_80B4F28C
/* 80B4F204  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B4F208  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B4F20C  4B 5F 66 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F210  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B4F214  38 00 00 1A */	li r0, 0x1a
/* 80B4F218  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B4F21C  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B4F220  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B4F224  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B4F228  48 00 00 64 */	b lbl_80B4F28C
lbl_80B4F22C:
/* 80B4F22C  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B4F230  2C 00 00 0E */	cmpwi r0, 0xe
/* 80B4F234  41 82 00 28 */	beq lbl_80B4F25C
/* 80B4F238  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B4F23C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B4F240  4B 5F 66 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F244  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B4F248  38 00 00 0E */	li r0, 0xe
/* 80B4F24C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B4F250  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B4F254  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B4F258  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B4F25C:
/* 80B4F25C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B4F260  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80B4F264  41 82 00 28 */	beq lbl_80B4F28C
/* 80B4F268  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B4F26C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B4F270  4B 5F 66 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F274  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B4F278  38 00 00 1B */	li r0, 0x1b
/* 80B4F27C  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B4F280  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B4F284  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B4F288  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80B4F28C:
/* 80B4F28C  2C 1E 00 01 */	cmpwi r30, 1
/* 80B4F290  41 82 00 28 */	beq lbl_80B4F2B8
/* 80B4F294  40 80 00 10 */	bge lbl_80B4F2A4
/* 80B4F298  2C 1E 00 00 */	cmpwi r30, 0
/* 80B4F29C  40 80 00 14 */	bge lbl_80B4F2B0
/* 80B4F2A0  48 00 01 24 */	b lbl_80B4F3C4
lbl_80B4F2A4:
/* 80B4F2A4  2C 1E 00 03 */	cmpwi r30, 3
/* 80B4F2A8  40 80 01 1C */	bge lbl_80B4F3C4
/* 80B4F2AC  48 00 00 94 */	b lbl_80B4F340
lbl_80B4F2B0:
/* 80B4F2B0  3B E0 00 01 */	li r31, 1
/* 80B4F2B4  48 00 01 10 */	b lbl_80B4F3C4
lbl_80B4F2B8:
/* 80B4F2B8  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B4F2BC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B4F2C0  40 82 00 78 */	bne lbl_80B4F338
/* 80B4F2C4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B4F2C8  4B 5F 67 5D */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B4F2CC  2C 03 00 00 */	cmpwi r3, 0
/* 80B4F2D0  41 82 00 F4 */	beq lbl_80B4F3C4
/* 80B4F2D4  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B4F2D8  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B4F2DC  41 82 00 28 */	beq lbl_80B4F304
/* 80B4F2E0  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B4F2E4  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B4F2E8  4B 5F 65 B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F2EC  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B4F2F0  38 00 00 1A */	li r0, 0x1a
/* 80B4F2F4  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B4F2F8  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B4F2FC  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B4F300  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B4F304:
/* 80B4F304  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B4F308  2C 00 00 05 */	cmpwi r0, 5
/* 80B4F30C  41 82 00 B8 */	beq lbl_80B4F3C4
/* 80B4F310  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B4F314  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B4F318  4B 5F 65 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F31C  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B4F320  38 00 00 05 */	li r0, 5
/* 80B4F324  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B4F328  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B4F32C  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B4F330  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B4F334  48 00 00 90 */	b lbl_80B4F3C4
lbl_80B4F338:
/* 80B4F338  3B E0 00 01 */	li r31, 1
/* 80B4F33C  48 00 00 88 */	b lbl_80B4F3C4
lbl_80B4F340:
/* 80B4F340  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B4F344  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80B4F348  40 82 00 78 */	bne lbl_80B4F3C0
/* 80B4F34C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B4F350  4B 5F 66 D5 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B4F354  2C 03 00 00 */	cmpwi r3, 0
/* 80B4F358  41 82 00 6C */	beq lbl_80B4F3C4
/* 80B4F35C  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B4F360  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B4F364  41 82 00 28 */	beq lbl_80B4F38C
/* 80B4F368  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B4F36C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B4F370  4B 5F 65 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F374  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B4F378  38 00 00 1A */	li r0, 0x1a
/* 80B4F37C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B4F380  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B4F384  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B4F388  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B4F38C:
/* 80B4F38C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B4F390  2C 00 00 16 */	cmpwi r0, 0x16
/* 80B4F394  41 82 00 30 */	beq lbl_80B4F3C4
/* 80B4F398  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B4F39C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B4F3A0  4B 5F 64 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4F3A4  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B4F3A8  38 00 00 16 */	li r0, 0x16
/* 80B4F3AC  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B4F3B0  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B4F3B4  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B4F3B8  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B4F3BC  48 00 00 08 */	b lbl_80B4F3C4
lbl_80B4F3C0:
/* 80B4F3C0  3B E0 00 01 */	li r31, 1
lbl_80B4F3C4:
/* 80B4F3C4  7F E3 FB 78 */	mr r3, r31
/* 80B4F3C8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4F3CC  4B 81 2E 55 */	bl _restgpr_27
/* 80B4F3D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4F3D4  7C 08 03 A6 */	mtlr r0
/* 80B4F3D8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4F3DC  4E 80 00 20 */	blr 
