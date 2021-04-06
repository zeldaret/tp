lbl_80958FB0:
/* 80958FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80958FB4  7C 08 02 A6 */	mflr r0
/* 80958FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80958FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80958FC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80958FC4  41 82 00 1C */	beq lbl_80958FE0
/* 80958FC8  3C A0 80 96 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x8095DC54@ha */
/* 80958FCC  38 05 DC 54 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x8095DC54@l */
/* 80958FD0  90 1F 00 00 */	stw r0, 0(r31)
/* 80958FD4  7C 80 07 35 */	extsh. r0, r4
/* 80958FD8  40 81 00 08 */	ble lbl_80958FE0
/* 80958FDC  4B 97 5D 61 */	bl __dl__FPv
lbl_80958FE0:
/* 80958FE0  7F E3 FB 78 */	mr r3, r31
/* 80958FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80958FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80958FEC  7C 08 03 A6 */	mtlr r0
/* 80958FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80958FF4  4E 80 00 20 */	blr 
