lbl_80340CC4:
/* 80340CC4  7C 08 02 A6 */	mflr r0
/* 80340CC8  90 01 00 04 */	stw r0, 4(r1)
/* 80340CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80340CD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80340CD4  4B FF CA 21 */	bl OSDisableInterrupts
/* 80340CD8  80 8D 91 48 */	lwz r4, Reschedule(r13)
/* 80340CDC  38 04 00 01 */	addi r0, r4, 1
/* 80340CE0  90 0D 91 48 */	stw r0, Reschedule(r13)
/* 80340CE4  7C 9F 23 78 */	mr r31, r4
/* 80340CE8  4B FF CA 35 */	bl OSRestoreInterrupts
/* 80340CEC  7F E3 FB 78 */	mr r3, r31
/* 80340CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80340CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80340CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80340CFC  7C 08 03 A6 */	mtlr r0
/* 80340D00  4E 80 00 20 */	blr 
