lbl_80A29F2C:
/* 80A29F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29F30  7C 08 02 A6 */	mflr r0
/* 80A29F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A29F3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A29F40  41 82 00 1C */	beq lbl_80A29F5C
/* 80A29F44  3C A0 80 A3 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80A2A71C@ha */
/* 80A29F48  38 05 A7 1C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80A2A71C@l */
/* 80A29F4C  90 1F 00 00 */	stw r0, 0(r31)
/* 80A29F50  7C 80 07 35 */	extsh. r0, r4
/* 80A29F54  40 81 00 08 */	ble lbl_80A29F5C
/* 80A29F58  4B 8A 4D E5 */	bl __dl__FPv
lbl_80A29F5C:
/* 80A29F5C  7F E3 FB 78 */	mr r3, r31
/* 80A29F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A29F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A29F68  7C 08 03 A6 */	mtlr r0
/* 80A29F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A29F70  4E 80 00 20 */	blr 
