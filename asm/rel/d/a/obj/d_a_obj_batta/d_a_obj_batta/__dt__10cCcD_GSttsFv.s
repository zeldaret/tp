lbl_80BAC914:
/* 80BAC914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAC918  7C 08 02 A6 */	mflr r0
/* 80BAC91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAC920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAC924  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BAC928  41 82 00 1C */	beq lbl_80BAC944
/* 80BAC92C  3C A0 80 BB */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BACC04@ha */
/* 80BAC930  38 05 CC 04 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BACC04@l */
/* 80BAC934  90 1F 00 00 */	stw r0, 0(r31)
/* 80BAC938  7C 80 07 35 */	extsh. r0, r4
/* 80BAC93C  40 81 00 08 */	ble lbl_80BAC944
/* 80BAC940  4B 72 23 FD */	bl __dl__FPv
lbl_80BAC944:
/* 80BAC944  7F E3 FB 78 */	mr r3, r31
/* 80BAC948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAC94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAC950  7C 08 03 A6 */	mtlr r0
/* 80BAC954  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAC958  4E 80 00 20 */	blr 
