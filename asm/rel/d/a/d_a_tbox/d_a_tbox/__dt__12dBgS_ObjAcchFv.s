lbl_80495EA8:
/* 80495EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80495EAC  7C 08 02 A6 */	mflr r0
/* 80495EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80495EB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80495EBC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80495EC0  7C 9F 23 78 */	mr r31, r4
/* 80495EC4  41 82 00 38 */	beq lbl_80495EFC
/* 80495EC8  3C 80 80 49 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x804967A4@ha */
/* 80495ECC  38 84 67 A4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x804967A4@l */
/* 80495ED0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80495ED4  38 04 00 0C */	addi r0, r4, 0xc
/* 80495ED8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80495EDC  38 04 00 18 */	addi r0, r4, 0x18
/* 80495EE0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80495EE4  38 80 00 00 */	li r4, 0
/* 80495EE8  4B BE 00 AD */	bl __dt__9dBgS_AcchFv
/* 80495EEC  7F E0 07 35 */	extsh. r0, r31
/* 80495EF0  40 81 00 0C */	ble lbl_80495EFC
/* 80495EF4  7F C3 F3 78 */	mr r3, r30
/* 80495EF8  4B E3 8E 45 */	bl __dl__FPv
lbl_80495EFC:
/* 80495EFC  7F C3 F3 78 */	mr r3, r30
/* 80495F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80495F04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80495F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495F0C  7C 08 03 A6 */	mtlr r0
/* 80495F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80495F14  4E 80 00 20 */	blr 
