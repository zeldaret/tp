lbl_805FA3E4:
/* 805FA3E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FA3E8  7C 08 02 A6 */	mflr r0
/* 805FA3EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FA3F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FA3F4  7C 7F 1B 78 */	mr r31, r3
/* 805FA3F8  4B A1 E8 E8 */	b fopAc_IsActor__FPv
/* 805FA3FC  2C 03 00 00 */	cmpwi r3, 0
/* 805FA400  41 82 00 18 */	beq lbl_805FA418
/* 805FA404  A8 1F 00 08 */	lha r0, 8(r31)
/* 805FA408  2C 00 01 E6 */	cmpwi r0, 0x1e6
/* 805FA40C  40 82 00 0C */	bne lbl_805FA418
/* 805FA410  7F E3 FB 78 */	mr r3, r31
/* 805FA414  4B A1 F8 68 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_805FA418:
/* 805FA418  38 60 00 00 */	li r3, 0
/* 805FA41C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FA420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FA424  7C 08 03 A6 */	mtlr r0
/* 805FA428  38 21 00 10 */	addi r1, r1, 0x10
/* 805FA42C  4E 80 00 20 */	blr 
