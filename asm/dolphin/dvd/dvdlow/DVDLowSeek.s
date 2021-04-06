lbl_80347EB0:
/* 80347EB0  7C 08 02 A6 */	mflr r0
/* 80347EB4  90 01 00 04 */	stw r0, 4(r1)
/* 80347EB8  38 00 00 00 */	li r0, 0
/* 80347EBC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80347EC0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80347EC4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80347EC8  90 8D 91 98 */	stw r4, Callback(r13)
/* 80347ECC  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC006000@ha */
/* 80347ED0  38 84 60 00 */	addi r4, r4, 0x6000 /* 0xCC006000@l */
/* 80347ED4  90 0D 91 90 */	stw r0, StopAtNextInt(r13)
/* 80347ED8  3C 00 AB 00 */	lis r0, 0xab00
/* 80347EDC  90 04 00 08 */	stw r0, 8(r4)
/* 80347EE0  54 60 F0 BE */	srwi r0, r3, 2
/* 80347EE4  3C 60 80 45 */	lis r3, AlarmForTimeout@ha /* 0x8044C898@ha */
/* 80347EE8  90 04 00 0C */	stw r0, 0xc(r4)
/* 80347EEC  38 00 00 01 */	li r0, 1
/* 80347EF0  3B E3 C8 98 */	addi r31, r3, AlarmForTimeout@l /* 0x8044C898@l */
/* 80347EF4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80347EF8  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000F8@ha */
/* 80347EFC  38 7F 00 00 */	addi r3, r31, 0
/* 80347F00  80 04 00 F8 */	lwz r0, 0x00F8(r4)  /* 0x800000F8@l */
/* 80347F04  54 00 F0 BE */	srwi r0, r0, 2
/* 80347F08  1F C0 00 0A */	mulli r30, r0, 0xa
/* 80347F0C  4B FF 29 ED */	bl OSCreateAlarm
/* 80347F10  3C 60 80 34 */	lis r3, AlarmHandlerForTimeout@ha /* 0x80347A18@ha */
/* 80347F14  38 E3 7A 18 */	addi r7, r3, AlarmHandlerForTimeout@l /* 0x80347A18@l */
/* 80347F18  38 7F 00 00 */	addi r3, r31, 0
/* 80347F1C  38 DE 00 00 */	addi r6, r30, 0
/* 80347F20  38 A0 00 00 */	li r5, 0
/* 80347F24  4B FF 2C 35 */	bl OSSetAlarm
/* 80347F28  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80347F2C  38 60 00 01 */	li r3, 1
/* 80347F30  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80347F34  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80347F38  38 21 00 18 */	addi r1, r1, 0x18
/* 80347F3C  7C 08 03 A6 */	mtlr r0
/* 80347F40  4E 80 00 20 */	blr 
