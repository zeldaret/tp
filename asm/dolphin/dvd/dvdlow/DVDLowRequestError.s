lbl_803480A0:
/* 803480A0  7C 08 02 A6 */	mflr r0
/* 803480A4  90 01 00 04 */	stw r0, 4(r1)
/* 803480A8  38 00 00 00 */	li r0, 0
/* 803480AC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803480B0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803480B4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 803480B8  90 6D 91 98 */	stw r3, Callback(r13)
/* 803480BC  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006000@ha */
/* 803480C0  38 83 60 00 */	addi r4, r3, 0x6000 /* 0xCC006000@l */
/* 803480C4  90 0D 91 90 */	stw r0, StopAtNextInt(r13)
/* 803480C8  3C 00 E0 00 */	lis r0, 0xe000
/* 803480CC  90 03 60 08 */	stw r0, 0x6008(r3)
/* 803480D0  38 00 00 01 */	li r0, 1
/* 803480D4  3C 60 80 45 */	lis r3, AlarmForTimeout@ha /* 0x8044C898@ha */
/* 803480D8  90 04 00 1C */	stw r0, 0x1c(r4)
/* 803480DC  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000F8@ha */
/* 803480E0  3B E3 C8 98 */	addi r31, r3, AlarmForTimeout@l /* 0x8044C898@l */
/* 803480E4  80 04 00 F8 */	lwz r0, 0x00F8(r4)  /* 0x800000F8@l */
/* 803480E8  38 7F 00 00 */	addi r3, r31, 0
/* 803480EC  54 00 F0 BE */	srwi r0, r0, 2
/* 803480F0  1F C0 00 0A */	mulli r30, r0, 0xa
/* 803480F4  4B FF 28 05 */	bl OSCreateAlarm
/* 803480F8  3C 60 80 34 */	lis r3, AlarmHandlerForTimeout@ha /* 0x80347A18@ha */
/* 803480FC  38 E3 7A 18 */	addi r7, r3, AlarmHandlerForTimeout@l /* 0x80347A18@l */
/* 80348100  38 7F 00 00 */	addi r3, r31, 0
/* 80348104  38 DE 00 00 */	addi r6, r30, 0
/* 80348108  38 A0 00 00 */	li r5, 0
/* 8034810C  4B FF 2A 4D */	bl OSSetAlarm
/* 80348110  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80348114  38 60 00 01 */	li r3, 1
/* 80348118  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034811C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80348120  38 21 00 18 */	addi r1, r1, 0x18
/* 80348124  7C 08 03 A6 */	mtlr r0
/* 80348128  4E 80 00 20 */	blr 
