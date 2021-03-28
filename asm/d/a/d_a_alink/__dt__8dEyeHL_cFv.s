lbl_80140C80:
/* 80140C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80140C84  7C 08 02 A6 */	mflr r0
/* 80140C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80140C8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80140C90  93 C1 00 08 */	stw r30, 8(r1)
/* 80140C94  7C 7E 1B 79 */	or. r30, r3, r3
/* 80140C98  7C 9F 23 78 */	mr r31, r4
/* 80140C9C  41 82 00 24 */	beq lbl_80140CC0
/* 80140CA0  3C 80 80 3B */	lis r4, __vt__8dEyeHL_c@ha
/* 80140CA4  38 04 2E 80 */	addi r0, r4, __vt__8dEyeHL_c@l
/* 80140CA8  90 1E 00 00 */	stw r0, 0(r30)
/* 80140CAC  4B F5 BD 7D */	bl remove__8dEyeHL_cFv
/* 80140CB0  7F E0 07 35 */	extsh. r0, r31
/* 80140CB4  40 81 00 0C */	ble lbl_80140CC0
/* 80140CB8  7F C3 F3 78 */	mr r3, r30
/* 80140CBC  48 18 E0 81 */	bl __dl__FPv
lbl_80140CC0:
/* 80140CC0  7F C3 F3 78 */	mr r3, r30
/* 80140CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80140CC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80140CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80140CD0  7C 08 03 A6 */	mtlr r0
/* 80140CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80140CD8  4E 80 00 20 */	blr 
