lbl_80C33B3C:
/* 80C33B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C33B40  7C 08 02 A6 */	mflr r0
/* 80C33B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C33B48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C33B4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C33B50  41 82 00 1C */	beq lbl_80C33B6C
/* 80C33B54  3C A0 80 C3 */	lis r5, __vt__10cCcD_GStts@ha
/* 80C33B58  38 05 3E B0 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80C33B5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C33B60  7C 80 07 35 */	extsh. r0, r4
/* 80C33B64  40 81 00 08 */	ble lbl_80C33B6C
/* 80C33B68  4B 69 B1 D4 */	b __dl__FPv
lbl_80C33B6C:
/* 80C33B6C  7F E3 FB 78 */	mr r3, r31
/* 80C33B70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C33B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C33B78  7C 08 03 A6 */	mtlr r0
/* 80C33B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C33B80  4E 80 00 20 */	blr 
