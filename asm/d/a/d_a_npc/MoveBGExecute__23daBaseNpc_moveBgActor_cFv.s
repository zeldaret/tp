lbl_8014F770:
/* 8014F770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014F774  7C 08 02 A6 */	mflr r0
/* 8014F778  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014F77C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014F780  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014F784  7C 7E 1B 78 */	mr r30, r3
/* 8014F788  38 00 00 00 */	li r0, 0
/* 8014F78C  90 01 00 08 */	stw r0, 8(r1)
/* 8014F790  38 81 00 08 */	addi r4, r1, 8
/* 8014F794  81 83 05 68 */	lwz r12, 0x568(r3)
/* 8014F798  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8014F79C  7D 89 03 A6 */	mtctr r12
/* 8014F7A0  4E 80 04 21 */	bctrl 
/* 8014F7A4  7C 7F 1B 78 */	mr r31, r3
/* 8014F7A8  80 61 00 08 */	lwz r3, 8(r1)
/* 8014F7AC  28 03 00 00 */	cmplwi r3, 0
/* 8014F7B0  40 82 00 38 */	bne lbl_8014F7E8
/* 8014F7B4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8014F7B8  4B EB D5 AD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8014F7BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8014F7C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8014F7C4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8014F7C8  4B EB CC 6D */	bl mDoMtx_YrotM__FPA4_fs
/* 8014F7CC  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 8014F7D0  4B EB D6 A1 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 8014F7D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8014F7D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8014F7DC  38 9E 0A 18 */	addi r4, r30, 0xa18
/* 8014F7E0  48 1F 6C D1 */	bl PSMTXCopy
/* 8014F7E4  48 00 00 0C */	b lbl_8014F7F0
lbl_8014F7E8:
/* 8014F7E8  38 9E 0A 18 */	addi r4, r30, 0xa18
/* 8014F7EC  48 1F 6C C5 */	bl PSMTXCopy
lbl_8014F7F0:
/* 8014F7F0  80 7E 0A 14 */	lwz r3, 0xa14(r30)
/* 8014F7F4  28 03 00 00 */	cmplwi r3, 0
/* 8014F7F8  41 82 00 08 */	beq lbl_8014F800
/* 8014F7FC  4B F2 C1 C5 */	bl Move__4dBgWFv
lbl_8014F800:
/* 8014F800  7F E3 FB 78 */	mr r3, r31
/* 8014F804  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014F808  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014F80C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014F810  7C 08 03 A6 */	mtlr r0
/* 8014F814  38 21 00 20 */	addi r1, r1, 0x20
/* 8014F818  4E 80 00 20 */	blr 
