lbl_80271D18:
/* 80271D18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80271D1C  7C 08 02 A6 */	mflr r0
/* 80271D20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80271D24  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80271D28  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80271D2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80271D30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80271D34  80 0D 8C 20 */	lwz r0, rootHeap__9JFWSystem(r13)
/* 80271D38  28 00 00 00 */	cmplwi r0, 0
/* 80271D3C  40 82 00 08 */	bne lbl_80271D44
/* 80271D40  4B FF FF 91 */	bl firstInit__9JFWSystemFv
lbl_80271D44:
/* 80271D44  38 00 00 01 */	li r0, 1
/* 80271D48  98 0D 8C 3C */	stb r0, data_804511BC(r13)
/* 80271D4C  80 6D 81 FC */	lwz r3, aramAudioBufSize__Q29JFWSystem11CSetUpParam(r13)
/* 80271D50  80 8D 82 00 */	lwz r4, aramGraphBufSize__Q29JFWSystem11CSetUpParam(r13)
/* 80271D54  80 AD 82 04 */	lwz r5, streamPriority__Q29JFWSystem11CSetUpParam(r13)
/* 80271D58  80 CD 82 08 */	lwz r6, decompPriority__Q29JFWSystem11CSetUpParam(r13)
/* 80271D5C  80 ED 82 0C */	lwz r7, aPiecePriority__Q29JFWSystem11CSetUpParam(r13)
/* 80271D60  48 06 02 45 */	bl create__7JKRAramFUlUllll
/* 80271D64  38 60 00 7C */	li r3, 0x7c
/* 80271D68  48 05 CE E5 */	bl __nw__FUl
/* 80271D6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80271D70  41 82 00 1C */	beq lbl_80271D8C
/* 80271D74  48 0C EF 11 */	bl OSGetCurrentThread
/* 80271D78  7C 64 1B 78 */	mr r4, r3
/* 80271D7C  7F E3 FB 78 */	mr r3, r31
/* 80271D80  38 A0 00 04 */	li r5, 4
/* 80271D84  48 05 F9 35 */	bl __ct__9JKRThreadFP8OSThreadi
/* 80271D88  7C 7F 1B 78 */	mr r31, r3
lbl_80271D8C:
/* 80271D8C  93 ED 8C 28 */	stw r31, mainThread__9JFWSystem(r13)
/* 80271D90  80 6D 82 14 */	lwz r3, renderMode__Q29JFWSystem11CSetUpParam(r13)
/* 80271D94  48 07 2E C1 */	bl createManager__8JUTVideoFPC16_GXRenderModeObj
/* 80271D98  83 ED 81 F8 */	lwz r31, fifoBufSize__Q29JFWSystem11CSetUpParam(r13)
/* 80271D9C  38 60 00 1C */	li r3, 0x1c
/* 80271DA0  48 05 CE AD */	bl __nw__FUl
/* 80271DA4  28 03 00 00 */	cmplwi r3, 0
/* 80271DA8  41 82 00 0C */	beq lbl_80271DB4
/* 80271DAC  7F E4 FB 78 */	mr r4, r31
/* 80271DB0  48 06 CD A9 */	bl __ct__12JUTGraphFifoFUl
lbl_80271DB4:
/* 80271DB4  48 06 EA E5 */	bl init__10JUTGamePadFv
/* 80271DB8  48 07 24 89 */	bl start__14JUTDirectPrintFv
/* 80271DBC  7C 7E 1B 78 */	mr r30, r3
/* 80271DC0  48 07 2B 9D */	bl create__12JUTAssertionFv
/* 80271DC4  7F C3 F3 78 */	mr r3, r30
/* 80271DC8  48 07 00 79 */	bl create__12JUTExceptionFP14JUTDirectPrint
/* 80271DCC  38 60 00 70 */	li r3, 0x70
/* 80271DD0  48 05 CE 7D */	bl __nw__FUl
/* 80271DD4  7C 60 1B 79 */	or. r0, r3, r3
/* 80271DD8  41 82 00 14 */	beq lbl_80271DEC
/* 80271DDC  80 8D 82 10 */	lwz r4, systemFontRes__Q29JFWSystem11CSetUpParam(r13)
/* 80271DE0  38 A0 00 00 */	li r5, 0
/* 80271DE4  48 06 D1 B1 */	bl __ct__10JUTResFontFPC7ResFONTP7JKRHeap
/* 80271DE8  7C 60 1B 78 */	mr r0, r3
lbl_80271DEC:
/* 80271DEC  90 0D 8C 30 */	stw r0, systemFont__9JFWSystem(r13)
/* 80271DF0  38 60 00 00 */	li r3, 0
/* 80271DF4  38 80 00 00 */	li r4, 0
/* 80271DF8  48 06 E3 99 */	bl start__10JUTDbPrintFP7JUTFontP7JKRHeap
/* 80271DFC  90 6D 8C 2C */	stw r3, debugPrint__9JFWSystem(r13)
/* 80271E00  80 8D 8C 30 */	lwz r4, systemFont__9JFWSystem(r13)
/* 80271E04  48 06 E4 01 */	bl changeFont__10JUTDbPrintFP7JUTFont
/* 80271E08  38 60 00 00 */	li r3, 0
/* 80271E0C  48 07 63 E9 */	bl createManager__17JUTConsoleManagerFP7JKRHeap
/* 80271E10  90 6D 8C 34 */	stw r3, systemConsoleManager__9JFWSystem(r13)
/* 80271E14  38 60 00 3C */	li r3, 0x3c
/* 80271E18  38 80 00 C8 */	li r4, 0xc8
/* 80271E1C  38 A0 00 00 */	li r5, 0
/* 80271E20  48 07 55 35 */	bl create__10JUTConsoleFUiUiP7JKRHeap
/* 80271E24  7C 7F 1B 78 */	mr r31, r3
/* 80271E28  93 ED 8C 38 */	stw r31, systemConsole__9JFWSystem(r13)
/* 80271E2C  83 CD 8C 30 */	lwz r30, systemFont__9JFWSystem(r13)
/* 80271E30  93 C3 00 4C */	stw r30, 0x4c(r3)
/* 80271E34  7F C3 F3 78 */	mr r3, r30
/* 80271E38  81 9E 00 00 */	lwz r12, 0(r30)
/* 80271E3C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80271E40  7D 89 03 A6 */	mtctr r12
/* 80271E44  4E 80 04 21 */	bctrl 
/* 80271E48  C8 22 B8 48 */	lfd f1, lit_2245(r2)
/* 80271E4C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80271E50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80271E54  3C 00 43 30 */	lis r0, 0x4330
/* 80271E58  90 01 00 08 */	stw r0, 8(r1)
/* 80271E5C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80271E60  EF E0 08 28 */	fsubs f31, f0, f1
/* 80271E64  7F C3 F3 78 */	mr r3, r30
/* 80271E68  81 9E 00 00 */	lwz r12, 0(r30)
/* 80271E6C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80271E70  7D 89 03 A6 */	mtctr r12
/* 80271E74  4E 80 04 21 */	bctrl 
/* 80271E78  C8 22 B8 48 */	lfd f1, lit_2245(r2)
/* 80271E7C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80271E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80271E84  3C 00 43 30 */	lis r0, 0x4330
/* 80271E88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80271E8C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80271E90  EC 00 08 28 */	fsubs f0, f0, f1
/* 80271E94  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 80271E98  D3 FF 00 54 */	stfs f31, 0x54(r31)
/* 80271E9C  80 6D 82 14 */	lwz r3, renderMode__Q29JFWSystem11CSetUpParam(r13)
/* 80271EA0  A0 03 00 06 */	lhz r0, 6(r3)
/* 80271EA4  28 00 01 2C */	cmplwi r0, 0x12c
/* 80271EA8  40 80 00 98 */	bge lbl_80271F40
/* 80271EAC  80 6D 8C 30 */	lwz r3, systemFont__9JFWSystem(r13)
/* 80271EB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80271EB4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80271EB8  7D 89 03 A6 */	mtctr r12
/* 80271EBC  4E 80 04 21 */	bctrl 
/* 80271EC0  C8 22 B8 48 */	lfd f1, lit_2245(r2)
/* 80271EC4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80271EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80271ECC  3C 00 43 30 */	lis r0, 0x4330
/* 80271ED0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80271ED4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80271ED8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80271EDC  C0 02 B8 40 */	lfs f0, lit_2242(r2)
/* 80271EE0  EF E0 00 72 */	fmuls f31, f0, f1
/* 80271EE4  80 6D 8C 30 */	lwz r3, systemFont__9JFWSystem(r13)
/* 80271EE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80271EEC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80271EF0  7D 89 03 A6 */	mtctr r12
/* 80271EF4  4E 80 04 21 */	bctrl 
/* 80271EF8  C8 22 B8 48 */	lfd f1, lit_2245(r2)
/* 80271EFC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80271F00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80271F04  3C 00 43 30 */	lis r0, 0x4330
/* 80271F08  90 01 00 08 */	stw r0, 8(r1)
/* 80271F0C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80271F10  EC 20 08 28 */	fsubs f1, f0, f1
/* 80271F14  C0 02 B8 44 */	lfs f0, lit_2243(r2)
/* 80271F18  EC 00 00 72 */	fmuls f0, f0, f1
/* 80271F1C  80 6D 8C 38 */	lwz r3, systemConsole__9JFWSystem(r13)
/* 80271F20  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80271F24  D3 E3 00 54 */	stfs f31, 0x54(r3)
/* 80271F28  80 6D 8C 38 */	lwz r3, systemConsole__9JFWSystem(r13)
/* 80271F2C  38 00 00 14 */	li r0, 0x14
/* 80271F30  90 03 00 40 */	stw r0, 0x40(r3)
/* 80271F34  38 00 00 19 */	li r0, 0x19
/* 80271F38  90 03 00 44 */	stw r0, 0x44(r3)
/* 80271F3C  48 00 00 84 */	b lbl_80271FC0
lbl_80271F40:
/* 80271F40  80 6D 8C 30 */	lwz r3, systemFont__9JFWSystem(r13)
/* 80271F44  81 83 00 00 */	lwz r12, 0(r3)
/* 80271F48  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80271F4C  7D 89 03 A6 */	mtctr r12
/* 80271F50  4E 80 04 21 */	bctrl 
/* 80271F54  C8 22 B8 48 */	lfd f1, lit_2245(r2)
/* 80271F58  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80271F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80271F60  3C 00 43 30 */	lis r0, 0x4330
/* 80271F64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80271F68  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80271F6C  EF E0 08 28 */	fsubs f31, f0, f1
/* 80271F70  80 6D 8C 30 */	lwz r3, systemFont__9JFWSystem(r13)
/* 80271F74  81 83 00 00 */	lwz r12, 0(r3)
/* 80271F78  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80271F7C  7D 89 03 A6 */	mtctr r12
/* 80271F80  4E 80 04 21 */	bctrl 
/* 80271F84  C8 22 B8 48 */	lfd f1, lit_2245(r2)
/* 80271F88  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80271F8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80271F90  3C 00 43 30 */	lis r0, 0x4330
/* 80271F94  90 01 00 08 */	stw r0, 8(r1)
/* 80271F98  C8 01 00 08 */	lfd f0, 8(r1)
/* 80271F9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80271FA0  80 6D 8C 38 */	lwz r3, systemConsole__9JFWSystem(r13)
/* 80271FA4  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80271FA8  D3 E3 00 54 */	stfs f31, 0x54(r3)
/* 80271FAC  80 6D 8C 38 */	lwz r3, systemConsole__9JFWSystem(r13)
/* 80271FB0  38 00 00 14 */	li r0, 0x14
/* 80271FB4  90 03 00 40 */	stw r0, 0x40(r3)
/* 80271FB8  38 00 00 32 */	li r0, 0x32
/* 80271FBC  90 03 00 44 */	stw r0, 0x44(r3)
lbl_80271FC0:
/* 80271FC0  80 6D 8C 38 */	lwz r3, systemConsole__9JFWSystem(r13)
/* 80271FC4  38 00 00 19 */	li r0, 0x19
/* 80271FC8  90 03 00 48 */	stw r0, 0x48(r3)
/* 80271FCC  80 03 00 48 */	lwz r0, 0x48(r3)
/* 80271FD0  80 83 00 24 */	lwz r4, 0x24(r3)
/* 80271FD4  7C 00 20 40 */	cmplw r0, r4
/* 80271FD8  40 81 00 08 */	ble lbl_80271FE0
/* 80271FDC  90 83 00 48 */	stw r4, 0x48(r3)
lbl_80271FE0:
/* 80271FE0  38 00 00 00 */	li r0, 0
/* 80271FE4  80 6D 8C 38 */	lwz r3, systemConsole__9JFWSystem(r13)
/* 80271FE8  98 03 00 68 */	stb r0, 0x68(r3)
/* 80271FEC  38 00 00 03 */	li r0, 3
/* 80271FF0  80 6D 8C 38 */	lwz r3, systemConsole__9JFWSystem(r13)
/* 80271FF4  90 03 00 58 */	stw r0, 0x58(r3)
/* 80271FF8  80 6D 8C 38 */	lwz r3, systemConsole__9JFWSystem(r13)
/* 80271FFC  48 07 65 25 */	bl JUTSetReportConsole
/* 80272000  80 6D 8C 38 */	lwz r3, systemConsole__9JFWSystem(r13)
/* 80272004  48 07 65 2D */	bl JUTSetWarningConsole
/* 80272008  80 6D 8C 24 */	lwz r3, systemHeap__9JFWSystem(r13)
/* 8027200C  80 8D 82 18 */	lwz r4, exConsoleBufferSize__Q29JFWSystem11CSetUpParam(r13)
/* 80272010  38 A0 00 04 */	li r5, 4
/* 80272014  48 05 C4 C1 */	bl alloc__7JKRHeapFUli
/* 80272018  80 8D 82 18 */	lwz r4, exConsoleBufferSize__Q29JFWSystem11CSetUpParam(r13)
/* 8027201C  48 07 1F D1 */	bl createConsole__12JUTExceptionFPvUl
/* 80272020  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80272024  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80272028  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027202C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80272030  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80272034  7C 08 03 A6 */	mtlr r0
/* 80272038  38 21 00 30 */	addi r1, r1, 0x30
/* 8027203C  4E 80 00 20 */	blr 
