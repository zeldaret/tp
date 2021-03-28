lbl_8000B95C:
/* 8000B95C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8000B960  7C 08 02 A6 */	mflr r0
/* 8000B964  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8000B968  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8000B96C  48 35 68 6D */	bl _savegpr_28
/* 8000B970  83 8D 8F 88 */	lwz r28, sErrorManager__12JUTException(r13)
/* 8000B974  83 ED 8F 9C */	lwz r31, sConsole__12JUTException(r13)
/* 8000B978  7F FE FB 78 */	mr r30, r31
/* 8000B97C  80 04 01 98 */	lwz r0, 0x198(r4)
/* 8000B980  54 08 00 3A */	rlwinm r8, r0, 0, 0, 0x1d
/* 8000B984  3C 60 80 00 */	lis r3, 0x8000 /* 0x8000000C@ha */
/* 8000B988  38 03 00 0C */	addi r0, r3, 0x000C /* 0x8000000C@l */
/* 8000B98C  7C 08 00 40 */	cmplw r8, r0
/* 8000B990  41 80 00 3C */	blt lbl_8000B9CC
/* 8000B994  3C 60 83 00 */	lis r3, 0x8300 /* 0x82FFFFFF@ha */
/* 8000B998  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x82FFFFFF@l */
/* 8000B99C  7C 08 00 40 */	cmplw r8, r0
/* 8000B9A0  40 80 00 2C */	bge lbl_8000B9CC
/* 8000B9A4  7F E3 FB 78 */	mr r3, r31
/* 8000B9A8  3C 80 80 37 */	lis r4, m_Do_m_Do_machine__stringBase0@ha
/* 8000B9AC  38 84 3D E8 */	addi r4, r4, m_Do_m_Do_machine__stringBase0@l
/* 8000B9B0  38 84 01 A1 */	addi r4, r4, 0x1a1
/* 8000B9B4  80 A8 FF F4 */	lwz r5, -0xc(r8)
/* 8000B9B8  80 C8 FF F8 */	lwz r6, -8(r8)
/* 8000B9BC  80 E8 FF FC */	lwz r7, -4(r8)
/* 8000B9C0  81 08 00 00 */	lwz r8, 0(r8)
/* 8000B9C4  4C C6 31 82 */	crclr 6
/* 8000B9C8  48 2D C1 F1 */	bl print_f__10JUTConsoleFPCce
lbl_8000B9CC:
/* 8000B9CC  38 61 00 10 */	addi r3, r1, 0x10
/* 8000B9D0  38 80 00 00 */	li r4, 0
/* 8000B9D4  48 2D 4D 09 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 8000B9D8  38 01 00 10 */	addi r0, r1, 0x10
/* 8000B9DC  90 1C 00 84 */	stw r0, 0x84(r28)
/* 8000B9E0  38 00 FF FF */	li r0, -1
/* 8000B9E4  90 1C 00 88 */	stw r0, 0x88(r28)
/* 8000B9E8  7F 83 E3 78 */	mr r3, r28
/* 8000B9EC  48 2D 75 2D */	bl isEnablePad__12JUTExceptionCFv
/* 8000B9F0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8000B9F4  7C 00 00 34 */	cntlzw r0, r0
/* 8000B9F8  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 8000B9FC  40 82 02 30 */	bne lbl_8000BC2C
/* 8000BA00  7F E3 FB 78 */	mr r3, r31
/* 8000BA04  3C 80 80 37 */	lis r4, m_Do_m_Do_machine__stringBase0@ha
/* 8000BA08  38 84 3D E8 */	addi r4, r4, m_Do_m_Do_machine__stringBase0@l
/* 8000BA0C  38 84 01 BF */	addi r4, r4, 0x1bf
/* 8000BA10  48 2D C2 29 */	bl print__10JUTConsoleFPCc
/* 8000BA14  7F E3 FB 78 */	mr r3, r31
/* 8000BA18  3C 80 80 37 */	lis r4, m_Do_m_Do_machine__stringBase0@ha
/* 8000BA1C  38 84 3D E8 */	addi r4, r4, m_Do_m_Do_machine__stringBase0@l
/* 8000BA20  38 84 01 EB */	addi r4, r4, 0x1eb
/* 8000BA24  48 2D C2 15 */	bl print__10JUTConsoleFPCc
/* 8000BA28  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 8000BA2C  38 80 00 01 */	li r4, 1
/* 8000BA30  48 2D CA 21 */	bl drawDirect__17JUTConsoleManagerCFb
/* 8000BA34  48 33 1C D5 */	bl OSEnableInterrupts
/* 8000BA38  3B E0 00 00 */	li r31, 0
/* 8000BA3C  3B A0 00 00 */	li r29, 0
lbl_8000BA40:
/* 8000BA40  38 61 00 08 */	addi r3, r1, 8
/* 8000BA44  38 81 00 0C */	addi r4, r1, 0xc
/* 8000BA48  4B FF FD 21 */	bl exceptionReadPad__FPUlPUl
/* 8000BA4C  88 0D 8F 81 */	lbz r0, struct_80451500+0x1(r13)
/* 8000BA50  28 00 00 00 */	cmplwi r0, 0
/* 8000BA54  41 82 00 14 */	beq lbl_8000BA68
/* 8000BA58  38 60 00 01 */	li r3, 1
/* 8000BA5C  38 80 00 00 */	li r4, 0
/* 8000BA60  38 A0 00 00 */	li r5, 0
/* 8000BA64  48 33 3E 49 */	bl OSResetSystem
lbl_8000BA68:
/* 8000BA68  38 60 00 00 */	li r3, 0
/* 8000BA6C  80 01 00 08 */	lwz r0, 8(r1)
/* 8000BA70  28 00 10 00 */	cmplwi r0, 0x1000
/* 8000BA74  40 82 00 10 */	bne lbl_8000BA84
/* 8000BA78  7F C3 F3 78 */	mr r3, r30
/* 8000BA7C  48 00 C6 D1 */	bl exception_addition__FP10JUTConsole
/* 8000BA80  38 60 00 01 */	li r3, 1
lbl_8000BA84:
/* 8000BA84  80 01 00 08 */	lwz r0, 8(r1)
/* 8000BA88  28 00 00 10 */	cmplwi r0, 0x10
/* 8000BA8C  40 82 00 80 */	bne lbl_8000BB0C
/* 8000BA90  80 8D 8C 38 */	lwz r4, systemConsole__9JFWSystem(r13)
/* 8000BA94  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 8000BA98  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8000BA9C  7C 00 20 40 */	cmplw r0, r4
/* 8000BAA0  41 82 00 58 */	beq lbl_8000BAF8
/* 8000BAA4  7C 9E 23 78 */	mr r30, r4
/* 8000BAA8  C0 02 81 00 */	lfs f0, lit_3940(r2)
/* 8000BAAC  D0 04 00 50 */	stfs f0, 0x50(r4)
/* 8000BAB0  C0 02 81 04 */	lfs f0, lit_3941(r2)
/* 8000BAB4  D0 04 00 54 */	stfs f0, 0x54(r4)
/* 8000BAB8  38 00 00 08 */	li r0, 8
/* 8000BABC  90 04 00 40 */	stw r0, 0x40(r4)
/* 8000BAC0  38 00 00 20 */	li r0, 0x20
/* 8000BAC4  90 04 00 44 */	stw r0, 0x44(r4)
/* 8000BAC8  38 00 00 17 */	li r0, 0x17
/* 8000BACC  90 04 00 48 */	stw r0, 0x48(r4)
/* 8000BAD0  80 04 00 48 */	lwz r0, 0x48(r4)
/* 8000BAD4  80 64 00 24 */	lwz r3, 0x24(r4)
/* 8000BAD8  7C 00 18 40 */	cmplw r0, r3
/* 8000BADC  40 81 00 08 */	ble lbl_8000BAE4
/* 8000BAE0  90 64 00 48 */	stw r3, 0x48(r4)
lbl_8000BAE4:
/* 8000BAE4  38 00 00 01 */	li r0, 1
/* 8000BAE8  98 04 00 68 */	stb r0, 0x68(r4)
/* 8000BAEC  38 00 00 03 */	li r0, 3
/* 8000BAF0  90 04 00 58 */	stw r0, 0x58(r4)
/* 8000BAF4  48 00 00 08 */	b lbl_8000BAFC
lbl_8000BAF8:
/* 8000BAF8  83 CD 8F 9C */	lwz r30, sConsole__12JUTException(r13)
lbl_8000BAFC:
/* 8000BAFC  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 8000BB00  7F C4 F3 78 */	mr r4, r30
/* 8000BB04  48 2D C9 C1 */	bl setDirectConsole__17JUTConsoleManagerFP10JUTConsole
/* 8000BB08  38 60 00 01 */	li r3, 1
lbl_8000BB0C:
/* 8000BB0C  80 01 00 08 */	lwz r0, 8(r1)
/* 8000BB10  28 00 01 00 */	cmplwi r0, 0x100
/* 8000BB14  40 82 00 14 */	bne lbl_8000BB28
/* 8000BB18  7F C3 F3 78 */	mr r3, r30
/* 8000BB1C  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8000BB20  48 2D C5 89 */	bl scroll__10JUTConsoleFi
/* 8000BB24  38 60 00 01 */	li r3, 1
lbl_8000BB28:
/* 8000BB28  80 01 00 08 */	lwz r0, 8(r1)
/* 8000BB2C  28 00 02 00 */	cmplwi r0, 0x200
/* 8000BB30  40 82 00 18 */	bne lbl_8000BB48
/* 8000BB34  7F C3 F3 78 */	mr r3, r30
/* 8000BB38  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8000BB3C  7C 80 00 D0 */	neg r4, r0
/* 8000BB40  48 2D C5 69 */	bl scroll__10JUTConsoleFi
/* 8000BB44  38 60 00 01 */	li r3, 1
lbl_8000BB48:
/* 8000BB48  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8000BB4C  28 00 00 08 */	cmplwi r0, 8
/* 8000BB50  40 82 00 4C */	bne lbl_8000BB9C
/* 8000BB54  7F C3 F3 78 */	mr r3, r30
/* 8000BB58  2C 1F 00 03 */	cmpwi r31, 3
/* 8000BB5C  40 80 00 0C */	bge lbl_8000BB68
/* 8000BB60  38 80 FF FF */	li r4, -1
/* 8000BB64  48 00 00 24 */	b lbl_8000BB88
lbl_8000BB68:
/* 8000BB68  2C 1F 00 05 */	cmpwi r31, 5
/* 8000BB6C  40 80 00 0C */	bge lbl_8000BB78
/* 8000BB70  38 80 FF FE */	li r4, -2
/* 8000BB74  48 00 00 14 */	b lbl_8000BB88
lbl_8000BB78:
/* 8000BB78  2C 1F 00 07 */	cmpwi r31, 7
/* 8000BB7C  38 80 FF F8 */	li r4, -8
/* 8000BB80  40 80 00 08 */	bge lbl_8000BB88
/* 8000BB84  38 80 FF FC */	li r4, -4
lbl_8000BB88:
/* 8000BB88  48 2D C5 21 */	bl scroll__10JUTConsoleFi
/* 8000BB8C  38 60 00 01 */	li r3, 1
/* 8000BB90  3B A0 00 00 */	li r29, 0
/* 8000BB94  3B FF 00 01 */	addi r31, r31, 1
/* 8000BB98  48 00 00 5C */	b lbl_8000BBF4
lbl_8000BB9C:
/* 8000BB9C  28 00 00 04 */	cmplwi r0, 4
/* 8000BBA0  40 82 00 4C */	bne lbl_8000BBEC
/* 8000BBA4  7F C3 F3 78 */	mr r3, r30
/* 8000BBA8  2C 1D 00 03 */	cmpwi r29, 3
/* 8000BBAC  40 80 00 0C */	bge lbl_8000BBB8
/* 8000BBB0  38 80 00 01 */	li r4, 1
/* 8000BBB4  48 00 00 24 */	b lbl_8000BBD8
lbl_8000BBB8:
/* 8000BBB8  2C 1D 00 05 */	cmpwi r29, 5
/* 8000BBBC  40 80 00 0C */	bge lbl_8000BBC8
/* 8000BBC0  38 80 00 02 */	li r4, 2
/* 8000BBC4  48 00 00 14 */	b lbl_8000BBD8
lbl_8000BBC8:
/* 8000BBC8  2C 1D 00 07 */	cmpwi r29, 7
/* 8000BBCC  38 80 00 08 */	li r4, 8
/* 8000BBD0  40 80 00 08 */	bge lbl_8000BBD8
/* 8000BBD4  38 80 00 04 */	li r4, 4
lbl_8000BBD8:
/* 8000BBD8  48 2D C4 D1 */	bl scroll__10JUTConsoleFi
/* 8000BBDC  38 60 00 01 */	li r3, 1
/* 8000BBE0  3B E0 00 00 */	li r31, 0
/* 8000BBE4  3B BD 00 01 */	addi r29, r29, 1
/* 8000BBE8  48 00 00 0C */	b lbl_8000BBF4
lbl_8000BBEC:
/* 8000BBEC  3B E0 00 00 */	li r31, 0
/* 8000BBF0  3B A0 00 00 */	li r29, 0
lbl_8000BBF4:
/* 8000BBF4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8000BBF8  28 00 00 01 */	cmplwi r0, 1
/* 8000BBFC  40 82 00 24 */	bne lbl_8000BC20
/* 8000BC00  48 34 1C BD */	bl VIGetRetraceCount
/* 8000BC04  7C 7C 1B 78 */	mr r28, r3
lbl_8000BC08:
/* 8000BC08  48 34 1C B5 */	bl VIGetRetraceCount
/* 8000BC0C  7C 1C 18 40 */	cmplw r28, r3
/* 8000BC10  41 82 FF F8 */	beq lbl_8000BC08
/* 8000BC14  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 8000BC18  38 80 00 01 */	li r4, 1
/* 8000BC1C  48 2D C8 35 */	bl drawDirect__17JUTConsoleManagerCFb
lbl_8000BC20:
/* 8000BC20  38 60 00 1E */	li r3, 0x1e
/* 8000BC24  48 2D 7D 5D */	bl waitTime__12JUTExceptionFl
/* 8000BC28  4B FF FE 18 */	b lbl_8000BA40
lbl_8000BC2C:
/* 8000BC2C  7F E3 FB 78 */	mr r3, r31
/* 8000BC30  48 00 C5 1D */	bl exception_addition__FP10JUTConsole
/* 8000BC34  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 8000BC38  38 80 00 01 */	li r4, 1
/* 8000BC3C  48 2D C8 15 */	bl drawDirect__17JUTConsoleManagerCFb
lbl_8000BC40:
/* 8000BC40  7F E3 FB 78 */	mr r3, r31
/* 8000BC44  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8000BC48  7C 80 00 D0 */	neg r4, r0
/* 8000BC4C  48 2D C4 5D */	bl scroll__10JUTConsoleFi
/* 8000BC50  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 8000BC54  38 80 00 01 */	li r4, 1
/* 8000BC58  48 2D C7 F9 */	bl drawDirect__17JUTConsoleManagerCFb
/* 8000BC5C  38 60 07 D0 */	li r3, 0x7d0
/* 8000BC60  48 2D 7D 21 */	bl waitTime__12JUTExceptionFl
lbl_8000BC64:
/* 8000BC64  83 DF 00 48 */	lwz r30, 0x48(r31)
/* 8000BC68  48 00 00 50 */	b lbl_8000BCB8
lbl_8000BC6C:
/* 8000BC6C  7F E3 FB 78 */	mr r3, r31
/* 8000BC70  38 80 00 01 */	li r4, 1
/* 8000BC74  48 2D C4 35 */	bl scroll__10JUTConsoleFi
/* 8000BC78  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 8000BC7C  38 80 00 01 */	li r4, 1
/* 8000BC80  48 2D C7 D1 */	bl drawDirect__17JUTConsoleManagerCFb
/* 8000BC84  83 9F 00 48 */	lwz r28, 0x48(r31)
/* 8000BC88  7F E3 FB 78 */	mr r3, r31
/* 8000BC8C  48 2D C5 1D */	bl getLineOffset__10JUTConsoleCFv
/* 8000BC90  7C 7D 1B 78 */	mr r29, r3
/* 8000BC94  7F E3 FB 78 */	mr r3, r31
/* 8000BC98  48 2D C4 ED */	bl getUsedLine__10JUTConsoleCFv
/* 8000BC9C  7C 7C 18 50 */	subf r3, r28, r3
/* 8000BCA0  38 03 00 01 */	addi r0, r3, 1
/* 8000BCA4  7C 00 E8 40 */	cmplw r0, r29
/* 8000BCA8  40 81 00 18 */	ble lbl_8000BCC0
/* 8000BCAC  38 60 00 14 */	li r3, 0x14
/* 8000BCB0  48 2D 7C D1 */	bl waitTime__12JUTExceptionFl
/* 8000BCB4  3B DE FF FF */	addi r30, r30, -1
lbl_8000BCB8:
/* 8000BCB8  28 1E 00 00 */	cmplwi r30, 0
/* 8000BCBC  40 82 FF B0 */	bne lbl_8000BC6C
lbl_8000BCC0:
/* 8000BCC0  38 60 0B B8 */	li r3, 0xbb8
/* 8000BCC4  48 2D 7C BD */	bl waitTime__12JUTExceptionFl
/* 8000BCC8  83 9F 00 48 */	lwz r28, 0x48(r31)
/* 8000BCCC  7F E3 FB 78 */	mr r3, r31
/* 8000BCD0  48 2D C4 D9 */	bl getLineOffset__10JUTConsoleCFv
/* 8000BCD4  7C 7D 1B 78 */	mr r29, r3
/* 8000BCD8  7F E3 FB 78 */	mr r3, r31
/* 8000BCDC  48 2D C4 A9 */	bl getUsedLine__10JUTConsoleCFv
/* 8000BCE0  7C 7C 18 50 */	subf r3, r28, r3
/* 8000BCE4  38 03 00 01 */	addi r0, r3, 1
/* 8000BCE8  7C 00 E8 40 */	cmplw r0, r29
/* 8000BCEC  40 81 FF 54 */	ble lbl_8000BC40
/* 8000BCF0  4B FF FF 74 */	b lbl_8000BC64
