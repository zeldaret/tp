lbl_80D660B8:
/* 80D660B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D660BC  7C 08 02 A6 */	mflr r0
/* 80D660C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D660C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D660C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D660CC  41 82 00 1C */	beq lbl_80D660E8
/* 80D660D0  3C A0 80 D6 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80D662D0@ha */
/* 80D660D4  38 05 62 D0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80D662D0@l */
/* 80D660D8  90 1F 00 00 */	stw r0, 0(r31)
/* 80D660DC  7C 80 07 35 */	extsh. r0, r4
/* 80D660E0  40 81 00 08 */	ble lbl_80D660E8
/* 80D660E4  4B 56 8C 59 */	bl __dl__FPv
lbl_80D660E8:
/* 80D660E8  7F E3 FB 78 */	mr r3, r31
/* 80D660EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D660F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D660F4  7C 08 03 A6 */	mtlr r0
/* 80D660F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D660FC  4E 80 00 20 */	blr 
