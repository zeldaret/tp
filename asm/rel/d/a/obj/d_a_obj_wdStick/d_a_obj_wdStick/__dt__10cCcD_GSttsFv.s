lbl_80D33FE8:
/* 80D33FE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D33FEC  7C 08 02 A6 */	mflr r0
/* 80D33FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D33FF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D33FF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D33FFC  41 82 00 1C */	beq lbl_80D34018
/* 80D34000  3C A0 80 D3 */	lis r5, __vt__10cCcD_GStts@ha
/* 80D34004  38 05 43 8C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80D34008  90 1F 00 00 */	stw r0, 0(r31)
/* 80D3400C  7C 80 07 35 */	extsh. r0, r4
/* 80D34010  40 81 00 08 */	ble lbl_80D34018
/* 80D34014  4B 59 AD 28 */	b __dl__FPv
lbl_80D34018:
/* 80D34018  7F E3 FB 78 */	mr r3, r31
/* 80D3401C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D34020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D34024  7C 08 03 A6 */	mtlr r0
/* 80D34028  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3402C  4E 80 00 20 */	blr 
