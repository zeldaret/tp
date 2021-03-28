lbl_806B8DC4:
/* 806B8DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B8DC8  7C 08 02 A6 */	mflr r0
/* 806B8DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B8DD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B8DD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806B8DD8  41 82 00 1C */	beq lbl_806B8DF4
/* 806B8DDC  3C A0 80 6C */	lis r5, __vt__8cM3dGSph@ha
/* 806B8DE0  38 05 91 50 */	addi r0, r5, __vt__8cM3dGSph@l
/* 806B8DE4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806B8DE8  7C 80 07 35 */	extsh. r0, r4
/* 806B8DEC  40 81 00 08 */	ble lbl_806B8DF4
/* 806B8DF0  4B C1 5F 4C */	b __dl__FPv
lbl_806B8DF4:
/* 806B8DF4  7F E3 FB 78 */	mr r3, r31
/* 806B8DF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B8DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B8E00  7C 08 03 A6 */	mtlr r0
/* 806B8E04  38 21 00 10 */	addi r1, r1, 0x10
/* 806B8E08  4E 80 00 20 */	blr 
