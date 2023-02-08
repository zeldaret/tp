lbl_80AAD120:
/* 80AAD120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAD124  7C 08 02 A6 */	mflr r0
/* 80AAD128  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAD12C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAD130  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAD134  41 82 00 1C */	beq lbl_80AAD150
/* 80AAD138  3C A0 80 AB */	lis r5, __vt__18daNpc_Post_Param_c@ha /* 0x80AADBD8@ha */
/* 80AAD13C  38 05 DB D8 */	addi r0, r5, __vt__18daNpc_Post_Param_c@l /* 0x80AADBD8@l */
/* 80AAD140  90 1F 00 00 */	stw r0, 0(r31)
/* 80AAD144  7C 80 07 35 */	extsh. r0, r4
/* 80AAD148  40 81 00 08 */	ble lbl_80AAD150
/* 80AAD14C  4B 82 1B F1 */	bl __dl__FPv
lbl_80AAD150:
/* 80AAD150  7F E3 FB 78 */	mr r3, r31
/* 80AAD154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAD158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAD15C  7C 08 03 A6 */	mtlr r0
/* 80AAD160  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAD164  4E 80 00 20 */	blr 
