lbl_80C6AA50:
/* 80C6AA50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6AA54  7C 08 02 A6 */	mflr r0
/* 80C6AA58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6AA5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6AA60  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6AA64  41 82 00 30 */	beq lbl_80C6AA94
/* 80C6AA68  3C 60 80 C7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C6B288@ha */
/* 80C6AA6C  38 03 B2 88 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C6B288@l */
/* 80C6AA70  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6AA74  41 82 00 10 */	beq lbl_80C6AA84
/* 80C6AA78  3C 60 80 C7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C6B27C@ha */
/* 80C6AA7C  38 03 B2 7C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C6B27C@l */
/* 80C6AA80  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C6AA84:
/* 80C6AA84  7C 80 07 35 */	extsh. r0, r4
/* 80C6AA88  40 81 00 0C */	ble lbl_80C6AA94
/* 80C6AA8C  7F E3 FB 78 */	mr r3, r31
/* 80C6AA90  4B 66 42 AD */	bl __dl__FPv
lbl_80C6AA94:
/* 80C6AA94  7F E3 FB 78 */	mr r3, r31
/* 80C6AA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6AA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6AAA0  7C 08 03 A6 */	mtlr r0
/* 80C6AAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6AAA8  4E 80 00 20 */	blr 
