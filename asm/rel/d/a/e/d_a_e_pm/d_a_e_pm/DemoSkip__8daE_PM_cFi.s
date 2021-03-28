lbl_80741FB4:
/* 80741FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80741FB8  7C 08 02 A6 */	mflr r0
/* 80741FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80741FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80741FC4  7C 7F 1B 78 */	mr r31, r3
/* 80741FC8  38 00 00 01 */	li r0, 1
/* 80741FCC  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 80741FD0  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)
/* 80741FD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80741FD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80741FDC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80741FE0  38 80 00 1F */	li r4, 0x1f
/* 80741FE4  4B 92 DD B0 */	b StopQuake__12dVibration_cFi
/* 80741FE8  7F E3 FB 78 */	mr r3, r31
/* 80741FEC  48 00 8F 0D */	bl SkipChk__8daE_PM_cFv
/* 80741FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80741FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80741FF8  7C 08 03 A6 */	mtlr r0
/* 80741FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80742000  4E 80 00 20 */	blr 
