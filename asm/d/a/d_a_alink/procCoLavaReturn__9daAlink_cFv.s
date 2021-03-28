lbl_800DC214:
/* 800DC214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DC218  7C 08 02 A6 */	mflr r0
/* 800DC21C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DC220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DC224  7C 7F 1B 78 */	mr r31, r3
/* 800DC228  38 7F 2B A8 */	addi r3, r31, 0x2ba8
/* 800DC22C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DC230  C0 42 93 44 */	lfs f2, lit_7977(r2)
/* 800DC234  48 19 45 0D */	bl cLib_chaseF__FPfff
/* 800DC238  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800DC23C  48 08 22 91 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DC240  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DC244  41 82 00 1C */	beq lbl_800DC260
/* 800DC248  7F E3 FB 78 */	mr r3, r31
/* 800DC24C  80 9F 32 CC */	lwz r4, 0x32cc(r31)
/* 800DC250  38 A0 00 C9 */	li r5, 0xc9
/* 800DC254  80 DF 31 98 */	lwz r6, 0x3198(r31)
/* 800DC258  38 E0 00 01 */	li r7, 1
/* 800DC25C  4B FE 1D 05 */	bl startRestartRoom__9daAlink_cFUliii
lbl_800DC260:
/* 800DC260  38 60 00 01 */	li r3, 1
/* 800DC264  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DC268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DC26C  7C 08 03 A6 */	mtlr r0
/* 800DC270  38 21 00 10 */	addi r1, r1, 0x10
/* 800DC274  4E 80 00 20 */	blr 
