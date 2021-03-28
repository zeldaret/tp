lbl_80577DA4:
/* 80577DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80577DA8  7C 08 02 A6 */	mflr r0
/* 80577DAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80577DB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80577DB4  3C 80 80 58 */	lis r4, ccCylSrc@ha
/* 80577DB8  3B E4 8A 88 */	addi r31, r4, ccCylSrc@l
/* 80577DBC  38 81 00 08 */	addi r4, r1, 8
/* 80577DC0  4B A9 D5 50 */	b mDoLib_project__FP3VecP3Vec
/* 80577DC4  38 60 00 00 */	li r3, 0
/* 80577DC8  C0 41 00 08 */	lfs f2, 8(r1)
/* 80577DCC  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80577DD0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80577DD4  4C 41 13 82 */	cror 2, 1, 2
/* 80577DD8  40 82 00 38 */	bne lbl_80577E10
/* 80577DDC  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80577DE0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80577DE4  4C 40 13 82 */	cror 2, 0, 2
/* 80577DE8  40 82 00 28 */	bne lbl_80577E10
/* 80577DEC  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80577DF0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80577DF4  4C 41 13 82 */	cror 2, 1, 2
/* 80577DF8  40 82 00 18 */	bne lbl_80577E10
/* 80577DFC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80577E00  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80577E04  4C 40 13 82 */	cror 2, 0, 2
/* 80577E08  40 82 00 08 */	bne lbl_80577E10
/* 80577E0C  38 60 00 01 */	li r3, 1
lbl_80577E10:
/* 80577E10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80577E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80577E18  7C 08 03 A6 */	mtlr r0
/* 80577E1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80577E20  4E 80 00 20 */	blr 
