lbl_80CED64C:
/* 80CED64C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CED650  7C 08 02 A6 */	mflr r0
/* 80CED654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CED658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CED65C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CED660  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CED664  7C 9F 23 78 */	mr r31, r4
/* 80CED668  41 82 00 38 */	beq lbl_80CED6A0
/* 80CED66C  3C 80 80 CF */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80CEF190@ha */
/* 80CED670  38 84 F1 90 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80CEF190@l */
/* 80CED674  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CED678  38 04 00 0C */	addi r0, r4, 0xc
/* 80CED67C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CED680  38 04 00 18 */	addi r0, r4, 0x18
/* 80CED684  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CED688  38 80 00 00 */	li r4, 0
/* 80CED68C  4B 38 89 09 */	bl __dt__9dBgS_AcchFv
/* 80CED690  7F E0 07 35 */	extsh. r0, r31
/* 80CED694  40 81 00 0C */	ble lbl_80CED6A0
/* 80CED698  7F C3 F3 78 */	mr r3, r30
/* 80CED69C  4B 5E 16 A1 */	bl __dl__FPv
lbl_80CED6A0:
/* 80CED6A0  7F C3 F3 78 */	mr r3, r30
/* 80CED6A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CED6A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CED6AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CED6B0  7C 08 03 A6 */	mtlr r0
/* 80CED6B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CED6B8  4E 80 00 20 */	blr 
