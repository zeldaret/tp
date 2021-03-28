lbl_80C14320:
/* 80C14320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C14324  7C 08 02 A6 */	mflr r0
/* 80C14328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1432C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C14330  93 C1 00 08 */	stw r30, 8(r1)
/* 80C14334  7C 7E 1B 78 */	mr r30, r3
/* 80C14338  38 7E 06 2C */	addi r3, r30, 0x62c
/* 80C1433C  4B 3F 90 EC */	b play__14mDoExt_baseAnmFv
/* 80C14340  7C 7F 1B 78 */	mr r31, r3
/* 80C14344  38 7E 06 9C */	addi r3, r30, 0x69c
/* 80C14348  4B 3F 90 E0 */	b play__14mDoExt_baseAnmFv
/* 80C1434C  2C 1F 00 01 */	cmpwi r31, 1
/* 80C14350  40 82 00 14 */	bne lbl_80C14364
/* 80C14354  2C 03 00 01 */	cmpwi r3, 1
/* 80C14358  40 82 00 0C */	bne lbl_80C14364
/* 80C1435C  7F C3 F3 78 */	mr r3, r30
/* 80C14360  4B FF FE 35 */	bl init_modeWait__12daGrdWater_cFv
lbl_80C14364:
/* 80C14364  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C14368  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1436C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C14370  7C 08 03 A6 */	mtlr r0
/* 80C14374  38 21 00 10 */	addi r1, r1, 0x10
/* 80C14378  4E 80 00 20 */	blr 
