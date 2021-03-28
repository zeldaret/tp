lbl_8055F82C:
/* 8055F82C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8055F830  7C 08 02 A6 */	mflr r0
/* 8055F834  90 01 00 44 */	stw r0, 0x44(r1)
/* 8055F838  39 61 00 40 */	addi r11, r1, 0x40
/* 8055F83C  4B E0 29 94 */	b _savegpr_26
/* 8055F840  7C 7B 1B 78 */	mr r27, r3
/* 8055F844  7C 9A 23 78 */	mr r26, r4
/* 8055F848  38 7B 0B A0 */	addi r3, r27, 0xba0
/* 8055F84C  4B BE 5E BC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8055F850  7C 7F 1B 78 */	mr r31, r3
/* 8055F854  3B A0 00 00 */	li r29, 0
/* 8055F858  3B 80 FF FF */	li r28, -1
/* 8055F85C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8055F860  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8055F864  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8055F868  7F C3 F3 78 */	mr r3, r30
/* 8055F86C  7F 44 D3 78 */	mr r4, r26
/* 8055F870  3C A0 80 56 */	lis r5, struct_80564D58+0x0@ha
/* 8055F874  38 A5 4D 58 */	addi r5, r5, struct_80564D58+0x0@l
/* 8055F878  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8055F87C  38 C0 00 03 */	li r6, 3
/* 8055F880  4B AE 88 6C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055F884  28 03 00 00 */	cmplwi r3, 0
/* 8055F888  41 82 00 08 */	beq lbl_8055F890
/* 8055F88C  83 83 00 00 */	lwz r28, 0(r3)
lbl_8055F890:
/* 8055F890  7F C3 F3 78 */	mr r3, r30
/* 8055F894  7F 44 D3 78 */	mr r4, r26
/* 8055F898  4B AE 84 B4 */	b getIsAddvance__16dEvent_manager_cFi
/* 8055F89C  2C 03 00 00 */	cmpwi r3, 0
/* 8055F8A0  41 82 01 C8 */	beq lbl_8055FA68
/* 8055F8A4  2C 1C 00 01 */	cmpwi r28, 1
/* 8055F8A8  41 82 01 48 */	beq lbl_8055F9F0
/* 8055F8AC  40 80 01 BC */	bge lbl_8055FA68
/* 8055F8B0  2C 1C 00 00 */	cmpwi r28, 0
/* 8055F8B4  40 80 00 08 */	bge lbl_8055F8BC
/* 8055F8B8  48 00 01 B0 */	b lbl_8055FA68
lbl_8055F8BC:
/* 8055F8BC  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8055F8C0  2C 00 00 09 */	cmpwi r0, 9
/* 8055F8C4  41 82 00 28 */	beq lbl_8055F8EC
/* 8055F8C8  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 8055F8CC  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8055F8D0  4B BE 5F C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055F8D4  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 8055F8D8  38 00 00 09 */	li r0, 9
/* 8055F8DC  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8055F8E0  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055F8E4  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055F8E8  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8055F8EC:
/* 8055F8EC  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8055F8F0  2C 00 00 00 */	cmpwi r0, 0
/* 8055F8F4  41 82 00 28 */	beq lbl_8055F91C
/* 8055F8F8  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 8055F8FC  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8055F900  4B BE 5F 98 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055F904  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 8055F908  38 00 00 00 */	li r0, 0
/* 8055F90C  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8055F910  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055F914  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055F918  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8055F91C:
/* 8055F91C  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8055F920  2C 00 00 00 */	cmpwi r0, 0
/* 8055F924  41 82 00 28 */	beq lbl_8055F94C
/* 8055F928  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055F92C  4B BE 5D D0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8055F930  38 00 00 00 */	li r0, 0
/* 8055F934  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8055F938  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055F93C  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055F940  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8055F944  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055F948  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8055F94C:
/* 8055F94C  38 00 00 00 */	li r0, 0
/* 8055F950  B0 1B 0C D4 */	sth r0, 0xcd4(r27)
/* 8055F954  B0 1B 0C D6 */	sth r0, 0xcd6(r27)
/* 8055F958  38 00 00 01 */	li r0, 1
/* 8055F95C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055F960  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8055F964  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8055F968  28 04 00 FF */	cmplwi r4, 0xff
/* 8055F96C  38 00 FF FF */	li r0, -1
/* 8055F970  41 82 00 08 */	beq lbl_8055F978
/* 8055F974  7C 80 23 78 */	mr r0, r4
lbl_8055F978:
/* 8055F978  2C 00 FF FF */	cmpwi r0, -1
/* 8055F97C  40 81 00 EC */	ble lbl_8055FA68
/* 8055F980  28 04 00 FF */	cmplwi r4, 0xff
/* 8055F984  38 60 FF FF */	li r3, -1
/* 8055F988  41 82 00 08 */	beq lbl_8055F990
/* 8055F98C  54 83 04 3E */	clrlwi r3, r4, 0x10
lbl_8055F990:
/* 8055F990  88 9F 04 E2 */	lbz r4, 0x4e2(r31)
/* 8055F994  7C 84 07 74 */	extsb r4, r4
/* 8055F998  38 A1 00 10 */	addi r5, r1, 0x10
/* 8055F99C  38 C1 00 08 */	addi r6, r1, 8
/* 8055F9A0  4B BE CB 60 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 8055F9A4  2C 03 00 00 */	cmpwi r3, 0
/* 8055F9A8  41 82 00 C0 */	beq lbl_8055FA68
/* 8055F9AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8055F9B0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8055F9B4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8055F9B8  38 81 00 10 */	addi r4, r1, 0x10
/* 8055F9BC  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 8055F9C0  38 C0 00 00 */	li r6, 0
/* 8055F9C4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8055F9C8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8055F9CC  7D 89 03 A6 */	mtctr r12
/* 8055F9D0  4E 80 04 21 */	bctrl 
/* 8055F9D4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8055F9D8  A8 01 00 0A */	lha r0, 0xa(r1)
/* 8055F9DC  B0 03 06 06 */	sth r0, 0x606(r3)
/* 8055F9E0  7F C3 F3 78 */	mr r3, r30
/* 8055F9E4  38 81 00 10 */	addi r4, r1, 0x10
/* 8055F9E8  4B AE 89 DC */	b setGoal__16dEvent_manager_cFP4cXyz
/* 8055F9EC  48 00 00 7C */	b lbl_8055FA68
lbl_8055F9F0:
/* 8055F9F0  A8 7F 04 B4 */	lha r3, 0x4b4(r31)
/* 8055F9F4  3C 03 00 00 */	addis r0, r3, 0
/* 8055F9F8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8055F9FC  38 80 FF FF */	li r4, -1
/* 8055FA00  41 82 00 08 */	beq lbl_8055FA08
/* 8055FA04  54 64 04 3E */	clrlwi r4, r3, 0x10
lbl_8055FA08:
/* 8055FA08  7F 63 DB 78 */	mr r3, r27
/* 8055FA0C  38 A0 00 00 */	li r5, 0
/* 8055FA10  4B BE C1 E0 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8055FA14  7F 63 DB 78 */	mr r3, r27
/* 8055FA18  A8 9B 0D C8 */	lha r4, 0xdc8(r27)
/* 8055FA1C  4B BE AF FC */	b setAngle__8daNpcT_cFs
/* 8055FA20  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8055FA24  2C 00 00 01 */	cmpwi r0, 1
/* 8055FA28  41 82 00 2C */	beq lbl_8055FA54
/* 8055FA2C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8055FA30  4B BE 5C CC */	b remove__18daNpcT_ActorMngr_cFv
/* 8055FA34  38 00 00 00 */	li r0, 0
/* 8055FA38  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8055FA3C  3C 60 80 56 */	lis r3, lit_4318@ha
/* 8055FA40  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 8055FA44  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8055FA48  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8055FA4C  38 00 00 01 */	li r0, 1
/* 8055FA50  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8055FA54:
/* 8055FA54  38 00 00 00 */	li r0, 0
/* 8055FA58  B0 1B 0C D4 */	sth r0, 0xcd4(r27)
/* 8055FA5C  B0 1B 0C D6 */	sth r0, 0xcd6(r27)
/* 8055FA60  38 00 00 01 */	li r0, 1
/* 8055FA64  98 1B 0C FF */	stb r0, 0xcff(r27)
lbl_8055FA68:
/* 8055FA68  2C 1C 00 01 */	cmpwi r28, 1
/* 8055FA6C  41 82 00 1C */	beq lbl_8055FA88
/* 8055FA70  40 80 00 64 */	bge lbl_8055FAD4
/* 8055FA74  2C 1C 00 00 */	cmpwi r28, 0
/* 8055FA78  40 80 00 08 */	bge lbl_8055FA80
/* 8055FA7C  48 00 00 58 */	b lbl_8055FAD4
lbl_8055FA80:
/* 8055FA80  3B A0 00 01 */	li r29, 1
/* 8055FA84  48 00 00 50 */	b lbl_8055FAD4
lbl_8055FA88:
/* 8055FA88  7F 63 DB 78 */	mr r3, r27
/* 8055FA8C  38 80 00 00 */	li r4, 0
/* 8055FA90  38 A0 00 00 */	li r5, 0
/* 8055FA94  38 C0 00 00 */	li r6, 0
/* 8055FA98  38 E0 00 00 */	li r7, 0
/* 8055FA9C  4B BE C1 DC */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8055FAA0  2C 03 00 00 */	cmpwi r3, 0
/* 8055FAA4  41 82 00 30 */	beq lbl_8055FAD4
/* 8055FAA8  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 8055FAAC  28 00 00 01 */	cmplwi r0, 1
/* 8055FAB0  40 82 00 24 */	bne lbl_8055FAD4
/* 8055FAB4  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 8055FAB8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8055FABC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8055FAC0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8055FAC4  4B BE 5C 1C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055FAC8  38 7B 0B A0 */	addi r3, r27, 0xba0
/* 8055FACC  4B BE 5C 30 */	b remove__18daNpcT_ActorMngr_cFv
/* 8055FAD0  3B A0 00 01 */	li r29, 1
lbl_8055FAD4:
/* 8055FAD4  7F A3 EB 78 */	mr r3, r29
/* 8055FAD8  39 61 00 40 */	addi r11, r1, 0x40
/* 8055FADC  4B E0 27 40 */	b _restgpr_26
/* 8055FAE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8055FAE4  7C 08 03 A6 */	mtlr r0
/* 8055FAE8  38 21 00 40 */	addi r1, r1, 0x40
/* 8055FAEC  4E 80 00 20 */	blr 
