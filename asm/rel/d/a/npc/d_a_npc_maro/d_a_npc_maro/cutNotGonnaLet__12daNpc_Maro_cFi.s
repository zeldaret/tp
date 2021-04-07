lbl_8056178C:
/* 8056178C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80561790  7C 08 02 A6 */	mflr r0
/* 80561794  90 01 00 54 */	stw r0, 0x54(r1)
/* 80561798  39 61 00 50 */	addi r11, r1, 0x50
/* 8056179C  4B E0 0A 35 */	bl _savegpr_26
/* 805617A0  7C 7C 1B 78 */	mr r28, r3
/* 805617A4  7C 9A 23 78 */	mr r26, r4
/* 805617A8  3C 60 80 56 */	lis r3, m__18daNpc_Maro_Param_c@ha /* 0x80564BAC@ha */
/* 805617AC  3B E3 4B AC */	addi r31, r3, m__18daNpc_Maro_Param_c@l /* 0x80564BAC@l */
/* 805617B0  3B C0 00 00 */	li r30, 0
/* 805617B4  3B A0 FF FF */	li r29, -1
/* 805617B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805617BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805617C0  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 805617C4  7F 63 DB 78 */	mr r3, r27
/* 805617C8  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 805617CC  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 805617D0  38 A5 02 1B */	addi r5, r5, 0x21b
/* 805617D4  38 C0 00 03 */	li r6, 3
/* 805617D8  4B AE 69 15 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 805617DC  28 03 00 00 */	cmplwi r3, 0
/* 805617E0  41 82 00 08 */	beq lbl_805617E8
/* 805617E4  83 A3 00 00 */	lwz r29, 0(r3)
lbl_805617E8:
/* 805617E8  7F 63 DB 78 */	mr r3, r27
/* 805617EC  7F 44 D3 78 */	mr r4, r26
/* 805617F0  4B AE 65 5D */	bl getIsAddvance__16dEvent_manager_cFi
/* 805617F4  2C 03 00 00 */	cmpwi r3, 0
/* 805617F8  41 82 05 30 */	beq lbl_80561D28
/* 805617FC  28 1D 00 1F */	cmplwi r29, 0x1f
/* 80561800  41 81 05 28 */	bgt lbl_80561D28
/* 80561804  3C 60 80 56 */	lis r3, lit_7425@ha /* 0x80565B38@ha */
/* 80561808  38 63 5B 38 */	addi r3, r3, lit_7425@l /* 0x80565B38@l */
/* 8056180C  57 A0 10 3A */	slwi r0, r29, 2
/* 80561810  7C 03 00 2E */	lwzx r0, r3, r0
/* 80561814  7C 09 03 A6 */	mtctr r0
/* 80561818  4E 80 04 20 */	bctr 
lbl_8056181C:
/* 8056181C  38 00 00 00 */	li r0, 0
/* 80561820  98 1C 11 34 */	stb r0, 0x1134(r28)
/* 80561824  38 00 00 01 */	li r0, 1
/* 80561828  98 1C 11 32 */	stb r0, 0x1132(r28)
/* 8056182C  48 00 04 FC */	b lbl_80561D28
lbl_80561830:
/* 80561830  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80561834  2C 00 00 09 */	cmpwi r0, 9
/* 80561838  41 82 00 24 */	beq lbl_8056185C
/* 8056183C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80561840  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80561844  4B BE 40 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80561848  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8056184C  38 00 00 09 */	li r0, 9
/* 80561850  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80561854  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561858  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8056185C:
/* 8056185C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80561860  2C 00 00 04 */	cmpwi r0, 4
/* 80561864  41 82 00 24 */	beq lbl_80561888
/* 80561868  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8056186C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80561870  4B BE 40 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80561874  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80561878  38 00 00 04 */	li r0, 4
/* 8056187C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80561880  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561884  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80561888:
/* 80561888  38 7C 10 DC */	addi r3, r28, 0x10dc
/* 8056188C  4B BE 3E 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80561890  7C 7B 1B 78 */	mr r27, r3
/* 80561894  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80561898  4B BE 3E 71 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056189C  7C 63 D8 50 */	subf r3, r3, r27
/* 805618A0  30 03 FF FF */	addic r0, r3, -1
/* 805618A4  7C 00 19 10 */	subfe r0, r0, r3
/* 805618A8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 805618AC  40 82 00 10 */	bne lbl_805618BC
/* 805618B0  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 805618B4  2C 00 00 02 */	cmpwi r0, 2
/* 805618B8  41 82 00 30 */	beq lbl_805618E8
lbl_805618BC:
/* 805618BC  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 805618C0  4B BE 3E 3D */	bl remove__18daNpcT_ActorMngr_cFv
/* 805618C4  38 00 00 00 */	li r0, 0
/* 805618C8  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 805618CC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 805618D0  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 805618D4  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 805618D8  38 00 00 02 */	li r0, 2
/* 805618DC  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 805618E0  38 00 00 01 */	li r0, 1
/* 805618E4  48 00 00 08 */	b lbl_805618EC
lbl_805618E8:
/* 805618E8  38 00 00 00 */	li r0, 0
lbl_805618EC:
/* 805618EC  2C 00 00 00 */	cmpwi r0, 0
/* 805618F0  41 82 00 28 */	beq lbl_80561918
/* 805618F4  7F 63 DB 78 */	mr r3, r27
/* 805618F8  4B AB 73 E9 */	bl fopAc_IsActor__FPv
/* 805618FC  2C 03 00 00 */	cmpwi r3, 0
/* 80561900  41 82 00 18 */	beq lbl_80561918
/* 80561904  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80561908  7F 64 DB 78 */	mr r4, r27
/* 8056190C  4B BE 3D D5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80561910  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 80561914  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
lbl_80561918:
/* 80561918  38 00 00 00 */	li r0, 0
/* 8056191C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80561920  C0 5F 01 60 */	lfs f2, 0x160(r31)
/* 80561924  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80561928  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 8056192C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80561930  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 80561934  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80561938  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8056193C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80561940  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80561944  7F 83 E3 78 */	mr r3, r28
/* 80561948  38 81 00 20 */	addi r4, r1, 0x20
/* 8056194C  4B BE 8F BD */	bl setPos__8daNpcT_cF4cXyz
/* 80561950  7F 83 E3 78 */	mr r3, r28
/* 80561954  38 80 23 8E */	li r4, 0x238e
/* 80561958  4B BE 90 C1 */	bl setAngle__8daNpcT_cFs
/* 8056195C  38 00 00 00 */	li r0, 0
/* 80561960  B0 1C 0D D8 */	sth r0, 0xdd8(r28)
/* 80561964  48 00 03 C4 */	b lbl_80561D28
lbl_80561968:
/* 80561968  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8056196C  2C 00 00 01 */	cmpwi r0, 1
/* 80561970  41 82 00 28 */	beq lbl_80561998
/* 80561974  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80561978  4B BE 3D 85 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056197C  38 00 00 00 */	li r0, 0
/* 80561980  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80561984  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561988  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8056198C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80561990  38 00 00 01 */	li r0, 1
/* 80561994  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80561998:
/* 80561998  38 00 00 00 */	li r0, 0
/* 8056199C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 805619A0  48 00 03 88 */	b lbl_80561D28
lbl_805619A4:
/* 805619A4  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 805619A8  2C 00 00 09 */	cmpwi r0, 9
/* 805619AC  41 82 00 24 */	beq lbl_805619D0
/* 805619B0  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 805619B4  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 805619B8  4B BE 3E E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 805619BC  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 805619C0  38 00 00 09 */	li r0, 9
/* 805619C4  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 805619C8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 805619CC  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_805619D0:
/* 805619D0  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 805619D4  2C 00 00 00 */	cmpwi r0, 0
/* 805619D8  41 82 00 24 */	beq lbl_805619FC
/* 805619DC  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 805619E0  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 805619E4  4B BE 3E B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 805619E8  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 805619EC  38 00 00 00 */	li r0, 0
/* 805619F0  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 805619F4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 805619F8  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_805619FC:
/* 805619FC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80561A00  2C 00 00 01 */	cmpwi r0, 1
/* 80561A04  41 82 00 28 */	beq lbl_80561A2C
/* 80561A08  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80561A0C  4B BE 3C F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80561A10  38 00 00 00 */	li r0, 0
/* 80561A14  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80561A18  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561A1C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80561A20  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80561A24  38 00 00 01 */	li r0, 1
/* 80561A28  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80561A2C:
/* 80561A2C  38 00 00 00 */	li r0, 0
/* 80561A30  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80561A34  98 1C 11 32 */	stb r0, 0x1132(r28)
/* 80561A38  C0 5F 01 6C */	lfs f2, 0x16c(r31)
/* 80561A3C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80561A40  C0 3F 01 70 */	lfs f1, 0x170(r31)
/* 80561A44  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80561A48  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 80561A4C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80561A50  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80561A54  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80561A58  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80561A5C  7F 83 E3 78 */	mr r3, r28
/* 80561A60  38 81 00 14 */	addi r4, r1, 0x14
/* 80561A64  4B BE 8E A5 */	bl setPos__8daNpcT_cF4cXyz
/* 80561A68  7F 83 E3 78 */	mr r3, r28
/* 80561A6C  38 80 15 55 */	li r4, 0x1555
/* 80561A70  4B BE 8F A9 */	bl setAngle__8daNpcT_cFs
/* 80561A74  48 00 02 B4 */	b lbl_80561D28
lbl_80561A78:
/* 80561A78  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80561A7C  2C 00 00 09 */	cmpwi r0, 9
/* 80561A80  41 82 00 24 */	beq lbl_80561AA4
/* 80561A84  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80561A88  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80561A8C  4B BE 3E 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80561A90  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80561A94  38 00 00 09 */	li r0, 9
/* 80561A98  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80561A9C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561AA0  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80561AA4:
/* 80561AA4  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80561AA8  2C 00 00 00 */	cmpwi r0, 0
/* 80561AAC  41 82 00 24 */	beq lbl_80561AD0
/* 80561AB0  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80561AB4  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80561AB8  4B BE 3D E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80561ABC  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80561AC0  38 00 00 00 */	li r0, 0
/* 80561AC4  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80561AC8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561ACC  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80561AD0:
/* 80561AD0  38 7C 10 DC */	addi r3, r28, 0x10dc
/* 80561AD4  4B BE 3C 35 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80561AD8  7C 7B 1B 78 */	mr r27, r3
/* 80561ADC  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80561AE0  4B BE 3C 29 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80561AE4  7C 63 D8 50 */	subf r3, r3, r27
/* 80561AE8  30 03 FF FF */	addic r0, r3, -1
/* 80561AEC  7C 00 19 10 */	subfe r0, r0, r3
/* 80561AF0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80561AF4  40 82 00 10 */	bne lbl_80561B04
/* 80561AF8  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80561AFC  2C 00 00 02 */	cmpwi r0, 2
/* 80561B00  41 82 00 30 */	beq lbl_80561B30
lbl_80561B04:
/* 80561B04  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80561B08  4B BE 3B F5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80561B0C  38 00 00 00 */	li r0, 0
/* 80561B10  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80561B14  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561B18  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80561B1C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80561B20  38 00 00 02 */	li r0, 2
/* 80561B24  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80561B28  38 00 00 01 */	li r0, 1
/* 80561B2C  48 00 00 08 */	b lbl_80561B34
lbl_80561B30:
/* 80561B30  38 00 00 00 */	li r0, 0
lbl_80561B34:
/* 80561B34  2C 00 00 00 */	cmpwi r0, 0
/* 80561B38  41 82 00 28 */	beq lbl_80561B60
/* 80561B3C  7F 63 DB 78 */	mr r3, r27
/* 80561B40  4B AB 71 A1 */	bl fopAc_IsActor__FPv
/* 80561B44  2C 03 00 00 */	cmpwi r3, 0
/* 80561B48  41 82 00 18 */	beq lbl_80561B60
/* 80561B4C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80561B50  7F 64 DB 78 */	mr r4, r27
/* 80561B54  4B BE 3B 8D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80561B58  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 80561B5C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
lbl_80561B60:
/* 80561B60  38 00 00 00 */	li r0, 0
/* 80561B64  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80561B68  C0 5F 01 60 */	lfs f2, 0x160(r31)
/* 80561B6C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80561B70  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 80561B74  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80561B78  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 80561B7C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80561B80  D0 41 00 08 */	stfs f2, 8(r1)
/* 80561B84  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80561B88  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80561B8C  7F 83 E3 78 */	mr r3, r28
/* 80561B90  38 81 00 08 */	addi r4, r1, 8
/* 80561B94  4B BE 8D 75 */	bl setPos__8daNpcT_cF4cXyz
/* 80561B98  7F 83 E3 78 */	mr r3, r28
/* 80561B9C  38 80 23 8E */	li r4, 0x238e
/* 80561BA0  4B BE 8E 79 */	bl setAngle__8daNpcT_cFs
/* 80561BA4  38 00 00 00 */	li r0, 0
/* 80561BA8  B0 1C 0D D8 */	sth r0, 0xdd8(r28)
/* 80561BAC  48 00 01 7C */	b lbl_80561D28
lbl_80561BB0:
/* 80561BB0  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561BB4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80561BB8  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80561BBC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80561BC0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80561BC4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80561BC8  4B AA B1 9D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80561BCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80561BD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80561BD4  A8 9C 0D 7A */	lha r4, 0xd7a(r28)
/* 80561BD8  38 04 D8 00 */	addi r0, r4, -10240
/* 80561BDC  7C 04 07 34 */	extsh r4, r0
/* 80561BE0  4B AA A8 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 80561BE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80561BE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80561BEC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80561BF0  38 BC 0D 6C */	addi r5, r28, 0xd6c
/* 80561BF4  4B DE 51 79 */	bl PSMTXMultVec
/* 80561BF8  80 7C 0B C8 */	lwz r3, 0xbc8(r28)
/* 80561BFC  38 1C 0D 6C */	addi r0, r28, 0xd6c
/* 80561C00  7C 63 00 50 */	subf r3, r3, r0
/* 80561C04  30 03 FF FF */	addic r0, r3, -1
/* 80561C08  7C 00 19 10 */	subfe r0, r0, r3
/* 80561C0C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80561C10  40 82 00 10 */	bne lbl_80561C20
/* 80561C14  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80561C18  2C 00 00 05 */	cmpwi r0, 5
/* 80561C1C  41 82 00 30 */	beq lbl_80561C4C
lbl_80561C20:
/* 80561C20  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80561C24  4B BE 3A D9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80561C28  38 00 00 00 */	li r0, 0
/* 80561C2C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80561C30  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561C34  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80561C38  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80561C3C  38 00 00 05 */	li r0, 5
/* 80561C40  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80561C44  38 00 00 01 */	li r0, 1
/* 80561C48  48 00 00 08 */	b lbl_80561C50
lbl_80561C4C:
/* 80561C4C  38 00 00 00 */	li r0, 0
lbl_80561C50:
/* 80561C50  2C 00 00 00 */	cmpwi r0, 0
/* 80561C54  41 82 00 0C */	beq lbl_80561C60
/* 80561C58  38 1C 0D 6C */	addi r0, r28, 0xd6c
/* 80561C5C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
lbl_80561C60:
/* 80561C60  38 00 00 00 */	li r0, 0
/* 80561C64  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80561C68  48 00 00 C0 */	b lbl_80561D28
lbl_80561C6C:
/* 80561C6C  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80561C70  2C 00 00 09 */	cmpwi r0, 9
/* 80561C74  41 82 00 24 */	beq lbl_80561C98
/* 80561C78  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80561C7C  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80561C80  4B BE 3C 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80561C84  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80561C88  38 00 00 09 */	li r0, 9
/* 80561C8C  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80561C90  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561C94  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80561C98:
/* 80561C98  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80561C9C  2C 00 00 00 */	cmpwi r0, 0
/* 80561CA0  41 82 00 24 */	beq lbl_80561CC4
/* 80561CA4  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80561CA8  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80561CAC  4B BE 3B ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80561CB0  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80561CB4  38 00 00 00 */	li r0, 0
/* 80561CB8  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80561CBC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561CC0  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80561CC4:
/* 80561CC4  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80561CC8  2C 00 00 01 */	cmpwi r0, 1
/* 80561CCC  41 82 00 28 */	beq lbl_80561CF4
/* 80561CD0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80561CD4  4B BE 3A 29 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80561CD8  38 00 00 00 */	li r0, 0
/* 80561CDC  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80561CE0  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80561CE4  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80561CE8  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80561CEC  38 00 00 01 */	li r0, 1
/* 80561CF0  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80561CF4:
/* 80561CF4  38 00 00 00 */	li r0, 0
/* 80561CF8  B0 1C 0C D4 */	sth r0, 0xcd4(r28)
/* 80561CFC  B0 1C 0C D6 */	sth r0, 0xcd6(r28)
/* 80561D00  38 00 00 01 */	li r0, 1
/* 80561D04  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80561D08  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80561D0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80561D10  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80561D14  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80561D18  4B BE 39 C9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80561D1C  7F 83 E3 78 */	mr r3, r28
/* 80561D20  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80561D24  4B BE 8C F5 */	bl setAngle__8daNpcT_cFs
lbl_80561D28:
/* 80561D28  28 1D 00 1F */	cmplwi r29, 0x1f
/* 80561D2C  41 81 01 24 */	bgt lbl_80561E50
/* 80561D30  3C 60 80 56 */	lis r3, lit_7426@ha /* 0x80565AB8@ha */
/* 80561D34  38 63 5A B8 */	addi r3, r3, lit_7426@l /* 0x80565AB8@l */
/* 80561D38  57 A0 10 3A */	slwi r0, r29, 2
/* 80561D3C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80561D40  7C 09 03 A6 */	mtctr r0
/* 80561D44  4E 80 04 20 */	bctr 
lbl_80561D48:
/* 80561D48  7F 83 E3 78 */	mr r3, r28
/* 80561D4C  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80561D50  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80561D54  7D 89 03 A6 */	mtctr r12
/* 80561D58  4E 80 04 21 */	bctrl 
/* 80561D5C  3B C0 00 01 */	li r30, 1
/* 80561D60  48 00 00 F4 */	b lbl_80561E54
lbl_80561D64:
/* 80561D64  3B C0 00 01 */	li r30, 1
/* 80561D68  48 00 00 EC */	b lbl_80561E54
lbl_80561D6C:
/* 80561D6C  7F 83 E3 78 */	mr r3, r28
/* 80561D70  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80561D74  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80561D78  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80561D7C  4B AB 89 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80561D80  A8 9C 0D 7A */	lha r4, 0xd7a(r28)
/* 80561D84  7C 60 07 34 */	extsh r0, r3
/* 80561D88  7C 04 00 00 */	cmpw r4, r0
/* 80561D8C  41 82 00 90 */	beq lbl_80561E1C
/* 80561D90  7F 83 E3 78 */	mr r3, r28
/* 80561D94  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80561D98  4B AB 89 79 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80561D9C  7C 64 1B 78 */	mr r4, r3
/* 80561DA0  7F 83 E3 78 */	mr r3, r28
/* 80561DA4  38 A0 00 09 */	li r5, 9
/* 80561DA8  38 C0 00 07 */	li r6, 7
/* 80561DAC  38 E0 00 0F */	li r7, 0xf
/* 80561DB0  39 00 00 00 */	li r8, 0
/* 80561DB4  4B BE 98 95 */	bl step__8daNpcT_cFsiiii
/* 80561DB8  2C 03 00 00 */	cmpwi r3, 0
/* 80561DBC  41 82 00 98 */	beq lbl_80561E54
/* 80561DC0  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80561DC4  2C 00 00 09 */	cmpwi r0, 9
/* 80561DC8  41 82 00 24 */	beq lbl_80561DEC
/* 80561DCC  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80561DD0  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80561DD4  4B BE 3A C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80561DD8  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80561DDC  38 00 00 09 */	li r0, 9
/* 80561DE0  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80561DE4  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80561DE8  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80561DEC:
/* 80561DEC  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80561DF0  2C 00 00 00 */	cmpwi r0, 0
/* 80561DF4  41 82 00 60 */	beq lbl_80561E54
/* 80561DF8  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80561DFC  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80561E00  4B BE 3A 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80561E04  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80561E08  38 00 00 00 */	li r0, 0
/* 80561E0C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80561E10  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80561E14  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80561E18  48 00 00 3C */	b lbl_80561E54
lbl_80561E1C:
/* 80561E1C  3B C0 00 01 */	li r30, 1
/* 80561E20  48 00 00 34 */	b lbl_80561E54
lbl_80561E24:
/* 80561E24  3B C0 00 01 */	li r30, 1
/* 80561E28  48 00 00 2C */	b lbl_80561E54
lbl_80561E2C:
/* 80561E2C  7F 83 E3 78 */	mr r3, r28
/* 80561E30  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80561E34  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80561E38  7D 89 03 A6 */	mtctr r12
/* 80561E3C  4E 80 04 21 */	bctrl 
/* 80561E40  3B C0 00 01 */	li r30, 1
/* 80561E44  48 00 00 10 */	b lbl_80561E54
lbl_80561E48:
/* 80561E48  3B C0 00 01 */	li r30, 1
/* 80561E4C  48 00 00 08 */	b lbl_80561E54
lbl_80561E50:
/* 80561E50  3B C0 00 01 */	li r30, 1
lbl_80561E54:
/* 80561E54  7F C3 F3 78 */	mr r3, r30
/* 80561E58  39 61 00 50 */	addi r11, r1, 0x50
/* 80561E5C  4B E0 03 C1 */	bl _restgpr_26
/* 80561E60  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80561E64  7C 08 03 A6 */	mtlr r0
/* 80561E68  38 21 00 50 */	addi r1, r1, 0x50
/* 80561E6C  4E 80 00 20 */	blr 
