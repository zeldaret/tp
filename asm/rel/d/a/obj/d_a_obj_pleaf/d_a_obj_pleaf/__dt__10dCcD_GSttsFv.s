lbl_80CB1280:
/* 80CB1280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1284  7C 08 02 A6 */	mflr r0
/* 80CB1288  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB128C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB1290  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB1294  41 82 00 30 */	beq lbl_80CB12C4
/* 80CB1298  3C 60 80 CB */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CB1920@ha */
/* 80CB129C  38 03 19 20 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CB1920@l */
/* 80CB12A0  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB12A4  41 82 00 10 */	beq lbl_80CB12B4
/* 80CB12A8  3C 60 80 CB */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CB1914@ha */
/* 80CB12AC  38 03 19 14 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CB1914@l */
/* 80CB12B0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CB12B4:
/* 80CB12B4  7C 80 07 35 */	extsh. r0, r4
/* 80CB12B8  40 81 00 0C */	ble lbl_80CB12C4
/* 80CB12BC  7F E3 FB 78 */	mr r3, r31
/* 80CB12C0  4B 61 DA 7D */	bl __dl__FPv
lbl_80CB12C4:
/* 80CB12C4  7F E3 FB 78 */	mr r3, r31
/* 80CB12C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB12CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB12D0  7C 08 03 A6 */	mtlr r0
/* 80CB12D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB12D8  4E 80 00 20 */	blr 
