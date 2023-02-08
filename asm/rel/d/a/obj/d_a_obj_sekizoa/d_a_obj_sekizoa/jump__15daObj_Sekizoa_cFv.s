lbl_80CD0F14:
/* 80CD0F14  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CD0F18  7C 08 02 A6 */	mflr r0
/* 80CD0F1C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CD0F20  39 61 00 70 */	addi r11, r1, 0x70
/* 80CD0F24  4B 69 12 B5 */	bl _savegpr_28
/* 80CD0F28  7C 7E 1B 78 */	mr r30, r3
/* 80CD0F2C  3C 80 80 CD */	lis r4, m__21daObj_Sekizoa_Param_c@ha /* 0x80CD5CFC@ha */
/* 80CD0F30  3B E4 5C FC */	addi r31, r4, m__21daObj_Sekizoa_Param_c@l /* 0x80CD5CFC@l */
/* 80CD0F34  88 83 11 74 */	lbz r4, 0x1174(r3)
/* 80CD0F38  2C 04 00 04 */	cmpwi r4, 4
/* 80CD0F3C  41 82 05 34 */	beq lbl_80CD1470
/* 80CD0F40  40 80 05 80 */	bge lbl_80CD14C0
/* 80CD0F44  2C 04 00 01 */	cmpwi r4, 1
/* 80CD0F48  41 82 00 6C */	beq lbl_80CD0FB4
/* 80CD0F4C  40 80 02 14 */	bge lbl_80CD1160
/* 80CD0F50  2C 04 00 00 */	cmpwi r4, 0
/* 80CD0F54  40 80 00 0C */	bge lbl_80CD0F60
/* 80CD0F58  48 00 05 68 */	b lbl_80CD14C0
/* 80CD0F5C  48 00 05 64 */	b lbl_80CD14C0
lbl_80CD0F60:
/* 80CD0F60  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD0F64  4B 47 4A C1 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80CD0F68  2C 03 00 00 */	cmpwi r3, 0
/* 80CD0F6C  41 82 05 54 */	beq lbl_80CD14C0
/* 80CD0F70  7F C3 F3 78 */	mr r3, r30
/* 80CD0F74  4B FF FE BD */	bl getGameMotionNo__15daObj_Sekizoa_cFv
/* 80CD0F78  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CD0F7C  41 80 00 2C */	blt lbl_80CD0FA8
/* 80CD0F80  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD0F84  7C 1D 00 00 */	cmpw r29, r0
/* 80CD0F88  41 82 00 20 */	beq lbl_80CD0FA8
/* 80CD0F8C  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD0F90  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD0F94  4B 47 49 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD0F98  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD0F9C  93 BE 0B 7C */	stw r29, 0xb7c(r30)
/* 80CD0FA0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD0FA4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80CD0FA8:
/* 80CD0FA8  38 00 00 05 */	li r0, 5
/* 80CD0FAC  98 1E 11 74 */	stb r0, 0x1174(r30)
/* 80CD0FB0  48 00 05 10 */	b lbl_80CD14C0
lbl_80CD0FB4:
/* 80CD0FB4  4B FF FC 29 */	bl checkMoveDirection__15daObj_Sekizoa_cFv
/* 80CD0FB8  2C 03 00 00 */	cmpwi r3, 0
/* 80CD0FBC  41 82 00 DC */	beq lbl_80CD1098
/* 80CD0FC0  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CD0FC4  2C 00 00 01 */	cmpwi r0, 1
/* 80CD0FC8  41 82 00 70 */	beq lbl_80CD1038
/* 80CD0FCC  40 80 00 C0 */	bge lbl_80CD108C
/* 80CD0FD0  2C 00 00 00 */	cmpwi r0, 0
/* 80CD0FD4  40 80 00 0C */	bge lbl_80CD0FE0
/* 80CD0FD8  48 00 00 B4 */	b lbl_80CD108C
/* 80CD0FDC  48 00 00 B0 */	b lbl_80CD108C
lbl_80CD0FE0:
/* 80CD0FE0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD0FE4  2C 00 00 07 */	cmpwi r0, 7
/* 80CD0FE8  41 82 00 24 */	beq lbl_80CD100C
/* 80CD0FEC  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD0FF0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD0FF4  4B 47 48 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD0FF8  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD0FFC  38 00 00 07 */	li r0, 7
/* 80CD1000  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80CD1004  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD1008  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80CD100C:
/* 80CD100C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501DC@ha */
/* 80CD1010  38 03 01 DC */	addi r0, r3, 0x01DC /* 0x000501DC@l */
/* 80CD1014  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CD1018  38 7E 05 80 */	addi r3, r30, 0x580
/* 80CD101C  38 81 00 20 */	addi r4, r1, 0x20
/* 80CD1020  38 A0 FF FF */	li r5, -1
/* 80CD1024  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80CD1028  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CD102C  7D 89 03 A6 */	mtctr r12
/* 80CD1030  4E 80 04 21 */	bctrl 
/* 80CD1034  48 00 00 58 */	b lbl_80CD108C
lbl_80CD1038:
/* 80CD1038  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD103C  2C 00 00 12 */	cmpwi r0, 0x12
/* 80CD1040  41 82 00 24 */	beq lbl_80CD1064
/* 80CD1044  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD1048  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD104C  4B 47 48 4D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD1050  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD1054  38 00 00 12 */	li r0, 0x12
/* 80CD1058  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80CD105C  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD1060  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80CD1064:
/* 80CD1064  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501E2@ha */
/* 80CD1068  38 03 01 E2 */	addi r0, r3, 0x01E2 /* 0x000501E2@l */
/* 80CD106C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CD1070  38 7E 05 80 */	addi r3, r30, 0x580
/* 80CD1074  38 81 00 1C */	addi r4, r1, 0x1c
/* 80CD1078  38 A0 FF FF */	li r5, -1
/* 80CD107C  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80CD1080  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CD1084  7D 89 03 A6 */	mtctr r12
/* 80CD1088  4E 80 04 21 */	bctrl 
lbl_80CD108C:
/* 80CD108C  38 00 00 02 */	li r0, 2
/* 80CD1090  98 1E 11 74 */	stb r0, 0x1174(r30)
/* 80CD1094  48 00 00 AC */	b lbl_80CD1140
lbl_80CD1098:
/* 80CD1098  7F C3 F3 78 */	mr r3, r30
/* 80CD109C  4B FF FD DD */	bl getNoJumpMotionNo__15daObj_Sekizoa_cFv
/* 80CD10A0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CD10A4  41 80 00 2C */	blt lbl_80CD10D0
/* 80CD10A8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD10AC  7C 1D 00 00 */	cmpw r29, r0
/* 80CD10B0  41 82 00 20 */	beq lbl_80CD10D0
/* 80CD10B4  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD10B8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD10BC  4B 47 47 DD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD10C0  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD10C4  93 BE 0B 7C */	stw r29, 0xb7c(r30)
/* 80CD10C8  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD10CC  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80CD10D0:
/* 80CD10D0  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CD10D4  28 00 00 00 */	cmplwi r0, 0
/* 80CD10D8  40 82 00 30 */	bne lbl_80CD1108
/* 80CD10DC  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501DF@ha */
/* 80CD10E0  38 03 01 DF */	addi r0, r3, 0x01DF /* 0x000501DF@l */
/* 80CD10E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CD10E8  38 7E 05 80 */	addi r3, r30, 0x580
/* 80CD10EC  38 81 00 18 */	addi r4, r1, 0x18
/* 80CD10F0  38 A0 FF FF */	li r5, -1
/* 80CD10F4  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80CD10F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CD10FC  7D 89 03 A6 */	mtctr r12
/* 80CD1100  4E 80 04 21 */	bctrl 
/* 80CD1104  48 00 00 34 */	b lbl_80CD1138
lbl_80CD1108:
/* 80CD1108  28 00 00 01 */	cmplwi r0, 1
/* 80CD110C  40 82 00 2C */	bne lbl_80CD1138
/* 80CD1110  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501E0@ha */
/* 80CD1114  38 03 01 E0 */	addi r0, r3, 0x01E0 /* 0x000501E0@l */
/* 80CD1118  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD111C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80CD1120  38 81 00 14 */	addi r4, r1, 0x14
/* 80CD1124  38 A0 FF FF */	li r5, -1
/* 80CD1128  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80CD112C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CD1130  7D 89 03 A6 */	mtctr r12
/* 80CD1134  4E 80 04 21 */	bctrl 
lbl_80CD1138:
/* 80CD1138  38 00 00 00 */	li r0, 0
/* 80CD113C  98 1E 11 74 */	stb r0, 0x1174(r30)
lbl_80CD1140:
/* 80CD1140  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD1144  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CD1148  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80CD114C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80CD1150  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80CD1154  D0 1E 11 5C */	stfs f0, 0x115c(r30)
/* 80CD1158  D0 1E 11 60 */	stfs f0, 0x1160(r30)
/* 80CD115C  48 00 03 64 */	b lbl_80CD14C0
lbl_80CD1160:
/* 80CD1160  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD1164  2C 00 00 07 */	cmpwi r0, 7
/* 80CD1168  41 82 00 0C */	beq lbl_80CD1174
/* 80CD116C  2C 00 00 12 */	cmpwi r0, 0x12
/* 80CD1170  40 82 00 AC */	bne lbl_80CD121C
lbl_80CD1174:
/* 80CD1174  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD1178  4B 47 48 AD */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80CD117C  2C 03 00 00 */	cmpwi r3, 0
/* 80CD1180  41 82 03 40 */	beq lbl_80CD14C0
/* 80CD1184  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD1188  2C 00 00 12 */	cmpwi r0, 0x12
/* 80CD118C  41 82 00 40 */	beq lbl_80CD11CC
/* 80CD1190  40 80 00 64 */	bge lbl_80CD11F4
/* 80CD1194  2C 00 00 07 */	cmpwi r0, 7
/* 80CD1198  41 82 00 08 */	beq lbl_80CD11A0
/* 80CD119C  48 00 00 58 */	b lbl_80CD11F4
lbl_80CD11A0:
/* 80CD11A0  2C 00 00 08 */	cmpwi r0, 8
/* 80CD11A4  41 82 00 50 */	beq lbl_80CD11F4
/* 80CD11A8  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD11AC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD11B0  4B 47 46 E9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD11B4  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD11B8  38 00 00 08 */	li r0, 8
/* 80CD11BC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80CD11C0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD11C4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80CD11C8  48 00 00 2C */	b lbl_80CD11F4
lbl_80CD11CC:
/* 80CD11CC  2C 00 00 13 */	cmpwi r0, 0x13
/* 80CD11D0  41 82 00 24 */	beq lbl_80CD11F4
/* 80CD11D4  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD11D8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD11DC  4B 47 46 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD11E0  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD11E4  38 00 00 13 */	li r0, 0x13
/* 80CD11E8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80CD11EC  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD11F0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80CD11F4:
/* 80CD11F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CD11F8  D0 1E 11 4C */	stfs f0, 0x114c(r30)
/* 80CD11FC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CD1200  D0 1E 11 50 */	stfs f0, 0x1150(r30)
/* 80CD1204  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CD1208  D0 1E 11 54 */	stfs f0, 0x1154(r30)
/* 80CD120C  38 7F 00 00 */	addi r3, r31, 0
/* 80CD1210  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 80CD1214  D0 1E 11 60 */	stfs f0, 0x1160(r30)
/* 80CD1218  48 00 02 A8 */	b lbl_80CD14C0
lbl_80CD121C:
/* 80CD121C  28 04 00 02 */	cmplwi r4, 2
/* 80CD1220  40 82 01 3C */	bne lbl_80CD135C
/* 80CD1224  38 7E 0E 50 */	addi r3, r30, 0xe50
/* 80CD1228  4B 3B 34 31 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80CD122C  28 03 00 00 */	cmplwi r3, 0
/* 80CD1230  41 82 01 2C */	beq lbl_80CD135C
/* 80CD1234  38 7E 0E 50 */	addi r3, r30, 0xe50
/* 80CD1238  4B 3B 34 B9 */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 80CD123C  4B 59 28 0D */	bl GetAc__8cCcD_ObjFv
/* 80CD1240  A8 03 00 08 */	lha r0, 8(r3)
/* 80CD1244  2C 00 00 20 */	cmpwi r0, 0x20
/* 80CD1248  40 82 01 14 */	bne lbl_80CD135C
/* 80CD124C  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80CD1250  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80CD1254  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80CD1258  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CD125C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CD1260  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD1264  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD1268  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CD126C  38 80 00 05 */	li r4, 5
/* 80CD1270  38 A0 00 0F */	li r5, 0xf
/* 80CD1274  38 C1 00 30 */	addi r6, r1, 0x30
/* 80CD1278  4B 39 E7 AD */	bl StartShock__12dVibration_cFii4cXyz
/* 80CD127C  7F C3 F3 78 */	mr r3, r30
/* 80CD1280  4B FF FC 2D */	bl getHitMotionNo__15daObj_Sekizoa_cFv
/* 80CD1284  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CD1288  41 80 00 2C */	blt lbl_80CD12B4
/* 80CD128C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD1290  7C 1D 00 00 */	cmpw r29, r0
/* 80CD1294  41 82 00 20 */	beq lbl_80CD12B4
/* 80CD1298  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD129C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD12A0  4B 47 45 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD12A4  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD12A8  93 BE 0B 7C */	stw r29, 0xb7c(r30)
/* 80CD12AC  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD12B0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80CD12B4:
/* 80CD12B4  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CD12B8  28 00 00 00 */	cmplwi r0, 0
/* 80CD12BC  40 82 00 30 */	bne lbl_80CD12EC
/* 80CD12C0  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501DD@ha */
/* 80CD12C4  38 03 01 DD */	addi r0, r3, 0x01DD /* 0x000501DD@l */
/* 80CD12C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CD12CC  38 7E 05 80 */	addi r3, r30, 0x580
/* 80CD12D0  38 81 00 10 */	addi r4, r1, 0x10
/* 80CD12D4  38 A0 FF FF */	li r5, -1
/* 80CD12D8  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80CD12DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CD12E0  7D 89 03 A6 */	mtctr r12
/* 80CD12E4  4E 80 04 21 */	bctrl 
/* 80CD12E8  48 00 00 60 */	b lbl_80CD1348
lbl_80CD12EC:
/* 80CD12EC  28 00 00 01 */	cmplwi r0, 1
/* 80CD12F0  40 82 00 58 */	bne lbl_80CD1348
/* 80CD12F4  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501DE@ha */
/* 80CD12F8  38 03 01 DE */	addi r0, r3, 0x01DE /* 0x000501DE@l */
/* 80CD12FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CD1300  38 7E 05 80 */	addi r3, r30, 0x580
/* 80CD1304  38 81 00 0C */	addi r4, r1, 0xc
/* 80CD1308  38 A0 FF FF */	li r5, -1
/* 80CD130C  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80CD1310  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80CD1314  7D 89 03 A6 */	mtctr r12
/* 80CD1318  4E 80 04 21 */	bctrl 
/* 80CD131C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600DC@ha */
/* 80CD1320  38 03 00 DC */	addi r0, r3, 0x00DC /* 0x000600DC@l */
/* 80CD1324  90 01 00 08 */	stw r0, 8(r1)
/* 80CD1328  38 7E 05 80 */	addi r3, r30, 0x580
/* 80CD132C  38 81 00 08 */	addi r4, r1, 8
/* 80CD1330  38 A0 00 00 */	li r5, 0
/* 80CD1334  38 C0 FF FF */	li r6, -1
/* 80CD1338  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80CD133C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD1340  7D 89 03 A6 */	mtctr r12
/* 80CD1344  4E 80 04 21 */	bctrl 
lbl_80CD1348:
/* 80CD1348  38 7F 00 00 */	addi r3, r31, 0
/* 80CD134C  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 80CD1350  D0 1E 11 60 */	stfs f0, 0x1160(r30)
/* 80CD1354  38 00 00 03 */	li r0, 3
/* 80CD1358  98 1E 11 74 */	stb r0, 0x1174(r30)
lbl_80CD135C:
/* 80CD135C  88 1E 11 74 */	lbz r0, 0x1174(r30)
/* 80CD1360  28 00 00 02 */	cmplwi r0, 2
/* 80CD1364  40 82 00 1C */	bne lbl_80CD1380
/* 80CD1368  38 7E 11 5C */	addi r3, r30, 0x115c
/* 80CD136C  38 9F 00 00 */	addi r4, r31, 0
/* 80CD1370  C0 24 00 8C */	lfs f1, 0x8c(r4)
/* 80CD1374  C0 5E 11 60 */	lfs f2, 0x1160(r30)
/* 80CD1378  4B 59 F3 C9 */	bl cLib_chaseF__FPfff
/* 80CD137C  48 00 00 14 */	b lbl_80CD1390
lbl_80CD1380:
/* 80CD1380  38 7E 11 5C */	addi r3, r30, 0x115c
/* 80CD1384  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80CD1388  C0 5E 11 60 */	lfs f2, 0x1160(r30)
/* 80CD138C  4B 59 F3 B5 */	bl cLib_chaseF__FPfff
lbl_80CD1390:
/* 80CD1390  3B BF 00 00 */	addi r29, r31, 0
/* 80CD1394  C0 9D 00 94 */	lfs f4, 0x94(r29)
/* 80CD1398  C0 7E 11 5C */	lfs f3, 0x115c(r30)
/* 80CD139C  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 80CD13A0  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 80CD13A4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CD13A8  EC A3 08 28 */	fsubs f5, f3, f1
/* 80CD13AC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD13B0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CD13B4  EC 01 00 72 */	fmuls f0, f1, f1
/* 80CD13B8  EC 44 00 32 */	fmuls f2, f4, f0
/* 80CD13BC  FC 20 20 50 */	fneg f1, f4
/* 80CD13C0  EC 05 01 72 */	fmuls f0, f5, f5
/* 80CD13C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CD13C8  EC 02 00 2A */	fadds f0, f2, f0
/* 80CD13CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CD13D0  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 80CD13D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CD13D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CD13DC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80CD13E0  4B 33 AF FD */	bl mDoMtx_YrotS__FPA4_fs
/* 80CD13E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CD13E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CD13EC  38 81 00 48 */	addi r4, r1, 0x48
/* 80CD13F0  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80CD13F4  4B 67 59 79 */	bl PSMTXMultVec
/* 80CD13F8  38 61 00 24 */	addi r3, r1, 0x24
/* 80CD13FC  38 9E 11 4C */	addi r4, r30, 0x114c
/* 80CD1400  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80CD1404  4B 59 56 E1 */	bl __pl__4cXyzCFRC3Vec
/* 80CD1408  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CD140C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80CD1410  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CD1414  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80CD1418  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CD141C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80CD1420  38 7E 11 60 */	addi r3, r30, 0x1160
/* 80CD1424  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 80CD1428  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80CD142C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CD1430  C0 5F 01 3C */	lfs f2, 0x13c(r31)
/* 80CD1434  4B 59 F3 0D */	bl cLib_chaseF__FPfff
/* 80CD1438  C0 3E 11 5C */	lfs f1, 0x115c(r30)
/* 80CD143C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD1440  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD1444  4C 40 13 82 */	cror 2, 0, 2
/* 80CD1448  41 82 00 14 */	beq lbl_80CD145C
/* 80CD144C  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 80CD1450  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CD1454  4C 40 13 82 */	cror 2, 0, 2
/* 80CD1458  40 82 00 68 */	bne lbl_80CD14C0
lbl_80CD145C:
/* 80CD145C  7F C3 F3 78 */	mr r3, r30
/* 80CD1460  48 00 00 79 */	bl landing__15daObj_Sekizoa_cFv
/* 80CD1464  38 00 00 04 */	li r0, 4
/* 80CD1468  98 1E 11 74 */	stb r0, 0x1174(r30)
/* 80CD146C  48 00 00 54 */	b lbl_80CD14C0
lbl_80CD1470:
/* 80CD1470  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD1474  4B 47 45 B1 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80CD1478  2C 03 00 00 */	cmpwi r3, 0
/* 80CD147C  41 82 00 44 */	beq lbl_80CD14C0
/* 80CD1480  7F C3 F3 78 */	mr r3, r30
/* 80CD1484  4B FF F9 AD */	bl getGameMotionNo__15daObj_Sekizoa_cFv
/* 80CD1488  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CD148C  41 80 00 2C */	blt lbl_80CD14B8
/* 80CD1490  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD1494  7C 1D 00 00 */	cmpw r29, r0
/* 80CD1498  41 82 00 20 */	beq lbl_80CD14B8
/* 80CD149C  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD14A0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD14A4  4B 47 43 F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD14A8  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD14AC  93 BE 0B 7C */	stw r29, 0xb7c(r30)
/* 80CD14B0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD14B4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80CD14B8:
/* 80CD14B8  38 00 00 05 */	li r0, 5
/* 80CD14BC  98 1E 11 74 */	stb r0, 0x1174(r30)
lbl_80CD14C0:
/* 80CD14C0  39 61 00 70 */	addi r11, r1, 0x70
/* 80CD14C4  4B 69 0D 61 */	bl _restgpr_28
/* 80CD14C8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CD14CC  7C 08 03 A6 */	mtlr r0
/* 80CD14D0  38 21 00 70 */	addi r1, r1, 0x70
/* 80CD14D4  4E 80 00 20 */	blr 
