lbl_8001659C:
/* 8001659C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800165A0  7C 08 02 A6 */	mflr r0
/* 800165A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800165A8  39 61 00 20 */	addi r11, r1, 0x20
/* 800165AC  48 34 BC 31 */	bl _savegpr_29
/* 800165B0  3C 60 80 3E */	lis r3, DvdErr_thread@ha
/* 800165B4  3B E3 EC C0 */	addi r31, r3, DvdErr_thread@l
/* 800165B8  88 0D 87 08 */	lbz r0, data_80450C88(r13)
/* 800165BC  28 00 00 00 */	cmplwi r0, 0
/* 800165C0  40 82 00 84 */	bne lbl_80016644
/* 800165C4  48 32 C1 39 */	bl OSGetTime
/* 800165C8  7C 9D 23 78 */	mr r29, r4
/* 800165CC  7C 7E 1B 78 */	mr r30, r3
/* 800165D0  48 32 A6 B5 */	bl OSGetCurrentThread
/* 800165D4  48 32 B8 89 */	bl OSGetThreadPriority
/* 800165D8  7C 68 1B 78 */	mr r8, r3
/* 800165DC  38 7F 00 00 */	addi r3, r31, 0
/* 800165E0  3C 80 80 01 */	lis r4, mDoDvdErr_Watch__FPv@ha
/* 800165E4  38 84 66 A4 */	addi r4, r4, mDoDvdErr_Watch__FPv@l
/* 800165E8  38 A0 00 00 */	li r5, 0
/* 800165EC  38 DF 03 20 */	addi r6, r31, 0x320
/* 800165F0  38 E0 0C 00 */	li r7, 0xc00
/* 800165F4  39 08 FF FD */	addi r8, r8, -3
/* 800165F8  39 20 00 01 */	li r9, 1
/* 800165FC  38 C6 0C 00 */	addi r6, r6, 0xc00
/* 80016600  48 32 AC 8D */	bl OSCreateThread
/* 80016604  38 7F 00 00 */	addi r3, r31, 0
/* 80016608  48 32 B1 AD */	bl OSResumeThread
/* 8001660C  38 7F 0F 20 */	addi r3, r31, 0xf20
/* 80016610  48 32 42 E9 */	bl OSCreateAlarm
/* 80016614  38 7F 0F 20 */	addi r3, r31, 0xf20
/* 80016618  7F A6 EB 78 */	mr r6, r29
/* 8001661C  7F C5 F3 78 */	mr r5, r30
/* 80016620  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000F8@ha */
/* 80016624  80 04 00 F8 */	lwz r0, 0x00F8(r4)
/* 80016628  54 08 F0 BE */	srwi r8, r0, 2
/* 8001662C  38 E0 00 00 */	li r7, 0
/* 80016630  3C 80 80 01 */	lis r4, AlarmHandler__FP7OSAlarmP9OSContext@ha
/* 80016634  39 24 67 04 */	addi r9, r4, AlarmHandler__FP7OSAlarmP9OSContext@l
/* 80016638  48 32 45 89 */	bl OSSetPeriodicAlarm
/* 8001663C  38 00 00 01 */	li r0, 1
/* 80016640  98 0D 87 08 */	stb r0, data_80450C88(r13)
lbl_80016644:
/* 80016644  39 61 00 20 */	addi r11, r1, 0x20
/* 80016648  48 34 BB E1 */	bl _restgpr_29
/* 8001664C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80016650  7C 08 03 A6 */	mtlr r0
/* 80016654  38 21 00 20 */	addi r1, r1, 0x20
/* 80016658  4E 80 00 20 */	blr 
