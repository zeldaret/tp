lbl_80CF5940:
/* 80CF5940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF5944  7C 08 02 A6 */	mflr r0
/* 80CF5948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF594C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF5950  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF5954  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CF5958  7C 9F 23 78 */	mr r31, r4
/* 80CF595C  41 82 00 48 */	beq lbl_80CF59A4
/* 80CF5960  3C 60 80 CF */	lis r3, __vt__14daObjSwBallB_c@ha /* 0x80CF5AC4@ha */
/* 80CF5964  38 63 5A C4 */	addi r3, r3, __vt__14daObjSwBallB_c@l /* 0x80CF5AC4@l */
/* 80CF5968  90 7E 05 78 */	stw r3, 0x578(r30)
/* 80CF596C  38 03 00 08 */	addi r0, r3, 8
/* 80CF5970  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CF5974  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80CF5978  41 82 00 10 */	beq lbl_80CF5988
/* 80CF597C  3C 60 80 CF */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80CF5AE8@ha */
/* 80CF5980  38 03 5A E8 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80CF5AE8@l */
/* 80CF5984  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_80CF5988:
/* 80CF5988  7F C3 F3 78 */	mr r3, r30
/* 80CF598C  38 80 00 00 */	li r4, 0
/* 80CF5990  4B 32 32 FD */	bl __dt__10fopAc_ac_cFv
/* 80CF5994  7F E0 07 35 */	extsh. r0, r31
/* 80CF5998  40 81 00 0C */	ble lbl_80CF59A4
/* 80CF599C  7F C3 F3 78 */	mr r3, r30
/* 80CF59A0  4B 5D 93 9D */	bl __dl__FPv
lbl_80CF59A4:
/* 80CF59A4  7F C3 F3 78 */	mr r3, r30
/* 80CF59A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF59AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF59B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF59B4  7C 08 03 A6 */	mtlr r0
/* 80CF59B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF59BC  4E 80 00 20 */	blr 
