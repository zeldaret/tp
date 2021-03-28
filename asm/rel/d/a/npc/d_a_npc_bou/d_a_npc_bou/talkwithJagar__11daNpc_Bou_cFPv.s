lbl_80970DFC:
/* 80970DFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80970E00  7C 08 02 A6 */	mflr r0
/* 80970E04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80970E08  39 61 00 20 */	addi r11, r1, 0x20
/* 80970E0C  4B 9F 13 CC */	b _savegpr_28
/* 80970E10  7C 7D 1B 78 */	mr r29, r3
/* 80970E14  3C 60 80 97 */	lis r3, m__17daNpc_Bou_Param_c@ha
/* 80970E18  3B E3 28 60 */	addi r31, r3, m__17daNpc_Bou_Param_c@l
/* 80970E1C  38 7D 0F 8C */	addi r3, r29, 0xf8c
/* 80970E20  4B 7D 48 E8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80970E24  7C 7E 1B 78 */	mr r30, r3
/* 80970E28  A0 1D 0E 22 */	lhz r0, 0xe22(r29)
/* 80970E2C  2C 00 00 02 */	cmpwi r0, 2
/* 80970E30  41 82 00 84 */	beq lbl_80970EB4
/* 80970E34  40 80 01 4C */	bge lbl_80970F80
/* 80970E38  2C 00 00 00 */	cmpwi r0, 0
/* 80970E3C  40 80 00 0C */	bge lbl_80970E48
/* 80970E40  48 00 01 40 */	b lbl_80970F80
/* 80970E44  48 00 01 3C */	b lbl_80970F80
lbl_80970E48:
/* 80970E48  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80970E4C  2C 00 00 00 */	cmpwi r0, 0
/* 80970E50  40 82 00 64 */	bne lbl_80970EB4
/* 80970E54  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80970E58  2C 00 00 0A */	cmpwi r0, 0xa
/* 80970E5C  41 82 00 24 */	beq lbl_80970E80
/* 80970E60  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80970E64  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80970E68  4B 7D 4A 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80970E6C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80970E70  38 00 00 0A */	li r0, 0xa
/* 80970E74  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80970E78  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80970E7C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80970E80:
/* 80970E80  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80970E84  2C 00 00 01 */	cmpwi r0, 1
/* 80970E88  41 82 00 24 */	beq lbl_80970EAC
/* 80970E8C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80970E90  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80970E94  4B 7D 4A 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80970E98  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80970E9C  38 00 00 01 */	li r0, 1
/* 80970EA0  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80970EA4  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80970EA8  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80970EAC:
/* 80970EAC  38 00 00 02 */	li r0, 2
/* 80970EB0  B0 1D 0E 22 */	sth r0, 0xe22(r29)
lbl_80970EB4:
/* 80970EB4  28 1E 00 00 */	cmplwi r30, 0
/* 80970EB8  41 82 00 94 */	beq lbl_80970F4C
/* 80970EBC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80970EC0  4B 7D 48 48 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80970EC4  7C 63 F0 50 */	subf r3, r3, r30
/* 80970EC8  30 03 FF FF */	addic r0, r3, -1
/* 80970ECC  7C 00 19 10 */	subfe r0, r0, r3
/* 80970ED0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80970ED4  40 82 00 10 */	bne lbl_80970EE4
/* 80970ED8  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80970EDC  2C 00 00 02 */	cmpwi r0, 2
/* 80970EE0  41 82 00 30 */	beq lbl_80970F10
lbl_80970EE4:
/* 80970EE4  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80970EE8  4B 7D 48 14 */	b remove__18daNpcT_ActorMngr_cFv
/* 80970EEC  38 00 00 00 */	li r0, 0
/* 80970EF0  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80970EF4  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80970EF8  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80970EFC  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80970F00  38 00 00 02 */	li r0, 2
/* 80970F04  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 80970F08  38 00 00 01 */	li r0, 1
/* 80970F0C  48 00 00 08 */	b lbl_80970F14
lbl_80970F10:
/* 80970F10  38 00 00 00 */	li r0, 0
lbl_80970F14:
/* 80970F14  2C 00 00 00 */	cmpwi r0, 0
/* 80970F18  41 82 00 28 */	beq lbl_80970F40
/* 80970F1C  7F C3 F3 78 */	mr r3, r30
/* 80970F20  4B 6A 7D C0 */	b fopAc_IsActor__FPv
/* 80970F24  2C 03 00 00 */	cmpwi r3, 0
/* 80970F28  41 82 00 18 */	beq lbl_80970F40
/* 80970F2C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80970F30  7F C4 F3 78 */	mr r4, r30
/* 80970F34  4B 7D 47 AC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80970F38  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80970F3C  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
lbl_80970F40:
/* 80970F40  38 00 00 00 */	li r0, 0
/* 80970F44  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80970F48  48 00 00 38 */	b lbl_80970F80
lbl_80970F4C:
/* 80970F4C  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80970F50  2C 00 00 00 */	cmpwi r0, 0
/* 80970F54  41 82 00 24 */	beq lbl_80970F78
/* 80970F58  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80970F5C  4B 7D 47 A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80970F60  38 00 00 00 */	li r0, 0
/* 80970F64  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80970F68  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80970F6C  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80970F70  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80970F74  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80970F78:
/* 80970F78  38 00 00 00 */	li r0, 0
/* 80970F7C  98 1D 0C FF */	stb r0, 0xcff(r29)
lbl_80970F80:
/* 80970F80  38 60 00 01 */	li r3, 1
/* 80970F84  39 61 00 20 */	addi r11, r1, 0x20
/* 80970F88  4B 9F 12 9C */	b _restgpr_28
/* 80970F8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80970F90  7C 08 03 A6 */	mtlr r0
/* 80970F94  38 21 00 20 */	addi r1, r1, 0x20
/* 80970F98  4E 80 00 20 */	blr 
