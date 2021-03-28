lbl_80569880:
/* 80569880  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80569884  7C 08 02 A6 */	mflr r0
/* 80569888  90 01 00 44 */	stw r0, 0x44(r1)
/* 8056988C  39 61 00 40 */	addi r11, r1, 0x40
/* 80569890  4B DF 89 44 */	b _savegpr_27
/* 80569894  7C 7D 1B 78 */	mr r29, r3
/* 80569898  7C 9B 23 78 */	mr r27, r4
/* 8056989C  3B E0 00 00 */	li r31, 0
/* 805698A0  3B C0 FF FF */	li r30, -1
/* 805698A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805698A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805698AC  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 805698B0  7F 83 E3 78 */	mr r3, r28
/* 805698B4  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 805698B8  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 805698BC  38 A5 02 9C */	addi r5, r5, 0x29c
/* 805698C0  38 C0 00 03 */	li r6, 3
/* 805698C4  4B AD E8 28 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 805698C8  28 03 00 00 */	cmplwi r3, 0
/* 805698CC  41 82 00 08 */	beq lbl_805698D4
/* 805698D0  83 C3 00 00 */	lwz r30, 0(r3)
lbl_805698D4:
/* 805698D4  7F 83 E3 78 */	mr r3, r28
/* 805698D8  7F 64 DB 78 */	mr r4, r27
/* 805698DC  4B AD E4 70 */	b getIsAddvance__16dEvent_manager_cFi
/* 805698E0  2C 03 00 00 */	cmpwi r3, 0
/* 805698E4  41 82 01 90 */	beq lbl_80569A74
/* 805698E8  2C 1E 00 01 */	cmpwi r30, 1
/* 805698EC  41 82 00 98 */	beq lbl_80569984
/* 805698F0  40 80 01 84 */	bge lbl_80569A74
/* 805698F4  2C 1E 00 00 */	cmpwi r30, 0
/* 805698F8  40 80 00 08 */	bge lbl_80569900
/* 805698FC  48 00 01 78 */	b lbl_80569A74
lbl_80569900:
/* 80569900  38 7D 0B A0 */	addi r3, r29, 0xba0
/* 80569904  4B BD BE 04 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80569908  7C 64 1B 78 */	mr r4, r3
/* 8056990C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80569910  54 05 86 3E */	rlwinm r5, r0, 0x10, 0x18, 0x1f
/* 80569914  28 05 00 FF */	cmplwi r5, 0xff
/* 80569918  38 00 FF FF */	li r0, -1
/* 8056991C  41 82 00 08 */	beq lbl_80569924
/* 80569920  7C A0 2B 78 */	mr r0, r5
lbl_80569924:
/* 80569924  2C 00 FF FF */	cmpwi r0, -1
/* 80569928  40 81 01 4C */	ble lbl_80569A74
/* 8056992C  28 05 00 FF */	cmplwi r5, 0xff
/* 80569930  38 60 FF FF */	li r3, -1
/* 80569934  41 82 00 08 */	beq lbl_8056993C
/* 80569938  54 A3 04 3E */	clrlwi r3, r5, 0x10
lbl_8056993C:
/* 8056993C  88 84 04 E2 */	lbz r4, 0x4e2(r4)
/* 80569940  7C 84 07 74 */	extsb r4, r4
/* 80569944  38 A1 00 10 */	addi r5, r1, 0x10
/* 80569948  38 C1 00 08 */	addi r6, r1, 8
/* 8056994C  4B BE 2B B4 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80569950  2C 03 00 00 */	cmpwi r3, 0
/* 80569954  41 82 01 20 */	beq lbl_80569A74
/* 80569958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056995C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80569960  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80569964  38 81 00 10 */	addi r4, r1, 0x10
/* 80569968  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 8056996C  38 C0 00 00 */	li r6, 0
/* 80569970  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80569974  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80569978  7D 89 03 A6 */	mtctr r12
/* 8056997C  4E 80 04 21 */	bctrl 
/* 80569980  48 00 00 F4 */	b lbl_80569A74
lbl_80569984:
/* 80569984  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80569988  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056998C  41 82 00 28 */	beq lbl_805699B4
/* 80569990  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80569994  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80569998  4B BD BF 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056999C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 805699A0  38 00 00 1F */	li r0, 0x1f
/* 805699A4  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 805699A8  3C 60 80 57 */	lis r3, lit_4472@ha
/* 805699AC  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 805699B0  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_805699B4:
/* 805699B4  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 805699B8  2C 00 00 00 */	cmpwi r0, 0
/* 805699BC  41 82 00 28 */	beq lbl_805699E4
/* 805699C0  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 805699C4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 805699C8  4B BD BE D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805699CC  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 805699D0  38 00 00 00 */	li r0, 0
/* 805699D4  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 805699D8  3C 60 80 57 */	lis r3, lit_4472@ha
/* 805699DC  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 805699E0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_805699E4:
/* 805699E4  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 805699E8  2C 00 00 00 */	cmpwi r0, 0
/* 805699EC  41 82 00 28 */	beq lbl_80569A14
/* 805699F0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 805699F4  4B BD BD 08 */	b remove__18daNpcT_ActorMngr_cFv
/* 805699F8  38 00 00 00 */	li r0, 0
/* 805699FC  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80569A00  3C 60 80 57 */	lis r3, lit_4472@ha
/* 80569A04  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 80569A08  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80569A0C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80569A10  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80569A14:
/* 80569A14  38 00 00 00 */	li r0, 0
/* 80569A18  B0 1D 0C D4 */	sth r0, 0xcd4(r29)
/* 80569A1C  B0 1D 0C D6 */	sth r0, 0xcd6(r29)
/* 80569A20  38 00 00 01 */	li r0, 1
/* 80569A24  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80569A28  38 7D 0B A0 */	addi r3, r29, 0xba0
/* 80569A2C  4B BD BC DC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80569A30  A8 63 04 B4 */	lha r3, 0x4b4(r3)
/* 80569A34  3C 03 00 00 */	addis r0, r3, 0
/* 80569A38  28 00 FF FF */	cmplwi r0, 0xffff
/* 80569A3C  38 80 FF FF */	li r4, -1
/* 80569A40  41 82 00 08 */	beq lbl_80569A48
/* 80569A44  54 64 04 3E */	clrlwi r4, r3, 0x10
lbl_80569A48:
/* 80569A48  7F A3 EB 78 */	mr r3, r29
/* 80569A4C  38 A0 00 00 */	li r5, 0
/* 80569A50  4B BE 21 A0 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80569A54  7F A3 EB 78 */	mr r3, r29
/* 80569A58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80569A5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80569A60  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80569A64  4B AB 0C AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80569A68  7C 64 1B 78 */	mr r4, r3
/* 80569A6C  7F A3 EB 78 */	mr r3, r29
/* 80569A70  4B BE 0F A8 */	b setAngle__8daNpcT_cFs
lbl_80569A74:
/* 80569A74  2C 1E 00 01 */	cmpwi r30, 1
/* 80569A78  41 82 00 30 */	beq lbl_80569AA8
/* 80569A7C  40 80 00 64 */	bge lbl_80569AE0
/* 80569A80  2C 1E 00 00 */	cmpwi r30, 0
/* 80569A84  40 80 00 08 */	bge lbl_80569A8C
/* 80569A88  48 00 00 58 */	b lbl_80569AE0
lbl_80569A8C:
/* 80569A8C  7F A3 EB 78 */	mr r3, r29
/* 80569A90  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80569A94  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80569A98  7D 89 03 A6 */	mtctr r12
/* 80569A9C  4E 80 04 21 */	bctrl 
/* 80569AA0  3B E0 00 01 */	li r31, 1
/* 80569AA4  48 00 00 3C */	b lbl_80569AE0
lbl_80569AA8:
/* 80569AA8  7F A3 EB 78 */	mr r3, r29
/* 80569AAC  38 80 00 00 */	li r4, 0
/* 80569AB0  38 A0 00 00 */	li r5, 0
/* 80569AB4  38 C0 00 00 */	li r6, 0
/* 80569AB8  38 E0 00 00 */	li r7, 0
/* 80569ABC  4B BE 21 BC */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80569AC0  2C 03 00 00 */	cmpwi r3, 0
/* 80569AC4  41 82 00 1C */	beq lbl_80569AE0
/* 80569AC8  88 1D 09 9A */	lbz r0, 0x99a(r29)
/* 80569ACC  28 00 00 01 */	cmplwi r0, 1
/* 80569AD0  40 82 00 10 */	bne lbl_80569AE0
/* 80569AD4  38 7D 0B A0 */	addi r3, r29, 0xba0
/* 80569AD8  4B BD BC 24 */	b remove__18daNpcT_ActorMngr_cFv
/* 80569ADC  3B E0 00 01 */	li r31, 1
lbl_80569AE0:
/* 80569AE0  7F E3 FB 78 */	mr r3, r31
/* 80569AE4  39 61 00 40 */	addi r11, r1, 0x40
/* 80569AE8  4B DF 87 38 */	b _restgpr_27
/* 80569AEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80569AF0  7C 08 03 A6 */	mtlr r0
/* 80569AF4  38 21 00 40 */	addi r1, r1, 0x40
/* 80569AF8  4E 80 00 20 */	blr 
