lbl_8034812C:
/* 8034812C  7C 08 02 A6 */	mflr r0
/* 80348130  38 C0 00 20 */	li r6, 0x20
/* 80348134  90 01 00 04 */	stw r0, 4(r1)
/* 80348138  38 00 00 00 */	li r0, 0
/* 8034813C  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000F8@ha */
/* 80348140  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80348144  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80348148  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034814C  90 8D 91 98 */	stw r4, Callback(r13)
/* 80348150  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC006000@ha */
/* 80348154  38 E4 60 00 */	addi r7, r4, 0x6000 /* 0xCC006000@l */
/* 80348158  90 0D 91 90 */	stw r0, StopAtNextInt(r13)
/* 8034815C  3C 00 12 00 */	lis r0, 0x1200
/* 80348160  90 04 60 08 */	stw r0, 0x6008(r4)
/* 80348164  3C 80 80 45 */	lis r4, AlarmForTimeout@ha
/* 80348168  38 00 00 03 */	li r0, 3
/* 8034816C  90 C7 00 10 */	stw r6, 0x10(r7)
/* 80348170  3B E4 C8 98 */	addi r31, r4, AlarmForTimeout@l
/* 80348174  90 67 00 14 */	stw r3, 0x14(r7)
/* 80348178  38 7F 00 00 */	addi r3, r31, 0
/* 8034817C  90 C7 00 18 */	stw r6, 0x18(r7)
/* 80348180  90 07 00 1C */	stw r0, 0x1c(r7)
/* 80348184  80 05 00 F8 */	lwz r0, 0x00F8(r5)
/* 80348188  54 00 F0 BE */	srwi r0, r0, 2
/* 8034818C  1F C0 00 0A */	mulli r30, r0, 0xa
/* 80348190  4B FF 27 69 */	bl OSCreateAlarm
/* 80348194  3C 60 80 34 */	lis r3, AlarmHandlerForTimeout@ha
/* 80348198  38 E3 7A 18 */	addi r7, r3, AlarmHandlerForTimeout@l
/* 8034819C  38 7F 00 00 */	addi r3, r31, 0
/* 803481A0  38 DE 00 00 */	addi r6, r30, 0
/* 803481A4  38 A0 00 00 */	li r5, 0
/* 803481A8  4B FF 29 B1 */	bl OSSetAlarm
/* 803481AC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803481B0  38 60 00 01 */	li r3, 1
/* 803481B4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803481B8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803481BC  38 21 00 18 */	addi r1, r1, 0x18
/* 803481C0  7C 08 03 A6 */	mtlr r0
/* 803481C4  4E 80 00 20 */	blr 
