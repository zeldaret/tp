lbl_80BB7E04:
/* 80BB7E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB7E08  7C 08 02 A6 */	mflr r0
/* 80BB7E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB7E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB7E14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB7E18  41 82 00 1C */	beq lbl_80BB7E34
/* 80BB7E1C  3C A0 80 BC */	lis r5, __vt__10cCcD_GStts@ha
/* 80BB7E20  38 05 80 E4 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80BB7E24  90 1F 00 00 */	stw r0, 0(r31)
/* 80BB7E28  7C 80 07 35 */	extsh. r0, r4
/* 80BB7E2C  40 81 00 08 */	ble lbl_80BB7E34
/* 80BB7E30  4B 71 6F 0C */	b __dl__FPv
lbl_80BB7E34:
/* 80BB7E34  7F E3 FB 78 */	mr r3, r31
/* 80BB7E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB7E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB7E40  7C 08 03 A6 */	mtlr r0
/* 80BB7E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB7E48  4E 80 00 20 */	blr 
