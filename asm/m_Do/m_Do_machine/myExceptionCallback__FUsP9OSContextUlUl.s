lbl_8000B7C8:
/* 8000B7C8  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8000B7CC  7C 08 02 A6 */	mflr r0
/* 8000B7D0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8000B7D4  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 8000B7D8  48 33 6F 25 */	bl OSGetTime
/* 8000B7DC  90 8D 85 94 */	stw r4, data_80450B14(r13)
/* 8000B7E0  90 6D 85 90 */	stw r3, sHungUpTime__7mDoMain(r13)
/* 8000B7E4  4B FF B0 BD */	bl OSReportEnable
/* 8000B7E8  48 25 7A A5 */	bl cAPICPad_recalibrate__Fv
/* 8000B7EC  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000B7F0  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000B7F4  38 63 01 19 */	addi r3, r3, 0x119
/* 8000B7F8  4C C6 31 82 */	crclr 6
/* 8000B7FC  4B FF B2 C1 */	bl OSReport
/* 8000B800  83 ED 8F 88 */	lwz r31, sErrorManager__12JUTException(r13)
/* 8000B804  28 1F 00 00 */	cmplwi r31, 0
/* 8000B808  40 82 00 20 */	bne lbl_8000B828
/* 8000B80C  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000B810  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000B814  38 63 01 2D */	addi r3, r3, 0x12d
/* 8000B818  4C C6 31 82 */	crclr 6
/* 8000B81C  4B FF B2 A1 */	bl OSReport
/* 8000B820  48 32 E4 E1 */	bl PPCHalt
/* 8000B824  48 00 00 FC */	b lbl_8000B920
lbl_8000B828:
/* 8000B828  38 00 00 80 */	li r0, 0x80
/* 8000B82C  90 1F 00 94 */	stw r0, 0x94(r31)
/* 8000B830  88 0D 80 00 */	lbz r0, data_80450580(r13)
/* 8000B834  7C 00 07 75 */	extsb. r0, r0
/* 8000B838  40 82 00 CC */	bne lbl_8000B904
/* 8000B83C  38 61 00 10 */	addi r3, r1, 0x10
/* 8000B840  38 80 00 00 */	li r4, 0
/* 8000B844  48 2D 4E 99 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 8000B848  38 01 00 10 */	addi r0, r1, 0x10
/* 8000B84C  90 1F 00 84 */	stw r0, 0x84(r31)
/* 8000B850  38 00 FF FF */	li r0, -1
/* 8000B854  90 1F 00 88 */	stw r0, 0x88(r31)
/* 8000B858  28 1F 00 00 */	cmplwi r31, 0
/* 8000B85C  41 82 00 94 */	beq lbl_8000B8F0
/* 8000B860  48 33 1E A9 */	bl OSEnableInterrupts
/* 8000B864  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000B868  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000B86C  38 63 01 49 */	addi r3, r3, 0x149
/* 8000B870  4C C6 31 82 */	crclr 6
/* 8000B874  4B FF B2 49 */	bl OSReport
/* 8000B878  48 00 00 34 */	b lbl_8000B8AC
lbl_8000B87C:
/* 8000B87C  38 61 00 08 */	addi r3, r1, 8
/* 8000B880  38 81 00 0C */	addi r4, r1, 0xc
/* 8000B884  4B FF FE E5 */	bl exceptionReadPad__FPUlPUl
/* 8000B888  80 61 00 08 */	lwz r3, 8(r1)
/* 8000B88C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8000B890  4B FF FD FD */	bl developKeyCheck__FUlUl
/* 8000B894  38 60 00 1E */	li r3, 0x1e
/* 8000B898  48 2D 80 E9 */	bl waitTime__12JUTExceptionFl
/* 8000B89C  88 0D 8F 81 */	lbz r0, struct_80451500+0x1(r13)
/* 8000B8A0  28 00 00 00 */	cmplwi r0, 0
/* 8000B8A4  41 82 00 08 */	beq lbl_8000B8AC
/* 8000B8A8  4B FF FE F1 */	bl exceptionRestart__Fv
lbl_8000B8AC:
/* 8000B8AC  88 0D 80 00 */	lbz r0, data_80450580(r13)
/* 8000B8B0  7C 00 07 75 */	extsb. r0, r0
/* 8000B8B4  41 82 FF C8 */	beq lbl_8000B87C
/* 8000B8B8  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000B8BC  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000B8C0  38 63 01 65 */	addi r3, r3, 0x165
/* 8000B8C4  4C C6 31 82 */	crclr 6
/* 8000B8C8  4B FF B1 F5 */	bl OSReport
/* 8000B8CC  38 60 00 01 */	li r3, 1
/* 8000B8D0  48 2D 93 65 */	bl setVisible__12JUTAssertionFb
/* 8000B8D4  38 00 00 01 */	li r0, 1
/* 8000B8D8  80 6D 8F 48 */	lwz r3, sDebugPrint__10JUTDbPrint(r13)
/* 8000B8DC  98 03 00 0C */	stb r0, 0xc(r3)
/* 8000B8E0  38 00 00 03 */	li r0, 3
/* 8000B8E4  80 6D 8C 38 */	lwz r3, systemConsole__9JFWSystem(r13)
/* 8000B8E8  90 03 00 58 */	stw r0, 0x58(r3)
/* 8000B8EC  48 00 00 08 */	b lbl_8000B8F4
lbl_8000B8F0:
/* 8000B8F0  48 32 E4 11 */	bl PPCHalt
lbl_8000B8F4:
/* 8000B8F4  38 61 00 10 */	addi r3, r1, 0x10
/* 8000B8F8  38 80 FF FF */	li r4, -1
/* 8000B8FC  48 2D 4E B5 */	bl __dt__10JUTGamePadFv
/* 8000B900  48 00 00 20 */	b lbl_8000B920
lbl_8000B904:
/* 8000B904  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000B908  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000B90C  38 63 01 83 */	addi r3, r3, 0x183
/* 8000B910  4C C6 31 82 */	crclr 6
/* 8000B914  4B FF B1 A9 */	bl OSReport
/* 8000B918  38 60 0B B8 */	li r3, 0xbb8
/* 8000B91C  48 2D 80 65 */	bl waitTime__12JUTExceptionFl
lbl_8000B920:
/* 8000B920  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha
/* 8000B924  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l
/* 8000B928  38 63 01 8E */	addi r3, r3, 0x18e
/* 8000B92C  48 33 D3 C9 */	bl DVDChangeDir
/* 8000B930  48 2D 93 7D */	bl destroyManager__8JUTVideoFv
/* 8000B934  38 60 00 00 */	li r3, 0
/* 8000B938  48 35 0C 75 */	bl GXSetDrawDoneCallback
/* 8000B93C  38 60 00 00 */	li r3, 0
/* 8000B940  48 34 1F 01 */	bl VISetBlack
/* 8000B944  48 34 1D 51 */	bl VIFlush
/* 8000B948  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 8000B94C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8000B950  7C 08 03 A6 */	mtlr r0
/* 8000B954  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8000B958  4E 80 00 20 */	blr 
