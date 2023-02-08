lbl_80B1DBE4:
/* 80B1DBE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1DBE8  7C 08 02 A6 */	mflr r0
/* 80B1DBEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1DBF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1DBF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B1DBF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B1DBFC  7C 9F 23 78 */	mr r31, r4
/* 80B1DC00  41 82 00 38 */	beq lbl_80B1DC38
/* 80B1DC04  3C 80 80 B2 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B1E4B8@ha */
/* 80B1DC08  38 84 E4 B8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B1E4B8@l */
/* 80B1DC0C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B1DC10  38 04 00 0C */	addi r0, r4, 0xc
/* 80B1DC14  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B1DC18  38 04 00 18 */	addi r0, r4, 0x18
/* 80B1DC1C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B1DC20  38 80 00 00 */	li r4, 0
/* 80B1DC24  4B 55 83 71 */	bl __dt__9dBgS_AcchFv
/* 80B1DC28  7F E0 07 35 */	extsh. r0, r31
/* 80B1DC2C  40 81 00 0C */	ble lbl_80B1DC38
/* 80B1DC30  7F C3 F3 78 */	mr r3, r30
/* 80B1DC34  4B 7B 11 09 */	bl __dl__FPv
lbl_80B1DC38:
/* 80B1DC38  7F C3 F3 78 */	mr r3, r30
/* 80B1DC3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1DC40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B1DC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1DC48  7C 08 03 A6 */	mtlr r0
/* 80B1DC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1DC50  4E 80 00 20 */	blr 
