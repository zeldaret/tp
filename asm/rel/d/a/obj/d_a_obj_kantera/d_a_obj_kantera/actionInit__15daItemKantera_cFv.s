lbl_80C39068:
/* 80C39068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3906C  7C 08 02 A6 */	mflr r0
/* 80C39070  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C39074  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C39078  7C 7F 1B 78 */	mr r31, r3
/* 80C3907C  4B 3F E9 F9 */	bl show__12daItemBase_cFv
/* 80C39080  7F E3 FB 78 */	mr r3, r31
/* 80C39084  48 00 00 1D */	bl actionWaitInit__15daItemKantera_cFv
/* 80C39088  38 60 00 01 */	li r3, 1
/* 80C3908C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C39090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C39094  7C 08 03 A6 */	mtlr r0
/* 80C39098  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3909C  4E 80 00 20 */	blr 
