lbl_80BFEE24:
/* 80BFEE24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFEE28  7C 08 02 A6 */	mflr r0
/* 80BFEE2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFEE30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BFEE34  3C 60 80 C0 */	lis r3, ccSphSrc@ha
/* 80BFEE38  3B E3 FC 1C */	addi r31, r3, ccSphSrc@l
/* 80BFEE3C  7C 83 23 78 */	mr r3, r4
/* 80BFEE40  38 81 00 08 */	addi r4, r1, 8
/* 80BFEE44  4B 41 64 CC */	b mDoLib_project__FP3VecP3Vec
/* 80BFEE48  38 60 00 00 */	li r3, 0
/* 80BFEE4C  C0 41 00 08 */	lfs f2, 8(r1)
/* 80BFEE50  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BFEE54  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80BFEE58  4C 41 13 82 */	cror 2, 1, 2
/* 80BFEE5C  40 82 00 38 */	bne lbl_80BFEE94
/* 80BFEE60  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80BFEE64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BFEE68  4C 40 13 82 */	cror 2, 0, 2
/* 80BFEE6C  40 82 00 28 */	bne lbl_80BFEE94
/* 80BFEE70  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80BFEE74  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80BFEE78  4C 41 13 82 */	cror 2, 1, 2
/* 80BFEE7C  40 82 00 18 */	bne lbl_80BFEE94
/* 80BFEE80  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80BFEE84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BFEE88  4C 40 13 82 */	cror 2, 0, 2
/* 80BFEE8C  40 82 00 08 */	bne lbl_80BFEE94
/* 80BFEE90  38 60 00 01 */	li r3, 1
lbl_80BFEE94:
/* 80BFEE94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BFEE98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFEE9C  7C 08 03 A6 */	mtlr r0
/* 80BFEEA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFEEA4  4E 80 00 20 */	blr 
