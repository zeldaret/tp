lbl_8055E968:
/* 8055E968  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8055E96C  7C 08 02 A6 */	mflr r0
/* 8055E970  90 01 00 54 */	stw r0, 0x54(r1)
/* 8055E974  39 61 00 50 */	addi r11, r1, 0x50
/* 8055E978  4B E0 38 59 */	bl _savegpr_26
/* 8055E97C  7C 7C 1B 78 */	mr r28, r3
/* 8055E980  7C 9A 23 78 */	mr r26, r4
/* 8055E984  3C 60 80 56 */	lis r3, m__18daNpc_Maro_Param_c@ha /* 0x80564BAC@ha */
/* 8055E988  3B E3 4B AC */	addi r31, r3, m__18daNpc_Maro_Param_c@l /* 0x80564BAC@l */
/* 8055E98C  3B C0 00 00 */	li r30, 0
/* 8055E990  3B A0 FF FF */	li r29, -1
/* 8055E994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055E998  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055E99C  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 8055E9A0  7F 63 DB 78 */	mr r3, r27
/* 8055E9A4  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 8055E9A8  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 8055E9AC  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8055E9B0  38 C0 00 03 */	li r6, 3
/* 8055E9B4  4B AE 97 39 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055E9B8  28 03 00 00 */	cmplwi r3, 0
/* 8055E9BC  41 82 00 08 */	beq lbl_8055E9C4
/* 8055E9C0  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8055E9C4:
/* 8055E9C4  7F 63 DB 78 */	mr r3, r27
/* 8055E9C8  7F 44 D3 78 */	mr r4, r26
/* 8055E9CC  4B AE 93 81 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8055E9D0  2C 03 00 00 */	cmpwi r3, 0
/* 8055E9D4  41 82 01 C4 */	beq lbl_8055EB98
/* 8055E9D8  2C 1D 00 02 */	cmpwi r29, 2
/* 8055E9DC  41 82 01 BC */	beq lbl_8055EB98
/* 8055E9E0  40 80 00 14 */	bge lbl_8055E9F4
/* 8055E9E4  2C 1D 00 00 */	cmpwi r29, 0
/* 8055E9E8  41 82 00 18 */	beq lbl_8055EA00
/* 8055E9EC  40 80 00 70 */	bge lbl_8055EA5C
/* 8055E9F0  48 00 01 A8 */	b lbl_8055EB98
lbl_8055E9F4:
/* 8055E9F4  2C 1D 00 04 */	cmpwi r29, 4
/* 8055E9F8  40 80 01 A0 */	bge lbl_8055EB98
/* 8055E9FC  48 00 01 00 */	b lbl_8055EAFC
lbl_8055EA00:
/* 8055EA00  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8055EA04  2C 00 00 09 */	cmpwi r0, 9
/* 8055EA08  41 82 00 24 */	beq lbl_8055EA2C
/* 8055EA0C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8055EA10  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8055EA14  4B BE 6E 85 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EA18  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8055EA1C  38 00 00 09 */	li r0, 9
/* 8055EA20  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8055EA24  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8055EA28  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8055EA2C:
/* 8055EA2C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8055EA30  2C 00 00 00 */	cmpwi r0, 0
/* 8055EA34  41 82 01 64 */	beq lbl_8055EB98
/* 8055EA38  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8055EA3C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8055EA40  4B BE 6E 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EA44  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8055EA48  38 00 00 00 */	li r0, 0
/* 8055EA4C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8055EA50  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8055EA54  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 8055EA58  48 00 01 40 */	b lbl_8055EB98
lbl_8055EA5C:
/* 8055EA5C  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8055EA60  2C 00 00 09 */	cmpwi r0, 9
/* 8055EA64  41 82 00 24 */	beq lbl_8055EA88
/* 8055EA68  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8055EA6C  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8055EA70  4B BE 6E 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EA74  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8055EA78  38 00 00 09 */	li r0, 9
/* 8055EA7C  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8055EA80  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055EA84  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8055EA88:
/* 8055EA88  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8055EA8C  2C 00 00 04 */	cmpwi r0, 4
/* 8055EA90  41 82 00 24 */	beq lbl_8055EAB4
/* 8055EA94  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8055EA98  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8055EA9C  4B BE 6D FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EAA0  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8055EAA4  38 00 00 04 */	li r0, 4
/* 8055EAA8  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8055EAAC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055EAB0  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_8055EAB4:
/* 8055EAB4  C0 5F 01 60 */	lfs f2, 0x160(r31)
/* 8055EAB8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8055EABC  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 8055EAC0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8055EAC4  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 8055EAC8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8055EACC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8055EAD0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8055EAD4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8055EAD8  7F 83 E3 78 */	mr r3, r28
/* 8055EADC  38 81 00 14 */	addi r4, r1, 0x14
/* 8055EAE0  4B BE BE 29 */	bl setPos__8daNpcT_cF4cXyz
/* 8055EAE4  7F 83 E3 78 */	mr r3, r28
/* 8055EAE8  38 80 23 8E */	li r4, 0x238e
/* 8055EAEC  4B BE BF 2D */	bl setAngle__8daNpcT_cFs
/* 8055EAF0  38 00 00 00 */	li r0, 0
/* 8055EAF4  B0 1C 0D D8 */	sth r0, 0xdd8(r28)
/* 8055EAF8  48 00 00 A0 */	b lbl_8055EB98
lbl_8055EAFC:
/* 8055EAFC  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8055EB00  2C 00 00 09 */	cmpwi r0, 9
/* 8055EB04  41 82 00 24 */	beq lbl_8055EB28
/* 8055EB08  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8055EB0C  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8055EB10  4B BE 6D 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EB14  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8055EB18  38 00 00 09 */	li r0, 9
/* 8055EB1C  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8055EB20  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055EB24  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8055EB28:
/* 8055EB28  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8055EB2C  2C 00 00 00 */	cmpwi r0, 0
/* 8055EB30  41 82 00 24 */	beq lbl_8055EB54
/* 8055EB34  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8055EB38  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8055EB3C  4B BE 6D 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055EB40  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8055EB44  38 00 00 00 */	li r0, 0
/* 8055EB48  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8055EB4C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055EB50  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_8055EB54:
/* 8055EB54  C0 5F 01 6C */	lfs f2, 0x16c(r31)
/* 8055EB58  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8055EB5C  C0 3F 01 70 */	lfs f1, 0x170(r31)
/* 8055EB60  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8055EB64  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 8055EB68  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8055EB6C  D0 41 00 08 */	stfs f2, 8(r1)
/* 8055EB70  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8055EB74  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8055EB78  7F 83 E3 78 */	mr r3, r28
/* 8055EB7C  38 81 00 08 */	addi r4, r1, 8
/* 8055EB80  4B BE BD 89 */	bl setPos__8daNpcT_cF4cXyz
/* 8055EB84  7F 83 E3 78 */	mr r3, r28
/* 8055EB88  38 80 15 55 */	li r4, 0x1555
/* 8055EB8C  4B BE BE 8D */	bl setAngle__8daNpcT_cFs
/* 8055EB90  38 00 00 00 */	li r0, 0
/* 8055EB94  B0 1C 0D D8 */	sth r0, 0xdd8(r28)
lbl_8055EB98:
/* 8055EB98  2C 1D 00 01 */	cmpwi r29, 1
/* 8055EB9C  41 82 00 60 */	beq lbl_8055EBFC
/* 8055EBA0  40 80 00 10 */	bge lbl_8055EBB0
/* 8055EBA4  2C 1D 00 00 */	cmpwi r29, 0
/* 8055EBA8  40 80 00 14 */	bge lbl_8055EBBC
/* 8055EBAC  48 00 01 2C */	b lbl_8055ECD8
lbl_8055EBB0:
/* 8055EBB0  2C 1D 00 04 */	cmpwi r29, 4
/* 8055EBB4  40 80 01 24 */	bge lbl_8055ECD8
/* 8055EBB8  48 00 00 E4 */	b lbl_8055EC9C
lbl_8055EBBC:
/* 8055EBBC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8055EBC0  2C 00 00 01 */	cmpwi r0, 1
/* 8055EBC4  41 82 00 28 */	beq lbl_8055EBEC
/* 8055EBC8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8055EBCC  4B BE 6B 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055EBD0  38 00 00 00 */	li r0, 0
/* 8055EBD4  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 8055EBD8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055EBDC  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8055EBE0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8055EBE4  38 00 00 01 */	li r0, 1
/* 8055EBE8  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_8055EBEC:
/* 8055EBEC  38 00 00 00 */	li r0, 0
/* 8055EBF0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8055EBF4  3B C0 00 01 */	li r30, 1
/* 8055EBF8  48 00 00 E0 */	b lbl_8055ECD8
lbl_8055EBFC:
/* 8055EBFC  38 7C 10 DC */	addi r3, r28, 0x10dc
/* 8055EC00  4B BE 6B 09 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055EC04  7C 7B 1B 78 */	mr r27, r3
/* 8055EC08  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8055EC0C  4B BE 6A FD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055EC10  7C 63 D8 50 */	subf r3, r3, r27
/* 8055EC14  30 03 FF FF */	addic r0, r3, -1
/* 8055EC18  7C 00 19 10 */	subfe r0, r0, r3
/* 8055EC1C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8055EC20  40 82 00 10 */	bne lbl_8055EC30
/* 8055EC24  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8055EC28  2C 00 00 02 */	cmpwi r0, 2
/* 8055EC2C  41 82 00 30 */	beq lbl_8055EC5C
lbl_8055EC30:
/* 8055EC30  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8055EC34  4B BE 6A C9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055EC38  38 00 00 00 */	li r0, 0
/* 8055EC3C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 8055EC40  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055EC44  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8055EC48  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8055EC4C  38 00 00 02 */	li r0, 2
/* 8055EC50  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 8055EC54  38 00 00 01 */	li r0, 1
/* 8055EC58  48 00 00 08 */	b lbl_8055EC60
lbl_8055EC5C:
/* 8055EC5C  38 00 00 00 */	li r0, 0
lbl_8055EC60:
/* 8055EC60  2C 00 00 00 */	cmpwi r0, 0
/* 8055EC64  41 82 00 28 */	beq lbl_8055EC8C
/* 8055EC68  7F 63 DB 78 */	mr r3, r27
/* 8055EC6C  4B AB A0 75 */	bl fopAc_IsActor__FPv
/* 8055EC70  2C 03 00 00 */	cmpwi r3, 0
/* 8055EC74  41 82 00 18 */	beq lbl_8055EC8C
/* 8055EC78  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8055EC7C  7F 64 DB 78 */	mr r4, r27
/* 8055EC80  4B BE 6A 61 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055EC84  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 8055EC88  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
lbl_8055EC8C:
/* 8055EC8C  38 00 00 00 */	li r0, 0
/* 8055EC90  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8055EC94  3B C0 00 01 */	li r30, 1
/* 8055EC98  48 00 00 40 */	b lbl_8055ECD8
lbl_8055EC9C:
/* 8055EC9C  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8055ECA0  2C 00 00 01 */	cmpwi r0, 1
/* 8055ECA4  41 82 00 28 */	beq lbl_8055ECCC
/* 8055ECA8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8055ECAC  4B BE 6A 51 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055ECB0  38 00 00 00 */	li r0, 0
/* 8055ECB4  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 8055ECB8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055ECBC  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8055ECC0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8055ECC4  38 00 00 01 */	li r0, 1
/* 8055ECC8  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_8055ECCC:
/* 8055ECCC  38 00 00 00 */	li r0, 0
/* 8055ECD0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8055ECD4  3B C0 00 01 */	li r30, 1
lbl_8055ECD8:
/* 8055ECD8  7F C3 F3 78 */	mr r3, r30
/* 8055ECDC  39 61 00 50 */	addi r11, r1, 0x50
/* 8055ECE0  4B E0 35 3D */	bl _restgpr_26
/* 8055ECE4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8055ECE8  7C 08 03 A6 */	mtlr r0
/* 8055ECEC  38 21 00 50 */	addi r1, r1, 0x50
/* 8055ECF0  4E 80 00 20 */	blr 
