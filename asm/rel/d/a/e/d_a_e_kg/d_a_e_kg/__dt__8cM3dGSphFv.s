lbl_806F9CD4:
/* 806F9CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F9CD8  7C 08 02 A6 */	mflr r0
/* 806F9CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F9CE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F9CE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F9CE8  41 82 00 1C */	beq lbl_806F9D04
/* 806F9CEC  3C A0 80 70 */	lis r5, __vt__8cM3dGSph@ha
/* 806F9CF0  38 05 A5 8C */	addi r0, r5, __vt__8cM3dGSph@l
/* 806F9CF4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806F9CF8  7C 80 07 35 */	extsh. r0, r4
/* 806F9CFC  40 81 00 08 */	ble lbl_806F9D04
/* 806F9D00  4B BD 50 3C */	b __dl__FPv
lbl_806F9D04:
/* 806F9D04  7F E3 FB 78 */	mr r3, r31
/* 806F9D08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F9D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F9D10  7C 08 03 A6 */	mtlr r0
/* 806F9D14  38 21 00 10 */	addi r1, r1, 0x10
/* 806F9D18  4E 80 00 20 */	blr 
