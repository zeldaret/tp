lbl_80AD9038:
/* 80AD9038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD903C  7C 08 02 A6 */	mflr r0
/* 80AD9040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD9044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD9048  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD904C  41 82 00 10 */	beq lbl_80AD905C
/* 80AD9050  7C 80 07 35 */	extsh. r0, r4
/* 80AD9054  40 81 00 08 */	ble lbl_80AD905C
/* 80AD9058  4B 7F 5C E5 */	bl __dl__FPv
lbl_80AD905C:
/* 80AD905C  7F E3 FB 78 */	mr r3, r31
/* 80AD9060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD9064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD9068  7C 08 03 A6 */	mtlr r0
/* 80AD906C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD9070  4E 80 00 20 */	blr 
