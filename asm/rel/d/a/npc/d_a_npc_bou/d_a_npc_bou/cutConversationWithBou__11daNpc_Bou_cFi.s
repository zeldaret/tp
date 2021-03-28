lbl_8096F9A4:
/* 8096F9A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096F9A8  7C 08 02 A6 */	mflr r0
/* 8096F9AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096F9B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8096F9B4  4B 9F 28 1C */	b _savegpr_26
/* 8096F9B8  7C 7E 1B 78 */	mr r30, r3
/* 8096F9BC  7C 9A 23 78 */	mr r26, r4
/* 8096F9C0  3C 60 80 97 */	lis r3, m__17daNpc_Bou_Param_c@ha
/* 8096F9C4  3B E3 28 60 */	addi r31, r3, m__17daNpc_Bou_Param_c@l
/* 8096F9C8  3B 80 00 00 */	li r28, 0
/* 8096F9CC  3B 60 FF FF */	li r27, -1
/* 8096F9D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096F9D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8096F9D8  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 8096F9DC  7F A3 EB 78 */	mr r3, r29
/* 8096F9E0  3C A0 80 97 */	lis r5, struct_8097299C+0x0@ha
/* 8096F9E4  38 A5 29 9C */	addi r5, r5, struct_8097299C+0x0@l
/* 8096F9E8  38 A5 00 DA */	addi r5, r5, 0xda
/* 8096F9EC  38 C0 00 03 */	li r6, 3
/* 8096F9F0  4B 6D 86 FC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096F9F4  28 03 00 00 */	cmplwi r3, 0
/* 8096F9F8  41 82 00 08 */	beq lbl_8096FA00
/* 8096F9FC  83 63 00 00 */	lwz r27, 0(r3)
lbl_8096FA00:
/* 8096FA00  7F A3 EB 78 */	mr r3, r29
/* 8096FA04  7F 44 D3 78 */	mr r4, r26
/* 8096FA08  4B 6D 83 44 */	b getIsAddvance__16dEvent_manager_cFi
/* 8096FA0C  2C 03 00 00 */	cmpwi r3, 0
/* 8096FA10  41 82 00 68 */	beq lbl_8096FA78
/* 8096FA14  2C 1B 00 00 */	cmpwi r27, 0
/* 8096FA18  41 82 00 08 */	beq lbl_8096FA20
/* 8096FA1C  48 00 00 5C */	b lbl_8096FA78
lbl_8096FA20:
/* 8096FA20  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8096FA24  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096FA28  41 82 00 24 */	beq lbl_8096FA4C
/* 8096FA2C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 8096FA30  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8096FA34  4B 7D 5E 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096FA38  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8096FA3C  38 00 00 0A */	li r0, 0xa
/* 8096FA40  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8096FA44  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8096FA48  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8096FA4C:
/* 8096FA4C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8096FA50  2C 00 00 01 */	cmpwi r0, 1
/* 8096FA54  41 82 00 24 */	beq lbl_8096FA78
/* 8096FA58  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 8096FA5C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8096FA60  4B 7D 5E 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096FA64  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8096FA68  38 00 00 01 */	li r0, 1
/* 8096FA6C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8096FA70  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8096FA74  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_8096FA78:
/* 8096FA78  2C 1B 00 00 */	cmpwi r27, 0
/* 8096FA7C  41 82 00 08 */	beq lbl_8096FA84
/* 8096FA80  48 00 00 DC */	b lbl_8096FB5C
lbl_8096FA84:
/* 8096FA84  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 8096FA88  4B 7D 5C 80 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096FA8C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8096FA90  41 82 00 94 */	beq lbl_8096FB24
/* 8096FA94  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096FA98  4B 7D 5C 70 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096FA9C  7C 63 E8 50 */	subf r3, r3, r29
/* 8096FAA0  30 03 FF FF */	addic r0, r3, -1
/* 8096FAA4  7C 00 19 10 */	subfe r0, r0, r3
/* 8096FAA8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8096FAAC  40 82 00 10 */	bne lbl_8096FABC
/* 8096FAB0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8096FAB4  2C 00 00 02 */	cmpwi r0, 2
/* 8096FAB8  41 82 00 30 */	beq lbl_8096FAE8
lbl_8096FABC:
/* 8096FABC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096FAC0  4B 7D 5C 3C */	b remove__18daNpcT_ActorMngr_cFv
/* 8096FAC4  38 00 00 00 */	li r0, 0
/* 8096FAC8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8096FACC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8096FAD0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8096FAD4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096FAD8  38 00 00 02 */	li r0, 2
/* 8096FADC  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 8096FAE0  38 00 00 01 */	li r0, 1
/* 8096FAE4  48 00 00 08 */	b lbl_8096FAEC
lbl_8096FAE8:
/* 8096FAE8  38 00 00 00 */	li r0, 0
lbl_8096FAEC:
/* 8096FAEC  2C 00 00 00 */	cmpwi r0, 0
/* 8096FAF0  41 82 00 28 */	beq lbl_8096FB18
/* 8096FAF4  7F A3 EB 78 */	mr r3, r29
/* 8096FAF8  4B 6A 91 E8 */	b fopAc_IsActor__FPv
/* 8096FAFC  2C 03 00 00 */	cmpwi r3, 0
/* 8096FB00  41 82 00 18 */	beq lbl_8096FB18
/* 8096FB04  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096FB08  7F A4 EB 78 */	mr r4, r29
/* 8096FB0C  4B 7D 5B D4 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8096FB10  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 8096FB14  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_8096FB18:
/* 8096FB18  38 00 00 00 */	li r0, 0
/* 8096FB1C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096FB20  48 00 00 38 */	b lbl_8096FB58
lbl_8096FB24:
/* 8096FB24  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8096FB28  2C 00 00 00 */	cmpwi r0, 0
/* 8096FB2C  41 82 00 24 */	beq lbl_8096FB50
/* 8096FB30  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096FB34  4B 7D 5B C8 */	b remove__18daNpcT_ActorMngr_cFv
/* 8096FB38  38 00 00 00 */	li r0, 0
/* 8096FB3C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8096FB40  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8096FB44  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8096FB48  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8096FB4C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8096FB50:
/* 8096FB50  38 00 00 00 */	li r0, 0
/* 8096FB54  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_8096FB58:
/* 8096FB58  3B 80 00 01 */	li r28, 1
lbl_8096FB5C:
/* 8096FB5C  7F 83 E3 78 */	mr r3, r28
/* 8096FB60  39 61 00 20 */	addi r11, r1, 0x20
/* 8096FB64  4B 9F 26 B8 */	b _restgpr_26
/* 8096FB68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096FB6C  7C 08 03 A6 */	mtlr r0
/* 8096FB70  38 21 00 20 */	addi r1, r1, 0x20
/* 8096FB74  4E 80 00 20 */	blr 
