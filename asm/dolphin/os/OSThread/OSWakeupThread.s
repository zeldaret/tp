lbl_80341C98:
/* 80341C98  7C 08 02 A6 */	mflr r0
/* 80341C9C  90 01 00 04 */	stw r0, 4(r1)
/* 80341CA0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80341CA4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80341CA8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80341CAC  7C 7E 1B 78 */	mr r30, r3
/* 80341CB0  4B FF BA 45 */	bl OSDisableInterrupts
/* 80341CB4  3C 80 80 45 */	lis r4, RunQueue@ha /* 0x8044BB78@ha */
/* 80341CB8  3B E3 00 00 */	addi r31, r3, 0
/* 80341CBC  38 A4 BB 78 */	addi r5, r4, RunQueue@l /* 0x8044BB78@l */
/* 80341CC0  48 00 00 9C */	b lbl_80341D5C
lbl_80341CC4:
/* 80341CC4  80 66 02 E0 */	lwz r3, 0x2e0(r6)
/* 80341CC8  28 03 00 00 */	cmplwi r3, 0
/* 80341CCC  40 82 00 10 */	bne lbl_80341CDC
/* 80341CD0  38 00 00 00 */	li r0, 0
/* 80341CD4  90 1E 00 04 */	stw r0, 4(r30)
/* 80341CD8  48 00 00 0C */	b lbl_80341CE4
lbl_80341CDC:
/* 80341CDC  38 00 00 00 */	li r0, 0
/* 80341CE0  90 03 02 E4 */	stw r0, 0x2e4(r3)
lbl_80341CE4:
/* 80341CE4  90 7E 00 00 */	stw r3, 0(r30)
/* 80341CE8  38 00 00 01 */	li r0, 1
/* 80341CEC  B0 06 02 C8 */	sth r0, 0x2c8(r6)
/* 80341CF0  80 06 02 CC */	lwz r0, 0x2cc(r6)
/* 80341CF4  2C 00 00 00 */	cmpwi r0, 0
/* 80341CF8  41 81 00 64 */	bgt lbl_80341D5C
/* 80341CFC  80 06 02 D0 */	lwz r0, 0x2d0(r6)
/* 80341D00  54 00 18 38 */	slwi r0, r0, 3
/* 80341D04  7C 05 02 14 */	add r0, r5, r0
/* 80341D08  90 06 02 DC */	stw r0, 0x2dc(r6)
/* 80341D0C  80 86 02 DC */	lwz r4, 0x2dc(r6)
/* 80341D10  80 64 00 04 */	lwz r3, 4(r4)
/* 80341D14  28 03 00 00 */	cmplwi r3, 0
/* 80341D18  40 82 00 0C */	bne lbl_80341D24
/* 80341D1C  90 C4 00 00 */	stw r6, 0(r4)
/* 80341D20  48 00 00 08 */	b lbl_80341D28
lbl_80341D24:
/* 80341D24  90 C3 02 E0 */	stw r6, 0x2e0(r3)
lbl_80341D28:
/* 80341D28  90 66 02 E4 */	stw r3, 0x2e4(r6)
/* 80341D2C  38 00 00 00 */	li r0, 0
/* 80341D30  38 60 00 01 */	li r3, 1
/* 80341D34  90 06 02 E0 */	stw r0, 0x2e0(r6)
/* 80341D38  80 86 02 DC */	lwz r4, 0x2dc(r6)
/* 80341D3C  90 C4 00 04 */	stw r6, 4(r4)
/* 80341D40  80 06 02 D0 */	lwz r0, 0x2d0(r6)
/* 80341D44  80 8D 91 40 */	lwz r4, RunQueueBits(r13)
/* 80341D48  20 00 00 1F */	subfic r0, r0, 0x1f
/* 80341D4C  7C 60 00 30 */	slw r0, r3, r0
/* 80341D50  7C 80 03 78 */	or r0, r4, r0
/* 80341D54  90 0D 91 40 */	stw r0, RunQueueBits(r13)
/* 80341D58  90 6D 91 44 */	stw r3, RunQueueHint(r13)
lbl_80341D5C:
/* 80341D5C  80 DE 00 00 */	lwz r6, 0(r30)
/* 80341D60  28 06 00 00 */	cmplwi r6, 0
/* 80341D64  40 82 FF 60 */	bne lbl_80341CC4
/* 80341D68  80 0D 91 44 */	lwz r0, RunQueueHint(r13)
/* 80341D6C  2C 00 00 00 */	cmpwi r0, 0
/* 80341D70  41 82 00 0C */	beq lbl_80341D7C
/* 80341D74  38 60 00 00 */	li r3, 0
/* 80341D78  4B FF F2 81 */	bl SelectThread
lbl_80341D7C:
/* 80341D7C  7F E3 FB 78 */	mr r3, r31
/* 80341D80  4B FF B9 9D */	bl OSRestoreInterrupts
/* 80341D84  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80341D88  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80341D8C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80341D90  38 21 00 18 */	addi r1, r1, 0x18
/* 80341D94  7C 08 03 A6 */	mtlr r0
/* 80341D98  4E 80 00 20 */	blr 
