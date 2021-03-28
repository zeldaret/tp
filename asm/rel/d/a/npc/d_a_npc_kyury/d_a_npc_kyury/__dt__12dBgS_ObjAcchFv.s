lbl_80A631E8:
/* 80A631E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A631EC  7C 08 02 A6 */	mflr r0
/* 80A631F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A631F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A631F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A631FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A63200  7C 9F 23 78 */	mr r31, r4
/* 80A63204  41 82 00 38 */	beq lbl_80A6323C
/* 80A63208  3C 80 80 A6 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80A6320C  38 84 40 B8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80A63210  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80A63214  38 04 00 0C */	addi r0, r4, 0xc
/* 80A63218  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A6321C  38 04 00 18 */	addi r0, r4, 0x18
/* 80A63220  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A63224  38 80 00 00 */	li r4, 0
/* 80A63228  4B 61 2D 6C */	b __dt__9dBgS_AcchFv
/* 80A6322C  7F E0 07 35 */	extsh. r0, r31
/* 80A63230  40 81 00 0C */	ble lbl_80A6323C
/* 80A63234  7F C3 F3 78 */	mr r3, r30
/* 80A63238  4B 86 BB 04 */	b __dl__FPv
lbl_80A6323C:
/* 80A6323C  7F C3 F3 78 */	mr r3, r30
/* 80A63240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A63244  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A63248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6324C  7C 08 03 A6 */	mtlr r0
/* 80A63250  38 21 00 10 */	addi r1, r1, 0x10
/* 80A63254  4E 80 00 20 */	blr 
