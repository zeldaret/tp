lbl_80834C94:
/* 80834C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80834C98  7C 08 02 A6 */	mflr r0
/* 80834C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80834CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80834CA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80834CA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80834CAC  7C 9F 23 78 */	mr r31, r4
/* 80834CB0  41 82 00 38 */	beq lbl_80834CE8
/* 80834CB4  3C 80 80 83 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80834CB8  38 84 54 68 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80834CBC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80834CC0  38 04 00 0C */	addi r0, r4, 0xc
/* 80834CC4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80834CC8  38 04 00 18 */	addi r0, r4, 0x18
/* 80834CCC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80834CD0  38 80 00 00 */	li r4, 0
/* 80834CD4  4B 84 12 C0 */	b __dt__9dBgS_AcchFv
/* 80834CD8  7F E0 07 35 */	extsh. r0, r31
/* 80834CDC  40 81 00 0C */	ble lbl_80834CE8
/* 80834CE0  7F C3 F3 78 */	mr r3, r30
/* 80834CE4  4B A9 A0 58 */	b __dl__FPv
lbl_80834CE8:
/* 80834CE8  7F C3 F3 78 */	mr r3, r30
/* 80834CEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80834CF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80834CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80834CF8  7C 08 03 A6 */	mtlr r0
/* 80834CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80834D00  4E 80 00 20 */	blr 
