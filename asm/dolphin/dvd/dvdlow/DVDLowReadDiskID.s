lbl_80347F70:
/* 80347F70  7C 08 02 A6 */	mflr r0
/* 80347F74  39 00 00 00 */	li r8, 0
/* 80347F78  90 01 00 04 */	stw r0, 4(r1)
/* 80347F7C  3C A0 A8 00 */	lis r5, 0xA800 /* 0xA8000040@ha */
/* 80347F80  38 05 00 40 */	addi r0, r5, 0x0040 /* 0xA8000040@l */
/* 80347F84  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80347F88  38 C0 00 20 */	li r6, 0x20
/* 80347F8C  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000F8@ha */
/* 80347F90  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80347F94  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80347F98  90 8D 91 98 */	stw r4, Callback(r13)
/* 80347F9C  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC006000@ha */
/* 80347FA0  38 E4 60 00 */	addi r7, r4, 0x6000 /* 0xCC006000@l */
/* 80347FA4  91 0D 91 90 */	stw r8, StopAtNextInt(r13)
/* 80347FA8  90 04 60 08 */	stw r0, 0x6008(r4)
/* 80347FAC  3C 80 80 45 */	lis r4, AlarmForTimeout@ha
/* 80347FB0  38 00 00 03 */	li r0, 3
/* 80347FB4  91 07 00 0C */	stw r8, 0xc(r7)
/* 80347FB8  3B E4 C8 98 */	addi r31, r4, AlarmForTimeout@l
/* 80347FBC  90 C7 00 10 */	stw r6, 0x10(r7)
/* 80347FC0  90 67 00 14 */	stw r3, 0x14(r7)
/* 80347FC4  7F E3 FB 78 */	mr r3, r31
/* 80347FC8  90 C7 00 18 */	stw r6, 0x18(r7)
/* 80347FCC  90 07 00 1C */	stw r0, 0x1c(r7)
/* 80347FD0  80 05 00 F8 */	lwz r0, 0x00F8(r5)
/* 80347FD4  54 00 F0 BE */	srwi r0, r0, 2
/* 80347FD8  1F C0 00 0A */	mulli r30, r0, 0xa
/* 80347FDC  4B FF 29 1D */	bl OSCreateAlarm
/* 80347FE0  3C 60 80 34 */	lis r3, AlarmHandlerForTimeout@ha
/* 80347FE4  38 E3 7A 18 */	addi r7, r3, AlarmHandlerForTimeout@l
/* 80347FE8  38 7F 00 00 */	addi r3, r31, 0
/* 80347FEC  38 DE 00 00 */	addi r6, r30, 0
/* 80347FF0  38 A0 00 00 */	li r5, 0
/* 80347FF4  4B FF 2B 65 */	bl OSSetAlarm
/* 80347FF8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80347FFC  38 60 00 01 */	li r3, 1
/* 80348000  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80348004  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80348008  38 21 00 18 */	addi r1, r1, 0x18
/* 8034800C  7C 08 03 A6 */	mtlr r0
/* 80348010  4E 80 00 20 */	blr 
