lbl_80348014:
/* 80348014  7C 08 02 A6 */	mflr r0
/* 80348018  90 01 00 04 */	stw r0, 4(r1)
/* 8034801C  38 00 00 00 */	li r0, 0
/* 80348020  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80348024  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80348028  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034802C  90 6D 91 98 */	stw r3, Callback(r13)
/* 80348030  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006000@ha */
/* 80348034  38 83 60 00 */	addi r4, r3, 0x6000 /* 0xCC006000@l */
/* 80348038  90 0D 91 90 */	stw r0, StopAtNextInt(r13)
/* 8034803C  3C 00 E3 00 */	lis r0, 0xe300
/* 80348040  90 03 60 08 */	stw r0, 0x6008(r3)
/* 80348044  38 00 00 01 */	li r0, 1
/* 80348048  3C 60 80 45 */	lis r3, AlarmForTimeout@ha
/* 8034804C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80348050  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000F8@ha */
/* 80348054  3B E3 C8 98 */	addi r31, r3, AlarmForTimeout@l
/* 80348058  80 04 00 F8 */	lwz r0, 0x00F8(r4)
/* 8034805C  38 7F 00 00 */	addi r3, r31, 0
/* 80348060  54 00 F0 BE */	srwi r0, r0, 2
/* 80348064  1F C0 00 0A */	mulli r30, r0, 0xa
/* 80348068  4B FF 28 91 */	bl OSCreateAlarm
/* 8034806C  3C 60 80 34 */	lis r3, AlarmHandlerForTimeout@ha
/* 80348070  38 E3 7A 18 */	addi r7, r3, AlarmHandlerForTimeout@l
/* 80348074  38 7F 00 00 */	addi r3, r31, 0
/* 80348078  38 DE 00 00 */	addi r6, r30, 0
/* 8034807C  38 A0 00 00 */	li r5, 0
/* 80348080  4B FF 2A D9 */	bl OSSetAlarm
/* 80348084  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80348088  38 60 00 01 */	li r3, 1
/* 8034808C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80348090  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80348094  38 21 00 18 */	addi r1, r1, 0x18
/* 80348098  7C 08 03 A6 */	mtlr r0
/* 8034809C  4E 80 00 20 */	blr 
