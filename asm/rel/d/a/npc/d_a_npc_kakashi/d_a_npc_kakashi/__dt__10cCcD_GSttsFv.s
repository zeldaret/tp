lbl_8054DA00:
/* 8054DA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054DA04  7C 08 02 A6 */	mflr r0
/* 8054DA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054DA0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054DA10  7C 7F 1B 79 */	or. r31, r3, r3
/* 8054DA14  41 82 00 1C */	beq lbl_8054DA30
/* 8054DA18  3C A0 80 55 */	lis r5, __vt__10cCcD_GStts@ha /* 0x8054F074@ha */
/* 8054DA1C  38 05 F0 74 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x8054F074@l */
/* 8054DA20  90 1F 00 00 */	stw r0, 0(r31)
/* 8054DA24  7C 80 07 35 */	extsh. r0, r4
/* 8054DA28  40 81 00 08 */	ble lbl_8054DA30
/* 8054DA2C  4B D8 13 11 */	bl __dl__FPv
lbl_8054DA30:
/* 8054DA30  7F E3 FB 78 */	mr r3, r31
/* 8054DA34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054DA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054DA3C  7C 08 03 A6 */	mtlr r0
/* 8054DA40  38 21 00 10 */	addi r1, r1, 0x10
/* 8054DA44  4E 80 00 20 */	blr 
