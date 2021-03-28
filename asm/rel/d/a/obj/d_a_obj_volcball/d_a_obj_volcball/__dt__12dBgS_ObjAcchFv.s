lbl_80D222E8:
/* 80D222E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D222EC  7C 08 02 A6 */	mflr r0
/* 80D222F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D222F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D222F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D222FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D22300  7C 9F 23 78 */	mr r31, r4
/* 80D22304  41 82 00 38 */	beq lbl_80D2233C
/* 80D22308  3C 80 80 D2 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80D2230C  38 84 40 A8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80D22310  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D22314  38 04 00 0C */	addi r0, r4, 0xc
/* 80D22318  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D2231C  38 04 00 18 */	addi r0, r4, 0x18
/* 80D22320  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D22324  38 80 00 00 */	li r4, 0
/* 80D22328  4B 35 3C 6C */	b __dt__9dBgS_AcchFv
/* 80D2232C  7F E0 07 35 */	extsh. r0, r31
/* 80D22330  40 81 00 0C */	ble lbl_80D2233C
/* 80D22334  7F C3 F3 78 */	mr r3, r30
/* 80D22338  4B 5A CA 04 */	b __dl__FPv
lbl_80D2233C:
/* 80D2233C  7F C3 F3 78 */	mr r3, r30
/* 80D22340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D22344  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D22348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2234C  7C 08 03 A6 */	mtlr r0
/* 80D22350  38 21 00 10 */	addi r1, r1, 0x10
/* 80D22354  4E 80 00 20 */	blr 
