lbl_8059404C:
/* 8059404C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594050  7C 08 02 A6 */	mflr r0
/* 80594054  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594058  4B CC F0 34 */	b ModuleEpilog
/* 8059405C  3C 60 80 59 */	lis r3, data_80594E70@ha
/* 80594060  38 63 4E 70 */	addi r3, r3, data_80594E70@l
/* 80594064  4B CC F1 2C */	b ModuleDestructorsX
/* 80594068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059406C  7C 08 03 A6 */	mtlr r0
/* 80594070  38 21 00 10 */	addi r1, r1, 0x10
/* 80594074  4E 80 00 20 */	blr 
