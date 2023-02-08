lbl_80BB9604:
/* 80BB9604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB9608  7C 08 02 A6 */	mflr r0
/* 80BB960C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB9610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB9614  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB9618  41 82 00 1C */	beq lbl_80BB9634
/* 80BB961C  3C A0 80 BC */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BB9908@ha */
/* 80BB9620  38 05 99 08 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BB9908@l */
/* 80BB9624  90 1F 00 00 */	stw r0, 0(r31)
/* 80BB9628  7C 80 07 35 */	extsh. r0, r4
/* 80BB962C  40 81 00 08 */	ble lbl_80BB9634
/* 80BB9630  4B 71 57 0D */	bl __dl__FPv
lbl_80BB9634:
/* 80BB9634  7F E3 FB 78 */	mr r3, r31
/* 80BB9638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB963C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB9640  7C 08 03 A6 */	mtlr r0
/* 80BB9644  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9648  4E 80 00 20 */	blr 
