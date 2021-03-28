lbl_80ACB2F0:
/* 80ACB2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACB2F4  7C 08 02 A6 */	mflr r0
/* 80ACB2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACB2FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACB300  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACB304  41 82 00 1C */	beq lbl_80ACB320
/* 80ACB308  3C A0 80 AD */	lis r5, __vt__18daNpc_seiD_Param_c@ha
/* 80ACB30C  38 05 B6 AC */	addi r0, r5, __vt__18daNpc_seiD_Param_c@l
/* 80ACB310  90 1F 00 00 */	stw r0, 0(r31)
/* 80ACB314  7C 80 07 35 */	extsh. r0, r4
/* 80ACB318  40 81 00 08 */	ble lbl_80ACB320
/* 80ACB31C  4B 80 3A 20 */	b __dl__FPv
lbl_80ACB320:
/* 80ACB320  7F E3 FB 78 */	mr r3, r31
/* 80ACB324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACB328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACB32C  7C 08 03 A6 */	mtlr r0
/* 80ACB330  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACB334  4E 80 00 20 */	blr 
