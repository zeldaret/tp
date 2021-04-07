lbl_807B3F5C:
/* 807B3F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B3F60  7C 08 02 A6 */	mflr r0
/* 807B3F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B3F68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B3F6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807B3F70  41 82 00 1C */	beq lbl_807B3F8C
/* 807B3F74  3C A0 80 7B */	lis r5, __vt__10cCcD_GStts@ha /* 0x807B47F0@ha */
/* 807B3F78  38 05 47 F0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x807B47F0@l */
/* 807B3F7C  90 1F 00 00 */	stw r0, 0(r31)
/* 807B3F80  7C 80 07 35 */	extsh. r0, r4
/* 807B3F84  40 81 00 08 */	ble lbl_807B3F8C
/* 807B3F88  4B B1 AD B5 */	bl __dl__FPv
lbl_807B3F8C:
/* 807B3F8C  7F E3 FB 78 */	mr r3, r31
/* 807B3F90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B3F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B3F98  7C 08 03 A6 */	mtlr r0
/* 807B3F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 807B3FA0  4E 80 00 20 */	blr 
