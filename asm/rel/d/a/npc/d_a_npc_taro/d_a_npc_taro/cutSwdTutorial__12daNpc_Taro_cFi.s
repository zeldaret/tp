lbl_80568E00:
/* 80568E00  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80568E04  7C 08 02 A6 */	mflr r0
/* 80568E08  90 01 00 74 */	stw r0, 0x74(r1)
/* 80568E0C  39 61 00 70 */	addi r11, r1, 0x70
/* 80568E10  4B DF 93 B8 */	b _savegpr_24
/* 80568E14  7C 78 1B 78 */	mr r24, r3
/* 80568E18  7C 99 23 78 */	mr r25, r4
/* 80568E1C  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha
/* 80568E20  3B E3 16 C8 */	addi r31, r3, m__18daNpc_Taro_Param_c@l
/* 80568E24  3B A0 00 00 */	li r29, 0
/* 80568E28  3B 80 FF FF */	li r28, -1
/* 80568E2C  3B 60 00 00 */	li r27, 0
/* 80568E30  3B 40 00 00 */	li r26, 0
/* 80568E34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80568E38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80568E3C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80568E40  7F C3 F3 78 */	mr r3, r30
/* 80568E44  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 80568E48  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 80568E4C  38 A5 02 9C */	addi r5, r5, 0x29c
/* 80568E50  38 C0 00 03 */	li r6, 3
/* 80568E54  4B AD F2 98 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80568E58  28 03 00 00 */	cmplwi r3, 0
/* 80568E5C  41 82 00 08 */	beq lbl_80568E64
/* 80568E60  83 83 00 00 */	lwz r28, 0(r3)
lbl_80568E64:
/* 80568E64  7F C3 F3 78 */	mr r3, r30
/* 80568E68  7F 24 CB 78 */	mr r4, r25
/* 80568E6C  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 80568E70  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 80568E74  38 A5 02 A0 */	addi r5, r5, 0x2a0
/* 80568E78  38 C0 00 03 */	li r6, 3
/* 80568E7C  4B AD F2 70 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80568E80  28 03 00 00 */	cmplwi r3, 0
/* 80568E84  41 82 00 08 */	beq lbl_80568E8C
/* 80568E88  83 63 00 00 */	lwz r27, 0(r3)
lbl_80568E8C:
/* 80568E8C  7F C3 F3 78 */	mr r3, r30
/* 80568E90  7F 24 CB 78 */	mr r4, r25
/* 80568E94  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 80568E98  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 80568E9C  38 A5 02 A6 */	addi r5, r5, 0x2a6
/* 80568EA0  38 C0 00 03 */	li r6, 3
/* 80568EA4  4B AD F2 48 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80568EA8  28 03 00 00 */	cmplwi r3, 0
/* 80568EAC  41 82 00 08 */	beq lbl_80568EB4
/* 80568EB0  83 43 00 00 */	lwz r26, 0(r3)
lbl_80568EB4:
/* 80568EB4  80 7F 01 60 */	lwz r3, 0x160(r31)
/* 80568EB8  80 1F 01 64 */	lwz r0, 0x164(r31)
/* 80568EBC  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80568EC0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80568EC4  80 1F 01 68 */	lwz r0, 0x168(r31)
/* 80568EC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80568ECC  93 01 00 2C */	stw r24, 0x2c(r1)
/* 80568ED0  38 78 10 C8 */	addi r3, r24, 0x10c8
/* 80568ED4  4B BD C8 34 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80568ED8  90 61 00 30 */	stw r3, 0x30(r1)
/* 80568EDC  38 78 10 D0 */	addi r3, r24, 0x10d0
/* 80568EE0  4B BD C8 28 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80568EE4  90 61 00 34 */	stw r3, 0x34(r1)
/* 80568EE8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80568EEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80568EF0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80568EF4  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 80568EF8  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80568EFC  90 04 5E F4 */	stw r0, 0x5ef4(r4)
/* 80568F00  90 64 5E F8 */	stw r3, 0x5ef8(r4)
/* 80568F04  38 00 00 00 */	li r0, 0
/* 80568F08  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80568F0C  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80568F10  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80568F14  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80568F18  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80568F1C  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80568F20  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80568F24  7F C3 F3 78 */	mr r3, r30
/* 80568F28  7F 24 CB 78 */	mr r4, r25
/* 80568F2C  4B AD EE 20 */	b getIsAddvance__16dEvent_manager_cFi
/* 80568F30  2C 03 00 00 */	cmpwi r3, 0
/* 80568F34  41 82 05 08 */	beq lbl_8056943C
/* 80568F38  28 1C 00 48 */	cmplwi r28, 0x48
/* 80568F3C  41 81 05 00 */	bgt lbl_8056943C
/* 80568F40  3C 60 80 57 */	lis r3, lit_6199@ha
/* 80568F44  38 63 2E C8 */	addi r3, r3, lit_6199@l
/* 80568F48  57 80 10 3A */	slwi r0, r28, 2
/* 80568F4C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80568F50  7C 09 03 A6 */	mtctr r0
/* 80568F54  4E 80 04 20 */	bctr 
lbl_80568F58:
/* 80568F58  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 80568F5C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80568F60  41 82 00 24 */	beq lbl_80568F84
/* 80568F64  83 38 0B 5C */	lwz r25, 0xb5c(r24)
/* 80568F68  38 78 0B 50 */	addi r3, r24, 0xb50
/* 80568F6C  4B BD C9 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80568F70  93 38 0B 5C */	stw r25, 0xb5c(r24)
/* 80568F74  38 00 00 1F */	li r0, 0x1f
/* 80568F78  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 80568F7C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80568F80  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_80568F84:
/* 80568F84  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80568F88  2C 00 00 0B */	cmpwi r0, 0xb
/* 80568F8C  41 82 00 24 */	beq lbl_80568FB0
/* 80568F90  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 80568F94  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80568F98  4B BD C9 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80568F9C  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 80568FA0  38 00 00 0B */	li r0, 0xb
/* 80568FA4  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80568FA8  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80568FAC  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_80568FB0:
/* 80568FB0  93 78 0D C4 */	stw r27, 0xdc4(r24)
/* 80568FB4  48 00 04 88 */	b lbl_8056943C
lbl_80568FB8:
/* 80568FB8  7F 03 C3 78 */	mr r3, r24
/* 80568FBC  38 80 01 F5 */	li r4, 0x1f5
/* 80568FC0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80568FC4  4B BE 2C 2C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80568FC8  48 00 04 74 */	b lbl_8056943C
lbl_80568FCC:
/* 80568FCC  93 78 0D C4 */	stw r27, 0xdc4(r24)
/* 80568FD0  48 00 04 6C */	b lbl_8056943C
lbl_80568FD4:
/* 80568FD4  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 80568FD8  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80568FDC  41 82 00 24 */	beq lbl_80569000
/* 80568FE0  83 38 0B 5C */	lwz r25, 0xb5c(r24)
/* 80568FE4  38 78 0B 50 */	addi r3, r24, 0xb50
/* 80568FE8  4B BD C8 B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80568FEC  93 38 0B 5C */	stw r25, 0xb5c(r24)
/* 80568FF0  38 00 00 1F */	li r0, 0x1f
/* 80568FF4  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 80568FF8  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80568FFC  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_80569000:
/* 80569000  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80569004  2C 00 00 14 */	cmpwi r0, 0x14
/* 80569008  41 82 00 24 */	beq lbl_8056902C
/* 8056900C  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 80569010  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80569014  4B BD C8 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80569018  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 8056901C  38 00 00 14 */	li r0, 0x14
/* 80569020  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80569024  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569028  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_8056902C:
/* 8056902C  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80569030  2C 00 00 00 */	cmpwi r0, 0
/* 80569034  41 82 00 24 */	beq lbl_80569058
/* 80569038  38 78 0B A8 */	addi r3, r24, 0xba8
/* 8056903C  4B BD C6 C0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80569040  38 00 00 00 */	li r0, 0
/* 80569044  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80569048  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056904C  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80569050  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80569054  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80569058:
/* 80569058  38 00 00 00 */	li r0, 0
/* 8056905C  B0 18 0C D4 */	sth r0, 0xcd4(r24)
/* 80569060  B0 18 0C D6 */	sth r0, 0xcd6(r24)
/* 80569064  38 00 00 01 */	li r0, 1
/* 80569068  98 18 0C FF */	stb r0, 0xcff(r24)
/* 8056906C  7F 03 C3 78 */	mr r3, r24
/* 80569070  38 80 01 F5 */	li r4, 0x1f5
/* 80569074  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80569078  4B BE 2B 78 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056907C  48 00 03 C0 */	b lbl_8056943C
lbl_80569080:
/* 80569080  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 80569084  2C 00 00 10 */	cmpwi r0, 0x10
/* 80569088  41 82 00 24 */	beq lbl_805690AC
/* 8056908C  83 38 0B 5C */	lwz r25, 0xb5c(r24)
/* 80569090  38 78 0B 50 */	addi r3, r24, 0xb50
/* 80569094  4B BD C8 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80569098  93 38 0B 5C */	stw r25, 0xb5c(r24)
/* 8056909C  38 00 00 10 */	li r0, 0x10
/* 805690A0  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 805690A4  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805690A8  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_805690AC:
/* 805690AC  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 805690B0  2C 00 00 1B */	cmpwi r0, 0x1b
/* 805690B4  41 82 00 24 */	beq lbl_805690D8
/* 805690B8  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 805690BC  38 78 0B 74 */	addi r3, r24, 0xb74
/* 805690C0  4B BD C7 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805690C4  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 805690C8  38 00 00 1B */	li r0, 0x1b
/* 805690CC  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 805690D0  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805690D4  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_805690D8:
/* 805690D8  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 805690DC  2C 00 00 00 */	cmpwi r0, 0
/* 805690E0  41 82 00 24 */	beq lbl_80569104
/* 805690E4  38 78 0B A8 */	addi r3, r24, 0xba8
/* 805690E8  4B BD C6 14 */	b remove__18daNpcT_ActorMngr_cFv
/* 805690EC  38 00 00 00 */	li r0, 0
/* 805690F0  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 805690F4  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805690F8  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 805690FC  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80569100  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80569104:
/* 80569104  38 00 00 00 */	li r0, 0
/* 80569108  B0 18 0C D4 */	sth r0, 0xcd4(r24)
/* 8056910C  B0 18 0C D6 */	sth r0, 0xcd6(r24)
/* 80569110  38 00 00 01 */	li r0, 1
/* 80569114  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80569118  48 00 03 24 */	b lbl_8056943C
lbl_8056911C:
/* 8056911C  7F 03 C3 78 */	mr r3, r24
/* 80569120  38 80 01 F5 */	li r4, 0x1f5
/* 80569124  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80569128  4B BE 2A C8 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056912C  48 00 03 10 */	b lbl_8056943C
lbl_80569130:
/* 80569130  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 80569134  2C 00 00 10 */	cmpwi r0, 0x10
/* 80569138  41 82 00 24 */	beq lbl_8056915C
/* 8056913C  83 38 0B 5C */	lwz r25, 0xb5c(r24)
/* 80569140  38 78 0B 50 */	addi r3, r24, 0xb50
/* 80569144  4B BD C7 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80569148  93 38 0B 5C */	stw r25, 0xb5c(r24)
/* 8056914C  38 00 00 10 */	li r0, 0x10
/* 80569150  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 80569154  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569158  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_8056915C:
/* 8056915C  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80569160  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80569164  41 82 00 24 */	beq lbl_80569188
/* 80569168  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 8056916C  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80569170  4B BD C7 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80569174  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 80569178  38 00 00 1C */	li r0, 0x1c
/* 8056917C  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80569180  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569184  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_80569188:
/* 80569188  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 8056918C  2C 00 00 00 */	cmpwi r0, 0
/* 80569190  41 82 00 24 */	beq lbl_805691B4
/* 80569194  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80569198  4B BD C5 64 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056919C  38 00 00 00 */	li r0, 0
/* 805691A0  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 805691A4  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805691A8  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 805691AC  98 18 0C FF */	stb r0, 0xcff(r24)
/* 805691B0  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_805691B4:
/* 805691B4  38 00 00 00 */	li r0, 0
/* 805691B8  B0 18 0C D4 */	sth r0, 0xcd4(r24)
/* 805691BC  B0 18 0C D6 */	sth r0, 0xcd6(r24)
/* 805691C0  38 00 00 01 */	li r0, 1
/* 805691C4  98 18 0C FF */	stb r0, 0xcff(r24)
/* 805691C8  48 00 02 74 */	b lbl_8056943C
lbl_805691CC:
/* 805691CC  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 805691D0  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805691D4  41 82 00 24 */	beq lbl_805691F8
/* 805691D8  83 38 0B 5C */	lwz r25, 0xb5c(r24)
/* 805691DC  38 78 0B 50 */	addi r3, r24, 0xb50
/* 805691E0  4B BD C6 B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805691E4  93 38 0B 5C */	stw r25, 0xb5c(r24)
/* 805691E8  38 00 00 1F */	li r0, 0x1f
/* 805691EC  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 805691F0  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805691F4  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_805691F8:
/* 805691F8  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 805691FC  2C 00 00 0B */	cmpwi r0, 0xb
/* 80569200  41 82 00 24 */	beq lbl_80569224
/* 80569204  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 80569208  38 78 0B 74 */	addi r3, r24, 0xb74
/* 8056920C  4B BD C6 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80569210  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 80569214  38 00 00 0B */	li r0, 0xb
/* 80569218  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 8056921C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569220  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_80569224:
/* 80569224  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80569228  2C 00 00 00 */	cmpwi r0, 0
/* 8056922C  41 82 00 24 */	beq lbl_80569250
/* 80569230  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80569234  4B BD C4 C8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80569238  38 00 00 00 */	li r0, 0
/* 8056923C  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80569240  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569244  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80569248  98 18 0C FF */	stb r0, 0xcff(r24)
/* 8056924C  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80569250:
/* 80569250  38 00 00 00 */	li r0, 0
/* 80569254  B0 18 0C D4 */	sth r0, 0xcd4(r24)
/* 80569258  B0 18 0C D6 */	sth r0, 0xcd6(r24)
/* 8056925C  38 00 00 01 */	li r0, 1
/* 80569260  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80569264  7F 03 C3 78 */	mr r3, r24
/* 80569268  38 80 01 F5 */	li r4, 0x1f5
/* 8056926C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80569270  4B BE 29 80 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80569274  2C 1C 00 3D */	cmpwi r28, 0x3d
/* 80569278  40 82 01 C4 */	bne lbl_8056943C
/* 8056927C  38 78 10 C8 */	addi r3, r24, 0x10c8
/* 80569280  4B BD C4 88 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80569284  7C 64 1B 78 */	mr r4, r3
/* 80569288  7F 03 C3 78 */	mr r3, r24
/* 8056928C  4B AB 14 84 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80569290  B0 78 04 E6 */	sth r3, 0x4e6(r24)
/* 80569294  48 00 01 A8 */	b lbl_8056943C
lbl_80569298:
/* 80569298  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 8056929C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805692A0  41 82 00 24 */	beq lbl_805692C4
/* 805692A4  83 38 0B 5C */	lwz r25, 0xb5c(r24)
/* 805692A8  38 78 0B 50 */	addi r3, r24, 0xb50
/* 805692AC  4B BD C5 EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805692B0  93 38 0B 5C */	stw r25, 0xb5c(r24)
/* 805692B4  38 00 00 1F */	li r0, 0x1f
/* 805692B8  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 805692BC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805692C0  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_805692C4:
/* 805692C4  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 805692C8  2C 00 00 0B */	cmpwi r0, 0xb
/* 805692CC  41 82 00 24 */	beq lbl_805692F0
/* 805692D0  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 805692D4  38 78 0B 74 */	addi r3, r24, 0xb74
/* 805692D8  4B BD C5 C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805692DC  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 805692E0  38 00 00 0B */	li r0, 0xb
/* 805692E4  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 805692E8  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805692EC  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_805692F0:
/* 805692F0  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 805692F4  2C 00 00 00 */	cmpwi r0, 0
/* 805692F8  41 82 00 24 */	beq lbl_8056931C
/* 805692FC  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80569300  4B BD C3 FC */	b remove__18daNpcT_ActorMngr_cFv
/* 80569304  38 00 00 00 */	li r0, 0
/* 80569308  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 8056930C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569310  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80569314  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80569318  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_8056931C:
/* 8056931C  38 00 00 00 */	li r0, 0
/* 80569320  B0 18 0C D4 */	sth r0, 0xcd4(r24)
/* 80569324  B0 18 0C D6 */	sth r0, 0xcd6(r24)
/* 80569328  38 00 00 01 */	li r0, 1
/* 8056932C  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80569330  7F 03 C3 78 */	mr r3, r24
/* 80569334  38 80 01 F5 */	li r4, 0x1f5
/* 80569338  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8056933C  4B BE 28 B4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80569340  48 00 00 FC */	b lbl_8056943C
lbl_80569344:
/* 80569344  A8 18 0D 7A */	lha r0, 0xd7a(r24)
/* 80569348  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 8056934C  48 00 00 F0 */	b lbl_8056943C
lbl_80569350:
/* 80569350  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 80569354  2C 00 00 03 */	cmpwi r0, 3
/* 80569358  41 82 00 24 */	beq lbl_8056937C
/* 8056935C  83 38 0B 5C */	lwz r25, 0xb5c(r24)
/* 80569360  38 78 0B 50 */	addi r3, r24, 0xb50
/* 80569364  4B BD C5 34 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80569368  93 38 0B 5C */	stw r25, 0xb5c(r24)
/* 8056936C  38 00 00 03 */	li r0, 3
/* 80569370  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 80569374  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80569378  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_8056937C:
/* 8056937C  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80569380  2C 00 00 0F */	cmpwi r0, 0xf
/* 80569384  41 82 00 24 */	beq lbl_805693A8
/* 80569388  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 8056938C  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80569390  4B BD C5 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80569394  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 80569398  38 00 00 0F */	li r0, 0xf
/* 8056939C  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 805693A0  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805693A4  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_805693A8:
/* 805693A8  7F 03 C3 78 */	mr r3, r24
/* 805693AC  A8 98 04 B6 */	lha r4, 0x4b6(r24)
/* 805693B0  4B BE 16 68 */	b setAngle__8daNpcT_cFs
/* 805693B4  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 805693B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805693BC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805693C0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805693C4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805693C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805693CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805693D0  A8 98 0D 7A */	lha r4, 0xd7a(r24)
/* 805693D4  4B AA 30 08 */	b mDoMtx_YrotS__FPA4_fs
/* 805693D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805693DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805693E0  38 81 00 38 */	addi r4, r1, 0x38
/* 805693E4  7C 85 23 78 */	mr r5, r4
/* 805693E8  4B DD D9 84 */	b PSMTXMultVec
/* 805693EC  38 61 00 38 */	addi r3, r1, 0x38
/* 805693F0  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 805693F4  7C 65 1B 78 */	mr r5, r3
/* 805693F8  4B DD DC 98 */	b PSVECAdd
/* 805693FC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80569400  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80569404  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80569408  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8056940C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80569410  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80569414  7F 03 C3 78 */	mr r3, r24
/* 80569418  38 81 00 20 */	addi r4, r1, 0x20
/* 8056941C  4B BE 14 EC */	b setPos__8daNpcT_cF4cXyz
/* 80569420  7F 03 C3 78 */	mr r3, r24
/* 80569424  38 80 01 F6 */	li r4, 0x1f6
/* 80569428  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8056942C  4B BE 27 C4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80569430  48 00 00 0C */	b lbl_8056943C
lbl_80569434:
/* 80569434  38 60 00 12 */	li r3, 0x12
/* 80569438  4B BE 35 F4 */	b daNpcT_onEvtBit__FUl
lbl_8056943C:
/* 8056943C  80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 80569440  80 1F 01 70 */	lwz r0, 0x170(r31)
/* 80569444  90 61 00 10 */	stw r3, 0x10(r1)
/* 80569448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056944C  28 1C 00 48 */	cmplwi r28, 0x48
/* 80569450  41 81 04 14 */	bgt lbl_80569864
/* 80569454  3C 60 80 57 */	lis r3, lit_6200@ha
/* 80569458  38 63 2D A4 */	addi r3, r3, lit_6200@l
/* 8056945C  57 80 10 3A */	slwi r0, r28, 2
/* 80569460  7C 03 00 2E */	lwzx r0, r3, r0
/* 80569464  7C 09 03 A6 */	mtctr r0
/* 80569468  4E 80 04 20 */	bctr 
lbl_8056946C:
/* 8056946C  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80569470  2C 00 00 01 */	cmpwi r0, 1
/* 80569474  41 82 00 28 */	beq lbl_8056949C
/* 80569478  38 78 0B A8 */	addi r3, r24, 0xba8
/* 8056947C  4B BD C2 80 */	b remove__18daNpcT_ActorMngr_cFv
/* 80569480  38 00 00 00 */	li r0, 0
/* 80569484  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80569488  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056948C  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80569490  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80569494  38 00 00 01 */	li r0, 1
/* 80569498  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_8056949C:
/* 8056949C  38 00 00 00 */	li r0, 0
/* 805694A0  98 18 0C FF */	stb r0, 0xcff(r24)
/* 805694A4  38 78 0D C4 */	addi r3, r24, 0xdc4
/* 805694A8  48 00 7D 61 */	bl func_80571208
/* 805694AC  2C 03 00 00 */	cmpwi r3, 0
/* 805694B0  40 82 03 B4 */	bne lbl_80569864
/* 805694B4  3B A0 00 01 */	li r29, 1
/* 805694B8  48 00 03 AC */	b lbl_80569864
lbl_805694BC:
/* 805694BC  7F 03 C3 78 */	mr r3, r24
/* 805694C0  38 80 00 00 */	li r4, 0
/* 805694C4  38 A0 00 00 */	li r5, 0
/* 805694C8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 805694CC  38 E0 00 00 */	li r7, 0
/* 805694D0  4B BE 27 A8 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 805694D4  2C 03 00 00 */	cmpwi r3, 0
/* 805694D8  41 82 03 8C */	beq lbl_80569864
/* 805694DC  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 805694E0  28 00 00 01 */	cmplwi r0, 1
/* 805694E4  40 82 03 80 */	bne lbl_80569864
/* 805694E8  3B A0 00 01 */	li r29, 1
/* 805694EC  48 00 03 78 */	b lbl_80569864
lbl_805694F0:
/* 805694F0  3B A0 00 01 */	li r29, 1
/* 805694F4  48 00 03 70 */	b lbl_80569864
lbl_805694F8:
/* 805694F8  38 00 00 01 */	li r0, 1
/* 805694FC  90 18 0D BC */	stw r0, 0xdbc(r24)
/* 80569500  7F 03 C3 78 */	mr r3, r24
/* 80569504  81 98 0E 3C */	lwz r12, 0xe3c(r24)
/* 80569508  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8056950C  7D 89 03 A6 */	mtctr r12
/* 80569510  4E 80 04 21 */	bctrl 
/* 80569514  38 78 0D C4 */	addi r3, r24, 0xdc4
/* 80569518  48 00 7C F1 */	bl func_80571208
/* 8056951C  2C 03 00 00 */	cmpwi r3, 0
/* 80569520  40 82 03 44 */	bne lbl_80569864
/* 80569524  3B A0 00 01 */	li r29, 1
/* 80569528  48 00 03 3C */	b lbl_80569864
lbl_8056952C:
/* 8056952C  93 41 00 10 */	stw r26, 0x10(r1)
/* 80569530  7F 03 C3 78 */	mr r3, r24
/* 80569534  38 81 00 10 */	addi r4, r1, 0x10
/* 80569538  38 A0 00 00 */	li r5, 0
/* 8056953C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80569540  38 E0 00 00 */	li r7, 0
/* 80569544  4B BE 27 34 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80569548  2C 03 00 00 */	cmpwi r3, 0
/* 8056954C  41 82 03 18 */	beq lbl_80569864
/* 80569550  2C 1A 00 00 */	cmpwi r26, 0
/* 80569554  40 82 00 58 */	bne lbl_805695AC
/* 80569558  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 8056955C  28 00 00 01 */	cmplwi r0, 1
/* 80569560  40 82 03 04 */	bne lbl_80569864
/* 80569564  38 60 00 14 */	li r3, 0x14
/* 80569568  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 8056956C  7C 04 07 74 */	extsb r4, r0
/* 80569570  38 A1 00 38 */	addi r5, r1, 0x38
/* 80569574  38 C1 00 18 */	addi r6, r1, 0x18
/* 80569578  4B BE 2F 88 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8056957C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80569580  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80569584  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80569588  38 81 00 38 */	addi r4, r1, 0x38
/* 8056958C  A8 A1 00 1A */	lha r5, 0x1a(r1)
/* 80569590  38 C0 00 00 */	li r6, 0
/* 80569594  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80569598  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8056959C  7D 89 03 A6 */	mtctr r12
/* 805695A0  4E 80 04 21 */	bctrl 
/* 805695A4  3B A0 00 01 */	li r29, 1
/* 805695A8  48 00 02 BC */	b lbl_80569864
lbl_805695AC:
/* 805695AC  3B A0 00 01 */	li r29, 1
/* 805695B0  48 00 02 B4 */	b lbl_80569864
lbl_805695B4:
/* 805695B4  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 805695B8  2C 00 00 1B */	cmpwi r0, 0x1b
/* 805695BC  41 82 00 14 */	beq lbl_805695D0
/* 805695C0  40 80 02 A4 */	bge lbl_80569864
/* 805695C4  2C 00 00 0F */	cmpwi r0, 0xf
/* 805695C8  41 82 00 88 */	beq lbl_80569650
/* 805695CC  48 00 02 98 */	b lbl_80569864
lbl_805695D0:
/* 805695D0  80 78 0B 84 */	lwz r3, 0xb84(r24)
/* 805695D4  2C 03 00 00 */	cmpwi r3, 0
/* 805695D8  40 81 00 30 */	ble lbl_80569608
/* 805695DC  2C 00 00 0F */	cmpwi r0, 0xf
/* 805695E0  41 82 02 84 */	beq lbl_80569864
/* 805695E4  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 805695E8  38 78 0B 74 */	addi r3, r24, 0xb74
/* 805695EC  4B BD C2 AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805695F0  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 805695F4  38 00 00 0F */	li r0, 0xf
/* 805695F8  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 805695FC  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80569600  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
/* 80569604  48 00 02 60 */	b lbl_80569864
lbl_80569608:
/* 80569608  40 82 02 5C */	bne lbl_80569864
/* 8056960C  80 78 05 78 */	lwz r3, 0x578(r24)
/* 80569610  38 63 00 0C */	addi r3, r3, 0xc
/* 80569614  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 80569618  4B DB EE 14 */	b checkPass__12J3DFrameCtrlFf
/* 8056961C  2C 03 00 00 */	cmpwi r3, 0
/* 80569620  41 82 02 44 */	beq lbl_80569864
/* 80569624  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005005D@ha */
/* 80569628  38 03 00 5D */	addi r0, r3, 0x005D /* 0x0005005D@l */
/* 8056962C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80569630  38 78 05 80 */	addi r3, r24, 0x580
/* 80569634  38 81 00 0C */	addi r4, r1, 0xc
/* 80569638  38 A0 FF FF */	li r5, -1
/* 8056963C  81 98 05 80 */	lwz r12, 0x580(r24)
/* 80569640  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80569644  7D 89 03 A6 */	mtctr r12
/* 80569648  4E 80 04 21 */	bctrl 
/* 8056964C  48 00 02 18 */	b lbl_80569864
lbl_80569650:
/* 80569650  80 18 0B 84 */	lwz r0, 0xb84(r24)
/* 80569654  2C 00 00 00 */	cmpwi r0, 0
/* 80569658  40 81 02 0C */	ble lbl_80569864
/* 8056965C  3B A0 00 01 */	li r29, 1
/* 80569660  48 00 02 04 */	b lbl_80569864
lbl_80569664:
/* 80569664  93 41 00 10 */	stw r26, 0x10(r1)
/* 80569668  7F 03 C3 78 */	mr r3, r24
/* 8056966C  38 81 00 10 */	addi r4, r1, 0x10
/* 80569670  38 A0 00 00 */	li r5, 0
/* 80569674  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80569678  38 E0 00 00 */	li r7, 0
/* 8056967C  4B BE 25 FC */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80569680  2C 03 00 00 */	cmpwi r3, 0
/* 80569684  41 82 01 E0 */	beq lbl_80569864
/* 80569688  2C 1A 00 00 */	cmpwi r26, 0
/* 8056968C  40 82 00 84 */	bne lbl_80569710
/* 80569690  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80569694  28 00 00 01 */	cmplwi r0, 1
/* 80569698  40 82 01 CC */	bne lbl_80569864
/* 8056969C  38 60 00 14 */	li r3, 0x14
/* 805696A0  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 805696A4  7C 04 07 74 */	extsb r4, r0
/* 805696A8  38 A1 00 38 */	addi r5, r1, 0x38
/* 805696AC  38 C1 00 18 */	addi r6, r1, 0x18
/* 805696B0  4B BE 2E 50 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 805696B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805696B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805696BC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805696C0  38 81 00 38 */	addi r4, r1, 0x38
/* 805696C4  A8 A1 00 1A */	lha r5, 0x1a(r1)
/* 805696C8  38 C0 00 00 */	li r6, 0
/* 805696CC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805696D0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805696D4  7D 89 03 A6 */	mtctr r12
/* 805696D8  4E 80 04 21 */	bctrl 
/* 805696DC  4B AC 80 04 */	b daNpcKakashi_getSwdTutorialStep__Fv
/* 805696E0  3B 03 00 01 */	addi r24, r3, 1
/* 805696E4  4B AC 7F FC */	b daNpcKakashi_getSwdTutorialStep__Fv
/* 805696E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805696EC  28 00 00 02 */	cmplwi r0, 2
/* 805696F0  40 82 00 0C */	bne lbl_805696FC
/* 805696F4  38 18 00 01 */	addi r0, r24, 1
/* 805696F8  54 18 06 3E */	clrlwi r24, r0, 0x18
lbl_805696FC:
/* 805696FC  7F 03 C3 78 */	mr r3, r24
/* 80569700  4B AC 7F A8 */	b daNpcKakashi_setSwdTutorialStep__FUc
/* 80569704  4B AC 81 34 */	b daNpcKakashi_clrSuccessCount__Fv
/* 80569708  3B A0 00 01 */	li r29, 1
/* 8056970C  48 00 01 58 */	b lbl_80569864
lbl_80569710:
/* 80569710  3B A0 00 01 */	li r29, 1
/* 80569714  48 00 01 50 */	b lbl_80569864
lbl_80569718:
/* 80569718  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 8056971C  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80569720  41 82 00 14 */	beq lbl_80569734
/* 80569724  40 80 01 40 */	bge lbl_80569864
/* 80569728  2C 00 00 09 */	cmpwi r0, 9
/* 8056972C  41 82 00 88 */	beq lbl_805697B4
/* 80569730  48 00 01 34 */	b lbl_80569864
lbl_80569734:
/* 80569734  80 78 0B 84 */	lwz r3, 0xb84(r24)
/* 80569738  2C 03 00 00 */	cmpwi r3, 0
/* 8056973C  40 81 00 30 */	ble lbl_8056976C
/* 80569740  2C 00 00 09 */	cmpwi r0, 9
/* 80569744  41 82 01 20 */	beq lbl_80569864
/* 80569748  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 8056974C  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80569750  4B BD C1 48 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80569754  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 80569758  38 00 00 09 */	li r0, 9
/* 8056975C  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80569760  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80569764  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
/* 80569768  48 00 00 FC */	b lbl_80569864
lbl_8056976C:
/* 8056976C  40 82 00 F8 */	bne lbl_80569864
/* 80569770  80 78 05 78 */	lwz r3, 0x578(r24)
/* 80569774  38 63 00 0C */	addi r3, r3, 0xc
/* 80569778  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 8056977C  4B DB EC B0 */	b checkPass__12J3DFrameCtrlFf
/* 80569780  2C 03 00 00 */	cmpwi r3, 0
/* 80569784  41 82 00 E0 */	beq lbl_80569864
/* 80569788  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005005E@ha */
/* 8056978C  38 03 00 5E */	addi r0, r3, 0x005E /* 0x0005005E@l */
/* 80569790  90 01 00 08 */	stw r0, 8(r1)
/* 80569794  38 78 05 80 */	addi r3, r24, 0x580
/* 80569798  38 81 00 08 */	addi r4, r1, 8
/* 8056979C  38 A0 FF FF */	li r5, -1
/* 805697A0  81 98 05 80 */	lwz r12, 0x580(r24)
/* 805697A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805697A8  7D 89 03 A6 */	mtctr r12
/* 805697AC  4E 80 04 21 */	bctrl 
/* 805697B0  48 00 00 B4 */	b lbl_80569864
lbl_805697B4:
/* 805697B4  80 18 0B 84 */	lwz r0, 0xb84(r24)
/* 805697B8  2C 00 00 00 */	cmpwi r0, 0
/* 805697BC  40 81 00 A8 */	ble lbl_80569864
/* 805697C0  3B A0 00 01 */	li r29, 1
/* 805697C4  48 00 00 A0 */	b lbl_80569864
lbl_805697C8:
/* 805697C8  3B A0 00 01 */	li r29, 1
/* 805697CC  48 00 00 98 */	b lbl_80569864
lbl_805697D0:
/* 805697D0  38 00 00 00 */	li r0, 0
/* 805697D4  98 18 0E 26 */	stb r0, 0xe26(r24)
/* 805697D8  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 805697DC  2C 00 00 04 */	cmpwi r0, 4
/* 805697E0  41 82 00 28 */	beq lbl_80569808
/* 805697E4  38 78 0B A8 */	addi r3, r24, 0xba8
/* 805697E8  4B BD BF 14 */	b remove__18daNpcT_ActorMngr_cFv
/* 805697EC  38 00 00 00 */	li r0, 0
/* 805697F0  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 805697F4  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 805697F8  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 805697FC  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80569800  38 00 00 04 */	li r0, 4
/* 80569804  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80569808:
/* 80569808  38 00 00 00 */	li r0, 0
/* 8056980C  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80569810  7F 03 C3 78 */	mr r3, r24
/* 80569814  38 80 00 00 */	li r4, 0
/* 80569818  38 A0 00 00 */	li r5, 0
/* 8056981C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80569820  38 E0 00 00 */	li r7, 0
/* 80569824  4B BE 24 54 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80569828  2C 03 00 00 */	cmpwi r3, 0
/* 8056982C  41 82 00 38 */	beq lbl_80569864
/* 80569830  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80569834  28 00 00 01 */	cmplwi r0, 1
/* 80569838  40 82 00 2C */	bne lbl_80569864
/* 8056983C  3B A0 00 01 */	li r29, 1
/* 80569840  48 00 00 24 */	b lbl_80569864
lbl_80569844:
/* 80569844  38 60 00 0D */	li r3, 0xd
/* 80569848  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8056984C  38 80 00 00 */	li r4, 0
/* 80569850  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 80569854  7C 05 07 74 */	extsb r5, r0
/* 80569858  38 C0 00 00 */	li r6, 0
/* 8056985C  38 E0 FF FF */	li r7, -1
/* 80569860  4B AB D9 10 */	b dStage_changeScene__FifUlScsi
lbl_80569864:
/* 80569864  7F A3 EB 78 */	mr r3, r29
/* 80569868  39 61 00 70 */	addi r11, r1, 0x70
/* 8056986C  4B DF 89 A8 */	b _restgpr_24
/* 80569870  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80569874  7C 08 03 A6 */	mtlr r0
/* 80569878  38 21 00 70 */	addi r1, r1, 0x70
/* 8056987C  4E 80 00 20 */	blr 
