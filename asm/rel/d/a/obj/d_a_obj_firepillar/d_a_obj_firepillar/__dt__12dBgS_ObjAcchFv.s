lbl_80BE9474:
/* 80BE9474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE9478  7C 08 02 A6 */	mflr r0
/* 80BE947C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE9484  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE9488  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BE948C  7C 9F 23 78 */	mr r31, r4
/* 80BE9490  41 82 00 38 */	beq lbl_80BE94C8
/* 80BE9494  3C 80 80 BF */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BE9498  38 84 9C 08 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BE949C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BE94A0  38 04 00 0C */	addi r0, r4, 0xc
/* 80BE94A4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BE94A8  38 04 00 18 */	addi r0, r4, 0x18
/* 80BE94AC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BE94B0  38 80 00 00 */	li r4, 0
/* 80BE94B4  4B 48 CA E0 */	b __dt__9dBgS_AcchFv
/* 80BE94B8  7F E0 07 35 */	extsh. r0, r31
/* 80BE94BC  40 81 00 0C */	ble lbl_80BE94C8
/* 80BE94C0  7F C3 F3 78 */	mr r3, r30
/* 80BE94C4  4B 6E 58 78 */	b __dl__FPv
lbl_80BE94C8:
/* 80BE94C8  7F C3 F3 78 */	mr r3, r30
/* 80BE94CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE94D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE94D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE94D8  7C 08 03 A6 */	mtlr r0
/* 80BE94DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE94E0  4E 80 00 20 */	blr 
