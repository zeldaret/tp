lbl_80B1462C:
/* 80B1462C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B14630  7C 08 02 A6 */	mflr r0
/* 80B14634  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B14638  39 61 00 20 */	addi r11, r1, 0x20
/* 80B1463C  4B 84 DB 98 */	b _savegpr_27
/* 80B14640  7C 7C 1B 78 */	mr r28, r3
/* 80B14644  48 00 92 E5 */	bl __ct__8daNpcF_cFv
/* 80B14648  3C 60 80 B2 */	lis r3, __vt__10daNpcTks_c@ha
/* 80B1464C  38 03 E4 64 */	addi r0, r3, __vt__10daNpcTks_c@l
/* 80B14650  90 1C 0B 44 */	stw r0, 0xb44(r28)
/* 80B14654  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 80B14658  4B 7A BD 70 */	b __ct__10Z2CreatureFv
/* 80B1465C  3B 7C 0B DC */	addi r27, r28, 0xbdc
/* 80B14660  7F 63 DB 78 */	mr r3, r27
/* 80B14664  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 80B14668  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 80B1466C  4B 81 10 58 */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 80B14670  38 7B 00 74 */	addi r3, r27, 0x74
/* 80B14674  3C 80 80 B2 */	lis r4, __ct__11J3DLightObjFv@ha
/* 80B14678  38 84 D6 A4 */	addi r4, r4, __ct__11J3DLightObjFv@l
/* 80B1467C  38 A0 00 00 */	li r5, 0
/* 80B14680  38 C0 00 74 */	li r6, 0x74
/* 80B14684  38 E0 00 06 */	li r7, 6
/* 80B14688  4B 84 D6 D8 */	b __construct_array
/* 80B1468C  38 7C 0F 64 */	addi r3, r28, 0xf64
/* 80B14690  4B 7A BD 38 */	b __ct__10Z2CreatureFv
/* 80B14694  3B 7C 0F F4 */	addi r27, r28, 0xff4
/* 80B14698  7F 63 DB 78 */	mr r3, r27
/* 80B1469C  4B 56 F3 8C */	b __ct__12dCcD_GObjInfFv
/* 80B146A0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B146A4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B146A8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80B146AC  3C 60 80 B2 */	lis r3, __vt__8cM3dGAab@ha
/* 80B146B0  38 03 E5 24 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B146B4  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80B146B8  3C 60 80 B2 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B146BC  38 03 E5 18 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B146C0  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80B146C4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B146C8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B146CC  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80B146D0  3B E3 00 58 */	addi r31, r3, 0x58
/* 80B146D4  93 FB 01 38 */	stw r31, 0x138(r27)
/* 80B146D8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B146DC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B146E0  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80B146E4  3B C3 00 2C */	addi r30, r3, 0x2c
/* 80B146E8  93 DB 01 20 */	stw r30, 0x120(r27)
/* 80B146EC  3B A3 00 84 */	addi r29, r3, 0x84
/* 80B146F0  93 BB 01 38 */	stw r29, 0x138(r27)
/* 80B146F4  38 7C 11 30 */	addi r3, r28, 0x1130
/* 80B146F8  4B 75 39 7C */	b __ct__13cBgS_PolyInfoFv
/* 80B146FC  3B 7C 11 64 */	addi r27, r28, 0x1164
/* 80B14700  3C 60 80 B2 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80B14704  38 03 E5 0C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80B14708  90 1C 11 FC */	stw r0, 0x11fc(r28)
/* 80B1470C  7F 63 DB 78 */	mr r3, r27
/* 80B14710  3C 80 80 B2 */	lis r4, __ct__4cXyzFv@ha
/* 80B14714  38 84 D5 98 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B14718  3C A0 80 B2 */	lis r5, __dt__4cXyzFv@ha
/* 80B1471C  38 A5 D6 68 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B14720  38 C0 00 0C */	li r6, 0xc
/* 80B14724  38 E0 00 04 */	li r7, 4
/* 80B14728  4B 84 D6 38 */	b __construct_array
/* 80B1472C  38 7B 00 34 */	addi r3, r27, 0x34
/* 80B14730  3C 80 80 B2 */	lis r4, __ct__5csXyzFv@ha
/* 80B14734  38 84 D5 94 */	addi r4, r4, __ct__5csXyzFv@l
/* 80B14738  3C A0 80 B2 */	lis r5, __dt__5csXyzFv@ha
/* 80B1473C  38 A5 D5 9C */	addi r5, r5, __dt__5csXyzFv@l
/* 80B14740  38 C0 00 06 */	li r6, 6
/* 80B14744  38 E0 00 04 */	li r7, 4
/* 80B14748  4B 84 D6 18 */	b __construct_array
/* 80B1474C  38 7B 00 4C */	addi r3, r27, 0x4c
/* 80B14750  3C 80 80 B2 */	lis r4, __ct__5csXyzFv@ha
/* 80B14754  38 84 D5 94 */	addi r4, r4, __ct__5csXyzFv@l
/* 80B14758  3C A0 80 B2 */	lis r5, __dt__5csXyzFv@ha
/* 80B1475C  38 A5 D5 9C */	addi r5, r5, __dt__5csXyzFv@l
/* 80B14760  38 C0 00 06 */	li r6, 6
/* 80B14764  38 E0 00 04 */	li r7, 4
/* 80B14768  4B 84 D5 F8 */	b __construct_array
/* 80B1476C  38 7B 00 64 */	addi r3, r27, 0x64
/* 80B14770  3C 80 80 B2 */	lis r4, __ct__5csXyzFv@ha
/* 80B14774  38 84 D5 94 */	addi r4, r4, __ct__5csXyzFv@l
/* 80B14778  3C A0 80 B2 */	lis r5, __dt__5csXyzFv@ha
/* 80B1477C  38 A5 D5 9C */	addi r5, r5, __dt__5csXyzFv@l
/* 80B14780  38 C0 00 06 */	li r6, 6
/* 80B14784  38 E0 00 04 */	li r7, 4
/* 80B14788  4B 84 D5 D8 */	b __construct_array
/* 80B1478C  38 7B 00 7C */	addi r3, r27, 0x7c
/* 80B14790  3C 80 80 B2 */	lis r4, __ct__5csXyzFv@ha
/* 80B14794  38 84 D5 94 */	addi r4, r4, __ct__5csXyzFv@l
/* 80B14798  3C A0 80 B2 */	lis r5, __dt__5csXyzFv@ha
/* 80B1479C  38 A5 D5 9C */	addi r5, r5, __dt__5csXyzFv@l
/* 80B147A0  38 C0 00 06 */	li r6, 6
/* 80B147A4  38 E0 00 04 */	li r7, 4
/* 80B147A8  4B 84 D5 B8 */	b __construct_array
/* 80B147AC  7F 63 DB 78 */	mr r3, r27
/* 80B147B0  4B 63 C8 88 */	b initialize__15daNpcF_Lookat_cFv
/* 80B147B4  38 7C 12 00 */	addi r3, r28, 0x1200
/* 80B147B8  3C 80 80 B2 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha
/* 80B147BC  38 84 D4 88 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l
/* 80B147C0  3C A0 80 B2 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80B147C4  38 A5 D4 40 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l
/* 80B147C8  38 C0 00 08 */	li r6, 8
/* 80B147CC  38 E0 00 01 */	li r7, 1
/* 80B147D0  4B 84 D5 90 */	b __construct_array
/* 80B147D4  3B 7C 12 10 */	addi r27, r28, 0x1210
/* 80B147D8  7F 63 DB 78 */	mr r3, r27
/* 80B147DC  4B 56 F2 4C */	b __ct__12dCcD_GObjInfFv
/* 80B147E0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B147E4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B147E8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80B147EC  3C 60 80 B2 */	lis r3, __vt__8cM3dGAab@ha
/* 80B147F0  38 03 E5 24 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B147F4  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80B147F8  3C 60 80 B2 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B147FC  38 03 E5 18 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B14800  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80B14804  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B14808  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 80B1480C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80B14810  93 FB 01 38 */	stw r31, 0x138(r27)
/* 80B14814  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B14818  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 80B1481C  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80B14820  93 DB 01 20 */	stw r30, 0x120(r27)
/* 80B14824  93 BB 01 38 */	stw r29, 0x138(r27)
/* 80B14828  7F 83 E3 78 */	mr r3, r28
/* 80B1482C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B14830  4B 84 D9 F0 */	b _restgpr_27
/* 80B14834  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B14838  7C 08 03 A6 */	mtlr r0
/* 80B1483C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B14840  4E 80 00 20 */	blr 
