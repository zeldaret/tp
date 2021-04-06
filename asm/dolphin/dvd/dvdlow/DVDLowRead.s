lbl_80347C18:
/* 80347C18  7C 08 02 A6 */	mflr r0
/* 80347C1C  3C E0 CC 00 */	lis r7, 0xCC00 /* 0xCC006000@ha */
/* 80347C20  90 01 00 04 */	stw r0, 4(r1)
/* 80347C24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80347C28  BE C1 00 18 */	stmw r22, 0x18(r1)
/* 80347C2C  3B 24 00 00 */	addi r25, r4, 0
/* 80347C30  38 87 60 00 */	addi r4, r7, 0x6000 /* 0xCC006000@l */
/* 80347C34  3C E0 80 45 */	lis r7, CommandList@ha /* 0x8044C830@ha */
/* 80347C38  3B E7 C8 30 */	addi r31, r7, CommandList@l /* 0x8044C830@l */
/* 80347C3C  3B 03 00 00 */	addi r24, r3, 0
/* 80347C40  3B 45 00 00 */	addi r26, r5, 0
/* 80347C44  3B DF 00 CC */	addi r30, r31, 0xcc
/* 80347C48  7C DB 33 78 */	mr r27, r6
/* 80347C4C  93 24 00 18 */	stw r25, 0x18(r4)
/* 80347C50  93 1F 00 C4 */	stw r24, 0xc4(r31)
/* 80347C54  93 3F 00 C8 */	stw r25, 0xc8(r31)
/* 80347C58  93 5F 00 CC */	stw r26, 0xcc(r31)
/* 80347C5C  80 0D 91 B4 */	lwz r0, WorkAroundType(r13)
/* 80347C60  28 00 00 00 */	cmplwi r0, 0
/* 80347C64  40 82 00 2C */	bne lbl_80347C90
/* 80347C68  38 00 FF FF */	li r0, -1
/* 80347C6C  90 1F 00 00 */	stw r0, 0(r31)
/* 80347C70  38 00 00 00 */	li r0, 0
/* 80347C74  38 78 00 00 */	addi r3, r24, 0
/* 80347C78  90 0D 91 D4 */	stw r0, NextCommandNumber(r13)
/* 80347C7C  38 99 00 00 */	addi r4, r25, 0
/* 80347C80  38 BA 00 00 */	addi r5, r26, 0
/* 80347C84  38 DB 00 00 */	addi r6, r27, 0
/* 80347C88  4B FF FE 01 */	bl Read
/* 80347C8C  48 00 02 0C */	b lbl_80347E98
lbl_80347C90:
/* 80347C90  80 0D 91 B4 */	lwz r0, WorkAroundType(r13)
/* 80347C94  28 00 00 01 */	cmplwi r0, 1
/* 80347C98  40 82 02 00 */	bne lbl_80347E98
/* 80347C9C  80 0D 84 58 */	lwz r0, FirstRead(r13)
/* 80347CA0  2C 00 00 00 */	cmpwi r0, 0
/* 80347CA4  41 82 00 1C */	beq lbl_80347CC0
/* 80347CA8  38 78 00 00 */	addi r3, r24, 0
/* 80347CAC  38 99 00 00 */	addi r4, r25, 0
/* 80347CB0  38 BA 00 00 */	addi r5, r26, 0
/* 80347CB4  38 DB 00 00 */	addi r6, r27, 0
/* 80347CB8  4B FF FE E1 */	bl SeekTwiceBeforeRead
/* 80347CBC  48 00 01 DC */	b lbl_80347E98
lbl_80347CC0:
/* 80347CC0  3B BF 00 BC */	addi r29, r31, 0xbc
/* 80347CC4  80 1E 00 00 */	lwz r0, 0(r30)
/* 80347CC8  3B 9F 00 C0 */	addi r28, r31, 0xc0
/* 80347CCC  80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 80347CD0  80 9F 00 C0 */	lwz r4, 0xc0(r31)
/* 80347CD4  54 17 8B FE */	srwi r23, r0, 0xf
/* 80347CD8  38 03 FF FF */	addi r0, r3, -1
/* 80347CDC  7C 04 02 14 */	add r0, r4, r0
/* 80347CE0  54 16 8B FE */	srwi r22, r0, 0xf
/* 80347CE4  48 00 39 3D */	bl DVDGetCurrentDiskID
/* 80347CE8  88 03 00 08 */	lbz r0, 8(r3)
/* 80347CEC  28 00 00 00 */	cmplwi r0, 0
/* 80347CF0  41 82 00 0C */	beq lbl_80347CFC
/* 80347CF4  38 00 00 01 */	li r0, 1
/* 80347CF8  48 00 00 08 */	b lbl_80347D00
lbl_80347CFC:
/* 80347CFC  38 00 00 00 */	li r0, 0
lbl_80347D00:
/* 80347D00  2C 00 00 00 */	cmpwi r0, 0
/* 80347D04  41 82 00 0C */	beq lbl_80347D10
/* 80347D08  38 60 00 05 */	li r3, 5
/* 80347D0C  48 00 00 08 */	b lbl_80347D14
lbl_80347D10:
/* 80347D10  38 60 00 0F */	li r3, 0xf
lbl_80347D14:
/* 80347D14  38 16 FF FE */	addi r0, r22, -2
/* 80347D18  7C 17 00 40 */	cmplw r23, r0
/* 80347D1C  41 81 00 14 */	bgt lbl_80347D30
/* 80347D20  38 03 00 03 */	addi r0, r3, 3
/* 80347D24  7C 16 02 14 */	add r0, r22, r0
/* 80347D28  7C 17 00 40 */	cmplw r23, r0
/* 80347D2C  40 80 00 0C */	bge lbl_80347D38
lbl_80347D30:
/* 80347D30  38 00 00 01 */	li r0, 1
/* 80347D34  48 00 00 08 */	b lbl_80347D3C
lbl_80347D38:
/* 80347D38  38 00 00 00 */	li r0, 0
lbl_80347D3C:
/* 80347D3C  2C 00 00 00 */	cmpwi r0, 0
/* 80347D40  40 82 00 2C */	bne lbl_80347D6C
/* 80347D44  38 00 FF FF */	li r0, -1
/* 80347D48  90 1F 00 00 */	stw r0, 0(r31)
/* 80347D4C  38 00 00 00 */	li r0, 0
/* 80347D50  38 78 00 00 */	addi r3, r24, 0
/* 80347D54  90 0D 91 D4 */	stw r0, NextCommandNumber(r13)
/* 80347D58  38 99 00 00 */	addi r4, r25, 0
/* 80347D5C  38 BA 00 00 */	addi r5, r26, 0
/* 80347D60  38 DB 00 00 */	addi r6, r27, 0
/* 80347D64  4B FF FD 25 */	bl Read
/* 80347D68  48 00 01 30 */	b lbl_80347E98
lbl_80347D6C:
/* 80347D6C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80347D70  80 9C 00 00 */	lwz r4, 0(r28)
/* 80347D74  38 63 FF FF */	addi r3, r3, -1
/* 80347D78  80 1E 00 00 */	lwz r0, 0(r30)
/* 80347D7C  7C 64 1A 14 */	add r3, r4, r3
/* 80347D80  54 63 8B FE */	srwi r3, r3, 0xf
/* 80347D84  54 04 8B FE */	srwi r4, r0, 0xf
/* 80347D88  7C 03 20 40 */	cmplw r3, r4
/* 80347D8C  41 82 00 10 */	beq lbl_80347D9C
/* 80347D90  38 03 00 01 */	addi r0, r3, 1
/* 80347D94  7C 00 20 40 */	cmplw r0, r4
/* 80347D98  40 82 00 EC */	bne lbl_80347E84
lbl_80347D9C:
/* 80347D9C  4B FF A9 81 */	bl __OSGetSystemTime
/* 80347DA0  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000F8@ha */
/* 80347DA4  81 0D 91 C0 */	lwz r8, LastReadFinished(r13)
/* 80347DA8  80 05 00 F8 */	lwz r0, 0x00F8(r5)  /* 0x800000F8@l */
/* 80347DAC  3C A0 10 62 */	lis r5, 0x1062 /* 0x10624DD3@ha */
/* 80347DB0  81 2D 91 C4 */	lwz r9, data_80451744(r13)
/* 80347DB4  38 C0 00 00 */	li r6, 0
/* 80347DB8  54 07 F0 BE */	srwi r7, r0, 2
/* 80347DBC  38 05 4D D3 */	addi r0, r5, 0x4DD3 /* 0x10624DD3@l */
/* 80347DC0  7C 00 38 16 */	mulhwu r0, r0, r7
/* 80347DC4  54 00 D1 BE */	srwi r0, r0, 6
/* 80347DC8  7D 29 20 10 */	subfc r9, r9, r4
/* 80347DCC  7D 08 19 10 */	subfe r8, r8, r3
/* 80347DD0  1C A0 00 05 */	mulli r5, r0, 5
/* 80347DD4  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 80347DD8  6D 03 80 00 */	xoris r3, r8, 0x8000
/* 80347DDC  7C 09 28 10 */	subfc r0, r9, r5
/* 80347DE0  7C 63 21 10 */	subfe r3, r3, r4
/* 80347DE4  7C 64 21 10 */	subfe r3, r4, r4
/* 80347DE8  7C 63 00 D1 */	neg. r3, r3
/* 80347DEC  41 82 00 28 */	beq lbl_80347E14
/* 80347DF0  38 00 FF FF */	li r0, -1
/* 80347DF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80347DF8  38 78 00 00 */	addi r3, r24, 0
/* 80347DFC  38 99 00 00 */	addi r4, r25, 0
/* 80347E00  90 CD 91 D4 */	stw r6, NextCommandNumber(r13)
/* 80347E04  38 BA 00 00 */	addi r5, r26, 0
/* 80347E08  38 DB 00 00 */	addi r6, r27, 0
/* 80347E0C  4B FF FC 7D */	bl Read
/* 80347E10  48 00 00 88 */	b lbl_80347E98
lbl_80347E14:
/* 80347E14  38 00 00 01 */	li r0, 1
/* 80347E18  90 1F 00 00 */	stw r0, 0(r31)
/* 80347E1C  3C 60 43 1C */	lis r3, 0x431C /* 0x431BDE83@ha */
/* 80347E20  38 03 DE 83 */	addi r0, r3, 0xDE83 /* 0x431BDE83@l */
/* 80347E24  93 1F 00 04 */	stw r24, 4(r31)
/* 80347E28  7C 00 38 16 */	mulhwu r0, r0, r7
/* 80347E2C  93 3F 00 08 */	stw r25, 8(r31)
/* 80347E30  93 5F 00 0C */	stw r26, 0xc(r31)
/* 80347E34  54 00 8B FE */	srwi r0, r0, 0xf
/* 80347E38  1C 60 01 F4 */	mulli r3, r0, 0x1f4
/* 80347E3C  93 7F 00 10 */	stw r27, 0x10(r31)
/* 80347E40  38 00 FF FF */	li r0, -1
/* 80347E44  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80347E48  7C A9 28 10 */	subfc r5, r9, r5
/* 80347E4C  7C 88 31 10 */	subfe r4, r8, r6
/* 80347E50  54 60 E8 FE */	srwi r0, r3, 3
/* 80347E54  90 CD 91 D4 */	stw r6, NextCommandNumber(r13)
/* 80347E58  7E E5 00 14 */	addc r23, r5, r0
/* 80347E5C  7E C4 31 14 */	adde r22, r4, r6
/* 80347E60  38 7F 00 40 */	addi r3, r31, 0x40
/* 80347E64  4B FF 2A 95 */	bl OSCreateAlarm
/* 80347E68  3C 60 80 34 */	lis r3, AlarmHandler@ha /* 0x80347994@ha */
/* 80347E6C  38 E3 79 94 */	addi r7, r3, AlarmHandler@l /* 0x80347994@l */
/* 80347E70  38 D7 00 00 */	addi r6, r23, 0
/* 80347E74  38 B6 00 00 */	addi r5, r22, 0
/* 80347E78  38 7F 00 40 */	addi r3, r31, 0x40
/* 80347E7C  4B FF 2C DD */	bl OSSetAlarm
/* 80347E80  48 00 00 18 */	b lbl_80347E98
lbl_80347E84:
/* 80347E84  38 78 00 00 */	addi r3, r24, 0
/* 80347E88  38 99 00 00 */	addi r4, r25, 0
/* 80347E8C  38 BA 00 00 */	addi r5, r26, 0
/* 80347E90  38 DB 00 00 */	addi r6, r27, 0
/* 80347E94  4B FF FD 05 */	bl SeekTwiceBeforeRead
lbl_80347E98:
/* 80347E98  BA C1 00 18 */	lmw r22, 0x18(r1)
/* 80347E9C  38 60 00 01 */	li r3, 1
/* 80347EA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80347EA4  38 21 00 40 */	addi r1, r1, 0x40
/* 80347EA8  7C 08 03 A6 */	mtlr r0
/* 80347EAC  4E 80 00 20 */	blr 
