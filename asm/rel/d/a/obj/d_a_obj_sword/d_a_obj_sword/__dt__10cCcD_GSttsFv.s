lbl_80CFDE24:
/* 80CFDE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFDE28  7C 08 02 A6 */	mflr r0
/* 80CFDE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFDE30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFDE34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CFDE38  41 82 00 1C */	beq lbl_80CFDE54
/* 80CFDE3C  3C A0 80 D0 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80CFDF70@ha */
/* 80CFDE40  38 05 DF 70 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80CFDF70@l */
/* 80CFDE44  90 1F 00 00 */	stw r0, 0(r31)
/* 80CFDE48  7C 80 07 35 */	extsh. r0, r4
/* 80CFDE4C  40 81 00 08 */	ble lbl_80CFDE54
/* 80CFDE50  4B 5D 0E ED */	bl __dl__FPv
lbl_80CFDE54:
/* 80CFDE54  7F E3 FB 78 */	mr r3, r31
/* 80CFDE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFDE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFDE60  7C 08 03 A6 */	mtlr r0
/* 80CFDE64  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFDE68  4E 80 00 20 */	blr 
