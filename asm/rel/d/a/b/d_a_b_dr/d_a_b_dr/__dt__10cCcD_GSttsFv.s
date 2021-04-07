lbl_805C6B4C:
/* 805C6B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C6B50  7C 08 02 A6 */	mflr r0
/* 805C6B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C6B58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C6B5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 805C6B60  41 82 00 1C */	beq lbl_805C6B7C
/* 805C6B64  3C A0 80 5C */	lis r5, __vt__10cCcD_GStts@ha /* 0x805C7840@ha */
/* 805C6B68  38 05 78 40 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x805C7840@l */
/* 805C6B6C  90 1F 00 00 */	stw r0, 0(r31)
/* 805C6B70  7C 80 07 35 */	extsh. r0, r4
/* 805C6B74  40 81 00 08 */	ble lbl_805C6B7C
/* 805C6B78  4B D0 81 C5 */	bl __dl__FPv
lbl_805C6B7C:
/* 805C6B7C  7F E3 FB 78 */	mr r3, r31
/* 805C6B80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C6B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C6B88  7C 08 03 A6 */	mtlr r0
/* 805C6B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C6B90  4E 80 00 20 */	blr 
