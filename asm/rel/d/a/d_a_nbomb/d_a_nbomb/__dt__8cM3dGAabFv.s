lbl_804C7D10:
/* 804C7D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C7D14  7C 08 02 A6 */	mflr r0
/* 804C7D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C7D1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C7D20  7C 7F 1B 79 */	or. r31, r3, r3
/* 804C7D24  41 82 00 1C */	beq lbl_804C7D40
/* 804C7D28  3C A0 80 4D */	lis r5, __vt__8cM3dGAab@ha /* 0x804CC61C@ha */
/* 804C7D2C  38 05 C6 1C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x804CC61C@l */
/* 804C7D30  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804C7D34  7C 80 07 35 */	extsh. r0, r4
/* 804C7D38  40 81 00 08 */	ble lbl_804C7D40
/* 804C7D3C  4B E0 70 01 */	bl __dl__FPv
lbl_804C7D40:
/* 804C7D40  7F E3 FB 78 */	mr r3, r31
/* 804C7D44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C7D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C7D4C  7C 08 03 A6 */	mtlr r0
/* 804C7D50  38 21 00 10 */	addi r1, r1, 0x10
/* 804C7D54  4E 80 00 20 */	blr 
