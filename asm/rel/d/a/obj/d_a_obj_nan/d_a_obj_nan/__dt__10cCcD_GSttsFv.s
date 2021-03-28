lbl_80CA3160:
/* 80CA3160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA3164  7C 08 02 A6 */	mflr r0
/* 80CA3168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA316C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA3170  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA3174  41 82 00 1C */	beq lbl_80CA3190
/* 80CA3178  3C A0 80 CA */	lis r5, __vt__10cCcD_GStts@ha
/* 80CA317C  38 05 34 2C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CA3180  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA3184  7C 80 07 35 */	extsh. r0, r4
/* 80CA3188  40 81 00 08 */	ble lbl_80CA3190
/* 80CA318C  4B 62 BB B0 */	b __dl__FPv
lbl_80CA3190:
/* 80CA3190  7F E3 FB 78 */	mr r3, r31
/* 80CA3194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA3198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA319C  7C 08 03 A6 */	mtlr r0
/* 80CA31A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA31A4  4E 80 00 20 */	blr 
