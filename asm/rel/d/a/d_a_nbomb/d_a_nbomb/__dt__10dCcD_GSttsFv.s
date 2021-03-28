lbl_804C7D58:
/* 804C7D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C7D5C  7C 08 02 A6 */	mflr r0
/* 804C7D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C7D64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C7D68  7C 7F 1B 79 */	or. r31, r3, r3
/* 804C7D6C  41 82 00 30 */	beq lbl_804C7D9C
/* 804C7D70  3C 60 80 4D */	lis r3, __vt__10dCcD_GStts@ha
/* 804C7D74  38 03 C6 04 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 804C7D78  90 1F 00 00 */	stw r0, 0(r31)
/* 804C7D7C  41 82 00 10 */	beq lbl_804C7D8C
/* 804C7D80  3C 60 80 4D */	lis r3, __vt__10cCcD_GStts@ha
/* 804C7D84  38 03 C5 F8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 804C7D88  90 1F 00 00 */	stw r0, 0(r31)
lbl_804C7D8C:
/* 804C7D8C  7C 80 07 35 */	extsh. r0, r4
/* 804C7D90  40 81 00 0C */	ble lbl_804C7D9C
/* 804C7D94  7F E3 FB 78 */	mr r3, r31
/* 804C7D98  4B E0 6F A4 */	b __dl__FPv
lbl_804C7D9C:
/* 804C7D9C  7F E3 FB 78 */	mr r3, r31
/* 804C7DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C7DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C7DA8  7C 08 03 A6 */	mtlr r0
/* 804C7DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 804C7DB0  4E 80 00 20 */	blr 
