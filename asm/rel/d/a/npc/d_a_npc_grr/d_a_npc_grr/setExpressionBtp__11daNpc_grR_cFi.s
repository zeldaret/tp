lbl_809E1260:
/* 809E1260  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E1264  7C 08 02 A6 */	mflr r0
/* 809E1268  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E126C  39 61 00 20 */	addi r11, r1, 0x20
/* 809E1270  4B 98 0F 6C */	b _savegpr_29
/* 809E1274  7C 7D 1B 78 */	mr r29, r3
/* 809E1278  7C 9E 23 78 */	mr r30, r4
/* 809E127C  38 80 00 00 */	li r4, 0
/* 809E1280  3B E0 00 00 */	li r31, 0
/* 809E1284  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 809E1288  38 00 F5 7F */	li r0, -2689
/* 809E128C  7C A0 00 38 */	and r0, r5, r0
/* 809E1290  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809E1294  57 C0 18 38 */	slwi r0, r30, 3
/* 809E1298  3C A0 80 9E */	lis r5, l_btpGetParamList@ha
/* 809E129C  38 C5 3C B0 */	addi r6, r5, l_btpGetParamList@l
/* 809E12A0  7C A6 00 2E */	lwzx r5, r6, r0
/* 809E12A4  2C 05 00 00 */	cmpwi r5, 0
/* 809E12A8  41 80 00 24 */	blt lbl_809E12CC
/* 809E12AC  7C 86 02 14 */	add r4, r6, r0
/* 809E12B0  80 04 00 04 */	lwz r0, 4(r4)
/* 809E12B4  54 00 10 3A */	slwi r0, r0, 2
/* 809E12B8  3C 80 80 9E */	lis r4, l_resNames@ha
/* 809E12BC  38 84 3D 30 */	addi r4, r4, l_resNames@l
/* 809E12C0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809E12C4  4B 77 18 A4 */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 809E12C8  7C 64 1B 78 */	mr r4, r3
lbl_809E12CC:
/* 809E12CC  2C 1E 00 04 */	cmpwi r30, 4
/* 809E12D0  41 82 00 2C */	beq lbl_809E12FC
/* 809E12D4  40 80 00 14 */	bge lbl_809E12E8
/* 809E12D8  2C 1E 00 00 */	cmpwi r30, 0
/* 809E12DC  41 82 00 18 */	beq lbl_809E12F4
/* 809E12E0  40 80 00 30 */	bge lbl_809E1310
/* 809E12E4  48 00 00 28 */	b lbl_809E130C
lbl_809E12E8:
/* 809E12E8  2C 1E 00 06 */	cmpwi r30, 6
/* 809E12EC  40 80 00 20 */	bge lbl_809E130C
/* 809E12F0  48 00 00 14 */	b lbl_809E1304
lbl_809E12F4:
/* 809E12F4  3B E0 00 02 */	li r31, 2
/* 809E12F8  48 00 00 18 */	b lbl_809E1310
lbl_809E12FC:
/* 809E12FC  3B E0 00 02 */	li r31, 2
/* 809E1300  48 00 00 10 */	b lbl_809E1310
lbl_809E1304:
/* 809E1304  3B E0 00 02 */	li r31, 2
/* 809E1308  48 00 00 08 */	b lbl_809E1310
lbl_809E130C:
/* 809E130C  38 80 00 00 */	li r4, 0
lbl_809E1310:
/* 809E1310  28 04 00 00 */	cmplwi r4, 0
/* 809E1314  40 82 00 0C */	bne lbl_809E1320
/* 809E1318  38 60 00 01 */	li r3, 1
/* 809E131C  48 00 00 58 */	b lbl_809E1374
lbl_809E1320:
/* 809E1320  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809E1324  80 63 00 04 */	lwz r3, 4(r3)
/* 809E1328  80 A3 00 04 */	lwz r5, 4(r3)
/* 809E132C  7F A3 EB 78 */	mr r3, r29
/* 809E1330  3C C0 80 9E */	lis r6, lit_4452@ha
/* 809E1334  C0 26 39 64 */	lfs f1, lit_4452@l(r6)
/* 809E1338  7F E6 FB 78 */	mr r6, r31
/* 809E133C  4B 77 19 88 */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 809E1340  2C 03 00 00 */	cmpwi r3, 0
/* 809E1344  41 82 00 2C */	beq lbl_809E1370
/* 809E1348  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809E134C  60 00 02 80 */	ori r0, r0, 0x280
/* 809E1350  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 809E1354  2C 1E 00 00 */	cmpwi r30, 0
/* 809E1358  40 82 00 10 */	bne lbl_809E1368
/* 809E135C  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809E1360  60 00 08 00 */	ori r0, r0, 0x800
/* 809E1364  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_809E1368:
/* 809E1368  38 60 00 01 */	li r3, 1
/* 809E136C  48 00 00 08 */	b lbl_809E1374
lbl_809E1370:
/* 809E1370  38 60 00 00 */	li r3, 0
lbl_809E1374:
/* 809E1374  39 61 00 20 */	addi r11, r1, 0x20
/* 809E1378  4B 98 0E B0 */	b _restgpr_29
/* 809E137C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E1380  7C 08 03 A6 */	mtlr r0
/* 809E1384  38 21 00 20 */	addi r1, r1, 0x20
/* 809E1388  4E 80 00 20 */	blr 
