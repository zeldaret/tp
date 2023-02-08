lbl_804F11D8:
/* 804F11D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804F11DC  7C 08 02 A6 */	mflr r0
/* 804F11E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804F11E4  39 61 00 50 */	addi r11, r1, 0x50
/* 804F11E8  4B E7 0F DD */	bl _savegpr_23
/* 804F11EC  7C 79 1B 78 */	mr r25, r3
/* 804F11F0  80 63 05 D0 */	lwz r3, 0x5d0(r3)
/* 804F11F4  83 63 00 04 */	lwz r27, 4(r3)
/* 804F11F8  7C 80 07 34 */	extsh r0, r4
/* 804F11FC  2C 00 00 01 */	cmpwi r0, 1
/* 804F1200  40 82 01 0C */	bne lbl_804F130C
/* 804F1204  3B 40 00 00 */	li r26, 0
/* 804F1208  3B 00 00 00 */	li r24, 0
/* 804F120C  3A E0 00 00 */	li r23, 0
/* 804F1210  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F1214  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F1218  3C 60 80 50 */	lis r3, fire_name@ha /* 0x804FA9E0@ha */
/* 804F121C  3B A3 A9 E0 */	addi r29, r3, fire_name@l /* 0x804FA9E0@l */
/* 804F1220  3C 60 80 50 */	lis r3, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F1224  3B C3 A6 BC */	addi r30, r3, lit_3777@l /* 0x804FA6BC@l */
lbl_804F1228:
/* 804F1228  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804F122C  38 00 00 FF */	li r0, 0xff
/* 804F1230  90 01 00 08 */	stw r0, 8(r1)
/* 804F1234  38 80 00 00 */	li r4, 0
/* 804F1238  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F123C  38 00 FF FF */	li r0, -1
/* 804F1240  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F1244  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F1248  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F124C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F1250  3B F7 18 88 */	addi r31, r23, 0x1888
/* 804F1254  7C 99 F8 2E */	lwzx r4, r25, r31
/* 804F1258  38 A0 00 00 */	li r5, 0
/* 804F125C  7C DD C2 2E */	lhzx r6, r29, r24
/* 804F1260  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 804F1264  39 00 00 00 */	li r8, 0
/* 804F1268  39 20 00 00 */	li r9, 0
/* 804F126C  39 40 00 00 */	li r10, 0
/* 804F1270  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804F1274  4B B5 C2 59 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F1278  7C 79 F9 2E */	stwx r3, r25, r31
/* 804F127C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804F1280  38 63 02 10 */	addi r3, r3, 0x210
/* 804F1284  7C 99 F8 2E */	lwzx r4, r25, r31
/* 804F1288  4B B5 A6 91 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804F128C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804F1290  41 82 00 64 */	beq lbl_804F12F4
/* 804F1294  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 804F1298  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F129C  38 63 00 90 */	addi r3, r3, 0x90
/* 804F12A0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804F12A4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804F12A8  80 84 00 00 */	lwz r4, 0(r4)
/* 804F12AC  4B E5 52 05 */	bl PSMTXCopy
/* 804F12B0  3C 60 80 50 */	lis r3, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F12B4  C0 23 A6 BC */	lfs f1, lit_3777@l(r3)  /* 0x804FA6BC@l */
/* 804F12B8  FC 40 08 90 */	fmr f2, f1
/* 804F12BC  FC 60 08 90 */	fmr f3, f1
/* 804F12C0  38 60 00 01 */	li r3, 1
/* 804F12C4  4B D7 FB E1 */	bl MtxScale__FfffUc
/* 804F12C8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804F12CC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804F12D0  80 63 00 00 */	lwz r3, 0(r3)
/* 804F12D4  38 9F 00 68 */	addi r4, r31, 0x68
/* 804F12D8  38 BF 00 98 */	addi r5, r31, 0x98
/* 804F12DC  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 804F12E0  4B D8 F5 29 */	bl func_80280808
/* 804F12E4  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804F12E8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 804F12EC  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 804F12F0  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_804F12F4:
/* 804F12F4  3B 5A 00 01 */	addi r26, r26, 1
/* 804F12F8  2C 1A 00 04 */	cmpwi r26, 4
/* 804F12FC  3B 18 00 02 */	addi r24, r24, 2
/* 804F1300  3A F7 00 04 */	addi r23, r23, 4
/* 804F1304  41 80 FF 24 */	blt lbl_804F1228
/* 804F1308  48 00 00 DC */	b lbl_804F13E4
lbl_804F130C:
/* 804F130C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F1310  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F1314  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 804F1318  38 00 00 FF */	li r0, 0xff
/* 804F131C  90 01 00 08 */	stw r0, 8(r1)
/* 804F1320  38 80 00 00 */	li r4, 0
/* 804F1324  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F1328  38 00 FF FF */	li r0, -1
/* 804F132C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F1330  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F1334  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F1338  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F133C  80 99 18 84 */	lwz r4, 0x1884(r25)
/* 804F1340  38 A0 00 00 */	li r5, 0
/* 804F1344  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000814C@ha */
/* 804F1348  38 C6 81 4C */	addi r6, r6, 0x814C /* 0x0000814C@l */
/* 804F134C  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 804F1350  39 00 00 00 */	li r8, 0
/* 804F1354  39 20 00 00 */	li r9, 0
/* 804F1358  39 40 00 00 */	li r10, 0
/* 804F135C  3D 60 80 50 */	lis r11, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F1360  C0 2B A6 BC */	lfs f1, lit_3777@l(r11)  /* 0x804FA6BC@l */
/* 804F1364  4B B5 C1 69 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F1368  90 79 18 84 */	stw r3, 0x1884(r25)
/* 804F136C  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 804F1370  38 63 02 10 */	addi r3, r3, 0x210
/* 804F1374  80 99 18 84 */	lwz r4, 0x1884(r25)
/* 804F1378  4B B5 A5 A1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804F137C  7C 77 1B 79 */	or. r23, r3, r3
/* 804F1380  41 82 00 64 */	beq lbl_804F13E4
/* 804F1384  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 804F1388  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F138C  38 63 00 90 */	addi r3, r3, 0x90
/* 804F1390  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804F1394  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804F1398  80 84 00 00 */	lwz r4, 0(r4)
/* 804F139C  4B E5 51 15 */	bl PSMTXCopy
/* 804F13A0  3C 60 80 50 */	lis r3, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F13A4  C0 23 A6 BC */	lfs f1, lit_3777@l(r3)  /* 0x804FA6BC@l */
/* 804F13A8  FC 40 08 90 */	fmr f2, f1
/* 804F13AC  FC 60 08 90 */	fmr f3, f1
/* 804F13B0  38 60 00 01 */	li r3, 1
/* 804F13B4  4B D7 FA F1 */	bl MtxScale__FfffUc
/* 804F13B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804F13BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804F13C0  80 63 00 00 */	lwz r3, 0(r3)
/* 804F13C4  38 97 00 68 */	addi r4, r23, 0x68
/* 804F13C8  38 B7 00 98 */	addi r5, r23, 0x98
/* 804F13CC  38 D7 00 A4 */	addi r6, r23, 0xa4
/* 804F13D0  4B D8 F4 39 */	bl func_80280808
/* 804F13D4  C0 37 00 9C */	lfs f1, 0x9c(r23)
/* 804F13D8  C0 17 00 98 */	lfs f0, 0x98(r23)
/* 804F13DC  D0 17 00 B0 */	stfs f0, 0xb0(r23)
/* 804F13E0  D0 37 00 B4 */	stfs f1, 0xb4(r23)
lbl_804F13E4:
/* 804F13E4  39 61 00 50 */	addi r11, r1, 0x50
/* 804F13E8  4B E7 0E 29 */	bl _restgpr_23
/* 804F13EC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804F13F0  7C 08 03 A6 */	mtlr r0
/* 804F13F4  38 21 00 50 */	addi r1, r1, 0x50
/* 804F13F8  4E 80 00 20 */	blr 
