lbl_802E3FEC:
/* 802E3FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E3FF0  7C 08 02 A6 */	mflr r0
/* 802E3FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E3FF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E3FFC  93 C1 00 08 */	stw r30, 8(r1)
/* 802E4000  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E4004  7C 9F 23 78 */	mr r31, r4
/* 802E4008  41 82 00 AC */	beq lbl_802E40B4
/* 802E400C  28 1F 00 00 */	cmplwi r31, 0
/* 802E4010  40 82 00 08 */	bne lbl_802E4018
/* 802E4014  48 00 00 A0 */	b lbl_802E40B4
lbl_802E4018:
/* 802E4018  7F E3 FB 78 */	mr r3, r31
/* 802E401C  38 80 00 32 */	li r4, 0x32
/* 802E4020  48 00 35 BD */	bl getLineFromObjectSize__10JUTConsoleFUlUi
/* 802E4024  28 03 00 00 */	cmplwi r3, 0
/* 802E4028  41 82 00 8C */	beq lbl_802E40B4
/* 802E402C  93 CD 8F 94 */	stw r30, sConsoleBuffer__12JUTException(r13)
/* 802E4030  93 ED 8F 98 */	stw r31, sConsoleBufferSize__12JUTException(r13)
/* 802E4034  38 60 00 32 */	li r3, 0x32
/* 802E4038  7F C4 F3 78 */	mr r4, r30
/* 802E403C  7F E5 FB 78 */	mr r5, r31
/* 802E4040  48 00 33 A5 */	bl create__10JUTConsoleFUiPvUl
/* 802E4044  7C 64 1B 78 */	mr r4, r3
/* 802E4048  90 8D 8F 9C */	stw r4, sConsole__12JUTException(r13)
/* 802E404C  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E4050  48 00 44 75 */	bl setDirectConsole__17JUTConsoleManagerFP10JUTConsole
/* 802E4054  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E4058  C0 02 C6 54 */	lfs f0, lit_3034(r2)
/* 802E405C  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 802E4060  C0 02 C6 58 */	lfs f0, lit_3035(r2)
/* 802E4064  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 802E4068  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E406C  38 00 00 0F */	li r0, 0xf
/* 802E4070  90 03 00 40 */	stw r0, 0x40(r3)
/* 802E4074  38 00 00 1A */	li r0, 0x1a
/* 802E4078  90 03 00 44 */	stw r0, 0x44(r3)
/* 802E407C  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E4080  38 00 00 17 */	li r0, 0x17
/* 802E4084  90 03 00 48 */	stw r0, 0x48(r3)
/* 802E4088  80 03 00 48 */	lwz r0, 0x48(r3)
/* 802E408C  80 83 00 24 */	lwz r4, 0x24(r3)
/* 802E4090  7C 00 20 40 */	cmplw r0, r4
/* 802E4094  40 81 00 08 */	ble lbl_802E409C
/* 802E4098  90 83 00 48 */	stw r4, 0x48(r3)
lbl_802E409C:
/* 802E409C  38 00 00 01 */	li r0, 1
/* 802E40A0  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E40A4  98 03 00 68 */	stb r0, 0x68(r3)
/* 802E40A8  38 00 00 03 */	li r0, 3
/* 802E40AC  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E40B0  90 03 00 58 */	stw r0, 0x58(r3)
lbl_802E40B4:
/* 802E40B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E40B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E40BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E40C0  7C 08 03 A6 */	mtlr r0
/* 802E40C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802E40C8  4E 80 00 20 */	blr 
