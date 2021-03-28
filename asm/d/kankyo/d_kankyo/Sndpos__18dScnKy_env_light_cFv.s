lbl_801A4F24:
/* 801A4F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A4F28  7C 08 02 A6 */	mflr r0
/* 801A4F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A4F30  80 83 09 84 */	lwz r4, 0x984(r3)
/* 801A4F34  2C 04 00 00 */	cmpwi r4, 0
/* 801A4F38  41 82 00 1C */	beq lbl_801A4F54
/* 801A4F3C  38 04 FF FF */	addi r0, r4, -1
/* 801A4F40  90 03 09 84 */	stw r0, 0x984(r3)
/* 801A4F44  80 03 09 84 */	lwz r0, 0x984(r3)
/* 801A4F48  2C 00 00 00 */	cmpwi r0, 0
/* 801A4F4C  40 82 00 08 */	bne lbl_801A4F54
/* 801A4F50  48 00 32 41 */	bl dKy_Sound_init__Fv
lbl_801A4F54:
/* 801A4F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A4F58  7C 08 03 A6 */	mtlr r0
/* 801A4F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 801A4F60  4E 80 00 20 */	blr 
