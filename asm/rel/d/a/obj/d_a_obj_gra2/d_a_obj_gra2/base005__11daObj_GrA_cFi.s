lbl_80C03CBC:
/* 80C03CBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C03CC0  7C 08 02 A6 */	mflr r0
/* 80C03CC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C03CC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C03CCC  7C 7F 1B 78 */	mr r31, r3
/* 80C03CD0  2C 04 00 00 */	cmpwi r4, 0
/* 80C03CD4  41 82 00 10 */	beq lbl_80C03CE4
/* 80C03CD8  38 80 00 06 */	li r4, 6
/* 80C03CDC  C0 3F 0A 94 */	lfs f1, 0xa94(r31)
/* 80C03CE0  4B FF D6 D1 */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C03CE4:
/* 80C03CE4  80 7F 07 54 */	lwz r3, 0x754(r31)
/* 80C03CE8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80C03CEC  3C 60 80 C1 */	lis r3, lit_10650@ha
/* 80C03CF0  C0 03 FD F8 */	lfs f0, lit_10650@l(r3)
/* 80C03CF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C03CF8  4C 41 13 82 */	cror 2, 1, 2
/* 80C03CFC  40 82 00 40 */	bne lbl_80C03D3C
/* 80C03D00  3C 60 80 C1 */	lis r3, lit_10651@ha
/* 80C03D04  C0 03 FD FC */	lfs f0, lit_10651@l(r3)
/* 80C03D08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C03D0C  4C 40 13 82 */	cror 2, 0, 2
/* 80C03D10  40 82 00 2C */	bne lbl_80C03D3C
/* 80C03D14  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005008D@ha */
/* 80C03D18  38 03 00 8D */	addi r0, r3, 0x008D /* 0x0005008D@l */
/* 80C03D1C  90 01 00 08 */	stw r0, 8(r1)
/* 80C03D20  38 7F 07 58 */	addi r3, r31, 0x758
/* 80C03D24  38 81 00 08 */	addi r4, r1, 8
/* 80C03D28  38 A0 FF FF */	li r5, -1
/* 80C03D2C  81 9F 07 58 */	lwz r12, 0x758(r31)
/* 80C03D30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80C03D34  7D 89 03 A6 */	mtctr r12
/* 80C03D38  4E 80 04 21 */	bctrl 
lbl_80C03D3C:
/* 80C03D3C  38 60 00 01 */	li r3, 1
/* 80C03D40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C03D44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C03D48  7C 08 03 A6 */	mtlr r0
/* 80C03D4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C03D50  4E 80 00 20 */	blr 
