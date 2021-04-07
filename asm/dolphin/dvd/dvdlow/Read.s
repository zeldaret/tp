lbl_80347A88:
/* 80347A88  7C 08 02 A6 */	mflr r0
/* 80347A8C  90 01 00 04 */	stw r0, 4(r1)
/* 80347A90  38 00 00 00 */	li r0, 0
/* 80347A94  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80347A98  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80347A9C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80347AA0  3B C5 00 00 */	addi r30, r5, 0
/* 80347AA4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80347AA8  3B A4 00 00 */	addi r29, r4, 0
/* 80347AAC  93 81 00 18 */	stw r28, 0x18(r1)
/* 80347AB0  3B 83 00 00 */	addi r28, r3, 0
/* 80347AB4  90 0D 91 90 */	stw r0, StopAtNextInt(r13)
/* 80347AB8  38 00 00 01 */	li r0, 1
/* 80347ABC  90 CD 91 98 */	stw r6, Callback(r13)
/* 80347AC0  3C C0 80 45 */	lis r6, CommandList@ha /* 0x8044C830@ha */
/* 80347AC4  3B E6 C8 30 */	addi r31, r6, CommandList@l /* 0x8044C830@l */
/* 80347AC8  90 0D 91 D0 */	stw r0, LastCommandWasRead(r13)
/* 80347ACC  4B FF AC 51 */	bl __OSGetSystemTime
/* 80347AD0  90 8D 91 CC */	stw r4, data_8045174C(r13)
/* 80347AD4  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC006000@ha */
/* 80347AD8  3C 00 00 A0 */	lis r0, 0xa0
/* 80347ADC  90 6D 91 C8 */	stw r3, LastReadIssued(r13)
/* 80347AE0  38 84 60 00 */	addi r4, r4, 0x6000 /* 0xCC006000@l */
/* 80347AE4  3C 60 A8 00 */	lis r3, 0xa800
/* 80347AE8  90 64 00 08 */	stw r3, 8(r4)
/* 80347AEC  57 C3 F0 BE */	srwi r3, r30, 2
/* 80347AF0  7C 1D 00 40 */	cmplw r29, r0
/* 80347AF4  90 64 00 0C */	stw r3, 0xc(r4)
/* 80347AF8  38 00 00 03 */	li r0, 3
/* 80347AFC  93 A4 00 10 */	stw r29, 0x10(r4)
/* 80347B00  93 84 00 14 */	stw r28, 0x14(r4)
/* 80347B04  93 A4 00 18 */	stw r29, 0x18(r4)
/* 80347B08  93 AD 91 94 */	stw r29, LastLength(r13)
/* 80347B0C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80347B10  40 81 00 38 */	ble lbl_80347B48
/* 80347B14  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 80347B18  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 80347B1C  38 7F 00 68 */	addi r3, r31, 0x68
/* 80347B20  54 00 F0 BE */	srwi r0, r0, 2
/* 80347B24  1F C0 00 14 */	mulli r30, r0, 0x14
/* 80347B28  4B FF 2D D1 */	bl OSCreateAlarm
/* 80347B2C  3C 60 80 34 */	lis r3, AlarmHandlerForTimeout@ha /* 0x80347A18@ha */
/* 80347B30  38 E3 7A 18 */	addi r7, r3, AlarmHandlerForTimeout@l /* 0x80347A18@l */
/* 80347B34  38 DE 00 00 */	addi r6, r30, 0
/* 80347B38  38 7F 00 68 */	addi r3, r31, 0x68
/* 80347B3C  38 A0 00 00 */	li r5, 0
/* 80347B40  4B FF 30 19 */	bl OSSetAlarm
/* 80347B44  48 00 00 34 */	b lbl_80347B78
lbl_80347B48:
/* 80347B48  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 80347B4C  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 80347B50  38 7F 00 68 */	addi r3, r31, 0x68
/* 80347B54  54 00 F0 BE */	srwi r0, r0, 2
/* 80347B58  1F C0 00 0A */	mulli r30, r0, 0xa
/* 80347B5C  4B FF 2D 9D */	bl OSCreateAlarm
/* 80347B60  3C 60 80 34 */	lis r3, AlarmHandlerForTimeout@ha /* 0x80347A18@ha */
/* 80347B64  38 E3 7A 18 */	addi r7, r3, AlarmHandlerForTimeout@l /* 0x80347A18@l */
/* 80347B68  38 DE 00 00 */	addi r6, r30, 0
/* 80347B6C  38 7F 00 68 */	addi r3, r31, 0x68
/* 80347B70  38 A0 00 00 */	li r5, 0
/* 80347B74  4B FF 2F E5 */	bl OSSetAlarm
lbl_80347B78:
/* 80347B78  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80347B7C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80347B80  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80347B84  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80347B88  83 81 00 18 */	lwz r28, 0x18(r1)
/* 80347B8C  38 21 00 28 */	addi r1, r1, 0x28
/* 80347B90  7C 08 03 A6 */	mtlr r0
/* 80347B94  4E 80 00 20 */	blr 
