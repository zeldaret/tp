lbl_809F2B08:
/* 809F2B08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F2B0C  7C 08 02 A6 */	mflr r0
/* 809F2B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F2B14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F2B18  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F2B1C  41 82 00 30 */	beq lbl_809F2B4C
/* 809F2B20  3C 60 80 9F */	lis r3, __vt__10dCcD_GStts@ha /* 0x809F2F28@ha */
/* 809F2B24  38 03 2F 28 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809F2F28@l */
/* 809F2B28  90 1F 00 00 */	stw r0, 0(r31)
/* 809F2B2C  41 82 00 10 */	beq lbl_809F2B3C
/* 809F2B30  3C 60 80 9F */	lis r3, __vt__10cCcD_GStts@ha /* 0x809F2F1C@ha */
/* 809F2B34  38 03 2F 1C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809F2F1C@l */
/* 809F2B38  90 1F 00 00 */	stw r0, 0(r31)
lbl_809F2B3C:
/* 809F2B3C  7C 80 07 35 */	extsh. r0, r4
/* 809F2B40  40 81 00 0C */	ble lbl_809F2B4C
/* 809F2B44  7F E3 FB 78 */	mr r3, r31
/* 809F2B48  4B 8D C1 F5 */	bl __dl__FPv
lbl_809F2B4C:
/* 809F2B4C  7F E3 FB 78 */	mr r3, r31
/* 809F2B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F2B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F2B58  7C 08 03 A6 */	mtlr r0
/* 809F2B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 809F2B60  4E 80 00 20 */	blr 
