lbl_801B88F4:
/* 801B88F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B88F8  7C 08 02 A6 */	mflr r0
/* 801B88FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B8900  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801B8904  41 82 00 10 */	beq lbl_801B8914
/* 801B8908  C0 22 A5 E8 */	lfs f1, lit_3962(r2)
/* 801B890C  C0 62 A5 EC */	lfs f3, lit_3963(r2)
/* 801B8910  48 00 00 0C */	b lbl_801B891C
lbl_801B8914:
/* 801B8914  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801B8918  C0 62 A5 E8 */	lfs f3, lit_3962(r2)
lbl_801B891C:
/* 801B891C  38 63 00 04 */	addi r3, r3, 4
/* 801B8920  38 80 00 01 */	li r4, 1
/* 801B8924  FC 40 08 90 */	fmr f2, f1
/* 801B8928  48 00 B5 9D */	bl iconScale__16dMenuMapCommon_cFifff
/* 801B892C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B8930  7C 08 03 A6 */	mtlr r0
/* 801B8934  38 21 00 10 */	addi r1, r1, 0x10
/* 801B8938  4E 80 00 20 */	blr 
