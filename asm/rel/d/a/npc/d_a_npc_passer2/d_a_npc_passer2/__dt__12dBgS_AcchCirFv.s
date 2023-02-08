lbl_80AA892C:
/* 80AA892C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA8930  7C 08 02 A6 */	mflr r0
/* 80AA8934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA8938  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA893C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA8940  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AA8944  7C 9F 23 78 */	mr r31, r4
/* 80AA8948  41 82 00 38 */	beq lbl_80AA8980
/* 80AA894C  3C 60 80 AB */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AA8B08@ha */
/* 80AA8950  38 03 8B 08 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AA8B08@l */
/* 80AA8954  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AA8958  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AA895C  38 80 FF FF */	li r4, -1
/* 80AA8960  4B 7C 65 B9 */	bl __dt__8cM3dGCirFv
/* 80AA8964  7F C3 F3 78 */	mr r3, r30
/* 80AA8968  38 80 00 00 */	li r4, 0
/* 80AA896C  4B 7B F7 45 */	bl __dt__13cBgS_PolyInfoFv
/* 80AA8970  7F E0 07 35 */	extsh. r0, r31
/* 80AA8974  40 81 00 0C */	ble lbl_80AA8980
/* 80AA8978  7F C3 F3 78 */	mr r3, r30
/* 80AA897C  4B 82 63 C1 */	bl __dl__FPv
lbl_80AA8980:
/* 80AA8980  7F C3 F3 78 */	mr r3, r30
/* 80AA8984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA8988  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA898C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA8990  7C 08 03 A6 */	mtlr r0
/* 80AA8994  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA8998  4E 80 00 20 */	blr 
