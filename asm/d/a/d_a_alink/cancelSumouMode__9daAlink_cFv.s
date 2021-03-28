lbl_800EA8D0:
/* 800EA8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA8D4  7C 08 02 A6 */	mflr r0
/* 800EA8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA8DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EA8E0  7C 7F 1B 78 */	mr r31, r3
/* 800EA8E4  38 7F 28 54 */	addi r3, r31, 0x2854
/* 800EA8E8  48 07 44 15 */	bl clearData__16daPy_actorKeep_cFv
/* 800EA8EC  38 00 00 00 */	li r0, 0
/* 800EA8F0  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 800EA8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EA8F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA8FC  7C 08 03 A6 */	mtlr r0
/* 800EA900  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA904  4E 80 00 20 */	blr 
