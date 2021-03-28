lbl_807BBC90:
/* 807BBC90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BBC94  7C 08 02 A6 */	mflr r0
/* 807BBC98  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BBC9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BBCA0  93 C1 00 08 */	stw r30, 8(r1)
/* 807BBCA4  7C 7E 1B 79 */	or. r30, r3, r3
/* 807BBCA8  7C 9F 23 78 */	mr r31, r4
/* 807BBCAC  41 82 00 38 */	beq lbl_807BBCE4
/* 807BBCB0  3C 80 80 7C */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 807BBCB4  38 84 BF 04 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 807BBCB8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807BBCBC  38 04 00 0C */	addi r0, r4, 0xc
/* 807BBCC0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807BBCC4  38 04 00 18 */	addi r0, r4, 0x18
/* 807BBCC8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807BBCCC  38 80 00 00 */	li r4, 0
/* 807BBCD0  4B 8B A2 C4 */	b __dt__9dBgS_AcchFv
/* 807BBCD4  7F E0 07 35 */	extsh. r0, r31
/* 807BBCD8  40 81 00 0C */	ble lbl_807BBCE4
/* 807BBCDC  7F C3 F3 78 */	mr r3, r30
/* 807BBCE0  4B B1 30 5C */	b __dl__FPv
lbl_807BBCE4:
/* 807BBCE4  7F C3 F3 78 */	mr r3, r30
/* 807BBCE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BBCEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 807BBCF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BBCF4  7C 08 03 A6 */	mtlr r0
/* 807BBCF8  38 21 00 10 */	addi r1, r1, 0x10
/* 807BBCFC  4E 80 00 20 */	blr 
