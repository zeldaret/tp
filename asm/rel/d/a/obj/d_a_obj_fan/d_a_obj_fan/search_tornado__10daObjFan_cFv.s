lbl_80BE4D98:
/* 80BE4D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE4D9C  7C 08 02 A6 */	mflr r0
/* 80BE4DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4DA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE4DA8  7C 7F 1B 78 */	mr r31, r3
/* 80BE4DAC  38 60 00 00 */	li r3, 0
/* 80BE4DB0  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 80BE4DB4  90 1F 0A D0 */	stw r0, 0xad0(r31)
/* 80BE4DB8  80 9F 04 A4 */	lwz r4, 0x4a4(r31)
/* 80BE4DBC  3C 04 00 01 */	addis r0, r4, 1
/* 80BE4DC0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BE4DC4  40 82 00 30 */	bne lbl_80BE4DF4
/* 80BE4DC8  3C 60 80 BE */	lis r3, searchTornado2__FPvPv@ha
/* 80BE4DCC  38 63 4C 38 */	addi r3, r3, searchTornado2__FPvPv@l
/* 80BE4DD0  7F E4 FB 78 */	mr r4, r31
/* 80BE4DD4  4B 43 C5 64 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80BE4DD8  28 03 00 00 */	cmplwi r3, 0
/* 80BE4DDC  41 82 00 18 */	beq lbl_80BE4DF4
/* 80BE4DE0  41 82 00 0C */	beq lbl_80BE4DEC
/* 80BE4DE4  80 03 00 04 */	lwz r0, 4(r3)
/* 80BE4DE8  48 00 00 08 */	b lbl_80BE4DF0
lbl_80BE4DEC:
/* 80BE4DEC  38 00 FF FF */	li r0, -1
lbl_80BE4DF0:
/* 80BE4DF0  90 1F 04 A4 */	stw r0, 0x4a4(r31)
lbl_80BE4DF4:
/* 80BE4DF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE4DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE4DFC  7C 08 03 A6 */	mtlr r0
/* 80BE4E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE4E04  4E 80 00 20 */	blr 
