lbl_80BEEDA8:
/* 80BEEDA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEEDAC  7C 08 02 A6 */	mflr r0
/* 80BEEDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEEDB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEEDB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEEDBC  41 82 00 10 */	beq lbl_80BEEDCC
/* 80BEEDC0  7C 80 07 35 */	extsh. r0, r4
/* 80BEEDC4  40 81 00 08 */	ble lbl_80BEEDCC
/* 80BEEDC8  4B 6D FF 75 */	bl __dl__FPv
lbl_80BEEDCC:
/* 80BEEDCC  7F E3 FB 78 */	mr r3, r31
/* 80BEEDD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEEDD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEEDD8  7C 08 03 A6 */	mtlr r0
/* 80BEEDDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEEDE0  4E 80 00 20 */	blr 
