lbl_80655D90:
/* 80655D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80655D94  7C 08 02 A6 */	mflr r0
/* 80655D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80655D9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80655DA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80655DA4  41 82 00 30 */	beq lbl_80655DD4
/* 80655DA8  3C 60 80 65 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8065686C@ha */
/* 80655DAC  38 03 68 6C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8065686C@l */
/* 80655DB0  90 1F 00 00 */	stw r0, 0(r31)
/* 80655DB4  41 82 00 10 */	beq lbl_80655DC4
/* 80655DB8  3C 60 80 65 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80656860@ha */
/* 80655DBC  38 03 68 60 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80656860@l */
/* 80655DC0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80655DC4:
/* 80655DC4  7C 80 07 35 */	extsh. r0, r4
/* 80655DC8  40 81 00 0C */	ble lbl_80655DD4
/* 80655DCC  7F E3 FB 78 */	mr r3, r31
/* 80655DD0  4B C7 8F 6D */	bl __dl__FPv
lbl_80655DD4:
/* 80655DD4  7F E3 FB 78 */	mr r3, r31
/* 80655DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80655DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80655DE0  7C 08 03 A6 */	mtlr r0
/* 80655DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80655DE8  4E 80 00 20 */	blr 
