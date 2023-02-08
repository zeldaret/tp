lbl_80A5DA48:
/* 80A5DA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5DA4C  7C 08 02 A6 */	mflr r0
/* 80A5DA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5DA54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A5DA58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A5DA5C  41 82 00 1C */	beq lbl_80A5DA78
/* 80A5DA60  3C A0 80 A6 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80A5FDD0@ha */
/* 80A5DA64  38 05 FD D0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80A5FDD0@l */
/* 80A5DA68  90 1F 00 00 */	stw r0, 0(r31)
/* 80A5DA6C  7C 80 07 35 */	extsh. r0, r4
/* 80A5DA70  40 81 00 08 */	ble lbl_80A5DA78
/* 80A5DA74  4B 87 12 C9 */	bl __dl__FPv
lbl_80A5DA78:
/* 80A5DA78  7F E3 FB 78 */	mr r3, r31
/* 80A5DA7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A5DA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5DA84  7C 08 03 A6 */	mtlr r0
/* 80A5DA88  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5DA8C  4E 80 00 20 */	blr 
