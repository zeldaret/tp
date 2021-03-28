lbl_80224D6C:
/* 80224D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224D70  7C 08 02 A6 */	mflr r0
/* 80224D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224D78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224D7C  7C 7F 1B 78 */	mr r31, r3
/* 80224D80  48 00 09 5D */	bl isShowLightDrop__9dMeter2_cFv
/* 80224D84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80224D88  40 82 00 10 */	bne lbl_80224D98
/* 80224D8C  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80224D90  4B FF 10 B1 */	bl setAlphaLightDropAnimeMin__13dMeter2Draw_cFv
/* 80224D94  48 00 00 0C */	b lbl_80224DA0
lbl_80224D98:
/* 80224D98  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80224D9C  4B FF 11 ED */	bl setAlphaLightDropAnimeMax__13dMeter2Draw_cFv
lbl_80224DA0:
/* 80224DA0  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80224DA4  38 80 00 00 */	li r4, 0
/* 80224DA8  4B FF 0F FD */	bl setAlphaLightDropChange__13dMeter2Draw_cFb
/* 80224DAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224DB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224DB4  7C 08 03 A6 */	mtlr r0
/* 80224DB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80224DBC  4E 80 00 20 */	blr 
