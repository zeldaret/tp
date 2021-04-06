lbl_80018AA0:
/* 80018AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018AA4  7C 08 02 A6 */	mflr r0
/* 80018AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018AAC  48 00 98 0D */	bl fpcM_Init__Fv
/* 80018AB0  48 00 63 81 */	bl fopScnM_Init__Fv
/* 80018AB4  48 00 5C 35 */	bl fopOvlpM_Init__Fv
/* 80018AB8  48 00 58 C1 */	bl fopCamM_Init__Fv
/* 80018ABC  48 00 7A 5D */	bl fopDwTg_CreateQueue__Fv
/* 80018AC0  38 00 FF FF */	li r0, -1
/* 80018AC4  3C 60 80 3F */	lis r3, g_HIO@ha /* 0x803F1BBC@ha */
/* 80018AC8  38 63 1B BC */	addi r3, r3, g_HIO@l /* 0x803F1BBC@l */
/* 80018ACC  98 03 00 04 */	stb r0, 4(r3)
/* 80018AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018AD4  7C 08 03 A6 */	mtlr r0
/* 80018AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80018ADC  4E 80 00 20 */	blr 
