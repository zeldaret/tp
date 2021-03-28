lbl_80599D14:
/* 80599D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599D18  7C 08 02 A6 */	mflr r0
/* 80599D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80599D24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80599D28  41 82 00 1C */	beq lbl_80599D44
/* 80599D2C  3C A0 80 5A */	lis r5, __vt__10cCcD_GStts@ha
/* 80599D30  38 05 9F 28 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80599D34  90 1F 00 00 */	stw r0, 0(r31)
/* 80599D38  7C 80 07 35 */	extsh. r0, r4
/* 80599D3C  40 81 00 08 */	ble lbl_80599D44
/* 80599D40  4B D3 4F FC */	b __dl__FPv
lbl_80599D44:
/* 80599D44  7F E3 FB 78 */	mr r3, r31
/* 80599D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80599D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599D50  7C 08 03 A6 */	mtlr r0
/* 80599D54  38 21 00 10 */	addi r1, r1, 0x10
/* 80599D58  4E 80 00 20 */	blr 
