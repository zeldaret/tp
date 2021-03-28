lbl_80D0E4C4:
/* 80D0E4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E4C8  7C 08 02 A6 */	mflr r0
/* 80D0E4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0E4D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0E4D8  41 82 00 30 */	beq lbl_80D0E508
/* 80D0E4DC  3C 60 80 D1 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D0E4E0  38 03 E7 90 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D0E4E4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D0E4E8  41 82 00 10 */	beq lbl_80D0E4F8
/* 80D0E4EC  3C 60 80 D1 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D0E4F0  38 03 E7 84 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D0E4F4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D0E4F8:
/* 80D0E4F8  7C 80 07 35 */	extsh. r0, r4
/* 80D0E4FC  40 81 00 0C */	ble lbl_80D0E508
/* 80D0E500  7F E3 FB 78 */	mr r3, r31
/* 80D0E504  4B 5C 08 38 */	b __dl__FPv
lbl_80D0E508:
/* 80D0E508  7F E3 FB 78 */	mr r3, r31
/* 80D0E50C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0E510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E514  7C 08 03 A6 */	mtlr r0
/* 80D0E518  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E51C  4E 80 00 20 */	blr 
