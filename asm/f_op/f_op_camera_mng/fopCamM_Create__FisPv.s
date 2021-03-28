lbl_8001E310:
/* 8001E310  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001E314  7C 08 02 A6 */	mflr r0
/* 8001E318  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001E31C  39 61 00 20 */	addi r11, r1, 0x20
/* 8001E320  48 34 3E BD */	bl _savegpr_29
/* 8001E324  7C 7D 1B 78 */	mr r29, r3
/* 8001E328  7C 9E 23 78 */	mr r30, r4
/* 8001E32C  7C BF 2B 78 */	mr r31, r5
/* 8001E330  48 00 33 C5 */	bl fpcLy_CurrentLayer__Fv
/* 8001E334  7F C4 F3 78 */	mr r4, r30
/* 8001E338  38 A0 00 00 */	li r5, 0
/* 8001E33C  38 C0 00 00 */	li r6, 0
/* 8001E340  7F E7 FB 78 */	mr r7, r31
/* 8001E344  48 00 5A 51 */	bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
/* 8001E348  57 A0 10 3A */	slwi r0, r29, 2
/* 8001E34C  3C 80 80 3F */	lis r4, l_fopCamM_id@ha
/* 8001E350  38 84 1D D8 */	addi r4, r4, l_fopCamM_id@l
/* 8001E354  7C 64 01 2E */	stwx r3, r4, r0
/* 8001E358  7C 64 00 2E */	lwzx r3, r4, r0
/* 8001E35C  39 61 00 20 */	addi r11, r1, 0x20
/* 8001E360  48 34 3E C9 */	bl _restgpr_29
/* 8001E364  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001E368  7C 08 03 A6 */	mtlr r0
/* 8001E36C  38 21 00 20 */	addi r1, r1, 0x20
/* 8001E370  4E 80 00 20 */	blr 
