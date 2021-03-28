lbl_804D4D28:
/* 804D4D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4D2C  7C 08 02 A6 */	mflr r0
/* 804D4D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4D34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D4D38  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D4D3C  41 82 00 1C */	beq lbl_804D4D58
/* 804D4D40  3C A0 80 4D */	lis r5, __vt__10cCcD_GStts@ha
/* 804D4D44  38 05 4F 60 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 804D4D48  90 1F 00 00 */	stw r0, 0(r31)
/* 804D4D4C  7C 80 07 35 */	extsh. r0, r4
/* 804D4D50  40 81 00 08 */	ble lbl_804D4D58
/* 804D4D54  4B DF 9F E8 */	b __dl__FPv
lbl_804D4D58:
/* 804D4D58  7F E3 FB 78 */	mr r3, r31
/* 804D4D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D4D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4D64  7C 08 03 A6 */	mtlr r0
/* 804D4D68  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4D6C  4E 80 00 20 */	blr 
