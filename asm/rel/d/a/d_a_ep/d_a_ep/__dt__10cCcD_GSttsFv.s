lbl_8046AF5C:
/* 8046AF5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046AF60  7C 08 02 A6 */	mflr r0
/* 8046AF64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046AF68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046AF6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046AF70  41 82 00 1C */	beq lbl_8046AF8C
/* 8046AF74  3C A0 80 47 */	lis r5, __vt__10cCcD_GStts@ha
/* 8046AF78  38 05 B2 70 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 8046AF7C  90 1F 00 00 */	stw r0, 0(r31)
/* 8046AF80  7C 80 07 35 */	extsh. r0, r4
/* 8046AF84  40 81 00 08 */	ble lbl_8046AF8C
/* 8046AF88  4B E6 3D B4 */	b __dl__FPv
lbl_8046AF8C:
/* 8046AF8C  7F E3 FB 78 */	mr r3, r31
/* 8046AF90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046AF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046AF98  7C 08 03 A6 */	mtlr r0
/* 8046AF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046AFA0  4E 80 00 20 */	blr 
