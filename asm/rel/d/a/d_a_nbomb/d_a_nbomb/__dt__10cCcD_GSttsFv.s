lbl_804CC220:
/* 804CC220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CC224  7C 08 02 A6 */	mflr r0
/* 804CC228  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CC22C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CC230  7C 7F 1B 79 */	or. r31, r3, r3
/* 804CC234  41 82 00 1C */	beq lbl_804CC250
/* 804CC238  3C A0 80 4D */	lis r5, __vt__10cCcD_GStts@ha
/* 804CC23C  38 05 C5 F8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 804CC240  90 1F 00 00 */	stw r0, 0(r31)
/* 804CC244  7C 80 07 35 */	extsh. r0, r4
/* 804CC248  40 81 00 08 */	ble lbl_804CC250
/* 804CC24C  4B E0 2A F0 */	b __dl__FPv
lbl_804CC250:
/* 804CC250  7F E3 FB 78 */	mr r3, r31
/* 804CC254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CC258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CC25C  7C 08 03 A6 */	mtlr r0
/* 804CC260  38 21 00 10 */	addi r1, r1, 0x10
/* 804CC264  4E 80 00 20 */	blr 
