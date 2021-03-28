lbl_80CB822C:
/* 80CB822C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8230  7C 08 02 A6 */	mflr r0
/* 80CB8234  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8238  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB823C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB8240  41 82 00 1C */	beq lbl_80CB825C
/* 80CB8244  3C A0 80 CC */	lis r5, __vt__10cCcD_GStts@ha
/* 80CB8248  38 05 85 68 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CB824C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB8250  7C 80 07 35 */	extsh. r0, r4
/* 80CB8254  40 81 00 08 */	ble lbl_80CB825C
/* 80CB8258  4B 61 6A E4 */	b __dl__FPv
lbl_80CB825C:
/* 80CB825C  7F E3 FB 78 */	mr r3, r31
/* 80CB8260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB8264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8268  7C 08 03 A6 */	mtlr r0
/* 80CB826C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8270  4E 80 00 20 */	blr 
