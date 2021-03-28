lbl_8068D294:
/* 8068D294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068D298  7C 08 02 A6 */	mflr r0
/* 8068D29C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068D2A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068D2A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8068D2A8  41 82 00 1C */	beq lbl_8068D2C4
/* 8068D2AC  3C A0 80 69 */	lis r5, __vt__10cCcD_GStts@ha
/* 8068D2B0  38 05 DA 2C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 8068D2B4  90 1F 00 00 */	stw r0, 0(r31)
/* 8068D2B8  7C 80 07 35 */	extsh. r0, r4
/* 8068D2BC  40 81 00 08 */	ble lbl_8068D2C4
/* 8068D2C0  4B C4 1A 7C */	b __dl__FPv
lbl_8068D2C4:
/* 8068D2C4  7F E3 FB 78 */	mr r3, r31
/* 8068D2C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068D2CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068D2D0  7C 08 03 A6 */	mtlr r0
/* 8068D2D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8068D2D8  4E 80 00 20 */	blr 
