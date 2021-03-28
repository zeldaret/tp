lbl_80CBC234:
/* 80CBC234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC238  7C 08 02 A6 */	mflr r0
/* 80CBC23C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBC244  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBC248  41 82 00 30 */	beq lbl_80CBC278
/* 80CBC24C  3C 60 80 CC */	lis r3, __vt__10dCcD_GStts@ha
/* 80CBC250  38 03 C5 78 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CBC254  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBC258  41 82 00 10 */	beq lbl_80CBC268
/* 80CBC25C  3C 60 80 CC */	lis r3, __vt__10cCcD_GStts@ha
/* 80CBC260  38 03 C5 6C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CBC264  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CBC268:
/* 80CBC268  7C 80 07 35 */	extsh. r0, r4
/* 80CBC26C  40 81 00 0C */	ble lbl_80CBC278
/* 80CBC270  7F E3 FB 78 */	mr r3, r31
/* 80CBC274  4B 61 2A C8 */	b __dl__FPv
lbl_80CBC278:
/* 80CBC278  7F E3 FB 78 */	mr r3, r31
/* 80CBC27C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBC280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC284  7C 08 03 A6 */	mtlr r0
/* 80CBC288  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC28C  4E 80 00 20 */	blr 
