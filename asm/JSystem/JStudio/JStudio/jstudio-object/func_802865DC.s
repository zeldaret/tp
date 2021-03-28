lbl_802865DC:
/* 802865DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802865E0  7C 08 02 A6 */	mflr r0
/* 802865E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802865E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802865EC  80 63 00 08 */	lwz r3, 8(r3)
/* 802865F0  1C 05 00 14 */	mulli r0, r5, 0x14
/* 802865F4  7F E3 02 14 */	add r31, r3, r0
/* 802865F8  38 64 00 60 */	addi r3, r4, 0x60
/* 802865FC  7C C4 33 78 */	mr r4, r6
/* 80286600  7C E5 3B 78 */	mr r5, r7
/* 80286604  4B FF E2 31 */	bl getObject__Q37JStudio3fvb8TControlFPCvUl
/* 80286608  28 03 00 00 */	cmplwi r3, 0
/* 8028660C  40 82 00 0C */	bne lbl_80286618
/* 80286610  38 80 00 00 */	li r4, 0
/* 80286614  48 00 00 08 */	b lbl_8028661C
lbl_80286618:
/* 80286618  80 83 00 14 */	lwz r4, 0x14(r3)
lbl_8028661C:
/* 8028661C  3C 60 80 28 */	lis r3, update_functionValue___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@ha
/* 80286620  38 03 5F 08 */	addi r0, r3, update_functionValue___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@l
/* 80286624  90 1F 00 08 */	stw r0, 8(r31)
/* 80286628  38 00 00 00 */	li r0, 0
/* 8028662C  90 1F 00 04 */	stw r0, 4(r31)
/* 80286630  90 9F 00 0C */	stw r4, 0xc(r31)
/* 80286634  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028663C  7C 08 03 A6 */	mtlr r0
/* 80286640  38 21 00 10 */	addi r1, r1, 0x10
/* 80286644  4E 80 00 20 */	blr 
