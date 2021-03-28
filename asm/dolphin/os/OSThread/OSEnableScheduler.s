lbl_80340D04:
/* 80340D04  7C 08 02 A6 */	mflr r0
/* 80340D08  90 01 00 04 */	stw r0, 4(r1)
/* 80340D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80340D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80340D14  4B FF C9 E1 */	bl OSDisableInterrupts
/* 80340D18  80 8D 91 48 */	lwz r4, Reschedule(r13)
/* 80340D1C  38 04 FF FF */	addi r0, r4, -1
/* 80340D20  90 0D 91 48 */	stw r0, Reschedule(r13)
/* 80340D24  7C 9F 23 78 */	mr r31, r4
/* 80340D28  4B FF C9 F5 */	bl OSRestoreInterrupts
/* 80340D2C  7F E3 FB 78 */	mr r3, r31
/* 80340D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80340D34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80340D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80340D3C  7C 08 03 A6 */	mtlr r0
/* 80340D40  4E 80 00 20 */	blr 
