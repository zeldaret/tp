lbl_802E1FCC:
/* 802E1FCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E1FD0  7C 08 02 A6 */	mflr r0
/* 802E1FD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E1FD8  39 61 00 20 */	addi r11, r1, 0x20
/* 802E1FDC  48 08 01 FD */	bl _savegpr_28
/* 802E1FE0  7C 7C 1B 78 */	mr r28, r3
/* 802E1FE4  7C 9D 23 78 */	mr r29, r4
/* 802E1FE8  7C BE 2B 78 */	mr r30, r5
/* 802E1FEC  7C DF 33 78 */	mr r31, r6
/* 802E1FF0  48 05 7C D1 */	bl PPCMfmsr
/* 802E1FF4  90 6D 8F A0 */	stw r3, msr__12JUTException(r13)
/* 802E1FF8  80 1D 01 94 */	lwz r0, 0x194(r29)
/* 802E1FFC  90 0D 8F A4 */	stw r0, fpscr__12JUTException(r13)
/* 802E2000  7F A3 EB 78 */	mr r3, r29
/* 802E2004  48 05 A4 51 */	bl OSFillFPUContext
/* 802E2008  7F 83 E3 78 */	mr r3, r28
/* 802E200C  38 80 00 00 */	li r4, 0
/* 802E2010  48 05 A5 71 */	bl OSSetErrorHandler
/* 802E2014  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 802E2018  28 00 00 0F */	cmplwi r0, 0xf
/* 802E201C  40 82 00 54 */	bne lbl_802E2070
/* 802E2020  38 60 00 00 */	li r3, 0
/* 802E2024  38 80 00 00 */	li r4, 0
/* 802E2028  38 A0 00 00 */	li r5, 0
/* 802E202C  38 C0 00 03 */	li r6, 3
/* 802E2030  48 05 CC E5 */	bl OSProtectRange
/* 802E2034  38 60 00 01 */	li r3, 1
/* 802E2038  38 80 00 00 */	li r4, 0
/* 802E203C  38 A0 00 00 */	li r5, 0
/* 802E2040  38 C0 00 03 */	li r6, 3
/* 802E2044  48 05 CC D1 */	bl OSProtectRange
/* 802E2048  38 60 00 02 */	li r3, 2
/* 802E204C  38 80 00 00 */	li r4, 0
/* 802E2050  38 A0 00 00 */	li r5, 0
/* 802E2054  38 C0 00 03 */	li r6, 3
/* 802E2058  48 05 CC BD */	bl OSProtectRange
/* 802E205C  38 60 00 03 */	li r3, 3
/* 802E2060  38 80 00 00 */	li r4, 0
/* 802E2064  38 A0 00 00 */	li r5, 0
/* 802E2068  38 C0 00 03 */	li r6, 3
/* 802E206C  48 05 CC A9 */	bl OSProtectRange
lbl_802E2070:
/* 802E2070  80 0D 8F 8C */	lwz r0, sPreUserCallback__12JUTException(r13)
/* 802E2074  3C 60 80 43 */	lis r3, exCallbackObject@ha
/* 802E2078  38 83 45 78 */	addi r4, r3, exCallbackObject@l
/* 802E207C  90 04 00 00 */	stw r0, 0(r4)
/* 802E2080  B3 84 00 04 */	sth r28, 4(r4)
/* 802E2084  93 A4 00 08 */	stw r29, 8(r4)
/* 802E2088  93 C4 00 0C */	stw r30, 0xc(r4)
/* 802E208C  93 E4 00 10 */	stw r31, 0x10(r4)
/* 802E2090  3C 60 80 3D */	lis r3, sMessageQueue__12JUTException@ha
/* 802E2094  38 63 C6 20 */	addi r3, r3, sMessageQueue__12JUTException@l
/* 802E2098  38 A0 00 01 */	li r5, 1
/* 802E209C  48 05 C9 59 */	bl OSSendMessage
/* 802E20A0  48 05 EC 65 */	bl OSEnableScheduler
/* 802E20A4  48 05 F1 AD */	bl OSYieldThread
/* 802E20A8  39 61 00 20 */	addi r11, r1, 0x20
/* 802E20AC  48 08 01 79 */	bl _restgpr_28
/* 802E20B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E20B4  7C 08 03 A6 */	mtlr r0
/* 802E20B8  38 21 00 20 */	addi r1, r1, 0x20
/* 802E20BC  4E 80 00 20 */	blr 
