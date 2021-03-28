lbl_80017FD0:
/* 80017FD0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80017FD4  7C 08 02 A6 */	mflr r0
/* 80017FD8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80017FDC  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 80017FE0  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 80017FE4  38 63 00 C5 */	addi r3, r3, 0xc5
/* 80017FE8  4B FF FE 21 */	bl print__FPCc
/* 80017FEC  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 80017FF0  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 80017FF4  38 63 00 EE */	addi r3, r3, 0xee
/* 80017FF8  4B FF FE 11 */	bl print__FPCc
/* 80017FFC  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 80018000  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 80018004  38 63 00 FE */	addi r3, r3, 0xfe
/* 80018008  4B FF FE 01 */	bl print__FPCc
/* 8001800C  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 80018010  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 80018014  38 63 01 13 */	addi r3, r3, 0x113
/* 80018018  3C 80 80 3A */	lis r4, COPYDATE_STRING__7mDoMain@ha
/* 8001801C  38 84 2E E0 */	addi r4, r4, COPYDATE_STRING__7mDoMain@l
/* 80018020  4C C6 31 82 */	crclr 6
/* 80018024  4B FF FD 59 */	bl print_f__FPCce
/* 80018028  80 6D 85 88 */	lwz r3, sPowerOnTime__7mDoMain(r13)
/* 8001802C  80 8D 85 8C */	lwz r4, data_80450B0C(r13)
/* 80018030  38 A1 00 10 */	addi r5, r1, 0x10
/* 80018034  48 32 A9 41 */	bl OSTicksToCalendarTime
/* 80018038  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001803C  90 01 00 08 */	stw r0, 8(r1)
/* 80018040  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 80018044  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 80018048  38 63 01 26 */	addi r3, r3, 0x126
/* 8001804C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80018050  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 80018054  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80018058  80 E1 00 18 */	lwz r7, 0x18(r1)
/* 8001805C  81 01 00 14 */	lwz r8, 0x14(r1)
/* 80018060  81 21 00 10 */	lwz r9, 0x10(r1)
/* 80018064  81 41 00 30 */	lwz r10, 0x30(r1)
/* 80018068  4C C6 31 82 */	crclr 6
/* 8001806C  4B FF FD 11 */	bl print_f__FPCce
/* 80018070  80 6D 85 90 */	lwz r3, sHungUpTime__7mDoMain(r13)
/* 80018074  80 8D 85 94 */	lwz r4, data_80450B14(r13)
/* 80018078  38 A1 00 10 */	addi r5, r1, 0x10
/* 8001807C  48 32 A8 F9 */	bl OSTicksToCalendarTime
/* 80018080  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80018084  90 01 00 08 */	stw r0, 8(r1)
/* 80018088  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 8001808C  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 80018090  38 63 01 57 */	addi r3, r3, 0x157
/* 80018094  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80018098  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8001809C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 800180A0  80 E1 00 18 */	lwz r7, 0x18(r1)
/* 800180A4  81 01 00 14 */	lwz r8, 0x14(r1)
/* 800180A8  81 21 00 10 */	lwz r9, 0x10(r1)
/* 800180AC  81 41 00 30 */	lwz r10, 0x30(r1)
/* 800180B0  4C C6 31 82 */	crclr 6
/* 800180B4  4B FF FC C9 */	bl print_f__FPCce
/* 800180B8  80 AD 85 90 */	lwz r5, sHungUpTime__7mDoMain(r13)
/* 800180BC  80 8D 85 94 */	lwz r4, data_80450B14(r13)
/* 800180C0  80 0D 85 88 */	lwz r0, sPowerOnTime__7mDoMain(r13)
/* 800180C4  80 6D 85 8C */	lwz r3, data_80450B0C(r13)
/* 800180C8  7C 83 20 10 */	subfc r4, r3, r4
/* 800180CC  7C 60 29 10 */	subfe r3, r0, r5
/* 800180D0  38 A1 00 10 */	addi r5, r1, 0x10
/* 800180D4  48 32 A8 A1 */	bl OSTicksToCalendarTime
/* 800180D8  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 800180DC  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 800180E0  38 63 01 88 */	addi r3, r3, 0x188
/* 800180E4  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 800180E8  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 800180EC  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 800180F0  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 800180F4  81 01 00 30 */	lwz r8, 0x30(r1)
/* 800180F8  81 21 00 34 */	lwz r9, 0x34(r1)
/* 800180FC  4C C6 31 82 */	crclr 6
/* 80018100  4B FF FC 7D */	bl print_f__FPCce
/* 80018104  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 80018108  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 8001810C  38 63 01 B6 */	addi r3, r3, 0x1b6
/* 80018110  4B FF FC F9 */	bl print__FPCc
/* 80018114  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80018118  7C 08 03 A6 */	mtlr r0
/* 8001811C  38 21 00 40 */	addi r1, r1, 0x40
/* 80018120  4E 80 00 20 */	blr 
