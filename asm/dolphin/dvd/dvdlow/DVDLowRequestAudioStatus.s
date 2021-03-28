lbl_80348260:
/* 80348260  7C 08 02 A6 */	mflr r0
/* 80348264  90 01 00 04 */	stw r0, 4(r1)
/* 80348268  38 00 00 00 */	li r0, 0
/* 8034826C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80348270  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80348274  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80348278  90 8D 91 98 */	stw r4, Callback(r13)
/* 8034827C  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC006000@ha */
/* 80348280  38 84 60 00 */	addi r4, r4, 0x6000 /* 0xCC006000@l */
/* 80348284  90 0D 91 90 */	stw r0, StopAtNextInt(r13)
/* 80348288  64 60 E2 00 */	oris r0, r3, 0xe200
/* 8034828C  3C 60 80 45 */	lis r3, AlarmForTimeout@ha
/* 80348290  90 04 00 08 */	stw r0, 8(r4)
/* 80348294  38 00 00 01 */	li r0, 1
/* 80348298  3B E3 C8 98 */	addi r31, r3, AlarmForTimeout@l
/* 8034829C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 803482A0  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000F8@ha */
/* 803482A4  38 7F 00 00 */	addi r3, r31, 0
/* 803482A8  80 04 00 F8 */	lwz r0, 0x00F8(r4)
/* 803482AC  54 00 F0 BE */	srwi r0, r0, 2
/* 803482B0  1F C0 00 0A */	mulli r30, r0, 0xa
/* 803482B4  4B FF 26 45 */	bl OSCreateAlarm
/* 803482B8  3C 60 80 34 */	lis r3, AlarmHandlerForTimeout@ha
/* 803482BC  38 E3 7A 18 */	addi r7, r3, AlarmHandlerForTimeout@l
/* 803482C0  38 7F 00 00 */	addi r3, r31, 0
/* 803482C4  38 DE 00 00 */	addi r6, r30, 0
/* 803482C8  38 A0 00 00 */	li r5, 0
/* 803482CC  4B FF 28 8D */	bl OSSetAlarm
/* 803482D0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803482D4  38 60 00 01 */	li r3, 1
/* 803482D8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803482DC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803482E0  38 21 00 18 */	addi r1, r1, 0x18
/* 803482E4  7C 08 03 A6 */	mtlr r0
/* 803482E8  4E 80 00 20 */	blr 
