lbl_80BE00EC:
/* 80BE00EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE00F0  7C 08 02 A6 */	mflr r0
/* 80BE00F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE00F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE00FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE0100  41 82 00 30 */	beq lbl_80BE0130
/* 80BE0104  3C 60 80 BE */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BE21F0@ha */
/* 80BE0108  38 03 21 F0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BE21F0@l */
/* 80BE010C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BE0110  41 82 00 10 */	beq lbl_80BE0120
/* 80BE0114  3C 60 80 BE */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BE21E4@ha */
/* 80BE0118  38 03 21 E4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BE21E4@l */
/* 80BE011C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BE0120:
/* 80BE0120  7C 80 07 35 */	extsh. r0, r4
/* 80BE0124  40 81 00 0C */	ble lbl_80BE0130
/* 80BE0128  7F E3 FB 78 */	mr r3, r31
/* 80BE012C  4B 6E EC 11 */	bl __dl__FPv
lbl_80BE0130:
/* 80BE0130  7F E3 FB 78 */	mr r3, r31
/* 80BE0134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE0138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE013C  7C 08 03 A6 */	mtlr r0
/* 80BE0140  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE0144  4E 80 00 20 */	blr 
