lbl_80CBF5BC:
/* 80CBF5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF5C0  7C 08 02 A6 */	mflr r0
/* 80CBF5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF5C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBF5CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBF5D0  41 82 00 30 */	beq lbl_80CBF600
/* 80CBF5D4  3C 60 80 CC */	lis r3, __vt__17daRotBridge_HIO_c@ha /* 0x80CBF768@ha */
/* 80CBF5D8  38 03 F7 68 */	addi r0, r3, __vt__17daRotBridge_HIO_c@l /* 0x80CBF768@l */
/* 80CBF5DC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBF5E0  41 82 00 10 */	beq lbl_80CBF5F0
/* 80CBF5E4  3C 60 80 CC */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80CBF774@ha */
/* 80CBF5E8  38 03 F7 74 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80CBF774@l */
/* 80CBF5EC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CBF5F0:
/* 80CBF5F0  7C 80 07 35 */	extsh. r0, r4
/* 80CBF5F4  40 81 00 0C */	ble lbl_80CBF600
/* 80CBF5F8  7F E3 FB 78 */	mr r3, r31
/* 80CBF5FC  4B 60 F7 41 */	bl __dl__FPv
lbl_80CBF600:
/* 80CBF600  7F E3 FB 78 */	mr r3, r31
/* 80CBF604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBF608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBF60C  7C 08 03 A6 */	mtlr r0
/* 80CBF610  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBF614  4E 80 00 20 */	blr 
