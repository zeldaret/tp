lbl_80844B44:
/* 80844B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80844B48  7C 08 02 A6 */	mflr r0
/* 80844B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80844B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80844B54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80844B58  41 82 00 1C */	beq lbl_80844B74
/* 80844B5C  3C A0 80 84 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80845A9C@ha */
/* 80844B60  38 05 5A 9C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80845A9C@l */
/* 80844B64  90 1F 00 00 */	stw r0, 0(r31)
/* 80844B68  7C 80 07 35 */	extsh. r0, r4
/* 80844B6C  40 81 00 08 */	ble lbl_80844B74
/* 80844B70  4B A8 A1 CD */	bl __dl__FPv
lbl_80844B74:
/* 80844B74  7F E3 FB 78 */	mr r3, r31
/* 80844B78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80844B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80844B80  7C 08 03 A6 */	mtlr r0
/* 80844B84  38 21 00 10 */	addi r1, r1, 0x10
/* 80844B88  4E 80 00 20 */	blr 
