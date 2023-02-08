lbl_80A73954:
/* 80A73954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A73958  7C 08 02 A6 */	mflr r0
/* 80A7395C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A73960  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A73964  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A73968  41 82 00 1C */	beq lbl_80A73984
/* 80A7396C  3C A0 80 A7 */	lis r5, __vt__18daNpc_midP_Param_c@ha /* 0x80A73D3C@ha */
/* 80A73970  38 05 3D 3C */	addi r0, r5, __vt__18daNpc_midP_Param_c@l /* 0x80A73D3C@l */
/* 80A73974  90 1F 00 00 */	stw r0, 0(r31)
/* 80A73978  7C 80 07 35 */	extsh. r0, r4
/* 80A7397C  40 81 00 08 */	ble lbl_80A73984
/* 80A73980  4B 85 B3 BD */	bl __dl__FPv
lbl_80A73984:
/* 80A73984  7F E3 FB 78 */	mr r3, r31
/* 80A73988  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7398C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A73990  7C 08 03 A6 */	mtlr r0
/* 80A73994  38 21 00 10 */	addi r1, r1, 0x10
/* 80A73998  4E 80 00 20 */	blr 
