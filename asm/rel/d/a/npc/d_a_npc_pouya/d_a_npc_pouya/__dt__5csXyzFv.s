lbl_80AB11C0:
/* 80AB11C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB11C4  7C 08 02 A6 */	mflr r0
/* 80AB11C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB11CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB11D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB11D4  41 82 00 10 */	beq lbl_80AB11E4
/* 80AB11D8  7C 80 07 35 */	extsh. r0, r4
/* 80AB11DC  40 81 00 08 */	ble lbl_80AB11E4
/* 80AB11E0  4B 81 DB 5C */	b __dl__FPv
lbl_80AB11E4:
/* 80AB11E4  7F E3 FB 78 */	mr r3, r31
/* 80AB11E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB11EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB11F0  7C 08 03 A6 */	mtlr r0
/* 80AB11F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB11F8  4E 80 00 20 */	blr 
