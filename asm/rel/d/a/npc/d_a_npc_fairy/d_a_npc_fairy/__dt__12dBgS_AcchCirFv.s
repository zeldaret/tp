lbl_809B8930:
/* 809B8930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B8934  7C 08 02 A6 */	mflr r0
/* 809B8938  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B893C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B8940  93 C1 00 08 */	stw r30, 8(r1)
/* 809B8944  7C 7E 1B 79 */	or. r30, r3, r3
/* 809B8948  7C 9F 23 78 */	mr r31, r4
/* 809B894C  41 82 00 38 */	beq lbl_809B8984
/* 809B8950  3C 60 80 9C */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809B8954  38 03 A2 D4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809B8958  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809B895C  38 7E 00 14 */	addi r3, r30, 0x14
/* 809B8960  38 80 FF FF */	li r4, -1
/* 809B8964  4B 8B 65 B4 */	b __dt__8cM3dGCirFv
/* 809B8968  7F C3 F3 78 */	mr r3, r30
/* 809B896C  38 80 00 00 */	li r4, 0
/* 809B8970  4B 8A F7 40 */	b __dt__13cBgS_PolyInfoFv
/* 809B8974  7F E0 07 35 */	extsh. r0, r31
/* 809B8978  40 81 00 0C */	ble lbl_809B8984
/* 809B897C  7F C3 F3 78 */	mr r3, r30
/* 809B8980  4B 91 63 BC */	b __dl__FPv
lbl_809B8984:
/* 809B8984  7F C3 F3 78 */	mr r3, r30
/* 809B8988  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B898C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B8990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B8994  7C 08 03 A6 */	mtlr r0
/* 809B8998  38 21 00 10 */	addi r1, r1, 0x10
/* 809B899C  4E 80 00 20 */	blr 
