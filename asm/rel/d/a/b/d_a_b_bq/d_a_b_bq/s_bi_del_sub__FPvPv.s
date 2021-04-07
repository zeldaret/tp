lbl_805B3DAC:
/* 805B3DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B3DB0  7C 08 02 A6 */	mflr r0
/* 805B3DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B3DB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B3DBC  7C 7F 1B 78 */	mr r31, r3
/* 805B3DC0  4B A6 4F 21 */	bl fopAc_IsActor__FPv
/* 805B3DC4  2C 03 00 00 */	cmpwi r3, 0
/* 805B3DC8  41 82 00 20 */	beq lbl_805B3DE8
/* 805B3DCC  A8 1F 00 08 */	lha r0, 8(r31)
/* 805B3DD0  2C 00 03 04 */	cmpwi r0, 0x304
/* 805B3DD4  41 82 00 0C */	beq lbl_805B3DE0
/* 805B3DD8  2C 00 03 05 */	cmpwi r0, 0x305
/* 805B3DDC  40 82 00 0C */	bne lbl_805B3DE8
lbl_805B3DE0:
/* 805B3DE0  7F E3 FB 78 */	mr r3, r31
/* 805B3DE4  4B A6 5E 99 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_805B3DE8:
/* 805B3DE8  38 60 00 00 */	li r3, 0
/* 805B3DEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B3DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3DF4  7C 08 03 A6 */	mtlr r0
/* 805B3DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3DFC  4E 80 00 20 */	blr 
