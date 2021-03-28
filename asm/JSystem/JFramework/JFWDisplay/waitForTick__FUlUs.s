lbl_80272CB0:
/* 80272CB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80272CB4  7C 08 02 A6 */	mflr r0
/* 80272CB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80272CBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80272CC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80272CC4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80272CC8  7C 9E 23 78 */	mr r30, r4
/* 80272CCC  41 82 00 84 */	beq lbl_80272D50
/* 80272CD0  88 0D 8C 58 */	lbz r0, data_804511D8(r13)
/* 80272CD4  7C 00 07 75 */	extsb. r0, r0
/* 80272CD8  40 82 00 18 */	bne lbl_80272CF0
/* 80272CDC  48 0C FA 21 */	bl OSGetTime
/* 80272CE0  90 8D 8C 54 */	stw r4, data_804511D4(r13)
/* 80272CE4  90 6D 8C 50 */	stw r3, nextTick(r13)
/* 80272CE8  38 00 00 01 */	li r0, 1
/* 80272CEC  98 0D 8C 58 */	stb r0, data_804511D8(r13)
lbl_80272CF0:
/* 80272CF0  48 0C FA 0D */	bl OSGetTime
/* 80272CF4  7C 68 1B 78 */	mr r8, r3
/* 80272CF8  48 00 00 1C */	b lbl_80272D14
lbl_80272CFC:
/* 80272CFC  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80272D00  7C C4 30 10 */	subfc r6, r4, r6
/* 80272D04  7C A8 39 10 */	subfe r5, r8, r7
/* 80272D08  48 00 01 09 */	bl threadSleep__10JFWDisplayFx
/* 80272D0C  48 0C F9 F1 */	bl OSGetTime
/* 80272D10  7C 68 1B 78 */	mr r8, r3
lbl_80272D14:
/* 80272D14  80 ED 8C 50 */	lwz r7, nextTick(r13)
/* 80272D18  80 CD 8C 54 */	lwz r6, data_804511D4(r13)
/* 80272D1C  6D 05 80 00 */	xoris r5, r8, 0x8000
/* 80272D20  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 80272D24  7C 06 20 10 */	subfc r0, r6, r4
/* 80272D28  7C 63 29 10 */	subfe r3, r3, r5
/* 80272D2C  7C 65 29 10 */	subfe r3, r5, r5
/* 80272D30  7C 63 00 D1 */	neg. r3, r3
/* 80272D34  40 82 FF C8 */	bne lbl_80272CFC
/* 80272D38  38 00 00 00 */	li r0, 0
/* 80272D3C  7C 64 F8 14 */	addc r3, r4, r31
/* 80272D40  7C 08 01 14 */	adde r0, r8, r0
/* 80272D44  90 6D 8C 54 */	stw r3, data_804511D4(r13)
/* 80272D48  90 0D 8C 50 */	stw r0, nextTick(r13)
/* 80272D4C  48 00 00 6C */	b lbl_80272DB8
lbl_80272D50:
/* 80272D50  88 0D 8C 60 */	lbz r0, data_804511E0(r13)
/* 80272D54  7C 00 07 75 */	extsb. r0, r0
/* 80272D58  40 82 00 14 */	bne lbl_80272D6C
/* 80272D5C  48 0D AB 61 */	bl VIGetRetraceCount
/* 80272D60  90 6D 8C 5C */	stw r3, nextCount(r13)
/* 80272D64  38 00 00 01 */	li r0, 1
/* 80272D68  98 0D 8C 60 */	stb r0, data_804511E0(r13)
lbl_80272D6C:
/* 80272D6C  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 80272D70  3B C0 00 01 */	li r30, 1
/* 80272D74  41 82 00 08 */	beq lbl_80272D7C
/* 80272D78  7C 1E 03 78 */	mr r30, r0
lbl_80272D7C:
/* 80272D7C  3B E0 00 00 */	li r31, 0
lbl_80272D80:
/* 80272D80  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 80272D84  38 63 00 38 */	addi r3, r3, 0x38
/* 80272D88  38 81 00 08 */	addi r4, r1, 8
/* 80272D8C  38 A0 00 01 */	li r5, 1
/* 80272D90  48 0C BD 2D */	bl OSReceiveMessage
/* 80272D94  2C 03 00 00 */	cmpwi r3, 0
/* 80272D98  40 82 00 08 */	bne lbl_80272DA0
/* 80272D9C  93 E1 00 08 */	stw r31, 8(r1)
lbl_80272DA0:
/* 80272DA0  80 0D 8C 5C */	lwz r0, nextCount(r13)
/* 80272DA4  80 61 00 08 */	lwz r3, 8(r1)
/* 80272DA8  7C 00 18 51 */	subf. r0, r0, r3
/* 80272DAC  41 80 FF D4 */	blt lbl_80272D80
/* 80272DB0  7C 03 F2 14 */	add r0, r3, r30
/* 80272DB4  90 0D 8C 5C */	stw r0, nextCount(r13)
lbl_80272DB8:
/* 80272DB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80272DBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80272DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80272DC4  7C 08 03 A6 */	mtlr r0
/* 80272DC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80272DCC  4E 80 00 20 */	blr 
