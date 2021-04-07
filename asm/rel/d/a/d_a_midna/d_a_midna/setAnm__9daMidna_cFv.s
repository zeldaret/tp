lbl_804C103C:
/* 804C103C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804C1040  7C 08 02 A6 */	mflr r0
/* 804C1044  90 01 00 94 */	stw r0, 0x94(r1)
/* 804C1048  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804C104C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804C1050  39 61 00 80 */	addi r11, r1, 0x80
/* 804C1054  4B EA 11 65 */	bl _savegpr_20
/* 804C1058  7C 7F 1B 78 */	mr r31, r3
/* 804C105C  3C 80 80 4C */	lis r4, lit_3777@ha /* 0x804C64C8@ha */
/* 804C1060  3B A4 64 C8 */	addi r29, r4, lit_3777@l /* 0x804C64C8@l */
/* 804C1064  80 A3 08 90 */	lwz r5, 0x890(r3)
/* 804C1068  3C 80 DF E0 */	lis r4, 0xDFE0 /* 0xDFDFFFFF@ha */
/* 804C106C  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0xDFDFFFFF@l */
/* 804C1070  7C A0 00 38 */	and r0, r5, r0
/* 804C1074  90 03 08 90 */	stw r0, 0x890(r3)
/* 804C1078  4B FF F1 C1 */	bl setDemoAnm__9daMidna_cFv
/* 804C107C  2C 03 00 00 */	cmpwi r3, 0
/* 804C1080  40 82 17 DC */	bne lbl_804C285C
/* 804C1084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C1088  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C108C  83 19 5D B4 */	lwz r24, 0x5db4(r25)
/* 804C1090  88 19 4F AD */	lbz r0, 0x4fad(r25)
/* 804C1094  28 00 00 00 */	cmplwi r0, 0
/* 804C1098  40 82 00 10 */	bne lbl_804C10A8
/* 804C109C  80 1F 08 98 */	lwz r0, 0x898(r31)
/* 804C10A0  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804C10A4  41 82 00 0C */	beq lbl_804C10B0
lbl_804C10A8:
/* 804C10A8  3A A0 00 01 */	li r21, 1
/* 804C10AC  48 00 00 08 */	b lbl_804C10B4
lbl_804C10B0:
/* 804C10B0  3A A0 00 00 */	li r21, 0
lbl_804C10B4:
/* 804C10B4  3A 80 00 00 */	li r20, 0
/* 804C10B8  3B 80 00 01 */	li r28, 1
/* 804C10BC  3B 40 00 00 */	li r26, 0
/* 804C10C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C10C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C10C8  3B 63 00 28 */	addi r27, r3, 0x28
/* 804C10CC  7F 63 DB 78 */	mr r3, r27
/* 804C10D0  38 80 00 03 */	li r4, 3
/* 804C10D4  4B B7 1B 19 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 804C10D8  2C 03 00 00 */	cmpwi r3, 0
/* 804C10DC  41 82 00 24 */	beq lbl_804C1100
/* 804C10E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C10E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C10E8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804C10EC  38 80 1E 08 */	li r4, 0x1e08
/* 804C10F0  4B B7 38 CD */	bl isEventBit__11dSv_event_cCFUs
/* 804C10F4  2C 03 00 00 */	cmpwi r3, 0
/* 804C10F8  40 82 00 08 */	bne lbl_804C1100
/* 804C10FC  3B 40 00 01 */	li r26, 1
lbl_804C1100:
/* 804C1100  88 78 2F 9B */	lbz r3, 0x2f9b(r24)
/* 804C1104  28 03 00 06 */	cmplwi r3, 6
/* 804C1108  40 82 00 34 */	bne lbl_804C113C
/* 804C110C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1110  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804C1114  40 82 00 28 */	bne lbl_804C113C
/* 804C1118  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 804C111C  38 00 00 0E */	li r0, 0xe
/* 804C1120  41 82 00 08 */	beq lbl_804C1128
/* 804C1124  38 00 00 1E */	li r0, 0x1e
lbl_804C1128:
/* 804C1128  7C 1E 03 78 */	mr r30, r0
/* 804C112C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1130  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 804C1134  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1138  48 00 08 AC */	b lbl_804C19E4
lbl_804C113C:
/* 804C113C  28 03 00 07 */	cmplwi r3, 7
/* 804C1140  40 82 00 38 */	bne lbl_804C1178
/* 804C1144  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1148  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804C114C  40 82 00 2C */	bne lbl_804C1178
/* 804C1150  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 804C1154  41 82 00 0C */	beq lbl_804C1160
/* 804C1158  3B C0 00 1E */	li r30, 0x1e
/* 804C115C  48 00 00 0C */	b lbl_804C1168
lbl_804C1160:
/* 804C1160  3B C0 00 0F */	li r30, 0xf
/* 804C1164  3A 80 00 01 */	li r20, 1
lbl_804C1168:
/* 804C1168  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C116C  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 804C1170  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1174  48 00 08 70 */	b lbl_804C19E4
lbl_804C1178:
/* 804C1178  28 03 00 0A */	cmplwi r3, 0xa
/* 804C117C  40 82 00 70 */	bne lbl_804C11EC
/* 804C1180  3A 80 00 01 */	li r20, 1
/* 804C1184  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C1188  A0 03 01 D4 */	lhz r0, 0x1d4(r3)
/* 804C118C  A0 9F 05 E4 */	lhz r4, 0x5e4(r31)
/* 804C1190  7C 00 20 40 */	cmplw r0, r4
/* 804C1194  41 82 00 48 */	beq lbl_804C11DC
/* 804C1198  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C119C  38 A0 00 01 */	li r5, 1
/* 804C11A0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C11A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C11A8  40 82 00 18 */	bne lbl_804C11C0
/* 804C11AC  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C11B0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C11B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C11B8  41 82 00 08 */	beq lbl_804C11C0
/* 804C11BC  38 A0 00 00 */	li r5, 0
lbl_804C11C0:
/* 804C11C0  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 804C11C4  41 82 00 20 */	beq lbl_804C11E4
/* 804C11C8  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C11CC  A0 63 01 C8 */	lhz r3, 0x1c8(r3)
/* 804C11D0  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804C11D4  7C 03 00 40 */	cmplw r3, r0
/* 804C11D8  40 82 00 0C */	bne lbl_804C11E4
lbl_804C11DC:
/* 804C11DC  3B C0 00 27 */	li r30, 0x27
/* 804C11E0  48 00 08 04 */	b lbl_804C19E4
lbl_804C11E4:
/* 804C11E4  3B C0 00 26 */	li r30, 0x26
/* 804C11E8  48 00 07 FC */	b lbl_804C19E4
lbl_804C11EC:
/* 804C11EC  28 03 00 0B */	cmplwi r3, 0xb
/* 804C11F0  40 82 00 B4 */	bne lbl_804C12A4
/* 804C11F4  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C11F8  A0 C3 01 EC */	lhz r6, 0x1ec(r3)
/* 804C11FC  A0 9F 05 E4 */	lhz r4, 0x5e4(r31)
/* 804C1200  7C 06 20 40 */	cmplw r6, r4
/* 804C1204  41 82 00 48 */	beq lbl_804C124C
/* 804C1208  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C120C  38 A0 00 01 */	li r5, 1
/* 804C1210  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C1214  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C1218  40 82 00 18 */	bne lbl_804C1230
/* 804C121C  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C1220  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C1224  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C1228  41 82 00 08 */	beq lbl_804C1230
/* 804C122C  38 A0 00 00 */	li r5, 0
lbl_804C1230:
/* 804C1230  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 804C1234  41 82 00 68 */	beq lbl_804C129C
/* 804C1238  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C123C  A0 63 01 E0 */	lhz r3, 0x1e0(r3)
/* 804C1240  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804C1244  7C 03 00 40 */	cmplw r3, r0
/* 804C1248  40 82 00 54 */	bne lbl_804C129C
lbl_804C124C:
/* 804C124C  3A 80 00 01 */	li r20, 1
/* 804C1250  3B C0 00 29 */	li r30, 0x29
/* 804C1254  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C1258  38 A0 00 01 */	li r5, 1
/* 804C125C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C1260  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C1264  40 82 00 18 */	bne lbl_804C127C
/* 804C1268  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C126C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C1270  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C1274  41 82 00 08 */	beq lbl_804C127C
/* 804C1278  38 A0 00 00 */	li r5, 0
lbl_804C127C:
/* 804C127C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 804C1280  41 82 07 64 */	beq lbl_804C19E4
/* 804C1284  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804C1288  7C 06 00 40 */	cmplw r6, r0
/* 804C128C  40 82 07 58 */	bne lbl_804C19E4
/* 804C1290  38 00 00 01 */	li r0, 1
/* 804C1294  B0 18 30 0E */	sth r0, 0x300e(r24)
/* 804C1298  48 00 07 4C */	b lbl_804C19E4
lbl_804C129C:
/* 804C129C  3B C0 00 28 */	li r30, 0x28
/* 804C12A0  48 00 07 44 */	b lbl_804C19E4
lbl_804C12A4:
/* 804C12A4  28 03 00 0C */	cmplwi r3, 0xc
/* 804C12A8  40 82 00 B4 */	bne lbl_804C135C
/* 804C12AC  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C12B0  A0 C3 02 04 */	lhz r6, 0x204(r3)
/* 804C12B4  A0 9F 05 E4 */	lhz r4, 0x5e4(r31)
/* 804C12B8  7C 06 20 40 */	cmplw r6, r4
/* 804C12BC  41 82 00 48 */	beq lbl_804C1304
/* 804C12C0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C12C4  38 A0 00 01 */	li r5, 1
/* 804C12C8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C12CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C12D0  40 82 00 18 */	bne lbl_804C12E8
/* 804C12D4  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C12D8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C12DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C12E0  41 82 00 08 */	beq lbl_804C12E8
/* 804C12E4  38 A0 00 00 */	li r5, 0
lbl_804C12E8:
/* 804C12E8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 804C12EC  41 82 00 68 */	beq lbl_804C1354
/* 804C12F0  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C12F4  A0 63 01 F8 */	lhz r3, 0x1f8(r3)
/* 804C12F8  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804C12FC  7C 03 00 40 */	cmplw r3, r0
/* 804C1300  40 82 00 54 */	bne lbl_804C1354
lbl_804C1304:
/* 804C1304  3A 80 00 01 */	li r20, 1
/* 804C1308  3B C0 00 2B */	li r30, 0x2b
/* 804C130C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C1310  38 A0 00 01 */	li r5, 1
/* 804C1314  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C1318  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C131C  40 82 00 18 */	bne lbl_804C1334
/* 804C1320  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C1324  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C1328  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C132C  41 82 00 08 */	beq lbl_804C1334
/* 804C1330  38 A0 00 00 */	li r5, 0
lbl_804C1334:
/* 804C1334  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 804C1338  41 82 06 AC */	beq lbl_804C19E4
/* 804C133C  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804C1340  7C 06 00 40 */	cmplw r6, r0
/* 804C1344  40 82 06 A0 */	bne lbl_804C19E4
/* 804C1348  38 00 00 01 */	li r0, 1
/* 804C134C  B0 18 30 0E */	sth r0, 0x300e(r24)
/* 804C1350  48 00 06 94 */	b lbl_804C19E4
lbl_804C1354:
/* 804C1354  3B C0 00 2A */	li r30, 0x2a
/* 804C1358  48 00 06 8C */	b lbl_804C19E4
lbl_804C135C:
/* 804C135C  80 7F 08 C0 */	lwz r3, 0x8c0(r31)
/* 804C1360  28 03 00 09 */	cmplwi r3, 9
/* 804C1364  40 82 00 18 */	bne lbl_804C137C
/* 804C1368  3B C0 00 14 */	li r30, 0x14
/* 804C136C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1370  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 804C1374  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1378  48 00 06 6C */	b lbl_804C19E4
lbl_804C137C:
/* 804C137C  28 03 00 15 */	cmplwi r3, 0x15
/* 804C1380  40 82 00 18 */	bne lbl_804C1398
/* 804C1384  3B C0 00 25 */	li r30, 0x25
/* 804C1388  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C138C  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 804C1390  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1394  48 00 06 50 */	b lbl_804C19E4
lbl_804C1398:
/* 804C1398  28 03 00 0D */	cmplwi r3, 0xd
/* 804C139C  41 82 00 0C */	beq lbl_804C13A8
/* 804C13A0  28 03 00 0C */	cmplwi r3, 0xc
/* 804C13A4  40 82 00 1C */	bne lbl_804C13C0
lbl_804C13A8:
/* 804C13A8  3B C0 00 09 */	li r30, 9
/* 804C13AC  3A 80 00 01 */	li r20, 1
/* 804C13B0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C13B4  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 804C13B8  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C13BC  48 00 06 28 */	b lbl_804C19E4
lbl_804C13C0:
/* 804C13C0  28 03 00 11 */	cmplwi r3, 0x11
/* 804C13C4  40 82 00 18 */	bne lbl_804C13DC
/* 804C13C8  3B C0 00 22 */	li r30, 0x22
/* 804C13CC  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C13D0  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 804C13D4  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C13D8  48 00 06 0C */	b lbl_804C19E4
lbl_804C13DC:
/* 804C13DC  28 03 00 12 */	cmplwi r3, 0x12
/* 804C13E0  40 82 00 18 */	bne lbl_804C13F8
/* 804C13E4  3B C0 00 23 */	li r30, 0x23
/* 804C13E8  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C13EC  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 804C13F0  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C13F4  48 00 05 F0 */	b lbl_804C19E4
lbl_804C13F8:
/* 804C13F8  28 03 00 08 */	cmplwi r3, 8
/* 804C13FC  40 82 00 0C */	bne lbl_804C1408
/* 804C1400  3B C0 00 13 */	li r30, 0x13
/* 804C1404  48 00 05 E0 */	b lbl_804C19E4
lbl_804C1408:
/* 804C1408  28 03 00 07 */	cmplwi r3, 7
/* 804C140C  41 82 00 24 */	beq lbl_804C1430
/* 804C1410  28 03 00 06 */	cmplwi r3, 6
/* 804C1414  41 82 00 1C */	beq lbl_804C1430
/* 804C1418  28 03 00 13 */	cmplwi r3, 0x13
/* 804C141C  41 82 00 14 */	beq lbl_804C1430
/* 804C1420  28 03 00 14 */	cmplwi r3, 0x14
/* 804C1424  41 82 00 0C */	beq lbl_804C1430
/* 804C1428  28 03 00 0E */	cmplwi r3, 0xe
/* 804C142C  40 82 00 1C */	bne lbl_804C1448
lbl_804C1430:
/* 804C1430  3B C0 00 08 */	li r30, 8
/* 804C1434  3A A0 00 01 */	li r21, 1
/* 804C1438  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C143C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C1440  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1444  48 00 05 A0 */	b lbl_804C19E4
lbl_804C1448:
/* 804C1448  28 03 00 05 */	cmplwi r3, 5
/* 804C144C  40 82 00 24 */	bne lbl_804C1470
/* 804C1450  C0 3F 08 DC */	lfs f1, 0x8dc(r31)
/* 804C1454  C0 1D 04 64 */	lfs f0, 0x464(r29)
/* 804C1458  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C145C  40 81 00 0C */	ble lbl_804C1468
/* 804C1460  3B C0 00 1C */	li r30, 0x1c
/* 804C1464  48 00 05 80 */	b lbl_804C19E4
lbl_804C1468:
/* 804C1468  3B C0 00 12 */	li r30, 0x12
/* 804C146C  48 00 05 78 */	b lbl_804C19E4
lbl_804C1470:
/* 804C1470  28 03 00 0F */	cmplwi r3, 0xf
/* 804C1474  40 82 00 10 */	bne lbl_804C1484
/* 804C1478  3B C0 00 1C */	li r30, 0x1c
/* 804C147C  3A 80 00 01 */	li r20, 1
/* 804C1480  48 00 05 64 */	b lbl_804C19E4
lbl_804C1484:
/* 804C1484  38 00 00 00 */	li r0, 0
/* 804C1488  88 9F 08 4E */	lbz r4, 0x84e(r31)
/* 804C148C  28 04 00 03 */	cmplwi r4, 3
/* 804C1490  41 82 00 14 */	beq lbl_804C14A4
/* 804C1494  28 04 00 04 */	cmplwi r4, 4
/* 804C1498  41 82 00 0C */	beq lbl_804C14A4
/* 804C149C  28 04 00 02 */	cmplwi r4, 2
/* 804C14A0  40 82 00 08 */	bne lbl_804C14A8
lbl_804C14A4:
/* 804C14A4  38 00 00 01 */	li r0, 1
lbl_804C14A8:
/* 804C14A8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804C14AC  41 82 00 10 */	beq lbl_804C14BC
/* 804C14B0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C14B4  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804C14B8  41 82 00 24 */	beq lbl_804C14DC
lbl_804C14BC:
/* 804C14BC  28 03 00 06 */	cmplwi r3, 6
/* 804C14C0  41 82 00 1C */	beq lbl_804C14DC
/* 804C14C4  28 03 00 03 */	cmplwi r3, 3
/* 804C14C8  41 82 00 14 */	beq lbl_804C14DC
/* 804C14CC  28 03 00 10 */	cmplwi r3, 0x10
/* 804C14D0  41 82 00 0C */	beq lbl_804C14DC
/* 804C14D4  28 03 00 04 */	cmplwi r3, 4
/* 804C14D8  40 82 00 6C */	bne lbl_804C1544
lbl_804C14DC:
/* 804C14DC  28 04 00 04 */	cmplwi r4, 4
/* 804C14E0  40 82 00 0C */	bne lbl_804C14EC
/* 804C14E4  3B C0 00 12 */	li r30, 0x12
/* 804C14E8  48 00 00 40 */	b lbl_804C1528
lbl_804C14EC:
/* 804C14EC  28 04 00 02 */	cmplwi r4, 2
/* 804C14F0  40 82 00 20 */	bne lbl_804C1510
/* 804C14F4  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C14F8  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 804C14FC  41 82 00 0C */	beq lbl_804C1508
/* 804C1500  3B C0 00 11 */	li r30, 0x11
/* 804C1504  48 00 00 24 */	b lbl_804C1528
lbl_804C1508:
/* 804C1508  3B C0 00 10 */	li r30, 0x10
/* 804C150C  48 00 00 1C */	b lbl_804C1528
lbl_804C1510:
/* 804C1510  80 1F 08 98 */	lwz r0, 0x898(r31)
/* 804C1514  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C1518  41 82 00 0C */	beq lbl_804C1524
/* 804C151C  3B C0 00 1B */	li r30, 0x1b
/* 804C1520  48 00 00 08 */	b lbl_804C1528
lbl_804C1524:
/* 804C1524  3B C0 00 08 */	li r30, 8
lbl_804C1528:
/* 804C1528  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 804C152C  38 00 EF FE */	li r0, -4098
/* 804C1530  7C 60 00 38 */	and r0, r3, r0
/* 804C1534  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1538  3A A0 00 01 */	li r21, 1
/* 804C153C  3A 80 00 01 */	li r20, 1
/* 804C1540  48 00 04 A4 */	b lbl_804C19E4
lbl_804C1544:
/* 804C1544  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 804C1548  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 804C154C  41 82 00 60 */	beq lbl_804C15AC
/* 804C1550  3A 80 00 01 */	li r20, 1
/* 804C1554  3B C0 00 09 */	li r30, 9
/* 804C1558  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C155C  38 80 00 01 */	li r4, 1
/* 804C1560  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C1564  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C1568  40 82 00 18 */	bne lbl_804C1580
/* 804C156C  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C1570  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C1574  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C1578  41 82 00 08 */	beq lbl_804C1580
/* 804C157C  38 80 00 00 */	li r4, 0
lbl_804C1580:
/* 804C1580  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804C1584  41 82 04 60 */	beq lbl_804C19E4
/* 804C1588  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C158C  A0 63 00 6C */	lhz r3, 0x6c(r3)
/* 804C1590  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C1594  7C 03 00 40 */	cmplw r3, r0
/* 804C1598  40 82 04 4C */	bne lbl_804C19E4
/* 804C159C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C15A0  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 804C15A4  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C15A8  48 00 04 3C */	b lbl_804C19E4
lbl_804C15AC:
/* 804C15AC  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 804C15B0  41 82 00 88 */	beq lbl_804C1638
/* 804C15B4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C15B8  38 80 00 01 */	li r4, 1
/* 804C15BC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C15C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C15C4  40 82 00 18 */	bne lbl_804C15DC
/* 804C15C8  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C15CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C15D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C15D4  41 82 00 08 */	beq lbl_804C15DC
/* 804C15D8  38 80 00 00 */	li r4, 0
lbl_804C15DC:
/* 804C15DC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804C15E0  41 82 00 18 */	beq lbl_804C15F8
/* 804C15E4  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C15E8  A0 63 00 54 */	lhz r3, 0x54(r3)
/* 804C15EC  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C15F0  7C 03 00 40 */	cmplw r3, r0
/* 804C15F4  41 82 00 28 */	beq lbl_804C161C
lbl_804C15F8:
/* 804C15F8  38 9D 01 1C */	addi r4, r29, 0x11c
/* 804C15FC  A0 64 00 78 */	lhz r3, 0x78(r4)
/* 804C1600  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C1604  7C 03 00 40 */	cmplw r3, r0
/* 804C1608  41 82 00 14 */	beq lbl_804C161C
/* 804C160C  A0 64 00 60 */	lhz r3, 0x60(r4)
/* 804C1610  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804C1614  7C 03 00 40 */	cmplw r3, r0
/* 804C1618  40 82 00 18 */	bne lbl_804C1630
lbl_804C161C:
/* 804C161C  3B C0 00 08 */	li r30, 8
/* 804C1620  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1624  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 804C1628  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C162C  48 00 03 B8 */	b lbl_804C19E4
lbl_804C1630:
/* 804C1630  3B C0 00 07 */	li r30, 7
/* 804C1634  48 00 03 B0 */	b lbl_804C19E4
lbl_804C1638:
/* 804C1638  70 60 05 00 */	andi. r0, r3, 0x500
/* 804C163C  41 82 00 0C */	beq lbl_804C1648
/* 804C1640  3B C0 00 06 */	li r30, 6
/* 804C1644  48 00 03 A0 */	b lbl_804C19E4
lbl_804C1648:
/* 804C1648  80 1F 09 D0 */	lwz r0, 0x9d0(r31)
/* 804C164C  28 00 00 00 */	cmplwi r0, 0
/* 804C1650  41 82 00 9C */	beq lbl_804C16EC
/* 804C1654  38 79 4F F8 */	addi r3, r25, 0x4ff8
/* 804C1658  4B B8 71 D5 */	bl checkStartDemo__16dEvent_manager_cFv
/* 804C165C  2C 03 00 00 */	cmpwi r3, 0
/* 804C1660  41 82 00 18 */	beq lbl_804C1678
/* 804C1664  3B C0 00 01 */	li r30, 1
/* 804C1668  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C166C  64 00 04 00 */	oris r0, r0, 0x400
/* 804C1670  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1674  48 00 03 70 */	b lbl_804C19E4
lbl_804C1678:
/* 804C1678  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C167C  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 804C1680  41 82 00 58 */	beq lbl_804C16D8
/* 804C1684  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C1688  38 80 00 01 */	li r4, 1
/* 804C168C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C1690  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C1694  40 82 00 18 */	bne lbl_804C16AC
/* 804C1698  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C169C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C16A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C16A4  41 82 00 08 */	beq lbl_804C16AC
/* 804C16A8  38 80 00 00 */	li r4, 0
lbl_804C16AC:
/* 804C16AC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804C16B0  40 82 00 18 */	bne lbl_804C16C8
/* 804C16B4  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C16B8  A0 63 00 0C */	lhz r3, 0xc(r3)
/* 804C16BC  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C16C0  7C 03 00 40 */	cmplw r3, r0
/* 804C16C4  40 82 00 0C */	bne lbl_804C16D0
lbl_804C16C8:
/* 804C16C8  3B C0 00 01 */	li r30, 1
/* 804C16CC  48 00 03 18 */	b lbl_804C19E4
lbl_804C16D0:
/* 804C16D0  3B C0 00 09 */	li r30, 9
/* 804C16D4  48 00 03 10 */	b lbl_804C19E4
lbl_804C16D8:
/* 804C16D8  3B C0 00 09 */	li r30, 9
/* 804C16DC  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C16E0  64 00 04 00 */	oris r0, r0, 0x400
/* 804C16E4  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C16E8  48 00 02 FC */	b lbl_804C19E4
lbl_804C16EC:
/* 804C16EC  3B 80 00 00 */	li r28, 0
/* 804C16F0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C16F4  54 00 01 88 */	rlwinm r0, r0, 0, 6, 4
/* 804C16F8  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C16FC  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 804C1700  40 82 00 44 */	bne lbl_804C1744
/* 804C1704  88 9F 08 48 */	lbz r4, 0x848(r31)
/* 804C1708  28 04 00 1F */	cmplwi r4, 0x1f
/* 804C170C  41 80 00 38 */	blt lbl_804C1744
/* 804C1710  28 04 00 28 */	cmplwi r4, 0x28
/* 804C1714  40 80 00 30 */	bge lbl_804C1744
/* 804C1718  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C171C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804C1720  40 82 00 24 */	bne lbl_804C1744
/* 804C1724  38 7D 04 80 */	addi r3, r29, 0x480
/* 804C1728  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 804C172C  7C 63 02 14 */	add r3, r3, r0
/* 804C1730  83 C3 FF 84 */	lwz r30, -0x7c(r3)
/* 804C1734  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1738  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 804C173C  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1740  48 00 02 A4 */	b lbl_804C19E4
lbl_804C1744:
/* 804C1744  80 18 05 74 */	lwz r0, 0x574(r24)
/* 804C1748  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 804C174C  41 82 00 74 */	beq lbl_804C17C0
/* 804C1750  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 804C1754  40 82 00 6C */	bne lbl_804C17C0
/* 804C1758  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C175C  38 80 00 01 */	li r4, 1
/* 804C1760  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C1764  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C1768  40 82 00 18 */	bne lbl_804C1780
/* 804C176C  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C1770  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C1774  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C1778  41 82 00 08 */	beq lbl_804C1780
/* 804C177C  38 80 00 00 */	li r4, 0
lbl_804C1780:
/* 804C1780  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804C1784  41 82 00 18 */	beq lbl_804C179C
/* 804C1788  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C178C  A0 63 00 84 */	lhz r3, 0x84(r3)
/* 804C1790  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C1794  7C 03 00 40 */	cmplw r3, r0
/* 804C1798  41 82 00 18 */	beq lbl_804C17B0
lbl_804C179C:
/* 804C179C  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C17A0  A0 63 00 0C */	lhz r3, 0xc(r3)
/* 804C17A4  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C17A8  7C 03 00 40 */	cmplw r3, r0
/* 804C17AC  40 82 00 0C */	bne lbl_804C17B8
lbl_804C17B0:
/* 804C17B0  3B C0 00 01 */	li r30, 1
/* 804C17B4  48 00 02 30 */	b lbl_804C19E4
lbl_804C17B8:
/* 804C17B8  3B C0 00 0B */	li r30, 0xb
/* 804C17BC  48 00 02 28 */	b lbl_804C19E4
lbl_804C17C0:
/* 804C17C0  7F 03 C3 78 */	mr r3, r24
/* 804C17C4  4B C7 59 DD */	bl checkMidnaDisappearMode__9daAlink_cCFv
/* 804C17C8  2C 03 00 00 */	cmpwi r3, 0
/* 804C17CC  40 82 00 18 */	bne lbl_804C17E4
/* 804C17D0  88 18 2F 9B */	lbz r0, 0x2f9b(r24)
/* 804C17D4  28 00 00 0D */	cmplwi r0, 0xd
/* 804C17D8  40 82 00 6C */	bne lbl_804C1844
/* 804C17DC  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 804C17E0  40 82 00 64 */	bne lbl_804C1844
lbl_804C17E4:
/* 804C17E4  3A C0 00 01 */	li r22, 1
/* 804C17E8  4B CE AD 95 */	bl dKy_darkworld_check__Fv
/* 804C17EC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804C17F0  28 00 00 01 */	cmplwi r0, 1
/* 804C17F4  41 82 00 1C */	beq lbl_804C1810
/* 804C17F8  7F 63 DB 78 */	mr r3, r27
/* 804C17FC  38 80 00 03 */	li r4, 3
/* 804C1800  4B B7 13 ED */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 804C1804  2C 03 00 00 */	cmpwi r3, 0
/* 804C1808  40 82 00 08 */	bne lbl_804C1810
/* 804C180C  3A C0 00 00 */	li r22, 0
lbl_804C1810:
/* 804C1810  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 804C1814  41 82 00 30 */	beq lbl_804C1844
/* 804C1818  3B C0 00 1C */	li r30, 0x1c
/* 804C181C  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C1820  A0 63 01 50 */	lhz r3, 0x150(r3)
/* 804C1824  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C1828  7C 03 00 40 */	cmplw r3, r0
/* 804C182C  41 82 00 10 */	beq lbl_804C183C
/* 804C1830  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1834  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 804C1838  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804C183C:
/* 804C183C  3A 80 00 01 */	li r20, 1
/* 804C1840  48 00 01 A4 */	b lbl_804C19E4
lbl_804C1844:
/* 804C1844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C1848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C184C  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 804C1850  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 804C1854  41 82 00 18 */	beq lbl_804C186C
/* 804C1858  3B C0 00 00 */	li r30, 0
/* 804C185C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1860  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C1864  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1868  48 00 01 7C */	b lbl_804C19E4
lbl_804C186C:
/* 804C186C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 804C1870  41 82 00 38 */	beq lbl_804C18A8
/* 804C1874  88 18 2F 9B */	lbz r0, 0x2f9b(r24)
/* 804C1878  28 00 00 0D */	cmplwi r0, 0xd
/* 804C187C  40 82 00 0C */	bne lbl_804C1888
/* 804C1880  3B C0 00 21 */	li r30, 0x21
/* 804C1884  48 00 01 60 */	b lbl_804C19E4
lbl_804C1888:
/* 804C1888  28 00 00 01 */	cmplwi r0, 1
/* 804C188C  41 82 00 0C */	beq lbl_804C1898
/* 804C1890  28 00 00 02 */	cmplwi r0, 2
/* 804C1894  40 82 00 0C */	bne lbl_804C18A0
lbl_804C1898:
/* 804C1898  3B C0 00 1E */	li r30, 0x1e
/* 804C189C  48 00 01 48 */	b lbl_804C19E4
lbl_804C18A0:
/* 804C18A0  3B C0 00 1D */	li r30, 0x1d
/* 804C18A4  48 00 01 40 */	b lbl_804C19E4
lbl_804C18A8:
/* 804C18A8  88 18 2F 9B */	lbz r0, 0x2f9b(r24)
/* 804C18AC  28 00 00 03 */	cmplwi r0, 3
/* 804C18B0  40 82 00 70 */	bne lbl_804C1920
/* 804C18B4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C18B8  38 80 00 01 */	li r4, 1
/* 804C18BC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C18C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C18C4  40 82 00 18 */	bne lbl_804C18DC
/* 804C18C8  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C18CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C18D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C18D4  41 82 00 08 */	beq lbl_804C18DC
/* 804C18D8  38 80 00 00 */	li r4, 0
lbl_804C18DC:
/* 804C18DC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804C18E0  41 82 00 18 */	beq lbl_804C18F8
/* 804C18E4  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C18E8  A0 63 01 08 */	lhz r3, 0x108(r3)
/* 804C18EC  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C18F0  7C 03 00 40 */	cmplw r3, r0
/* 804C18F4  41 82 00 18 */	beq lbl_804C190C
lbl_804C18F8:
/* 804C18F8  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C18FC  A0 63 00 90 */	lhz r3, 0x90(r3)
/* 804C1900  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C1904  7C 03 00 40 */	cmplw r3, r0
/* 804C1908  40 82 00 10 */	bne lbl_804C1918
lbl_804C190C:
/* 804C190C  3B C0 00 0C */	li r30, 0xc
/* 804C1910  3A 80 00 01 */	li r20, 1
/* 804C1914  48 00 00 D0 */	b lbl_804C19E4
lbl_804C1918:
/* 804C1918  3B C0 00 16 */	li r30, 0x16
/* 804C191C  48 00 00 C8 */	b lbl_804C19E4
lbl_804C1920:
/* 804C1920  28 00 00 08 */	cmplwi r0, 8
/* 804C1924  40 82 00 0C */	bne lbl_804C1930
/* 804C1928  3B C0 00 1F */	li r30, 0x1f
/* 804C192C  48 00 00 B8 */	b lbl_804C19E4
lbl_804C1930:
/* 804C1930  28 00 00 09 */	cmplwi r0, 9
/* 804C1934  40 82 00 0C */	bne lbl_804C1940
/* 804C1938  3B C0 00 20 */	li r30, 0x20
/* 804C193C  48 00 00 A8 */	b lbl_804C19E4
lbl_804C1940:
/* 804C1940  28 00 00 01 */	cmplwi r0, 1
/* 804C1944  40 82 00 0C */	bne lbl_804C1950
/* 804C1948  3B C0 00 01 */	li r30, 1
/* 804C194C  48 00 00 98 */	b lbl_804C19E4
lbl_804C1950:
/* 804C1950  28 00 00 02 */	cmplwi r0, 2
/* 804C1954  40 82 00 0C */	bne lbl_804C1960
/* 804C1958  3B C0 00 02 */	li r30, 2
/* 804C195C  48 00 00 88 */	b lbl_804C19E4
lbl_804C1960:
/* 804C1960  28 00 00 05 */	cmplwi r0, 5
/* 804C1964  41 82 00 10 */	beq lbl_804C1974
/* 804C1968  80 1F 08 98 */	lwz r0, 0x898(r31)
/* 804C196C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804C1970  41 82 00 18 */	beq lbl_804C1988
lbl_804C1974:
/* 804C1974  3B C0 00 04 */	li r30, 4
/* 804C1978  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C197C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C1980  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1984  48 00 00 60 */	b lbl_804C19E4
lbl_804C1988:
/* 804C1988  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C198C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C1990  40 82 00 50 */	bne lbl_804C19E0
/* 804C1994  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C1998  A0 63 00 90 */	lhz r3, 0x90(r3)
/* 804C199C  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C19A0  7C 03 00 40 */	cmplw r3, r0
/* 804C19A4  40 82 00 3C */	bne lbl_804C19E0
/* 804C19A8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C19AC  38 80 00 01 */	li r4, 1
/* 804C19B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804C19B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C19B8  40 82 00 18 */	bne lbl_804C19D0
/* 804C19BC  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C19C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804C19C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C19C8  41 82 00 08 */	beq lbl_804C19D0
/* 804C19CC  38 80 00 00 */	li r4, 0
lbl_804C19D0:
/* 804C19D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804C19D4  40 82 00 0C */	bne lbl_804C19E0
/* 804C19D8  3B C0 00 0C */	li r30, 0xc
/* 804C19DC  48 00 00 08 */	b lbl_804C19E4
lbl_804C19E0:
/* 804C19E0  3B C0 00 00 */	li r30, 0
lbl_804C19E4:
/* 804C19E4  2C 1E 00 00 */	cmpwi r30, 0
/* 804C19E8  41 82 00 20 */	beq lbl_804C1A08
/* 804C19EC  2C 1E 00 08 */	cmpwi r30, 8
/* 804C19F0  41 82 00 18 */	beq lbl_804C1A08
/* 804C19F4  2C 1E 00 04 */	cmpwi r30, 4
/* 804C19F8  41 82 00 10 */	beq lbl_804C1A08
/* 804C19FC  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1A00  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C1A04  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804C1A08:
/* 804C1A08  2C 1E 00 00 */	cmpwi r30, 0
/* 804C1A0C  41 82 00 14 */	beq lbl_804C1A20
/* 804C1A10  2C 1E 00 03 */	cmpwi r30, 3
/* 804C1A14  41 82 00 0C */	beq lbl_804C1A20
/* 804C1A18  2C 1E 00 05 */	cmpwi r30, 5
/* 804C1A1C  40 82 00 14 */	bne lbl_804C1A30
lbl_804C1A20:
/* 804C1A20  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1A24  60 00 00 04 */	ori r0, r0, 4
/* 804C1A28  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1A2C  48 00 00 10 */	b lbl_804C1A3C
lbl_804C1A30:
/* 804C1A30  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1A34  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 804C1A38  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804C1A3C:
/* 804C1A3C  A3 7F 05 F8 */	lhz r27, 0x5f8(r31)
/* 804C1A40  1F 5E 00 0C */	mulli r26, r30, 0xc
/* 804C1A44  3A FD 01 1C */	addi r23, r29, 0x11c
/* 804C1A48  7C 77 D2 2E */	lhzx r3, r23, r26
/* 804C1A4C  7C 76 1B 78 */	mr r22, r3
/* 804C1A50  A0 9F 05 E8 */	lhz r4, 0x5e8(r31)
/* 804C1A54  28 04 FF FF */	cmplwi r4, 0xffff
/* 804C1A58  40 82 00 44 */	bne lbl_804C1A9C
/* 804C1A5C  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C1A60  7C 03 00 40 */	cmplw r3, r0
/* 804C1A64  41 82 04 F0 */	beq lbl_804C1F54
/* 804C1A68  88 1F 08 48 */	lbz r0, 0x848(r31)
/* 804C1A6C  28 00 00 00 */	cmplwi r0, 0
/* 804C1A70  40 82 00 2C */	bne lbl_804C1A9C
/* 804C1A74  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1A78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C1A7C  41 82 00 20 */	beq lbl_804C1A9C
/* 804C1A80  2C 1E 00 00 */	cmpwi r30, 0
/* 804C1A84  40 82 00 10 */	bne lbl_804C1A94
/* 804C1A88  88 19 4F AD */	lbz r0, 0x4fad(r25)
/* 804C1A8C  28 00 00 00 */	cmplwi r0, 0
/* 804C1A90  41 82 04 C4 */	beq lbl_804C1F54
lbl_804C1A94:
/* 804C1A94  2C 1E 00 08 */	cmpwi r30, 8
/* 804C1A98  41 82 04 BC */	beq lbl_804C1F54
lbl_804C1A9C:
/* 804C1A9C  28 04 FF FF */	cmplwi r4, 0xffff
/* 804C1AA0  41 82 00 1C */	beq lbl_804C1ABC
/* 804C1AA4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C1AA8  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C1AAC  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 804C1AB0  B0 1F 05 E4 */	sth r0, 0x5e4(r31)
/* 804C1AB4  B0 1F 05 FC */	sth r0, 0x5fc(r31)
/* 804C1AB8  B0 1F 05 F8 */	sth r0, 0x5f8(r31)
lbl_804C1ABC:
/* 804C1ABC  2C 1E 00 10 */	cmpwi r30, 0x10
/* 804C1AC0  41 82 00 0C */	beq lbl_804C1ACC
/* 804C1AC4  2C 1E 00 11 */	cmpwi r30, 0x11
/* 804C1AC8  40 82 00 30 */	bne lbl_804C1AF8
lbl_804C1ACC:
/* 804C1ACC  3C 00 00 06 */	lis r0, 6
/* 804C1AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C1AD4  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 804C1AD8  38 81 00 14 */	addi r4, r1, 0x14
/* 804C1ADC  38 A0 00 00 */	li r5, 0
/* 804C1AE0  38 C0 FF FF */	li r6, -1
/* 804C1AE4  81 9F 06 FC */	lwz r12, 0x6fc(r31)
/* 804C1AE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804C1AEC  7D 89 03 A6 */	mtctr r12
/* 804C1AF0  4E 80 04 21 */	bctrl 
/* 804C1AF4  48 00 00 40 */	b lbl_804C1B34
lbl_804C1AF8:
/* 804C1AF8  2C 1E 00 12 */	cmpwi r30, 0x12
/* 804C1AFC  41 82 00 0C */	beq lbl_804C1B08
/* 804C1B00  2C 1E 00 1C */	cmpwi r30, 0x1c
/* 804C1B04  40 82 00 30 */	bne lbl_804C1B34
lbl_804C1B08:
/* 804C1B08  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060001@ha */
/* 804C1B0C  38 03 00 01 */	addi r0, r3, 0x0001 /* 0x00060001@l */
/* 804C1B10  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C1B14  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 804C1B18  38 81 00 10 */	addi r4, r1, 0x10
/* 804C1B1C  38 A0 00 00 */	li r5, 0
/* 804C1B20  38 C0 FF FF */	li r6, -1
/* 804C1B24  81 9F 06 FC */	lwz r12, 0x6fc(r31)
/* 804C1B28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804C1B2C  7D 89 03 A6 */	mtctr r12
/* 804C1B30  4E 80 04 21 */	bctrl 
lbl_804C1B34:
/* 804C1B34  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1B38  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804C1B3C  41 82 00 10 */	beq lbl_804C1B4C
/* 804C1B40  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1B44  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804C1B48  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804C1B4C:
/* 804C1B4C  2C 14 00 00 */	cmpwi r20, 0
/* 804C1B50  40 82 00 10 */	bne lbl_804C1B60
/* 804C1B54  80 1F 08 98 */	lwz r0, 0x898(r31)
/* 804C1B58  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804C1B5C  41 82 00 0C */	beq lbl_804C1B68
lbl_804C1B60:
/* 804C1B60  C3 FD 00 B8 */	lfs f31, 0xb8(r29)
/* 804C1B64  48 00 00 08 */	b lbl_804C1B6C
lbl_804C1B68:
/* 804C1B68  C3 FD 04 A4 */	lfs f31, 0x4a4(r29)
lbl_804C1B6C:
/* 804C1B6C  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 804C1B70  7E C4 B3 78 */	mr r4, r22
/* 804C1B74  4B C9 D4 F5 */	bl loadDataIdx__14daPy_anmHeap_cFUs
/* 804C1B78  7C 64 1B 78 */	mr r4, r3
/* 804C1B7C  7F E3 FB 78 */	mr r3, r31
/* 804C1B80  38 A0 FF FF */	li r5, -1
/* 804C1B84  FC 20 F8 90 */	fmr f1, f31
/* 804C1B88  4B FF F3 9D */	bl setBckAnime__9daMidna_cFP15J3DAnmTransformif
/* 804C1B8C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1B90  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C1B94  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1B98  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1B9C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804C1BA0  41 82 00 24 */	beq lbl_804C1BC4
/* 804C1BA4  7F E3 FB 78 */	mr r3, r31
/* 804C1BA8  A0 9F 05 E4 */	lhz r4, 0x5e4(r31)
/* 804C1BAC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804C1BB0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804C1BB4  4B FF E3 CD */	bl setUpperAnime__9daMidna_cFUsUs
/* 804C1BB8  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1BBC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804C1BC0  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804C1BC4:
/* 804C1BC4  2C 1E 00 14 */	cmpwi r30, 0x14
/* 804C1BC8  40 82 01 CC */	bne lbl_804C1D94
/* 804C1BCC  80 79 5D B4 */	lwz r3, 0x5db4(r25)
/* 804C1BD0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804C1BD4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804C1BD8  41 82 00 3C */	beq lbl_804C1C14
/* 804C1BDC  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804C1BE0  54 04 C7 FE */	rlwinm r4, r0, 0x18, 0x1f, 0x1f
/* 804C1BE4  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A0@ha */
/* 804C1BE8  38 03 00 A0 */	addi r0, r3, 0x00A0 /* 0x000600A0@l */
/* 804C1BEC  7C 04 02 14 */	add r0, r4, r0
/* 804C1BF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C1BF4  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 804C1BF8  38 81 00 0C */	addi r4, r1, 0xc
/* 804C1BFC  38 A0 00 00 */	li r5, 0
/* 804C1C00  38 C0 FF FF */	li r6, -1
/* 804C1C04  81 9F 06 FC */	lwz r12, 0x6fc(r31)
/* 804C1C08  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804C1C0C  7D 89 03 A6 */	mtctr r12
/* 804C1C10  4E 80 04 21 */	bctrl 
lbl_804C1C14:
/* 804C1C14  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1C18  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 804C1C1C  40 82 03 28 */	bne lbl_804C1F44
/* 804C1C20  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804C1C24  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804C1C28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804C1C2C  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 804C1C30  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804C1C34  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 804C1C38  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804C1C3C  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 804C1C40  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804C1C44  38 61 00 38 */	addi r3, r1, 0x38
/* 804C1C48  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804C1C4C  4B E8 57 51 */	bl PSVECSquareDistance
/* 804C1C50  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 804C1C54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C1C58  40 81 00 58 */	ble lbl_804C1CB0
/* 804C1C5C  FC 00 08 34 */	frsqrte f0, f1
/* 804C1C60  C8 9D 04 48 */	lfd f4, 0x448(r29)
/* 804C1C64  FC 44 00 32 */	fmul f2, f4, f0
/* 804C1C68  C8 7D 04 50 */	lfd f3, 0x450(r29)
/* 804C1C6C  FC 00 00 32 */	fmul f0, f0, f0
/* 804C1C70  FC 01 00 32 */	fmul f0, f1, f0
/* 804C1C74  FC 03 00 28 */	fsub f0, f3, f0
/* 804C1C78  FC 02 00 32 */	fmul f0, f2, f0
/* 804C1C7C  FC 44 00 32 */	fmul f2, f4, f0
/* 804C1C80  FC 00 00 32 */	fmul f0, f0, f0
/* 804C1C84  FC 01 00 32 */	fmul f0, f1, f0
/* 804C1C88  FC 03 00 28 */	fsub f0, f3, f0
/* 804C1C8C  FC 02 00 32 */	fmul f0, f2, f0
/* 804C1C90  FC 44 00 32 */	fmul f2, f4, f0
/* 804C1C94  FC 00 00 32 */	fmul f0, f0, f0
/* 804C1C98  FC 01 00 32 */	fmul f0, f1, f0
/* 804C1C9C  FC 03 00 28 */	fsub f0, f3, f0
/* 804C1CA0  FC 02 00 32 */	fmul f0, f2, f0
/* 804C1CA4  FC 21 00 32 */	fmul f1, f1, f0
/* 804C1CA8  FC 20 08 18 */	frsp f1, f1
/* 804C1CAC  48 00 00 88 */	b lbl_804C1D34
lbl_804C1CB0:
/* 804C1CB0  C8 1D 04 58 */	lfd f0, 0x458(r29)
/* 804C1CB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C1CB8  40 80 00 10 */	bge lbl_804C1CC8
/* 804C1CBC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804C1CC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804C1CC4  48 00 00 70 */	b lbl_804C1D34
lbl_804C1CC8:
/* 804C1CC8  D0 21 00 08 */	stfs f1, 8(r1)
/* 804C1CCC  80 81 00 08 */	lwz r4, 8(r1)
/* 804C1CD0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804C1CD4  3C 00 7F 80 */	lis r0, 0x7f80
/* 804C1CD8  7C 03 00 00 */	cmpw r3, r0
/* 804C1CDC  41 82 00 14 */	beq lbl_804C1CF0
/* 804C1CE0  40 80 00 40 */	bge lbl_804C1D20
/* 804C1CE4  2C 03 00 00 */	cmpwi r3, 0
/* 804C1CE8  41 82 00 20 */	beq lbl_804C1D08
/* 804C1CEC  48 00 00 34 */	b lbl_804C1D20
lbl_804C1CF0:
/* 804C1CF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C1CF4  41 82 00 0C */	beq lbl_804C1D00
/* 804C1CF8  38 00 00 01 */	li r0, 1
/* 804C1CFC  48 00 00 28 */	b lbl_804C1D24
lbl_804C1D00:
/* 804C1D00  38 00 00 02 */	li r0, 2
/* 804C1D04  48 00 00 20 */	b lbl_804C1D24
lbl_804C1D08:
/* 804C1D08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C1D0C  41 82 00 0C */	beq lbl_804C1D18
/* 804C1D10  38 00 00 05 */	li r0, 5
/* 804C1D14  48 00 00 10 */	b lbl_804C1D24
lbl_804C1D18:
/* 804C1D18  38 00 00 03 */	li r0, 3
/* 804C1D1C  48 00 00 08 */	b lbl_804C1D24
lbl_804C1D20:
/* 804C1D20  38 00 00 04 */	li r0, 4
lbl_804C1D24:
/* 804C1D24  2C 00 00 01 */	cmpwi r0, 1
/* 804C1D28  40 82 00 0C */	bne lbl_804C1D34
/* 804C1D2C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804C1D30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804C1D34:
/* 804C1D34  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804C1D38  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804C1D3C  38 83 00 04 */	addi r4, r3, 4
/* 804C1D40  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 804C1D44  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804C1D48  7C 44 04 2E */	lfsx f2, r4, r0
/* 804C1D4C  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 804C1D50  EC 80 00 B2 */	fmuls f4, f0, f2
/* 804C1D54  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804C1D58  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804C1D5C  7C 04 04 2E */	lfsx f0, r4, r0
/* 804C1D60  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 804C1D64  EC 04 00 32 */	fmuls f0, f4, f0
/* 804C1D68  EC 62 00 2A */	fadds f3, f2, f0
/* 804C1D6C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804C1D70  EC 40 08 28 */	fsubs f2, f0, f1
/* 804C1D74  7C 03 04 2E */	lfsx f0, r3, r0
/* 804C1D78  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 804C1D7C  EC 04 00 32 */	fmuls f0, f4, f0
/* 804C1D80  EC 01 00 2A */	fadds f0, f1, f0
/* 804C1D84  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804C1D88  D0 5F 04 D4 */	stfs f2, 0x4d4(r31)
/* 804C1D8C  D0 7F 04 D8 */	stfs f3, 0x4d8(r31)
/* 804C1D90  48 00 01 B4 */	b lbl_804C1F44
lbl_804C1D94:
/* 804C1D94  2C 1E 00 12 */	cmpwi r30, 0x12
/* 804C1D98  40 82 01 20 */	bne lbl_804C1EB8
/* 804C1D9C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804C1DA0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804C1DA4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804C1DA8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804C1DAC  7C 03 04 2E */	lfsx f0, r3, r0
/* 804C1DB0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804C1DB4  C0 5D 03 DC */	lfs f2, 0x3dc(r29)
/* 804C1DB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C1DBC  EC 01 00 2A */	fadds f0, f1, f0
/* 804C1DC0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804C1DC4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804C1DC8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804C1DCC  7C 63 02 14 */	add r3, r3, r0
/* 804C1DD0  C0 03 00 04 */	lfs f0, 4(r3)
/* 804C1DD4  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 804C1DD8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C1DDC  EC 01 00 2A */	fadds f0, f1, f0
/* 804C1DE0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804C1DE4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 804C1DE8  3C 63 00 01 */	addis r3, r3, 1
/* 804C1DEC  38 03 80 00 */	addi r0, r3, -32768
/* 804C1DF0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 804C1DF4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804C1DF8  B0 1F 08 5A */	sth r0, 0x85a(r31)
/* 804C1DFC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804C1E00  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804C1E04  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C1E08  80 63 00 20 */	lwz r3, 0x20(r3)
/* 804C1E0C  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 804C1E10  EC 00 10 2A */	fadds f0, f0, f2
/* 804C1E14  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 804C1E18  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C1E1C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 804C1E20  C0 03 02 9C */	lfs f0, 0x29c(r3)
/* 804C1E24  EC 00 10 2A */	fadds f0, f0, f2
/* 804C1E28  D0 03 02 9C */	stfs f0, 0x29c(r3)
/* 804C1E2C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C1E30  80 63 00 24 */	lwz r3, 0x24(r3)
/* 804C1E34  3A 83 00 10 */	addi r20, r3, 0x10
/* 804C1E38  38 60 00 00 */	li r3, 0
/* 804C1E3C  38 80 80 00 */	li r4, -32768
/* 804C1E40  38 A0 00 00 */	li r5, 0
/* 804C1E44  38 C1 00 28 */	addi r6, r1, 0x28
/* 804C1E48  4B E7 7A 31 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 804C1E4C  C0 14 00 00 */	lfs f0, 0(r20)
/* 804C1E50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804C1E54  C0 14 00 04 */	lfs f0, 4(r20)
/* 804C1E58  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804C1E5C  C0 14 00 08 */	lfs f0, 8(r20)
/* 804C1E60  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804C1E64  C0 14 00 0C */	lfs f0, 0xc(r20)
/* 804C1E68  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C1E6C  38 61 00 28 */	addi r3, r1, 0x28
/* 804C1E70  38 81 00 18 */	addi r4, r1, 0x18
/* 804C1E74  7E 85 A3 78 */	mr r5, r20
/* 804C1E78  4B B4 AC E5 */	bl mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion
/* 804C1E7C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C1E80  80 63 00 24 */	lwz r3, 0x24(r3)
/* 804C1E84  38 A3 01 40 */	addi r5, r3, 0x140
/* 804C1E88  C0 03 01 40 */	lfs f0, 0x140(r3)
/* 804C1E8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804C1E90  C0 03 01 44 */	lfs f0, 0x144(r3)
/* 804C1E94  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804C1E98  C0 03 01 48 */	lfs f0, 0x148(r3)
/* 804C1E9C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804C1EA0  C0 03 01 4C */	lfs f0, 0x14c(r3)
/* 804C1EA4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C1EA8  38 61 00 28 */	addi r3, r1, 0x28
/* 804C1EAC  38 81 00 18 */	addi r4, r1, 0x18
/* 804C1EB0  4B B4 AC AD */	bl mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion
/* 804C1EB4  48 00 00 90 */	b lbl_804C1F44
lbl_804C1EB8:
/* 804C1EB8  2C 1E 00 0F */	cmpwi r30, 0xf
/* 804C1EBC  40 82 00 34 */	bne lbl_804C1EF0
/* 804C1EC0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C1EC4  80 63 00 20 */	lwz r3, 0x20(r3)
/* 804C1EC8  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 804C1ECC  D0 03 02 94 */	stfs f0, 0x294(r3)
/* 804C1ED0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 804C1ED4  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 804C1ED8  D0 03 02 98 */	stfs f0, 0x298(r3)
/* 804C1EDC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 804C1EE0  C0 1D 04 B4 */	lfs f0, 0x4b4(r29)
/* 804C1EE4  D0 03 02 9C */	stfs f0, 0x29c(r3)
/* 804C1EE8  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 804C1EEC  48 00 00 58 */	b lbl_804C1F44
lbl_804C1EF0:
/* 804C1EF0  2C 1E 00 09 */	cmpwi r30, 9
/* 804C1EF4  40 82 00 34 */	bne lbl_804C1F28
/* 804C1EF8  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 804C1EFC  28 00 00 0D */	cmplwi r0, 0xd
/* 804C1F00  41 82 00 28 */	beq lbl_804C1F28
/* 804C1F04  28 00 00 0C */	cmplwi r0, 0xc
/* 804C1F08  41 82 00 20 */	beq lbl_804C1F28
/* 804C1F0C  80 18 05 70 */	lwz r0, 0x570(r24)
/* 804C1F10  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804C1F14  41 82 00 30 */	beq lbl_804C1F44
/* 804C1F18  80 18 05 8C */	lwz r0, 0x58c(r24)
/* 804C1F1C  60 00 00 40 */	ori r0, r0, 0x40
/* 804C1F20  90 18 05 8C */	stw r0, 0x58c(r24)
/* 804C1F24  48 00 00 20 */	b lbl_804C1F44
lbl_804C1F28:
/* 804C1F28  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 804C1F2C  28 00 00 0C */	cmplwi r0, 0xc
/* 804C1F30  40 82 00 14 */	bne lbl_804C1F44
/* 804C1F34  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804C1F38  C0 1D 04 B8 */	lfs f0, 0x4b8(r29)
/* 804C1F3C  EC 01 00 2A */	fadds f0, f1, f0
/* 804C1F40  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_804C1F44:
/* 804C1F44  7F E3 FB 78 */	mr r3, r31
/* 804C1F48  7F C4 F3 78 */	mr r4, r30
/* 804C1F4C  4B FF E0 D5 */	bl setUpperAnimeAndSe__9daMidna_cFQ29daMidna_c11daMidna_ANM
/* 804C1F50  48 00 04 40 */	b lbl_804C2390
lbl_804C1F54:
/* 804C1F54  88 1F 08 48 */	lbz r0, 0x848(r31)
/* 804C1F58  28 00 00 00 */	cmplwi r0, 0
/* 804C1F5C  40 82 03 FC */	bne lbl_804C2358
/* 804C1F60  2C 1E 00 00 */	cmpwi r30, 0
/* 804C1F64  40 82 00 10 */	bne lbl_804C1F74
/* 804C1F68  88 19 4F AD */	lbz r0, 0x4fad(r25)
/* 804C1F6C  28 00 00 00 */	cmplwi r0, 0
/* 804C1F70  41 82 00 0C */	beq lbl_804C1F7C
lbl_804C1F74:
/* 804C1F74  2C 1E 00 08 */	cmpwi r30, 8
/* 804C1F78  40 82 03 E0 */	bne lbl_804C2358
lbl_804C1F7C:
/* 804C1F7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C1F80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C1F84  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 804C1F88  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 804C1F8C  41 82 00 B8 */	beq lbl_804C2044
/* 804C1F90  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1F94  60 00 00 02 */	ori r0, r0, 2
/* 804C1F98  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1F9C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1FA0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C1FA4  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1FA8  7F E3 FB 78 */	mr r3, r31
/* 804C1FAC  38 80 00 15 */	li r4, 0x15
/* 804C1FB0  4B FF E0 71 */	bl setUpperAnimeAndSe__9daMidna_cFQ29daMidna_c11daMidna_ANM
/* 804C1FB4  2C 03 00 00 */	cmpwi r3, 0
/* 804C1FB8  41 82 00 44 */	beq lbl_804C1FFC
/* 804C1FBC  38 00 00 0F */	li r0, 0xf
/* 804C1FC0  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 804C1FC4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C1FC8  C0 3D 04 A4 */	lfs f1, 0x4a4(r29)
/* 804C1FCC  4B B4 DB B1 */	bl setMorf__13mDoExt_morf_cFf
/* 804C1FD0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C1FD4  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 804C1FD8  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C1FDC  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 804C1FE0  28 00 00 00 */	cmplwi r0, 0
/* 804C1FE4  41 82 03 AC */	beq lbl_804C2390
/* 804C1FE8  7F E3 FB 78 */	mr r3, r31
/* 804C1FEC  38 80 03 F8 */	li r4, 0x3f8
/* 804C1FF0  38 A0 00 00 */	li r5, 0
/* 804C1FF4  4B FF EB B9 */	bl setFaceBtp__9daMidna_cFUsi
/* 804C1FF8  48 00 03 98 */	b lbl_804C2390
lbl_804C1FFC:
/* 804C1FFC  38 7F 05 84 */	addi r3, r31, 0x584
/* 804C2000  C0 3D 04 BC */	lfs f1, 0x4bc(r29)
/* 804C2004  4B E6 64 29 */	bl checkPass__12J3DFrameCtrlFf
/* 804C2008  2C 03 00 00 */	cmpwi r3, 0
/* 804C200C  41 82 00 14 */	beq lbl_804C2020
/* 804C2010  7F E3 FB 78 */	mr r3, r31
/* 804C2014  38 80 00 02 */	li r4, 2
/* 804C2018  4B FF EE 01 */	bl setRightHandShape__9daMidna_cFUs
/* 804C201C  48 00 03 74 */	b lbl_804C2390
lbl_804C2020:
/* 804C2020  38 7F 05 84 */	addi r3, r31, 0x584
/* 804C2024  C0 3D 04 C0 */	lfs f1, 0x4c0(r29)
/* 804C2028  4B E6 64 05 */	bl checkPass__12J3DFrameCtrlFf
/* 804C202C  2C 03 00 00 */	cmpwi r3, 0
/* 804C2030  41 82 03 60 */	beq lbl_804C2390
/* 804C2034  7F E3 FB 78 */	mr r3, r31
/* 804C2038  38 80 00 00 */	li r4, 0
/* 804C203C  4B FF EC F1 */	bl setLeftHandShape__9daMidna_cFUs
/* 804C2040  48 00 03 50 */	b lbl_804C2390
lbl_804C2044:
/* 804C2044  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 804C2048  28 00 00 14 */	cmplwi r0, 0x14
/* 804C204C  40 82 00 28 */	bne lbl_804C2074
/* 804C2050  7F E3 FB 78 */	mr r3, r31
/* 804C2054  38 80 00 24 */	li r4, 0x24
/* 804C2058  4B FF DF C9 */	bl setUpperAnimeAndSe__9daMidna_cFQ29daMidna_c11daMidna_ANM
/* 804C205C  2C 03 00 00 */	cmpwi r3, 0
/* 804C2060  41 82 03 30 */	beq lbl_804C2390
/* 804C2064  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C2068  C0 3D 04 A4 */	lfs f1, 0x4a4(r29)
/* 804C206C  4B B4 DB 11 */	bl setMorf__13mDoExt_morf_cFf
/* 804C2070  48 00 03 20 */	b lbl_804C2390
lbl_804C2074:
/* 804C2074  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 804C2078  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 804C207C  41 82 00 34 */	beq lbl_804C20B0
/* 804C2080  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C2084  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804C2088  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C208C  7F E3 FB 78 */	mr r3, r31
/* 804C2090  A0 9F 05 E4 */	lhz r4, 0x5e4(r31)
/* 804C2094  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804C2098  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804C209C  4B FF DE E5 */	bl setUpperAnime__9daMidna_cFUsUs
/* 804C20A0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C20A4  C0 3D 04 A4 */	lfs f1, 0x4a4(r29)
/* 804C20A8  4B B4 DA D5 */	bl setMorf__13mDoExt_morf_cFf
/* 804C20AC  48 00 02 E4 */	b lbl_804C2390
lbl_804C20B0:
/* 804C20B0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804C20B4  41 82 01 60 */	beq lbl_804C2214
/* 804C20B8  38 60 00 01 */	li r3, 1
/* 804C20BC  88 1F 05 89 */	lbz r0, 0x589(r31)
/* 804C20C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C20C4  40 82 00 18 */	bne lbl_804C20DC
/* 804C20C8  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C20CC  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 804C20D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804C20D4  41 82 00 08 */	beq lbl_804C20DC
/* 804C20D8  38 60 00 00 */	li r3, 0
lbl_804C20DC:
/* 804C20DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804C20E0  40 82 00 64 */	bne lbl_804C2144
/* 804C20E4  38 7F 05 84 */	addi r3, r31, 0x584
/* 804C20E8  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C20EC  4B E6 63 41 */	bl checkPass__12J3DFrameCtrlFf
/* 804C20F0  2C 03 00 00 */	cmpwi r3, 0
/* 804C20F4  40 82 00 50 */	bne lbl_804C2144
/* 804C20F8  A8 1F 08 80 */	lha r0, 0x880(r31)
/* 804C20FC  2C 00 00 00 */	cmpwi r0, 0
/* 804C2100  40 82 00 44 */	bne lbl_804C2144
/* 804C2104  A8 1F 08 82 */	lha r0, 0x882(r31)
/* 804C2108  2C 00 00 00 */	cmpwi r0, 0
/* 804C210C  40 82 00 38 */	bne lbl_804C2144
/* 804C2110  2C 15 00 00 */	cmpwi r21, 0
/* 804C2114  40 82 00 30 */	bne lbl_804C2144
/* 804C2118  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C211C  A0 63 00 9C */	lhz r3, 0x9c(r3)
/* 804C2120  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C2124  7C 03 00 40 */	cmplw r3, r0
/* 804C2128  40 82 00 60 */	bne lbl_804C2188
/* 804C212C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 804C2130  FC 00 02 10 */	fabs f0, f0
/* 804C2134  FC 20 00 18 */	frsp f1, f0
/* 804C2138  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 804C213C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C2140  40 81 00 48 */	ble lbl_804C2188
lbl_804C2144:
/* 804C2144  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C2148  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C214C  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C2150  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 804C2154  7C 97 D2 2E */	lhzx r4, r23, r26
/* 804C2158  4B C9 CF 11 */	bl loadDataIdx__14daPy_anmHeap_cFUs
/* 804C215C  7C 64 1B 78 */	mr r4, r3
/* 804C2160  7F E3 FB 78 */	mr r3, r31
/* 804C2164  38 A0 00 02 */	li r5, 2
/* 804C2168  C0 3D 04 A4 */	lfs f1, 0x4a4(r29)
/* 804C216C  4B FF ED B9 */	bl setBckAnime__9daMidna_cFP15J3DAnmTransformif
/* 804C2170  7F E3 FB 78 */	mr r3, r31
/* 804C2174  A0 9F 05 E4 */	lhz r4, 0x5e4(r31)
/* 804C2178  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804C217C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804C2180  4B FF DE 01 */	bl setUpperAnime__9daMidna_cFUsUs
/* 804C2184  48 00 02 0C */	b lbl_804C2390
lbl_804C2188:
/* 804C2188  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C218C  A0 63 00 90 */	lhz r3, 0x90(r3)
/* 804C2190  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804C2194  7C 03 00 40 */	cmplw r3, r0
/* 804C2198  40 82 01 F8 */	bne lbl_804C2390
/* 804C219C  38 7F 05 84 */	addi r3, r31, 0x584
/* 804C21A0  C0 3D 04 C8 */	lfs f1, 0x4c8(r29)
/* 804C21A4  4B E6 62 89 */	bl checkPass__12J3DFrameCtrlFf
/* 804C21A8  2C 03 00 00 */	cmpwi r3, 0
/* 804C21AC  41 82 01 E4 */	beq lbl_804C2390
/* 804C21B0  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 804C21B4  FC 00 02 10 */	fabs f0, f0
/* 804C21B8  FC 20 00 18 */	frsp f1, f0
/* 804C21BC  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 804C21C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C21C4  40 80 01 CC */	bge lbl_804C2390
/* 804C21C8  4B DA 56 A5 */	bl cM_rnd__Fv
/* 804C21CC  C0 1D 04 64 */	lfs f0, 0x464(r29)
/* 804C21D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C21D4  40 80 01 BC */	bge lbl_804C2390
/* 804C21D8  3B C0 00 0D */	li r30, 0xd
/* 804C21DC  7F E3 FB 78 */	mr r3, r31
/* 804C21E0  38 80 00 0D */	li r4, 0xd
/* 804C21E4  4B FF DE 3D */	bl setUpperAnimeAndSe__9daMidna_cFQ29daMidna_c11daMidna_ANM
/* 804C21E8  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 804C21EC  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 804C21F0  38 9D 01 1C */	addi r4, r29, 0x11c
/* 804C21F4  7C 84 02 2E */	lhzx r4, r4, r0
/* 804C21F8  4B C9 CE 71 */	bl loadDataIdx__14daPy_anmHeap_cFUs
/* 804C21FC  7C 64 1B 78 */	mr r4, r3
/* 804C2200  7F E3 FB 78 */	mr r3, r31
/* 804C2204  38 A0 00 00 */	li r5, 0
/* 804C2208  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804C220C  4B FF ED 19 */	bl setBckAnime__9daMidna_cFP15J3DAnmTransformif
/* 804C2210  48 00 01 80 */	b lbl_804C2390
lbl_804C2214:
/* 804C2214  80 79 5D B4 */	lwz r3, 0x5db4(r25)
/* 804C2218  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804C221C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804C2220  41 82 01 70 */	beq lbl_804C2390
/* 804C2224  2C 15 00 00 */	cmpwi r21, 0
/* 804C2228  40 82 01 68 */	bne lbl_804C2390
/* 804C222C  A8 1F 08 82 */	lha r0, 0x882(r31)
/* 804C2230  2C 00 00 00 */	cmpwi r0, 0
/* 804C2234  40 82 00 28 */	bne lbl_804C225C
/* 804C2238  A8 1F 08 80 */	lha r0, 0x880(r31)
/* 804C223C  2C 00 00 00 */	cmpwi r0, 0
/* 804C2240  40 82 00 1C */	bne lbl_804C225C
/* 804C2244  2C 1E 00 08 */	cmpwi r30, 8
/* 804C2248  41 82 00 14 */	beq lbl_804C225C
/* 804C224C  4B DA 56 21 */	bl cM_rnd__Fv
/* 804C2250  C0 1D 04 CC */	lfs f0, 0x4cc(r29)
/* 804C2254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C2258  41 80 00 28 */	blt lbl_804C2280
lbl_804C225C:
/* 804C225C  2C 1E 00 08 */	cmpwi r30, 8
/* 804C2260  40 82 01 30 */	bne lbl_804C2390
/* 804C2264  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C2268  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 804C226C  40 82 01 24 */	bne lbl_804C2390
/* 804C2270  4B DA 55 FD */	bl cM_rnd__Fv
/* 804C2274  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804C2278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C227C  40 80 01 14 */	bge lbl_804C2390
lbl_804C2280:
/* 804C2280  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C2284  60 00 00 01 */	ori r0, r0, 1
/* 804C2288  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C228C  2C 1E 00 08 */	cmpwi r30, 8
/* 804C2290  40 82 00 0C */	bne lbl_804C229C
/* 804C2294  3B C0 00 0A */	li r30, 0xa
/* 804C2298  48 00 00 84 */	b lbl_804C231C
lbl_804C229C:
/* 804C229C  C0 18 05 2C */	lfs f0, 0x52c(r24)
/* 804C22A0  FC 00 02 10 */	fabs f0, f0
/* 804C22A4  FC 20 00 18 */	frsp f1, f0
/* 804C22A8  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 804C22AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C22B0  40 80 00 10 */	bge lbl_804C22C0
/* 804C22B4  C0 3D 04 A4 */	lfs f1, 0x4a4(r29)
/* 804C22B8  4B DA 56 9D */	bl cM_rndF__Ff
/* 804C22BC  48 00 00 0C */	b lbl_804C22C8
lbl_804C22C0:
/* 804C22C0  C0 3D 04 70 */	lfs f1, 0x470(r29)
/* 804C22C4  4B DA 56 91 */	bl cM_rndF__Ff
lbl_804C22C8:
/* 804C22C8  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 804C22CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C22D0  40 80 00 0C */	bge lbl_804C22DC
/* 804C22D4  3B C0 00 03 */	li r30, 3
/* 804C22D8  48 00 00 44 */	b lbl_804C231C
lbl_804C22DC:
/* 804C22DC  C0 1D 03 A4 */	lfs f0, 0x3a4(r29)
/* 804C22E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C22E4  40 80 00 0C */	bge lbl_804C22F0
/* 804C22E8  3B C0 00 0C */	li r30, 0xc
/* 804C22EC  48 00 00 30 */	b lbl_804C231C
lbl_804C22F0:
/* 804C22F0  C0 1D 04 20 */	lfs f0, 0x420(r29)
/* 804C22F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C22F8  40 80 00 0C */	bge lbl_804C2304
/* 804C22FC  3B C0 00 17 */	li r30, 0x17
/* 804C2300  48 00 00 1C */	b lbl_804C231C
lbl_804C2304:
/* 804C2304  C0 1D 04 70 */	lfs f0, 0x470(r29)
/* 804C2308  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C230C  40 80 00 0C */	bge lbl_804C2318
/* 804C2310  3B C0 00 19 */	li r30, 0x19
/* 804C2314  48 00 00 08 */	b lbl_804C231C
lbl_804C2318:
/* 804C2318  3B C0 00 18 */	li r30, 0x18
lbl_804C231C:
/* 804C231C  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 804C2320  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C2324  7E 83 02 2E */	lhzx r20, r3, r0
/* 804C2328  7F E3 FB 78 */	mr r3, r31
/* 804C232C  7F C4 F3 78 */	mr r4, r30
/* 804C2330  4B FF DC F1 */	bl setUpperAnimeAndSe__9daMidna_cFQ29daMidna_c11daMidna_ANM
/* 804C2334  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 804C2338  7E 84 A3 78 */	mr r4, r20
/* 804C233C  4B C9 CD 2D */	bl loadDataIdx__14daPy_anmHeap_cFUs
/* 804C2340  7C 64 1B 78 */	mr r4, r3
/* 804C2344  7F E3 FB 78 */	mr r3, r31
/* 804C2348  38 A0 00 00 */	li r5, 0
/* 804C234C  C0 3D 04 A4 */	lfs f1, 0x4a4(r29)
/* 804C2350  4B FF EB D5 */	bl setBckAnime__9daMidna_cFP15J3DAnmTransformif
/* 804C2354  48 00 00 3C */	b lbl_804C2390
lbl_804C2358:
/* 804C2358  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C235C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804C2360  41 82 00 30 */	beq lbl_804C2390
/* 804C2364  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C2368  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804C236C  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C2370  7F E3 FB 78 */	mr r3, r31
/* 804C2374  A0 9F 05 E4 */	lhz r4, 0x5e4(r31)
/* 804C2378  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804C237C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804C2380  4B FF DC 01 */	bl setUpperAnime__9daMidna_cFUsUs
/* 804C2384  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C2388  C0 3D 04 A4 */	lfs f1, 0x4a4(r29)
/* 804C238C  4B B4 D7 F1 */	bl setMorf__13mDoExt_morf_cFf
lbl_804C2390:
/* 804C2390  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804C2394  A0 7F 05 F8 */	lhz r3, 0x5f8(r31)
/* 804C2398  7C 00 18 40 */	cmplw r0, r3
/* 804C239C  41 82 00 7C */	beq lbl_804C2418
/* 804C23A0  38 9D 01 1C */	addi r4, r29, 0x11c
/* 804C23A4  A0 04 00 18 */	lhz r0, 0x18(r4)
/* 804C23A8  7C 00 18 40 */	cmplw r0, r3
/* 804C23AC  41 82 00 38 */	beq lbl_804C23E4
/* 804C23B0  A0 04 00 0C */	lhz r0, 0xc(r4)
/* 804C23B4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 804C23B8  7C 00 18 40 */	cmplw r0, r3
/* 804C23BC  41 82 00 28 */	beq lbl_804C23E4
/* 804C23C0  A0 04 01 B0 */	lhz r0, 0x1b0(r4)
/* 804C23C4  7C 00 18 40 */	cmplw r0, r3
/* 804C23C8  41 82 00 1C */	beq lbl_804C23E4
/* 804C23CC  A0 04 01 BC */	lhz r0, 0x1bc(r4)
/* 804C23D0  7C 00 18 40 */	cmplw r0, r3
/* 804C23D4  41 82 00 10 */	beq lbl_804C23E4
/* 804C23D8  A0 04 00 24 */	lhz r0, 0x24(r4)
/* 804C23DC  7C 00 18 40 */	cmplw r0, r3
/* 804C23E0  40 82 00 20 */	bne lbl_804C2400
lbl_804C23E4:
/* 804C23E4  7F E3 FB 78 */	mr r3, r31
/* 804C23E8  38 80 00 00 */	li r4, 0
/* 804C23EC  4B FF E9 41 */	bl setLeftHandShape__9daMidna_cFUs
/* 804C23F0  7F E3 FB 78 */	mr r3, r31
/* 804C23F4  38 80 00 02 */	li r4, 2
/* 804C23F8  4B FF EA 21 */	bl setRightHandShape__9daMidna_cFUs
/* 804C23FC  48 00 00 1C */	b lbl_804C2418
lbl_804C2400:
/* 804C2400  7F E3 FB 78 */	mr r3, r31
/* 804C2404  38 80 00 FE */	li r4, 0xfe
/* 804C2408  4B FF E9 25 */	bl setLeftHandShape__9daMidna_cFUs
/* 804C240C  7F E3 FB 78 */	mr r3, r31
/* 804C2410  38 80 00 FE */	li r4, 0xfe
/* 804C2414  4B FF EA 05 */	bl setRightHandShape__9daMidna_cFUs
lbl_804C2418:
/* 804C2418  38 9D 01 1C */	addi r4, r29, 0x11c
/* 804C241C  A0 64 01 14 */	lhz r3, 0x114(r4)
/* 804C2420  A0 1F 05 F8 */	lhz r0, 0x5f8(r31)
/* 804C2424  7C 03 00 40 */	cmplw r3, r0
/* 804C2428  40 82 00 64 */	bne lbl_804C248C
/* 804C242C  38 7F 05 84 */	addi r3, r31, 0x584
/* 804C2430  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 804C2434  4B E6 5F F9 */	bl checkPass__12J3DFrameCtrlFf
/* 804C2438  2C 03 00 00 */	cmpwi r3, 0
/* 804C243C  41 82 00 20 */	beq lbl_804C245C
/* 804C2440  7F E3 FB 78 */	mr r3, r31
/* 804C2444  38 80 00 FE */	li r4, 0xfe
/* 804C2448  4B FF E8 E5 */	bl setLeftHandShape__9daMidna_cFUs
/* 804C244C  7F E3 FB 78 */	mr r3, r31
/* 804C2450  38 80 00 FE */	li r4, 0xfe
/* 804C2454  4B FF E9 C5 */	bl setRightHandShape__9daMidna_cFUs
/* 804C2458  48 00 00 70 */	b lbl_804C24C8
lbl_804C245C:
/* 804C245C  38 7F 05 84 */	addi r3, r31, 0x584
/* 804C2460  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 804C2464  4B E6 5F C9 */	bl checkPass__12J3DFrameCtrlFf
/* 804C2468  2C 03 00 00 */	cmpwi r3, 0
/* 804C246C  41 82 00 5C */	beq lbl_804C24C8
/* 804C2470  7F E3 FB 78 */	mr r3, r31
/* 804C2474  38 80 00 00 */	li r4, 0
/* 804C2478  4B FF E8 B5 */	bl setLeftHandShape__9daMidna_cFUs
/* 804C247C  7F E3 FB 78 */	mr r3, r31
/* 804C2480  38 80 00 02 */	li r4, 2
/* 804C2484  4B FF E9 95 */	bl setRightHandShape__9daMidna_cFUs
/* 804C2488  48 00 00 40 */	b lbl_804C24C8
lbl_804C248C:
/* 804C248C  A0 64 01 BC */	lhz r3, 0x1bc(r4)
/* 804C2490  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804C2494  7C 03 00 40 */	cmplw r3, r0
/* 804C2498  40 82 00 30 */	bne lbl_804C24C8
/* 804C249C  38 7F 05 84 */	addi r3, r31, 0x584
/* 804C24A0  C0 3D 04 DC */	lfs f1, 0x4dc(r29)
/* 804C24A4  4B E6 5F 89 */	bl checkPass__12J3DFrameCtrlFf
/* 804C24A8  2C 03 00 00 */	cmpwi r3, 0
/* 804C24AC  41 82 00 1C */	beq lbl_804C24C8
/* 804C24B0  7F E3 FB 78 */	mr r3, r31
/* 804C24B4  38 80 00 FE */	li r4, 0xfe
/* 804C24B8  4B FF E8 75 */	bl setLeftHandShape__9daMidna_cFUs
/* 804C24BC  7F E3 FB 78 */	mr r3, r31
/* 804C24C0  38 80 00 FE */	li r4, 0xfe
/* 804C24C4  4B FF E9 55 */	bl setRightHandShape__9daMidna_cFUs
lbl_804C24C8:
/* 804C24C8  80 7F 08 C0 */	lwz r3, 0x8c0(r31)
/* 804C24CC  28 03 00 13 */	cmplwi r3, 0x13
/* 804C24D0  40 82 00 0C */	bne lbl_804C24DC
/* 804C24D4  3A 80 00 34 */	li r20, 0x34
/* 804C24D8  48 00 00 D0 */	b lbl_804C25A8
lbl_804C24DC:
/* 804C24DC  28 03 00 14 */	cmplwi r3, 0x14
/* 804C24E0  40 82 00 0C */	bne lbl_804C24EC
/* 804C24E4  3A 80 00 00 */	li r20, 0
/* 804C24E8  48 00 00 C0 */	b lbl_804C25A8
lbl_804C24EC:
/* 804C24EC  2C 1E 00 08 */	cmpwi r30, 8
/* 804C24F0  41 82 00 0C */	beq lbl_804C24FC
/* 804C24F4  2C 1E 00 0A */	cmpwi r30, 0xa
/* 804C24F8  40 82 00 20 */	bne lbl_804C2518
lbl_804C24FC:
/* 804C24FC  80 9F 08 90 */	lwz r4, 0x890(r31)
/* 804C2500  54 80 00 01 */	rlwinm. r0, r4, 0, 0, 0
/* 804C2504  40 82 00 14 */	bne lbl_804C2518
/* 804C2508  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 804C250C  41 82 00 0C */	beq lbl_804C2518
/* 804C2510  3A 80 00 30 */	li r20, 0x30
/* 804C2514  48 00 00 94 */	b lbl_804C25A8
lbl_804C2518:
/* 804C2518  28 03 00 06 */	cmplwi r3, 6
/* 804C251C  40 82 00 0C */	bne lbl_804C2528
/* 804C2520  3A 80 00 32 */	li r20, 0x32
/* 804C2524  48 00 00 84 */	b lbl_804C25A8
lbl_804C2528:
/* 804C2528  28 03 00 07 */	cmplwi r3, 7
/* 804C252C  40 82 00 0C */	bne lbl_804C2538
/* 804C2530  3A 80 00 31 */	li r20, 0x31
/* 804C2534  48 00 00 74 */	b lbl_804C25A8
lbl_804C2538:
/* 804C2538  28 03 00 0E */	cmplwi r3, 0xe
/* 804C253C  40 82 00 0C */	bne lbl_804C2548
/* 804C2540  3A 80 00 33 */	li r20, 0x33
/* 804C2544  48 00 00 64 */	b lbl_804C25A8
lbl_804C2548:
/* 804C2548  2C 1C 00 00 */	cmpwi r28, 0
/* 804C254C  40 82 00 10 */	bne lbl_804C255C
/* 804C2550  88 1F 08 49 */	lbz r0, 0x849(r31)
/* 804C2554  28 00 00 64 */	cmplwi r0, 0x64
/* 804C2558  40 82 00 0C */	bne lbl_804C2564
lbl_804C255C:
/* 804C255C  3A 80 00 00 */	li r20, 0
/* 804C2560  48 00 00 48 */	b lbl_804C25A8
lbl_804C2564:
/* 804C2564  28 00 00 1F */	cmplwi r0, 0x1f
/* 804C2568  40 82 00 0C */	bne lbl_804C2574
/* 804C256C  3A 80 00 2C */	li r20, 0x2c
/* 804C2570  48 00 00 38 */	b lbl_804C25A8
lbl_804C2574:
/* 804C2574  28 00 00 20 */	cmplwi r0, 0x20
/* 804C2578  40 82 00 0C */	bne lbl_804C2584
/* 804C257C  3A 80 00 2D */	li r20, 0x2d
/* 804C2580  48 00 00 28 */	b lbl_804C25A8
lbl_804C2584:
/* 804C2584  28 00 00 21 */	cmplwi r0, 0x21
/* 804C2588  40 82 00 0C */	bne lbl_804C2594
/* 804C258C  3A 80 00 2E */	li r20, 0x2e
/* 804C2590  48 00 00 18 */	b lbl_804C25A8
lbl_804C2594:
/* 804C2594  28 00 00 22 */	cmplwi r0, 0x22
/* 804C2598  40 82 00 0C */	bne lbl_804C25A4
/* 804C259C  3A 80 00 2F */	li r20, 0x2f
/* 804C25A0  48 00 00 08 */	b lbl_804C25A8
lbl_804C25A4:
/* 804C25A4  3A 80 00 00 */	li r20, 0
lbl_804C25A8:
/* 804C25A8  7F E3 FB 78 */	mr r3, r31
/* 804C25AC  7E 84 A3 78 */	mr r4, r20
/* 804C25B0  4B FF E9 55 */	bl checkHairOnlyAnime__9daMidna_cCFi
/* 804C25B4  2C 03 00 00 */	cmpwi r3, 0
/* 804C25B8  40 82 00 40 */	bne lbl_804C25F8
/* 804C25BC  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 804C25C0  28 00 00 00 */	cmplwi r0, 0
/* 804C25C4  41 82 00 B0 */	beq lbl_804C2674
/* 804C25C8  80 9F 08 90 */	lwz r4, 0x890(r31)
/* 804C25CC  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 804C25D0  40 82 00 A4 */	bne lbl_804C2674
/* 804C25D4  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 804C25D8  A0 1F 05 F8 */	lhz r0, 0x5f8(r31)
/* 804C25DC  7C 03 00 40 */	cmplw r3, r0
/* 804C25E0  40 82 00 18 */	bne lbl_804C25F8
/* 804C25E4  2C 14 00 00 */	cmpwi r20, 0
/* 804C25E8  40 82 00 10 */	bne lbl_804C25F8
/* 804C25EC  40 82 00 88 */	bne lbl_804C2674
/* 804C25F0  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 804C25F4  41 82 00 80 */	beq lbl_804C2674
lbl_804C25F8:
/* 804C25F8  2C 14 00 00 */	cmpwi r20, 0
/* 804C25FC  40 82 00 28 */	bne lbl_804C2624
/* 804C2600  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C2604  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 804C2608  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C260C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C2610  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C2614  B0 1F 06 0C */	sth r0, 0x60c(r31)
/* 804C2618  38 00 00 04 */	li r0, 4
/* 804C261C  B0 1F 08 7E */	sth r0, 0x87e(r31)
/* 804C2620  48 00 00 74 */	b lbl_804C2694
lbl_804C2624:
/* 804C2624  7F E3 FB 78 */	mr r3, r31
/* 804C2628  1C 14 00 0C */	mulli r0, r20, 0xc
/* 804C262C  38 9D 01 1C */	addi r4, r29, 0x11c
/* 804C2630  7C 84 02 2E */	lhzx r4, r4, r0
/* 804C2634  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804C2638  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804C263C  4B FF DA 59 */	bl setFaceAnime__9daMidna_cFUsUs
/* 804C2640  7F E3 FB 78 */	mr r3, r31
/* 804C2644  7E 84 A3 78 */	mr r4, r20
/* 804C2648  4B FF E8 BD */	bl checkHairOnlyAnime__9daMidna_cCFi
/* 804C264C  2C 03 00 00 */	cmpwi r3, 0
/* 804C2650  41 82 00 18 */	beq lbl_804C2668
/* 804C2654  38 00 00 05 */	li r0, 5
/* 804C2658  B0 1F 08 7E */	sth r0, 0x87e(r31)
/* 804C265C  38 00 00 14 */	li r0, 0x14
/* 804C2660  98 1F 08 4B */	stb r0, 0x84b(r31)
/* 804C2664  48 00 00 30 */	b lbl_804C2694
lbl_804C2668:
/* 804C2668  38 00 00 04 */	li r0, 4
/* 804C266C  B0 1F 08 7E */	sth r0, 0x87e(r31)
/* 804C2670  48 00 00 24 */	b lbl_804C2694
lbl_804C2674:
/* 804C2674  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C2678  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 804C267C  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C2680  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C2684  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C2688  B0 1F 06 0C */	sth r0, 0x60c(r31)
/* 804C268C  38 00 00 04 */	li r0, 4
/* 804C2690  B0 1F 08 7E */	sth r0, 0x87e(r31)
lbl_804C2694:
/* 804C2694  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 804C2698  28 00 00 00 */	cmplwi r0, 0
/* 804C269C  41 82 01 10 */	beq lbl_804C27AC
/* 804C26A0  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 804C26A4  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 804C26A8  40 82 01 04 */	bne lbl_804C27AC
/* 804C26AC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804C26B0  41 82 00 0C */	beq lbl_804C26BC
/* 804C26B4  2C 1E 00 00 */	cmpwi r30, 0
/* 804C26B8  41 82 00 F4 */	beq lbl_804C27AC
lbl_804C26BC:
/* 804C26BC  A0 1F 06 24 */	lhz r0, 0x624(r31)
/* 804C26C0  28 00 FF FF */	cmplwi r0, 0xffff
/* 804C26C4  41 82 00 14 */	beq lbl_804C26D8
/* 804C26C8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C26CC  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C26D0  B0 1F 06 24 */	sth r0, 0x624(r31)
/* 804C26D4  B0 1F 06 20 */	sth r0, 0x620(r31)
lbl_804C26D8:
/* 804C26D8  2C 14 00 00 */	cmpwi r20, 0
/* 804C26DC  41 82 00 18 */	beq lbl_804C26F4
/* 804C26E0  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804C26E4  1C 14 00 0C */	mulli r0, r20, 0xc
/* 804C26E8  7C 63 02 14 */	add r3, r3, r0
/* 804C26EC  A0 03 00 02 */	lhz r0, 2(r3)
/* 804C26F0  48 00 00 48 */	b lbl_804C2738
lbl_804C26F4:
/* 804C26F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C26F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C26FC  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 804C2700  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 804C2704  41 82 00 0C */	beq lbl_804C2710
/* 804C2708  38 00 00 10 */	li r0, 0x10
/* 804C270C  48 00 00 2C */	b lbl_804C2738
lbl_804C2710:
/* 804C2710  38 9D 01 1C */	addi r4, r29, 0x11c
/* 804C2714  A0 64 01 B0 */	lhz r3, 0x1b0(r4)
/* 804C2718  A0 1F 05 F8 */	lhz r0, 0x5f8(r31)
/* 804C271C  7C 03 00 40 */	cmplw r3, r0
/* 804C2720  40 82 00 0C */	bne lbl_804C272C
/* 804C2724  38 00 00 13 */	li r0, 0x13
/* 804C2728  48 00 00 10 */	b lbl_804C2738
lbl_804C272C:
/* 804C272C  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 804C2730  7C 64 02 14 */	add r3, r4, r0
/* 804C2734  A0 03 00 02 */	lhz r0, 2(r3)
lbl_804C2738:
/* 804C2738  7F E3 FB 78 */	mr r3, r31
/* 804C273C  54 14 13 BA */	rlwinm r20, r0, 2, 0xe, 0x1d
/* 804C2740  3A BD 00 C8 */	addi r21, r29, 0xc8
/* 804C2744  7C 95 A2 2E */	lhzx r4, r21, r20
/* 804C2748  38 A0 00 00 */	li r5, 0
/* 804C274C  4B FF E4 61 */	bl setFaceBtp__9daMidna_cFUsi
/* 804C2750  A0 1F 06 38 */	lhz r0, 0x638(r31)
/* 804C2754  28 00 FF FF */	cmplwi r0, 0xffff
/* 804C2758  41 82 00 14 */	beq lbl_804C276C
/* 804C275C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C2760  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C2764  B0 1F 06 38 */	sth r0, 0x638(r31)
/* 804C2768  B0 1F 06 34 */	sth r0, 0x634(r31)
lbl_804C276C:
/* 804C276C  7F E3 FB 78 */	mr r3, r31
/* 804C2770  38 1D 00 C8 */	addi r0, r29, 0xc8
/* 804C2774  7C 80 A2 14 */	add r4, r0, r20
/* 804C2778  A0 84 00 02 */	lhz r4, 2(r4)
/* 804C277C  38 A0 00 00 */	li r5, 0
/* 804C2780  4B FF E4 ED */	bl setFaceBtk__9daMidna_cFUsi
/* 804C2784  7C 15 A2 2E */	lhzx r0, r21, r20
/* 804C2788  28 00 04 05 */	cmplwi r0, 0x405
/* 804C278C  40 82 00 14 */	bne lbl_804C27A0
/* 804C2790  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C2794  60 00 00 40 */	ori r0, r0, 0x40
/* 804C2798  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C279C  48 00 00 10 */	b lbl_804C27AC
lbl_804C27A0:
/* 804C27A0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C27A4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 804C27A8  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804C27AC:
/* 804C27AC  38 60 00 00 */	li r3, 0
/* 804C27B0  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 804C27B4  28 00 00 14 */	cmplwi r0, 0x14
/* 804C27B8  41 82 00 14 */	beq lbl_804C27CC
/* 804C27BC  2C 1E 00 22 */	cmpwi r30, 0x22
/* 804C27C0  41 80 00 10 */	blt lbl_804C27D0
/* 804C27C4  2C 1E 00 2C */	cmpwi r30, 0x2c
/* 804C27C8  40 80 00 08 */	bge lbl_804C27D0
lbl_804C27CC:
/* 804C27CC  38 60 00 01 */	li r3, 1
lbl_804C27D0:
/* 804C27D0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 804C27D4  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C27D8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804C27DC  40 82 00 18 */	bne lbl_804C27F4
/* 804C27E0  2C 03 00 00 */	cmpwi r3, 0
/* 804C27E4  40 82 00 10 */	bne lbl_804C27F4
/* 804C27E8  A8 1F 08 7E */	lha r0, 0x87e(r31)
/* 804C27EC  2C 00 00 05 */	cmpwi r0, 5
/* 804C27F0  40 82 00 28 */	bne lbl_804C2818
lbl_804C27F4:
/* 804C27F4  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C27F8  64 00 20 20 */	oris r0, r0, 0x2020
/* 804C27FC  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804C2800  2C 03 00 00 */	cmpwi r3, 0
/* 804C2804  41 82 00 58 */	beq lbl_804C285C
/* 804C2808  80 1F 08 98 */	lwz r0, 0x898(r31)
/* 804C280C  60 00 00 40 */	ori r0, r0, 0x40
/* 804C2810  90 1F 08 98 */	stw r0, 0x898(r31)
/* 804C2814  48 00 00 48 */	b lbl_804C285C
lbl_804C2818:
/* 804C2818  38 1E FF F0 */	addi r0, r30, -16
/* 804C281C  28 00 00 01 */	cmplwi r0, 1
/* 804C2820  40 81 00 30 */	ble lbl_804C2850
/* 804C2824  2C 1E 00 1C */	cmpwi r30, 0x1c
/* 804C2828  41 82 00 28 */	beq lbl_804C2850
/* 804C282C  2C 1E 00 14 */	cmpwi r30, 0x14
/* 804C2830  40 82 00 18 */	bne lbl_804C2848
/* 804C2834  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804C2838  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804C283C  C0 1D 03 A4 */	lfs f0, 0x3a4(r29)
/* 804C2840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C2844  41 81 00 0C */	bgt lbl_804C2850
lbl_804C2848:
/* 804C2848  2C 1E 00 12 */	cmpwi r30, 0x12
/* 804C284C  40 82 00 10 */	bne lbl_804C285C
lbl_804C2850:
/* 804C2850  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804C2854  64 00 20 00 */	oris r0, r0, 0x2000
/* 804C2858  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804C285C:
/* 804C285C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804C2860  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804C2864  39 61 00 80 */	addi r11, r1, 0x80
/* 804C2868  4B E9 F9 9D */	bl _restgpr_20
/* 804C286C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804C2870  7C 08 03 A6 */	mtlr r0
/* 804C2874  38 21 00 90 */	addi r1, r1, 0x90
/* 804C2878  4E 80 00 20 */	blr 
