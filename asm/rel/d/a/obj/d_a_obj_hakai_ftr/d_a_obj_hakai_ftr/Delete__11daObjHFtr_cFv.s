lbl_80C17AC0:
/* 80C17AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C17AC4  7C 08 02 A6 */	mflr r0
/* 80C17AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C17AD0  7C 7F 1B 78 */	mr r31, r3
/* 80C17AD4  80 63 05 A4 */	lwz r3, 0x5a4(r3)
/* 80C17AD8  28 03 00 00 */	cmplwi r3, 0
/* 80C17ADC  41 82 00 24 */	beq lbl_80C17B00
/* 80C17AE0  4B 65 06 F4 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C17AE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C17AE8  41 82 00 18 */	beq lbl_80C17B00
/* 80C17AEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C17AF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C17AF4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C17AF8  80 9F 05 A4 */	lwz r4, 0x5a4(r31)
/* 80C17AFC  4B 45 C7 54 */	b Release__4cBgSFP9dBgW_Base
lbl_80C17B00:
/* 80C17B00  7F E3 FB 78 */	mr r3, r31
/* 80C17B04  38 80 FF FF */	li r4, -1
/* 80C17B08  81 9F 05 70 */	lwz r12, 0x570(r31)
/* 80C17B0C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C17B10  7D 89 03 A6 */	mtctr r12
/* 80C17B14  4E 80 04 21 */	bctrl 
/* 80C17B18  38 60 00 01 */	li r3, 1
/* 80C17B1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C17B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C17B24  7C 08 03 A6 */	mtlr r0
/* 80C17B28  38 21 00 10 */	addi r1, r1, 0x10
/* 80C17B2C  4E 80 00 20 */	blr 
