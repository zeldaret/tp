lbl_80AFBCF4:
/* 80AFBCF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFBCF8  7C 08 02 A6 */	mflr r0
/* 80AFBCFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFBD00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFBD04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AFBD08  41 82 00 1C */	beq lbl_80AFBD24
/* 80AFBD0C  3C A0 80 B0 */	lis r5, __vt__10cCcD_GStts@ha
/* 80AFBD10  38 05 C6 08 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80AFBD14  90 1F 00 00 */	stw r0, 0(r31)
/* 80AFBD18  7C 80 07 35 */	extsh. r0, r4
/* 80AFBD1C  40 81 00 08 */	ble lbl_80AFBD24
/* 80AFBD20  4B 7D 30 1C */	b __dl__FPv
lbl_80AFBD24:
/* 80AFBD24  7F E3 FB 78 */	mr r3, r31
/* 80AFBD28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFBD2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFBD30  7C 08 03 A6 */	mtlr r0
/* 80AFBD34  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFBD38  4E 80 00 20 */	blr 
