lbl_8096FB78:
/* 8096FB78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096FB7C  7C 08 02 A6 */	mflr r0
/* 8096FB80  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096FB84  39 61 00 20 */	addi r11, r1, 0x20
/* 8096FB88  4B 9F 26 49 */	bl _savegpr_26
/* 8096FB8C  7C 7E 1B 78 */	mr r30, r3
/* 8096FB90  7C 9A 23 78 */	mr r26, r4
/* 8096FB94  3C 60 80 97 */	lis r3, m__17daNpc_Bou_Param_c@ha /* 0x80972860@ha */
/* 8096FB98  3B E3 28 60 */	addi r31, r3, m__17daNpc_Bou_Param_c@l /* 0x80972860@l */
/* 8096FB9C  3B 80 00 00 */	li r28, 0
/* 8096FBA0  3B 60 FF FF */	li r27, -1
/* 8096FBA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096FBA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096FBAC  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 8096FBB0  7F A3 EB 78 */	mr r3, r29
/* 8096FBB4  3C A0 80 97 */	lis r5, d_a_npc_bou__stringBase0@ha /* 0x8097299C@ha */
/* 8096FBB8  38 A5 29 9C */	addi r5, r5, d_a_npc_bou__stringBase0@l /* 0x8097299C@l */
/* 8096FBBC  38 A5 00 DA */	addi r5, r5, 0xda
/* 8096FBC0  38 C0 00 03 */	li r6, 3
/* 8096FBC4  4B 6D 85 29 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096FBC8  28 03 00 00 */	cmplwi r3, 0
/* 8096FBCC  41 82 00 08 */	beq lbl_8096FBD4
/* 8096FBD0  83 63 00 00 */	lwz r27, 0(r3)
lbl_8096FBD4:
/* 8096FBD4  7F A3 EB 78 */	mr r3, r29
/* 8096FBD8  7F 44 D3 78 */	mr r4, r26
/* 8096FBDC  4B 6D 81 71 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8096FBE0  2C 03 00 00 */	cmpwi r3, 0
/* 8096FBE4  41 82 00 6C */	beq lbl_8096FC50
/* 8096FBE8  2C 1B 00 00 */	cmpwi r27, 0
/* 8096FBEC  41 82 00 0C */	beq lbl_8096FBF8
/* 8096FBF0  41 80 00 60 */	blt lbl_8096FC50
/* 8096FBF4  48 00 00 5C */	b lbl_8096FC50
lbl_8096FBF8:
/* 8096FBF8  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8096FBFC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096FC00  41 82 00 24 */	beq lbl_8096FC24
/* 8096FC04  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8096FC08  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8096FC0C  4B 7D 5C 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096FC10  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8096FC14  38 00 00 0A */	li r0, 0xa
/* 8096FC18  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8096FC1C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8096FC20  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8096FC24:
/* 8096FC24  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8096FC28  2C 00 00 01 */	cmpwi r0, 1
/* 8096FC2C  41 82 00 24 */	beq lbl_8096FC50
/* 8096FC30  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8096FC34  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8096FC38  4B 7D 5C 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096FC3C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8096FC40  38 00 00 01 */	li r0, 1
/* 8096FC44  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8096FC48  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8096FC4C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_8096FC50:
/* 8096FC50  2C 1B 00 01 */	cmpwi r27, 1
/* 8096FC54  41 82 00 F8 */	beq lbl_8096FD4C
/* 8096FC58  40 80 00 10 */	bge lbl_8096FC68
/* 8096FC5C  2C 1B 00 00 */	cmpwi r27, 0
/* 8096FC60  40 80 00 10 */	bge lbl_8096FC70
/* 8096FC64  48 00 01 C0 */	b lbl_8096FE24
lbl_8096FC68:
/* 8096FC68  2C 1B 00 03 */	cmpwi r27, 3
/* 8096FC6C  40 80 01 B8 */	bge lbl_8096FE24
lbl_8096FC70:
/* 8096FC70  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 8096FC74  4B 7D 5A 95 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8096FC78  7C 7D 1B 79 */	or. r29, r3, r3
/* 8096FC7C  41 82 00 94 */	beq lbl_8096FD10
/* 8096FC80  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096FC84  4B 7D 5A 85 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8096FC88  7C 63 E8 50 */	subf r3, r3, r29
/* 8096FC8C  30 03 FF FF */	addic r0, r3, -1
/* 8096FC90  7C 00 19 10 */	subfe r0, r0, r3
/* 8096FC94  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8096FC98  40 82 00 10 */	bne lbl_8096FCA8
/* 8096FC9C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8096FCA0  2C 00 00 02 */	cmpwi r0, 2
/* 8096FCA4  41 82 00 30 */	beq lbl_8096FCD4
lbl_8096FCA8:
/* 8096FCA8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096FCAC  4B 7D 5A 51 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8096FCB0  38 00 00 00 */	li r0, 0
/* 8096FCB4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8096FCB8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8096FCBC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8096FCC0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096FCC4  38 00 00 02 */	li r0, 2
/* 8096FCC8  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 8096FCCC  38 00 00 01 */	li r0, 1
/* 8096FCD0  48 00 00 08 */	b lbl_8096FCD8
lbl_8096FCD4:
/* 8096FCD4  38 00 00 00 */	li r0, 0
lbl_8096FCD8:
/* 8096FCD8  2C 00 00 00 */	cmpwi r0, 0
/* 8096FCDC  41 82 00 28 */	beq lbl_8096FD04
/* 8096FCE0  7F A3 EB 78 */	mr r3, r29
/* 8096FCE4  4B 6A 8F FD */	bl fopAc_IsActor__FPv
/* 8096FCE8  2C 03 00 00 */	cmpwi r3, 0
/* 8096FCEC  41 82 00 18 */	beq lbl_8096FD04
/* 8096FCF0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096FCF4  7F A4 EB 78 */	mr r4, r29
/* 8096FCF8  4B 7D 59 E9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8096FCFC  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 8096FD00  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_8096FD04:
/* 8096FD04  38 00 00 00 */	li r0, 0
/* 8096FD08  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096FD0C  48 00 00 38 */	b lbl_8096FD44
lbl_8096FD10:
/* 8096FD10  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8096FD14  2C 00 00 00 */	cmpwi r0, 0
/* 8096FD18  41 82 00 24 */	beq lbl_8096FD3C
/* 8096FD1C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096FD20  4B 7D 59 DD */	bl remove__18daNpcT_ActorMngr_cFv
/* 8096FD24  38 00 00 00 */	li r0, 0
/* 8096FD28  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8096FD2C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8096FD30  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8096FD34  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096FD38  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8096FD3C:
/* 8096FD3C  38 00 00 00 */	li r0, 0
/* 8096FD40  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_8096FD44:
/* 8096FD44  3B 80 00 01 */	li r28, 1
/* 8096FD48  48 00 00 DC */	b lbl_8096FE24
lbl_8096FD4C:
/* 8096FD4C  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 8096FD50  4B 7D 59 B9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8096FD54  7C 7D 1B 79 */	or. r29, r3, r3
/* 8096FD58  41 82 00 94 */	beq lbl_8096FDEC
/* 8096FD5C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096FD60  4B 7D 59 A9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8096FD64  7C 63 E8 50 */	subf r3, r3, r29
/* 8096FD68  30 03 FF FF */	addic r0, r3, -1
/* 8096FD6C  7C 00 19 10 */	subfe r0, r0, r3
/* 8096FD70  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8096FD74  40 82 00 10 */	bne lbl_8096FD84
/* 8096FD78  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8096FD7C  2C 00 00 02 */	cmpwi r0, 2
/* 8096FD80  41 82 00 30 */	beq lbl_8096FDB0
lbl_8096FD84:
/* 8096FD84  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096FD88  4B 7D 59 75 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8096FD8C  38 00 00 00 */	li r0, 0
/* 8096FD90  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8096FD94  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8096FD98  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8096FD9C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096FDA0  38 00 00 02 */	li r0, 2
/* 8096FDA4  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 8096FDA8  38 00 00 01 */	li r0, 1
/* 8096FDAC  48 00 00 08 */	b lbl_8096FDB4
lbl_8096FDB0:
/* 8096FDB0  38 00 00 00 */	li r0, 0
lbl_8096FDB4:
/* 8096FDB4  2C 00 00 00 */	cmpwi r0, 0
/* 8096FDB8  41 82 00 28 */	beq lbl_8096FDE0
/* 8096FDBC  7F A3 EB 78 */	mr r3, r29
/* 8096FDC0  4B 6A 8F 21 */	bl fopAc_IsActor__FPv
/* 8096FDC4  2C 03 00 00 */	cmpwi r3, 0
/* 8096FDC8  41 82 00 18 */	beq lbl_8096FDE0
/* 8096FDCC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096FDD0  7F A4 EB 78 */	mr r4, r29
/* 8096FDD4  4B 7D 59 0D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8096FDD8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8096FDDC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_8096FDE0:
/* 8096FDE0  38 00 00 00 */	li r0, 0
/* 8096FDE4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096FDE8  48 00 00 38 */	b lbl_8096FE20
lbl_8096FDEC:
/* 8096FDEC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8096FDF0  2C 00 00 00 */	cmpwi r0, 0
/* 8096FDF4  41 82 00 24 */	beq lbl_8096FE18
/* 8096FDF8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096FDFC  4B 7D 59 01 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8096FE00  38 00 00 00 */	li r0, 0
/* 8096FE04  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8096FE08  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8096FE0C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8096FE10  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096FE14  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8096FE18:
/* 8096FE18  38 00 00 00 */	li r0, 0
/* 8096FE1C  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_8096FE20:
/* 8096FE20  3B 80 00 01 */	li r28, 1
lbl_8096FE24:
/* 8096FE24  7F 83 E3 78 */	mr r3, r28
/* 8096FE28  39 61 00 20 */	addi r11, r1, 0x20
/* 8096FE2C  4B 9F 23 F1 */	bl _restgpr_26
/* 8096FE30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096FE34  7C 08 03 A6 */	mtlr r0
/* 8096FE38  38 21 00 20 */	addi r1, r1, 0x20
/* 8096FE3C  4E 80 00 20 */	blr 
