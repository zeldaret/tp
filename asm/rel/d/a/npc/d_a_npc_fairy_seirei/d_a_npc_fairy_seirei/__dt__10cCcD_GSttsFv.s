lbl_80540F00:
/* 80540F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540F04  7C 08 02 A6 */	mflr r0
/* 80540F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540F0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80540F10  7C 7F 1B 79 */	or. r31, r3, r3
/* 80540F14  41 82 00 1C */	beq lbl_80540F30
/* 80540F18  3C A0 80 54 */	lis r5, __vt__10cCcD_GStts@ha
/* 80540F1C  38 05 1F BC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80540F20  90 1F 00 00 */	stw r0, 0(r31)
/* 80540F24  7C 80 07 35 */	extsh. r0, r4
/* 80540F28  40 81 00 08 */	ble lbl_80540F30
/* 80540F2C  4B D8 DE 10 */	b __dl__FPv
lbl_80540F30:
/* 80540F30  7F E3 FB 78 */	mr r3, r31
/* 80540F34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80540F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540F3C  7C 08 03 A6 */	mtlr r0
/* 80540F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80540F44  4E 80 00 20 */	blr 
