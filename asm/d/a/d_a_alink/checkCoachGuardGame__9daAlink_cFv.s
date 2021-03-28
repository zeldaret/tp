lbl_800BE26C:
/* 800BE26C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE270  7C 08 02 A6 */	mflr r0
/* 800BE274  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BE27C  3B E0 00 00 */	li r31, 0
/* 800BE280  80 03 05 78 */	lwz r0, 0x578(r3)
/* 800BE284  54 00 01 D1 */	rlwinm. r0, r0, 0, 7, 8
/* 800BE288  40 82 00 20 */	bne lbl_800BE2A8
/* 800BE28C  3C 60 80 0F */	lis r3, daAlink_searchCoach__FP10fopAc_ac_cPv@ha
/* 800BE290  38 63 C7 58 */	addi r3, r3, daAlink_searchCoach__FP10fopAc_ac_cPv@l
/* 800BE294  38 80 00 00 */	li r4, 0
/* 800BE298  4B F5 B5 61 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800BE29C  28 03 00 00 */	cmplwi r3, 0
/* 800BE2A0  41 82 00 08 */	beq lbl_800BE2A8
/* 800BE2A4  3B E0 00 01 */	li r31, 1
lbl_800BE2A8:
/* 800BE2A8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800BE2AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BE2B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE2B4  7C 08 03 A6 */	mtlr r0
/* 800BE2B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE2BC  4E 80 00 20 */	blr 
