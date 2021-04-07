lbl_806F5424:
/* 806F5424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F5428  7C 08 02 A6 */	mflr r0
/* 806F542C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F5430  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F5434  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F5438  41 82 00 1C */	beq lbl_806F5454
/* 806F543C  3C A0 80 6F */	lis r5, __vt__10cCcD_GStts@ha /* 0x806F58B0@ha */
/* 806F5440  38 05 58 B0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x806F58B0@l */
/* 806F5444  90 1F 00 00 */	stw r0, 0(r31)
/* 806F5448  7C 80 07 35 */	extsh. r0, r4
/* 806F544C  40 81 00 08 */	ble lbl_806F5454
/* 806F5450  4B BD 98 ED */	bl __dl__FPv
lbl_806F5454:
/* 806F5454  7F E3 FB 78 */	mr r3, r31
/* 806F5458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F545C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F5460  7C 08 03 A6 */	mtlr r0
/* 806F5464  38 21 00 10 */	addi r1, r1, 0x10
/* 806F5468  4E 80 00 20 */	blr 
