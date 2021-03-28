lbl_804DA5B8:
/* 804DA5B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA5BC  7C 08 02 A6 */	mflr r0
/* 804DA5C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA5C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DA5C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DA5CC  41 82 00 10 */	beq lbl_804DA5DC
/* 804DA5D0  7C 80 07 35 */	extsh. r0, r4
/* 804DA5D4  40 81 00 08 */	ble lbl_804DA5DC
/* 804DA5D8  4B DF 47 64 */	b __dl__FPv
lbl_804DA5DC:
/* 804DA5DC  7F E3 FB 78 */	mr r3, r31
/* 804DA5E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DA5E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA5E8  7C 08 03 A6 */	mtlr r0
/* 804DA5EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA5F0  4E 80 00 20 */	blr 
