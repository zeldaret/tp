lbl_80CE7228:
/* 80CE7228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE722C  7C 08 02 A6 */	mflr r0
/* 80CE7230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE7238  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE723C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE7240  7C 9F 23 78 */	mr r31, r4
/* 80CE7244  41 82 00 38 */	beq lbl_80CE727C
/* 80CE7248  3C 80 80 CF */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80CE724C  38 84 80 04 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80CE7250  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CE7254  38 04 00 0C */	addi r0, r4, 0xc
/* 80CE7258  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CE725C  38 04 00 18 */	addi r0, r4, 0x18
/* 80CE7260  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CE7264  38 80 00 00 */	li r4, 0
/* 80CE7268  4B 38 ED 2C */	b __dt__9dBgS_AcchFv
/* 80CE726C  7F E0 07 35 */	extsh. r0, r31
/* 80CE7270  40 81 00 0C */	ble lbl_80CE727C
/* 80CE7274  7F C3 F3 78 */	mr r3, r30
/* 80CE7278  4B 5E 7A C4 */	b __dl__FPv
lbl_80CE727C:
/* 80CE727C  7F C3 F3 78 */	mr r3, r30
/* 80CE7280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE7284  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE7288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE728C  7C 08 03 A6 */	mtlr r0
/* 80CE7290  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7294  4E 80 00 20 */	blr 
