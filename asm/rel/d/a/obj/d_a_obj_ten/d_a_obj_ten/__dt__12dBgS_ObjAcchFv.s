lbl_80D0B740:
/* 80D0B740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0B744  7C 08 02 A6 */	mflr r0
/* 80D0B748  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0B74C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0B750  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0B754  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D0B758  7C 9F 23 78 */	mr r31, r4
/* 80D0B75C  41 82 00 38 */	beq lbl_80D0B794
/* 80D0B760  3C 80 80 D1 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80D0BA44@ha */
/* 80D0B764  38 84 BA 44 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80D0BA44@l */
/* 80D0B768  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D0B76C  38 04 00 0C */	addi r0, r4, 0xc
/* 80D0B770  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D0B774  38 04 00 18 */	addi r0, r4, 0x18
/* 80D0B778  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D0B77C  38 80 00 00 */	li r4, 0
/* 80D0B780  4B 36 A8 15 */	bl __dt__9dBgS_AcchFv
/* 80D0B784  7F E0 07 35 */	extsh. r0, r31
/* 80D0B788  40 81 00 0C */	ble lbl_80D0B794
/* 80D0B78C  7F C3 F3 78 */	mr r3, r30
/* 80D0B790  4B 5C 35 AD */	bl __dl__FPv
lbl_80D0B794:
/* 80D0B794  7F C3 F3 78 */	mr r3, r30
/* 80D0B798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0B79C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0B7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0B7A4  7C 08 03 A6 */	mtlr r0
/* 80D0B7A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0B7AC  4E 80 00 20 */	blr 
