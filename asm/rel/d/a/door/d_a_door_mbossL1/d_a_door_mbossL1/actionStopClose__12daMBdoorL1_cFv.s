lbl_80676DEC:
/* 80676DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80676DF0  7C 08 02 A6 */	mflr r0
/* 80676DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80676DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80676DFC  7C 7F 1B 78 */	mr r31, r3
/* 80676E00  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80676E04  7F E4 FB 78 */	mr r4, r31
/* 80676E08  4B FF BC DD */	bl closeProc__13dDoor_stop2_cFP10fopAc_ac_c
/* 80676E0C  2C 03 00 00 */	cmpwi r3, 0
/* 80676E10  41 82 00 0C */	beq lbl_80676E1C
/* 80676E14  38 00 00 03 */	li r0, 3
/* 80676E18  98 1F 05 CC */	stb r0, 0x5cc(r31)
lbl_80676E1C:
/* 80676E1C  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80676E20  7F E4 FB 78 */	mr r4, r31
/* 80676E24  4B FF BA 91 */	bl calcMtx__13dDoor_stop2_cFP10fopAc_ac_c
/* 80676E28  38 60 00 01 */	li r3, 1
/* 80676E2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80676E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80676E34  7C 08 03 A6 */	mtlr r0
/* 80676E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80676E3C  4E 80 00 20 */	blr 
