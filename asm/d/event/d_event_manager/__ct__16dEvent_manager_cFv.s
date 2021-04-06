lbl_80046688:
/* 80046688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004668C  7C 08 02 A6 */	mflr r0
/* 80046690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80046694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80046698  7C 7F 1B 78 */	mr r31, r3
/* 8004669C  3C 80 80 04 */	lis r4, __ct__11dEvDtBase_cFv@ha /* 0x800466E0@ha */
/* 800466A0  38 84 66 E0 */	addi r4, r4, __ct__11dEvDtBase_cFv@l /* 0x800466E0@l */
/* 800466A4  3C A0 80 03 */	lis r5, __dt__11dEvDtBase_cFv@ha /* 0x80030190@ha */
/* 800466A8  38 A5 01 90 */	addi r5, r5, __dt__11dEvDtBase_cFv@l /* 0x80030190@l */
/* 800466AC  38 C0 00 24 */	li r6, 0x24
/* 800466B0  38 E0 00 0B */	li r7, 0xb
/* 800466B4  48 31 B6 AD */	bl __construct_array
/* 800466B8  38 00 FF FF */	li r0, -1
/* 800466BC  90 1F 01 90 */	stw r0, 0x190(r31)
/* 800466C0  38 00 00 00 */	li r0, 0
/* 800466C4  98 1F 06 BC */	stb r0, 0x6bc(r31)
/* 800466C8  7F E3 FB 78 */	mr r3, r31
/* 800466CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800466D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800466D4  7C 08 03 A6 */	mtlr r0
/* 800466D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800466DC  4E 80 00 20 */	blr 
