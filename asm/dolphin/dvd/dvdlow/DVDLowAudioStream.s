lbl_803481C8:
/* 803481C8  7C 08 02 A6 */	mflr r0
/* 803481CC  90 01 00 04 */	stw r0, 4(r1)
/* 803481D0  38 00 00 00 */	li r0, 0
/* 803481D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803481D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803481DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803481E0  90 CD 91 98 */	stw r6, Callback(r13)
/* 803481E4  3C C0 CC 00 */	lis r6, 0xCC00 /* 0xCC006000@ha */
/* 803481E8  38 C6 60 00 */	addi r6, r6, 0x6000 /* 0xCC006000@l */
/* 803481EC  90 0D 91 90 */	stw r0, StopAtNextInt(r13)
/* 803481F0  64 60 E1 00 */	oris r0, r3, 0xe100
/* 803481F4  3C 60 80 45 */	lis r3, AlarmForTimeout@ha /* 0x8044C898@ha */
/* 803481F8  90 06 00 08 */	stw r0, 8(r6)
/* 803481FC  54 A0 F0 BE */	srwi r0, r5, 2
/* 80348200  3B E3 C8 98 */	addi r31, r3, AlarmForTimeout@l /* 0x8044C898@l */
/* 80348204  90 06 00 0C */	stw r0, 0xc(r6)
/* 80348208  38 00 00 01 */	li r0, 1
/* 8034820C  38 7F 00 00 */	addi r3, r31, 0
/* 80348210  90 86 00 10 */	stw r4, 0x10(r6)
/* 80348214  3C 80 80 00 */	lis r4, 0x8000 /* 0x800000F8@ha */
/* 80348218  90 06 00 1C */	stw r0, 0x1c(r6)
/* 8034821C  80 04 00 F8 */	lwz r0, 0x00F8(r4)  /* 0x800000F8@l */
/* 80348220  54 00 F0 BE */	srwi r0, r0, 2
/* 80348224  1F C0 00 0A */	mulli r30, r0, 0xa
/* 80348228  4B FF 26 D1 */	bl OSCreateAlarm
/* 8034822C  3C 60 80 34 */	lis r3, AlarmHandlerForTimeout@ha /* 0x80347A18@ha */
/* 80348230  38 E3 7A 18 */	addi r7, r3, AlarmHandlerForTimeout@l /* 0x80347A18@l */
/* 80348234  38 7F 00 00 */	addi r3, r31, 0
/* 80348238  38 DE 00 00 */	addi r6, r30, 0
/* 8034823C  38 A0 00 00 */	li r5, 0
/* 80348240  4B FF 29 19 */	bl OSSetAlarm
/* 80348244  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80348248  38 60 00 01 */	li r3, 1
/* 8034824C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80348250  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80348254  38 21 00 20 */	addi r1, r1, 0x20
/* 80348258  7C 08 03 A6 */	mtlr r0
/* 8034825C  4E 80 00 20 */	blr 
