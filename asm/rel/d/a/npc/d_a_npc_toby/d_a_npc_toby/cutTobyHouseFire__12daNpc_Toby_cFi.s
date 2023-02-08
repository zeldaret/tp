lbl_80B207E4:
/* 80B207E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B207E8  7C 08 02 A6 */	mflr r0
/* 80B207EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B207F0  39 61 00 40 */	addi r11, r1, 0x40
/* 80B207F4  4B 84 19 D9 */	bl _savegpr_25
/* 80B207F8  7C 7C 1B 78 */	mr r28, r3
/* 80B207FC  7C 99 23 78 */	mr r25, r4
/* 80B20800  38 7C 0F 90 */	addi r3, r28, 0xf90
/* 80B20804  4B 62 4F 05 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B20808  7C 7F 1B 78 */	mr r31, r3
/* 80B2080C  3B C0 00 00 */	li r30, 0
/* 80B20810  3B A0 FF FF */	li r29, -1
/* 80B20814  3B 40 00 00 */	li r26, 0
/* 80B20818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B2081C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B20820  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80B20824  7F 63 DB 78 */	mr r3, r27
/* 80B20828  7F 24 CB 78 */	mr r4, r25
/* 80B2082C  3C A0 80 B2 */	lis r5, d_a_npc_toby__stringBase0@ha /* 0x80B24B8C@ha */
/* 80B20830  38 A5 4B 8C */	addi r5, r5, d_a_npc_toby__stringBase0@l /* 0x80B24B8C@l */
/* 80B20834  38 A5 00 A6 */	addi r5, r5, 0xa6
/* 80B20838  38 C0 00 03 */	li r6, 3
/* 80B2083C  4B 52 78 B1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B20840  28 03 00 00 */	cmplwi r3, 0
/* 80B20844  41 82 00 08 */	beq lbl_80B2084C
/* 80B20848  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B2084C:
/* 80B2084C  7F 63 DB 78 */	mr r3, r27
/* 80B20850  7F 24 CB 78 */	mr r4, r25
/* 80B20854  3C A0 80 B2 */	lis r5, d_a_npc_toby__stringBase0@ha /* 0x80B24B8C@ha */
/* 80B20858  38 A5 4B 8C */	addi r5, r5, d_a_npc_toby__stringBase0@l /* 0x80B24B8C@l */
/* 80B2085C  38 A5 00 AA */	addi r5, r5, 0xaa
/* 80B20860  38 C0 00 03 */	li r6, 3
/* 80B20864  4B 52 78 89 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B20868  28 03 00 00 */	cmplwi r3, 0
/* 80B2086C  41 82 00 08 */	beq lbl_80B20874
/* 80B20870  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B20874:
/* 80B20874  7F 63 DB 78 */	mr r3, r27
/* 80B20878  7F 24 CB 78 */	mr r4, r25
/* 80B2087C  4B 52 74 D1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B20880  2C 03 00 00 */	cmpwi r3, 0
/* 80B20884  41 82 01 30 */	beq lbl_80B209B4
/* 80B20888  2C 1D 00 03 */	cmpwi r29, 3
/* 80B2088C  41 82 00 FC */	beq lbl_80B20988
/* 80B20890  40 80 00 14 */	bge lbl_80B208A4
/* 80B20894  2C 1D 00 01 */	cmpwi r29, 1
/* 80B20898  41 82 00 24 */	beq lbl_80B208BC
/* 80B2089C  40 80 00 88 */	bge lbl_80B20924
/* 80B208A0  48 00 01 14 */	b lbl_80B209B4
lbl_80B208A4:
/* 80B208A4  2C 1D 00 63 */	cmpwi r29, 0x63
/* 80B208A8  41 82 01 0C */	beq lbl_80B209B4
/* 80B208AC  40 80 01 08 */	bge lbl_80B209B4
/* 80B208B0  2C 1D 00 05 */	cmpwi r29, 5
/* 80B208B4  40 80 01 00 */	bge lbl_80B209B4
/* 80B208B8  48 00 00 F8 */	b lbl_80B209B0
lbl_80B208BC:
/* 80B208BC  38 00 00 01 */	li r0, 1
/* 80B208C0  98 1C 0F FF */	stb r0, 0xfff(r28)
/* 80B208C4  7F 83 E3 78 */	mr r3, r28
/* 80B208C8  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B208CC  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80B208D0  7D 89 03 A6 */	mtctr r12
/* 80B208D4  4E 80 04 21 */	bctrl 
/* 80B208D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B208DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B208E0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B208E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B208E8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B208EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B208F0  7F 83 E3 78 */	mr r3, r28
/* 80B208F4  38 81 00 14 */	addi r4, r1, 0x14
/* 80B208F8  4B 62 A0 11 */	bl setPos__8daNpcT_cF4cXyz
/* 80B208FC  7F 83 E3 78 */	mr r3, r28
/* 80B20900  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80B20904  4B 62 A1 15 */	bl setAngle__8daNpcT_cFs
/* 80B20908  3C 60 80 B2 */	lis r3, lit_4159@ha /* 0x80B24AAC@ha */
/* 80B2090C  C0 03 4A AC */	lfs f0, lit_4159@l(r3)  /* 0x80B24AAC@l */
/* 80B20910  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B20914  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80B20918  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B2091C  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80B20920  48 00 00 94 */	b lbl_80B209B4
lbl_80B20924:
/* 80B20924  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80B20928  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B2092C  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80B20930  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B20934  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80B20938  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B2093C  7F 83 E3 78 */	mr r3, r28
/* 80B20940  38 81 00 08 */	addi r4, r1, 8
/* 80B20944  4B 62 9F C5 */	bl setPos__8daNpcT_cF4cXyz
/* 80B20948  7F 83 E3 78 */	mr r3, r28
/* 80B2094C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80B20950  4B 62 A0 C9 */	bl setAngle__8daNpcT_cFs
/* 80B20954  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80B20958  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B2095C  28 04 00 FF */	cmplwi r4, 0xff
/* 80B20960  41 82 00 18 */	beq lbl_80B20978
/* 80B20964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B20968  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B2096C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80B20970  7C 05 07 74 */	extsb r5, r0
/* 80B20974  4B 51 49 3D */	bl offSwitch__10dSv_info_cFii
lbl_80B20978:
/* 80B20978  38 00 00 00 */	li r0, 0
/* 80B2097C  98 1C 0F FE */	stb r0, 0xffe(r28)
/* 80B20980  98 1C 0F FF */	stb r0, 0xfff(r28)
/* 80B20984  48 00 00 30 */	b lbl_80B209B4
lbl_80B20988:
/* 80B20988  C0 1C 0F F8 */	lfs f0, 0xff8(r28)
/* 80B2098C  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80B20990  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B20994  C0 1C 0F F8 */	lfs f0, 0xff8(r28)
/* 80B20998  D0 1C 06 50 */	stfs f0, 0x650(r28)
/* 80B2099C  C0 1C 0F F8 */	lfs f0, 0xff8(r28)
/* 80B209A0  D0 1C 06 1C */	stfs f0, 0x61c(r28)
/* 80B209A4  C0 1C 0F F8 */	lfs f0, 0xff8(r28)
/* 80B209A8  D0 1C 06 38 */	stfs f0, 0x638(r28)
/* 80B209AC  48 00 00 08 */	b lbl_80B209B4
lbl_80B209B0:
/* 80B209B0  93 5C 0D C4 */	stw r26, 0xdc4(r28)
lbl_80B209B4:
/* 80B209B4  2C 1D 00 04 */	cmpwi r29, 4
/* 80B209B8  41 82 00 94 */	beq lbl_80B20A4C
/* 80B209BC  40 80 00 18 */	bge lbl_80B209D4
/* 80B209C0  2C 1D 00 03 */	cmpwi r29, 3
/* 80B209C4  40 80 00 38 */	bge lbl_80B209FC
/* 80B209C8  2C 1D 00 00 */	cmpwi r29, 0
/* 80B209CC  40 80 00 14 */	bge lbl_80B209E0
/* 80B209D0  48 00 00 BC */	b lbl_80B20A8C
lbl_80B209D4:
/* 80B209D4  2C 1D 00 63 */	cmpwi r29, 0x63
/* 80B209D8  41 82 00 A0 */	beq lbl_80B20A78
/* 80B209DC  48 00 00 B0 */	b lbl_80B20A8C
lbl_80B209E0:
/* 80B209E0  7F 83 E3 78 */	mr r3, r28
/* 80B209E4  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B209E8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B209EC  7D 89 03 A6 */	mtctr r12
/* 80B209F0  4E 80 04 21 */	bctrl 
/* 80B209F4  3B C0 00 01 */	li r30, 1
/* 80B209F8  48 00 00 94 */	b lbl_80B20A8C
lbl_80B209FC:
/* 80B209FC  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B20A00  2C 00 00 13 */	cmpwi r0, 0x13
/* 80B20A04  41 82 00 30 */	beq lbl_80B20A34
/* 80B20A08  C0 1C 0F F8 */	lfs f0, 0xff8(r28)
/* 80B20A0C  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80B20A10  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B20A14  C0 1C 0F F8 */	lfs f0, 0xff8(r28)
/* 80B20A18  D0 1C 06 1C */	stfs f0, 0x61c(r28)
/* 80B20A1C  C0 1C 0F F8 */	lfs f0, 0xff8(r28)
/* 80B20A20  D0 1C 06 38 */	stfs f0, 0x638(r28)
/* 80B20A24  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80B20A28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B20A2C  D0 1F 0B 2C */	stfs f0, 0xb2c(r31)
/* 80B20A30  3B C0 00 01 */	li r30, 1
lbl_80B20A34:
/* 80B20A34  7F 83 E3 78 */	mr r3, r28
/* 80B20A38  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B20A3C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B20A40  7D 89 03 A6 */	mtctr r12
/* 80B20A44  4E 80 04 21 */	bctrl 
/* 80B20A48  48 00 00 44 */	b lbl_80B20A8C
lbl_80B20A4C:
/* 80B20A4C  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 80B20A50  48 00 3C D9 */	bl func_80B24728
/* 80B20A54  2C 03 00 00 */	cmpwi r3, 0
/* 80B20A58  40 82 00 08 */	bne lbl_80B20A60
/* 80B20A5C  3B C0 00 01 */	li r30, 1
lbl_80B20A60:
/* 80B20A60  7F 83 E3 78 */	mr r3, r28
/* 80B20A64  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B20A68  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B20A6C  7D 89 03 A6 */	mtctr r12
/* 80B20A70  4E 80 04 21 */	bctrl 
/* 80B20A74  48 00 00 18 */	b lbl_80B20A8C
lbl_80B20A78:
/* 80B20A78  7F 83 E3 78 */	mr r3, r28
/* 80B20A7C  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80B20A80  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B20A84  7D 89 03 A6 */	mtctr r12
/* 80B20A88  4E 80 04 21 */	bctrl 
lbl_80B20A8C:
/* 80B20A8C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80B20A90  B0 1C 0D 7A */	sth r0, 0xd7a(r28)
/* 80B20A94  7F C3 F3 78 */	mr r3, r30
/* 80B20A98  39 61 00 40 */	addi r11, r1, 0x40
/* 80B20A9C  4B 84 17 7D */	bl _restgpr_25
/* 80B20AA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B20AA4  7C 08 03 A6 */	mtlr r0
/* 80B20AA8  38 21 00 40 */	addi r1, r1, 0x40
/* 80B20AAC  4E 80 00 20 */	blr 
