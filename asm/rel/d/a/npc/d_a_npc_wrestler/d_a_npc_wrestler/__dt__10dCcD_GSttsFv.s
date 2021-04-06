lbl_80B414B8:
/* 80B414B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B414BC  7C 08 02 A6 */	mflr r0
/* 80B414C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B414C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B414C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B414CC  41 82 00 30 */	beq lbl_80B414FC
/* 80B414D0  3C 60 80 B4 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B42DB8@ha */
/* 80B414D4  38 03 2D B8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B42DB8@l */
/* 80B414D8  90 1F 00 00 */	stw r0, 0(r31)
/* 80B414DC  41 82 00 10 */	beq lbl_80B414EC
/* 80B414E0  3C 60 80 B4 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B42DAC@ha */
/* 80B414E4  38 03 2D AC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B42DAC@l */
/* 80B414E8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B414EC:
/* 80B414EC  7C 80 07 35 */	extsh. r0, r4
/* 80B414F0  40 81 00 0C */	ble lbl_80B414FC
/* 80B414F4  7F E3 FB 78 */	mr r3, r31
/* 80B414F8  4B 78 D8 45 */	bl __dl__FPv
lbl_80B414FC:
/* 80B414FC  7F E3 FB 78 */	mr r3, r31
/* 80B41500  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B41504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B41508  7C 08 03 A6 */	mtlr r0
/* 80B4150C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B41510  4E 80 00 20 */	blr 
