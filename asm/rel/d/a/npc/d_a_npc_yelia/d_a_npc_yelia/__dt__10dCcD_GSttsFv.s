lbl_80B51AFC:
/* 80B51AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B51B00  7C 08 02 A6 */	mflr r0
/* 80B51B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B51B08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B51B0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B51B10  41 82 00 30 */	beq lbl_80B51B40
/* 80B51B14  3C 60 80 B5 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B532C4@ha */
/* 80B51B18  38 03 32 C4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B532C4@l */
/* 80B51B1C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B51B20  41 82 00 10 */	beq lbl_80B51B30
/* 80B51B24  3C 60 80 B5 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B532B8@ha */
/* 80B51B28  38 03 32 B8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B532B8@l */
/* 80B51B2C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B51B30:
/* 80B51B30  7C 80 07 35 */	extsh. r0, r4
/* 80B51B34  40 81 00 0C */	ble lbl_80B51B40
/* 80B51B38  7F E3 FB 78 */	mr r3, r31
/* 80B51B3C  4B 77 D2 01 */	bl __dl__FPv
lbl_80B51B40:
/* 80B51B40  7F E3 FB 78 */	mr r3, r31
/* 80B51B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B51B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B51B4C  7C 08 03 A6 */	mtlr r0
/* 80B51B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80B51B54  4E 80 00 20 */	blr 
