lbl_800F12F8:
/* 800F12F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F12FC  7C 08 02 A6 */	mflr r0
/* 800F1300  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F1304  39 61 00 20 */	addi r11, r1, 0x20
/* 800F1308  48 27 0E D1 */	bl _savegpr_28
/* 800F130C  7C 7C 1B 78 */	mr r28, r3
/* 800F1310  80 03 05 80 */	lwz r0, 0x580(r3)
/* 800F1314  64 00 04 00 */	oris r0, r0, 0x400
/* 800F1318  90 03 05 80 */	stw r0, 0x580(r3)
/* 800F131C  AB E3 04 E6 */	lha r31, 0x4e6(r3)
/* 800F1320  AB C3 04 DE */	lha r30, 0x4de(r3)
/* 800F1324  83 A3 31 90 */	lwz r29, 0x3190(r3)
/* 800F1328  38 80 00 00 */	li r4, 0
/* 800F132C  4B FF D5 ED */	bl setSyncRide__9daAlink_cFi
/* 800F1330  2C 03 00 00 */	cmpwi r3, 0
/* 800F1334  40 82 00 0C */	bne lbl_800F1340
/* 800F1338  38 60 00 01 */	li r3, 1
/* 800F133C  48 00 00 84 */	b lbl_800F13C0
lbl_800F1340:
/* 800F1340  B3 FC 04 E6 */	sth r31, 0x4e6(r28)
/* 800F1344  7F 83 E3 78 */	mr r3, r28
/* 800F1348  38 80 00 01 */	li r4, 1
/* 800F134C  4B FD D8 8D */	bl checkSubjectEnd__9daAlink_cFi
/* 800F1350  2C 03 00 00 */	cmpwi r3, 0
/* 800F1354  41 82 00 10 */	beq lbl_800F1364
/* 800F1358  7F 83 E3 78 */	mr r3, r28
/* 800F135C  4B FF F6 25 */	bl procHorseWaitInit__9daAlink_cFv
/* 800F1360  48 00 00 5C */	b lbl_800F13BC
lbl_800F1364:
/* 800F1364  7F 83 E3 78 */	mr r3, r28
/* 800F1368  4B FC 89 C5 */	bl checkNextActionFromButton__9daAlink_cFv
/* 800F136C  2C 03 00 00 */	cmpwi r3, 0
/* 800F1370  41 82 00 40 */	beq lbl_800F13B0
/* 800F1374  7F 83 E3 78 */	mr r3, r28
/* 800F1378  4B FC 9C 09 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800F137C  2C 03 00 00 */	cmpwi r3, 0
/* 800F1380  41 82 00 28 */	beq lbl_800F13A8
/* 800F1384  93 BC 31 90 */	stw r29, 0x3190(r28)
/* 800F1388  80 1C 31 90 */	lwz r0, 0x3190(r28)
/* 800F138C  B0 1C 05 9E */	sth r0, 0x59e(r28)
/* 800F1390  A8 1C 05 9C */	lha r0, 0x59c(r28)
/* 800F1394  B0 1C 31 0A */	sth r0, 0x310a(r28)
/* 800F1398  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 800F139C  80 1C 31 90 */	lwz r0, 0x3190(r28)
/* 800F13A0  7C 03 02 14 */	add r0, r3, r0
/* 800F13A4  B0 1C 31 0C */	sth r0, 0x310c(r28)
lbl_800F13A8:
/* 800F13A8  38 60 00 01 */	li r3, 1
/* 800F13AC  48 00 00 14 */	b lbl_800F13C0
lbl_800F13B0:
/* 800F13B0  7F 83 E3 78 */	mr r3, r28
/* 800F13B4  7F C4 F3 78 */	mr r4, r30
/* 800F13B8  4B FF DB 79 */	bl setRideSubjectAngle__9daAlink_cFs
lbl_800F13BC:
/* 800F13BC  38 60 00 01 */	li r3, 1
lbl_800F13C0:
/* 800F13C0  39 61 00 20 */	addi r11, r1, 0x20
/* 800F13C4  48 27 0E 61 */	bl _restgpr_28
/* 800F13C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F13CC  7C 08 03 A6 */	mtlr r0
/* 800F13D0  38 21 00 20 */	addi r1, r1, 0x20
/* 800F13D4  4E 80 00 20 */	blr 
