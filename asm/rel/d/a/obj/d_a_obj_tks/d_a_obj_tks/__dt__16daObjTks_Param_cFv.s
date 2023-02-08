lbl_80D126D0:
/* 80D126D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D126D4  7C 08 02 A6 */	mflr r0
/* 80D126D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D126DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D126E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D126E4  41 82 00 1C */	beq lbl_80D12700
/* 80D126E8  3C A0 80 D1 */	lis r5, __vt__16daObjTks_Param_c@ha /* 0x80D12AE4@ha */
/* 80D126EC  38 05 2A E4 */	addi r0, r5, __vt__16daObjTks_Param_c@l /* 0x80D12AE4@l */
/* 80D126F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80D126F4  7C 80 07 35 */	extsh. r0, r4
/* 80D126F8  40 81 00 08 */	ble lbl_80D12700
/* 80D126FC  4B 5B C6 41 */	bl __dl__FPv
lbl_80D12700:
/* 80D12700  7F E3 FB 78 */	mr r3, r31
/* 80D12704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D12708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1270C  7C 08 03 A6 */	mtlr r0
/* 80D12710  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12714  4E 80 00 20 */	blr 
