lbl_8084B024:
/* 8084B024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084B028  7C 08 02 A6 */	mflr r0
/* 8084B02C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084B030  88 03 06 E7 */	lbz r0, 0x6e7(r3)
/* 8084B034  28 00 00 00 */	cmplwi r0, 0
/* 8084B038  41 82 00 40 */	beq lbl_8084B078
/* 8084B03C  80 63 06 1C */	lwz r3, 0x61c(r3)
/* 8084B040  38 81 00 0C */	addi r4, r1, 0xc
/* 8084B044  4B 7C E9 79 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8084B048  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8084B04C  28 03 00 00 */	cmplwi r3, 0
/* 8084B050  41 82 00 0C */	beq lbl_8084B05C
/* 8084B054  38 00 00 00 */	li r0, 0
/* 8084B058  98 03 07 46 */	stb r0, 0x746(r3)
lbl_8084B05C:
/* 8084B05C  38 60 01 1C */	li r3, 0x11c
/* 8084B060  38 81 00 08 */	addi r4, r1, 8
/* 8084B064  4B 7C E9 C9 */	bl fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 8084B068  80 61 00 08 */	lwz r3, 8(r1)
/* 8084B06C  28 03 00 00 */	cmplwi r3, 0
/* 8084B070  41 82 00 08 */	beq lbl_8084B078
/* 8084B074  48 35 D0 81 */	bl saveBestScore__15daObj_Balloon_cFv
lbl_8084B078:
/* 8084B078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084B07C  7C 08 03 A6 */	mtlr r0
/* 8084B080  38 21 00 10 */	addi r1, r1, 0x10
/* 8084B084  4E 80 00 20 */	blr 
