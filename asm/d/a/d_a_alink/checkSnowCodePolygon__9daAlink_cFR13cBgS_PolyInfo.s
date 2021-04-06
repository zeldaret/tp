lbl_80105ABC:
/* 80105ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80105AC0  7C 08 02 A6 */	mflr r0
/* 80105AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80105AC8  7C 64 1B 78 */	mr r4, r3
/* 80105ACC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80105AD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80105AD4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80105AD8  4B F6 F1 E5 */	bl GetSpecialCode__4dBgSFRC13cBgS_PolyInfo
/* 80105ADC  38 80 00 01 */	li r4, 1
/* 80105AE0  38 03 FF FB */	addi r0, r3, -5
/* 80105AE4  38 60 FF FF */	li r3, -1
/* 80105AE8  7C 00 20 10 */	subfc r0, r0, r4
/* 80105AEC  7C 03 01 90 */	subfze r0, r3
/* 80105AF0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80105AF4  40 82 00 08 */	bne lbl_80105AFC
/* 80105AF8  38 80 00 00 */	li r4, 0
lbl_80105AFC:
/* 80105AFC  7C 83 23 78 */	mr r3, r4
/* 80105B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80105B04  7C 08 03 A6 */	mtlr r0
/* 80105B08  38 21 00 10 */	addi r1, r1, 0x10
/* 80105B0C  4E 80 00 20 */	blr 
