lbl_80BF1C78:
/* 80BF1C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF1C7C  7C 08 02 A6 */	mflr r0
/* 80BF1C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF1C84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF1C88  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF1C8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BF1C90  7C 9F 23 78 */	mr r31, r4
/* 80BF1C94  41 82 00 38 */	beq lbl_80BF1CCC
/* 80BF1C98  3C 80 80 BF */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80BF1F08@ha */
/* 80BF1C9C  38 84 1F 08 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80BF1F08@l */
/* 80BF1CA0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BF1CA4  38 04 00 0C */	addi r0, r4, 0xc
/* 80BF1CA8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BF1CAC  38 04 00 18 */	addi r0, r4, 0x18
/* 80BF1CB0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BF1CB4  38 80 00 00 */	li r4, 0
/* 80BF1CB8  4B 48 42 DD */	bl __dt__9dBgS_AcchFv
/* 80BF1CBC  7F E0 07 35 */	extsh. r0, r31
/* 80BF1CC0  40 81 00 0C */	ble lbl_80BF1CCC
/* 80BF1CC4  7F C3 F3 78 */	mr r3, r30
/* 80BF1CC8  4B 6D D0 75 */	bl __dl__FPv
lbl_80BF1CCC:
/* 80BF1CCC  7F C3 F3 78 */	mr r3, r30
/* 80BF1CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF1CD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF1CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF1CDC  7C 08 03 A6 */	mtlr r0
/* 80BF1CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF1CE4  4E 80 00 20 */	blr 
