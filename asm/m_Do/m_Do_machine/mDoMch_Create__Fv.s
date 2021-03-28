lbl_8000BD44:
/* 8000BD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000BD48  7C 08 02 A6 */	mflr r0
/* 8000BD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000BD50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000BD54  93 C1 00 08 */	stw r30, 8(r1)
/* 8000BD58  88 0D 80 00 */	lbz r0, data_80450580(r13)
/* 8000BD5C  7C 00 07 75 */	extsb. r0, r0
/* 8000BD60  41 82 00 10 */	beq lbl_8000BD70
/* 8000BD64  48 32 E1 99 */	bl OSGetConsoleType
/* 8000BD68  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 8000BD6C  40 82 00 08 */	bne lbl_8000BD74
lbl_8000BD70:
/* 8000BD70  4B FF AB 25 */	bl OSReportDisable
lbl_8000BD74:
/* 8000BD74  88 6D 86 70 */	lbz r3, data_80450BF0(r13)
/* 8000BD78  30 03 FF FF */	addic r0, r3, -1
/* 8000BD7C  7C 00 19 10 */	subfe r0, r0, r3
/* 8000BD80  98 0D 83 30 */	stb r0, data_804508B0(r13)
/* 8000BD84  38 00 00 01 */	li r0, 1
/* 8000BD88  90 0D 81 F0 */	stw r0, maxStdHeaps__Q29JFWSystem11CSetUpParam(r13)
/* 8000BD8C  48 32 F5 01 */	bl OSGetArenaHi
/* 8000BD90  7C 7F 1B 78 */	mr r31, r3
/* 8000BD94  48 32 F5 01 */	bl OSGetArenaLo
/* 8000BD98  3C 00 81 80 */	lis r0, 0x8180
/* 8000BD9C  7C 1F 00 40 */	cmplw r31, r0
/* 8000BDA0  40 81 00 18 */	ble lbl_8000BDB8
/* 8000BDA4  3C 1F FE 80 */	addis r0, r31, 0xfe80
/* 8000BDA8  7C 00 18 40 */	cmplw r0, r3
/* 8000BDAC  40 81 00 0C */	ble lbl_8000BDB8
/* 8000BDB0  7C 03 03 78 */	mr r3, r0
/* 8000BDB4  48 32 F4 E9 */	bl OSSetArenaHi
lbl_8000BDB8:
/* 8000BDB8  48 32 F4 D5 */	bl OSGetArenaHi
/* 8000BDBC  7C 7F 1B 78 */	mr r31, r3
/* 8000BDC0  48 32 F4 D5 */	bl OSGetArenaLo
/* 8000BDC4  7C 63 F8 50 */	subf r3, r3, r31
/* 8000BDC8  3B C3 FF 10 */	addi r30, r3, -240
/* 8000BDCC  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000BDD0  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000BDD4  38 63 02 55 */	addi r3, r3, 0x255
/* 8000BDD8  7F C4 F3 78 */	mr r4, r30
/* 8000BDDC  4B FF FF 19 */	bl my_PrintHeap__FPCcUl
/* 8000BDE0  80 6D 80 04 */	lwz r3, memMargin__7mDoMain(r13)
/* 8000BDE4  3C 03 00 01 */	addis r0, r3, 1
/* 8000BDE8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8000BDEC  41 82 00 08 */	beq lbl_8000BDF4
/* 8000BDF0  7F DE 1A 14 */	add r30, r30, r3
lbl_8000BDF4:
/* 8000BDF4  3C 9E FF 25 */	addis r4, r30, 0xff25
/* 8000BDF8  38 04 32 D0 */	addi r0, r4, 0x32d0
/* 8000BDFC  90 0D 81 F4 */	stw r0, sysHeapSize__Q29JFWSystem11CSetUpParam(r13)
/* 8000BE00  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000BE04  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000BE08  38 63 02 5E */	addi r3, r3, 0x25e
/* 8000BE0C  38 84 32 D0 */	addi r4, r4, 0x32d0
/* 8000BE10  4B FF FE E5 */	bl my_PrintHeap__FPCcUl
/* 8000BE14  3C 00 00 0A */	lis r0, 0xa
/* 8000BE18  90 0D 81 F8 */	stw r0, fifoBufSize__Q29JFWSystem11CSetUpParam(r13)
/* 8000BE1C  3C 00 00 A0 */	lis r0, 0xa0
/* 8000BE20  90 0D 81 FC */	stw r0, aramAudioBufSize__Q29JFWSystem11CSetUpParam(r13)
/* 8000BE24  38 00 FF FF */	li r0, -1
/* 8000BE28  90 0D 82 00 */	stw r0, aramGraphBufSize__Q29JFWSystem11CSetUpParam(r13)
/* 8000BE2C  48 33 3C 81 */	bl OSGetResetCode
/* 8000BE30  54 60 0F FF */	rlwinm. r0, r3, 1, 0x1f, 0x1f
/* 8000BE34  40 82 00 1C */	bne lbl_8000BE50
/* 8000BE38  48 34 1C CD */	bl VIGetDTVStatus
/* 8000BE3C  28 03 00 00 */	cmplwi r3, 0
/* 8000BE40  40 82 00 44 */	bne lbl_8000BE84
/* 8000BE44  38 60 00 00 */	li r3, 0
/* 8000BE48  48 33 48 DD */	bl OSSetProgressiveMode
/* 8000BE4C  48 00 00 38 */	b lbl_8000BE84
lbl_8000BE50:
/* 8000BE50  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 8000BE54  88 03 00 13 */	lbz r0, 0x13(r3)
/* 8000BE58  28 00 00 00 */	cmplwi r0, 0
/* 8000BE5C  41 82 00 28 */	beq lbl_8000BE84
/* 8000BE60  48 34 1C A5 */	bl VIGetDTVStatus
/* 8000BE64  28 03 00 00 */	cmplwi r3, 0
/* 8000BE68  41 82 00 1C */	beq lbl_8000BE84
/* 8000BE6C  4B FF F8 D1 */	bl mDoMch_IsProgressiveMode__Fv
/* 8000BE70  2C 03 00 00 */	cmpwi r3, 0
/* 8000BE74  41 82 00 10 */	beq lbl_8000BE84
/* 8000BE78  3C 60 80 3A */	lis r3, g_ntscZeldaProg@ha
/* 8000BE7C  38 03 2F 9C */	addi r0, r3, g_ntscZeldaProg@l
/* 8000BE80  90 0D 80 20 */	stw r0, mRenderModeObj__15mDoMch_render_c(r13)
lbl_8000BE84:
/* 8000BE84  80 0D 80 20 */	lwz r0, mRenderModeObj__15mDoMch_render_c(r13)
/* 8000BE88  90 0D 82 14 */	stw r0, renderMode__Q29JFWSystem11CSetUpParam(r13)
/* 8000BE8C  48 26 5E 45 */	bl firstInit__9JFWSystemFv
/* 8000BE90  38 60 18 00 */	li r3, 0x1800
/* 8000BE94  80 8D 8D F8 */	lwz r4, sRootHeap__7JKRHeap(r13)
/* 8000BE98  48 00 2E 55 */	bl mDoExt_createDbPrintHeap__FUlP7JKRHeap
/* 8000BE9C  7C 64 1B 78 */	mr r4, r3
/* 8000BEA0  38 60 00 00 */	li r3, 0
/* 8000BEA4  48 2D 42 ED */	bl start__10JUTDbPrintFP7JUTFontP7JKRHeap
/* 8000BEA8  80 6D 8D F8 */	lwz r3, sRootHeap__7JKRHeap(r13)
/* 8000BEAC  48 00 2E 15 */	bl mDoExt_createAssertHeap__FP7JKRHeap
/* 8000BEB0  48 26 5E 69 */	bl init__9JFWSystemFv
/* 8000BEB4  88 0D 80 00 */	lbz r0, data_80450580(r13)
/* 8000BEB8  7C 00 07 75 */	extsb. r0, r0
/* 8000BEBC  40 82 00 18 */	bne lbl_8000BED4
/* 8000BEC0  38 60 00 00 */	li r3, 0
/* 8000BEC4  48 2D 8D 71 */	bl setVisible__12JUTAssertionFb
/* 8000BEC8  38 00 00 00 */	li r0, 0
/* 8000BECC  80 6D 8F 48 */	lwz r3, sDebugPrint__10JUTDbPrint(r13)
/* 8000BED0  98 03 00 0C */	stb r0, 0xc(r3)
lbl_8000BED4:
/* 8000BED4  3C 60 80 01 */	lis r3, myMemoryErrorRoutine__FPvUli@ha
/* 8000BED8  38 63 B3 EC */	addi r3, r3, myMemoryErrorRoutine__FPvUli@l
/* 8000BEDC  48 2C 2C AD */	bl setErrorHandler__7JKRHeapFPFPvUli_v
/* 8000BEE0  80 6D 8D F8 */	lwz r3, sRootHeap__7JKRHeap(r13)
/* 8000BEE4  38 80 00 01 */	li r4, 1
/* 8000BEE8  48 2C 2C 91 */	bl setErrorFlag__7JKRHeapFb
/* 8000BEEC  80 6D 8C 24 */	lwz r3, systemHeap__9JFWSystem(r13)
/* 8000BEF0  38 80 00 01 */	li r4, 1
/* 8000BEF4  48 2C 2C 85 */	bl setErrorFlag__7JKRHeapFb
/* 8000BEF8  83 CD 8D F8 */	lwz r30, sRootHeap__7JKRHeap(r13)
/* 8000BEFC  38 60 10 00 */	li r3, 0x1000
/* 8000BF00  7F C4 F3 78 */	mr r4, r30
/* 8000BF04  48 00 2E 85 */	bl mDoExt_createCommandHeap__FUlP7JKRHeap
/* 8000BF08  7C 64 1B 78 */	mr r4, r3
/* 8000BF0C  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000BF10  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000BF14  38 63 02 6D */	addi r3, r3, 0x26d
/* 8000BF18  38 A0 10 00 */	li r5, 0x1000
/* 8000BF1C  4B FF FD DD */	bl my_SysPrintHeap__FPCcPvUl
/* 8000BF20  3C 60 00 8E */	lis r3, 0x008E /* 0x008DF400@ha */
/* 8000BF24  38 63 F4 00 */	addi r3, r3, 0xF400 /* 0x008DF400@l */
/* 8000BF28  7F C4 F3 78 */	mr r4, r30
/* 8000BF2C  48 00 2E 8D */	bl mDoExt_createArchiveHeap__FUlP7JKRHeap
/* 8000BF30  7C 64 1B 78 */	mr r4, r3
/* 8000BF34  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000BF38  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000BF3C  38 63 02 7C */	addi r3, r3, 0x27c
/* 8000BF40  3C A0 00 8E */	lis r5, 0x008E /* 0x008DF400@ha */
/* 8000BF44  38 A5 F4 00 */	addi r5, r5, 0xF400 /* 0x008DF400@l */
/* 8000BF48  4B FF FD B1 */	bl my_SysPrintHeap__FPCcPvUl
/* 8000BF4C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0007D000@ha */
/* 8000BF50  38 63 D0 00 */	addi r3, r3, 0xD000 /* 0x0007D000@l */
/* 8000BF54  7F C4 F3 78 */	mr r4, r30
/* 8000BF58  48 00 2E A5 */	bl mDoExt_createJ2dHeap__FUlP7JKRHeap
/* 8000BF5C  7C 64 1B 78 */	mr r4, r3
/* 8000BF60  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000BF64  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000BF68  38 63 02 8D */	addi r3, r3, 0x28d
/* 8000BF6C  3C A0 00 08 */	lis r5, 0x0008 /* 0x0007D000@ha */
/* 8000BF70  38 A5 D0 00 */	addi r5, r5, 0xD000 /* 0x0007D000@l */
/* 8000BF74  4B FF FD 85 */	bl my_SysPrintHeap__FPCcPvUl
/* 8000BF78  3C 60 00 45 */	lis r3, 0x0045 /* 0x0044E000@ha */
/* 8000BF7C  38 63 E0 00 */	addi r3, r3, 0xE000 /* 0x0044E000@l */
/* 8000BF80  7F C4 F3 78 */	mr r4, r30
/* 8000BF84  48 00 2D 99 */	bl mDoExt_createGameHeap__FUlP7JKRHeap
/* 8000BF88  7C 64 1B 78 */	mr r4, r3
/* 8000BF8C  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000BF90  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000BF94  38 63 02 9C */	addi r3, r3, 0x29c
/* 8000BF98  3C A0 00 45 */	lis r5, 0x0045 /* 0x0044E000@ha */
/* 8000BF9C  38 A5 E0 00 */	addi r5, r5, 0xE000 /* 0x0044E000@l */
/* 8000BFA0  4B FF FD 59 */	bl my_SysPrintHeap__FPCcPvUl
/* 8000BFA4  83 ED 8D F0 */	lwz r31, sSystemHeap__7JKRHeap(r13)
/* 8000BFA8  7F E3 FB 78 */	mr r3, r31
/* 8000BFAC  48 2C 27 81 */	bl getFreeSize__7JKRHeapFv
/* 8000BFB0  3F C3 FF FF */	addis r30, r3, 0xffff
/* 8000BFB4  7F C3 F3 78 */	mr r3, r30
/* 8000BFB8  7F E4 FB 78 */	mr r4, r31
/* 8000BFBC  48 00 2D 9D */	bl mDoExt_createZeldaHeap__FUlP7JKRHeap
/* 8000BFC0  7C 7F 1B 78 */	mr r31, r3
/* 8000BFC4  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000BFC8  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000BFCC  38 63 02 A9 */	addi r3, r3, 0x2a9
/* 8000BFD0  7F E4 FB 78 */	mr r4, r31
/* 8000BFD4  7F C5 F3 78 */	mr r5, r30
/* 8000BFD8  4B FF FD 21 */	bl my_SysPrintHeap__FPCcPvUl
/* 8000BFDC  7F E3 FB 78 */	mr r3, r31
/* 8000BFE0  48 2C 24 59 */	bl becomeCurrentHeap__7JKRHeapFv
/* 8000BFE4  38 60 00 00 */	li r3, 0
/* 8000BFE8  38 80 20 00 */	li r4, 0x2000
/* 8000BFEC  80 AD 8D F0 */	lwz r5, sSystemHeap__7JKRHeap(r13)
/* 8000BFF0  48 2C 80 45 */	bl setTransBuffer__13JKRAramStreamFPUcUlP7JKRHeap
/* 8000BFF4  38 60 00 00 */	li r3, 0
/* 8000BFF8  48 2C 5A 1D */	bl createManager__15JKRThreadSwitchFP7JKRHeap
/* 8000BFFC  38 60 00 7C */	li r3, 0x7c
/* 8000C000  48 2C 2C 4D */	bl __nw__FUl
/* 8000C004  7C 7F 1B 79 */	or. r31, r3, r3
/* 8000C008  41 82 00 18 */	beq lbl_8000C020
/* 8000C00C  48 33 4C 79 */	bl OSGetCurrentThread
/* 8000C010  7C 64 1B 78 */	mr r4, r3
/* 8000C014  7F E3 FB 78 */	mr r3, r31
/* 8000C018  38 A0 00 00 */	li r5, 0
/* 8000C01C  48 2C 56 9D */	bl __ct__9JKRThreadFP8OSThreadi
lbl_8000C020:
/* 8000C020  80 6D 8C 38 */	lwz r3, systemConsole__9JFWSystem(r13)
/* 8000C024  38 00 00 03 */	li r0, 3
/* 8000C028  90 03 00 58 */	stw r0, 0x58(r3)
/* 8000C02C  38 00 00 10 */	li r0, 0x10
/* 8000C030  90 03 00 40 */	stw r0, 0x40(r3)
/* 8000C034  38 00 00 2A */	li r0, 0x2a
/* 8000C038  90 03 00 44 */	stw r0, 0x44(r3)
/* 8000C03C  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000C040  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000C044  38 63 02 B6 */	addi r3, r3, 0x2b6
/* 8000C048  48 2D 7A C5 */	bl appendMapFile__12JUTExceptionFPCc
/* 8000C04C  3C 60 80 01 */	lis r3, myExceptionCallback__FUsP9OSContextUlUl@ha
/* 8000C050  38 63 B7 C8 */	addi r3, r3, myExceptionCallback__FUsP9OSContextUlUl@l
/* 8000C054  48 2D 7A 99 */	bl setPreUserCallback__12JUTExceptionFPFUsP9OSContextUlUl_v
/* 8000C058  3C 60 80 01 */	lis r3, fault_callback_scroll__FUsP9OSContextUlUl@ha
/* 8000C05C  38 63 B9 5C */	addi r3, r3, fault_callback_scroll__FUsP9OSContextUlUl@l
/* 8000C060  48 2D 7A 9D */	bl setPostUserCallback__12JUTExceptionFPFUsP9OSContextUlUl_v
/* 8000C064  48 00 2D 1D */	bl mDoExt_getZeldaHeap__Fv
/* 8000C068  48 25 71 B9 */	bl init__3cMlFP7JKRHeap
/* 8000C06C  38 60 00 64 */	li r3, 0x64
/* 8000C070  38 80 00 64 */	li r4, 0x64
/* 8000C074  38 A0 00 64 */	li r5, 0x64
/* 8000C078  48 25 B7 E5 */	bl cM_initRnd__Fiii
/* 8000C07C  38 00 40 00 */	li r0, 0x4000
/* 8000C080  90 0D 83 4C */	stw r0, sSZSBufferSize__12JKRDvdRipper(r13)
/* 8000C084  90 0D 83 54 */	stw r0, sSZSBufferSize__16JKRDvdAramRipper(r13)
/* 8000C088  38 00 20 00 */	li r0, 0x2000
/* 8000C08C  90 0D 83 38 */	stw r0, sSZSBufferSize__7JKRAram(r13)
/* 8000C090  48 33 4B F5 */	bl OSGetCurrentThread
/* 8000C094  48 33 5D C9 */	bl OSGetThreadPriority
/* 8000C098  38 63 FF FE */	addi r3, r3, -2
/* 8000C09C  48 00 97 BD */	bl create__9mDoDvdThdFl
/* 8000C0A0  48 00 A4 FD */	bl mDoDvdErr_ThdInit__Fv
/* 8000C0A4  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha
/* 8000C0A8  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l
/* 8000C0AC  48 00 A6 85 */	bl ThdInit__15mDoMemCd_Ctrl_cFv
/* 8000C0B0  38 60 00 01 */	li r3, 1
/* 8000C0B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000C0B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8000C0BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000C0C0  7C 08 03 A6 */	mtlr r0
/* 8000C0C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8000C0C8  4E 80 00 20 */	blr 
