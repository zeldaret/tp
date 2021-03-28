lbl_80372CC8:
/* 80372CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80372CCC  7C 08 02 A6 */	mflr r0
/* 80372CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80372CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80372CD8  7C 7F 1B 78 */	mr r31, r3
/* 80372CDC  4B FC AA 19 */	bl OSDisableInterrupts
/* 80372CE0  90 7F 00 00 */	stw r3, 0(r31)
/* 80372CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80372CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80372CEC  7C 08 03 A6 */	mtlr r0
/* 80372CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80372CF4  4E 80 00 20 */	blr 
