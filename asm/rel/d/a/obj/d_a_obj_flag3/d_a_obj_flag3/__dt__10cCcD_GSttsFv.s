lbl_80BF0058:
/* 80BF0058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF005C  7C 08 02 A6 */	mflr r0
/* 80BF0060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF0064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF0068  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF006C  41 82 00 1C */	beq lbl_80BF0088
/* 80BF0070  3C A0 80 BF */	lis r5, __vt__10cCcD_GStts@ha
/* 80BF0074  38 05 05 DC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80BF0078  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF007C  7C 80 07 35 */	extsh. r0, r4
/* 80BF0080  40 81 00 08 */	ble lbl_80BF0088
/* 80BF0084  4B 6D EC B8 */	b __dl__FPv
lbl_80BF0088:
/* 80BF0088  7F E3 FB 78 */	mr r3, r31
/* 80BF008C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF0090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF0094  7C 08 03 A6 */	mtlr r0
/* 80BF0098  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF009C  4E 80 00 20 */	blr 
