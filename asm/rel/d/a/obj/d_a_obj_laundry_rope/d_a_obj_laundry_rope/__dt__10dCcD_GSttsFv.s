lbl_80C53258:
/* 80C53258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5325C  7C 08 02 A6 */	mflr r0
/* 80C53260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C53264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C53268  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5326C  41 82 00 30 */	beq lbl_80C5329C
/* 80C53270  3C 60 80 C5 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C53274  38 03 34 5C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C53278  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5327C  41 82 00 10 */	beq lbl_80C5328C
/* 80C53280  3C 60 80 C5 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C53284  38 03 34 50 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C53288  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C5328C:
/* 80C5328C  7C 80 07 35 */	extsh. r0, r4
/* 80C53290  40 81 00 0C */	ble lbl_80C5329C
/* 80C53294  7F E3 FB 78 */	mr r3, r31
/* 80C53298  4B 67 BA A4 */	b __dl__FPv
lbl_80C5329C:
/* 80C5329C  7F E3 FB 78 */	mr r3, r31
/* 80C532A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C532A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C532A8  7C 08 03 A6 */	mtlr r0
/* 80C532AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C532B0  4E 80 00 20 */	blr 
