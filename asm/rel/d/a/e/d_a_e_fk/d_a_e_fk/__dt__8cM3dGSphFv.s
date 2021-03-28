lbl_806BB4E4:
/* 806BB4E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BB4E8  7C 08 02 A6 */	mflr r0
/* 806BB4EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BB4F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BB4F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806BB4F8  41 82 00 1C */	beq lbl_806BB514
/* 806BB4FC  3C A0 80 6C */	lis r5, __vt__8cM3dGSph@ha
/* 806BB500  38 05 B8 88 */	addi r0, r5, __vt__8cM3dGSph@l
/* 806BB504  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806BB508  7C 80 07 35 */	extsh. r0, r4
/* 806BB50C  40 81 00 08 */	ble lbl_806BB514
/* 806BB510  4B C1 38 2C */	b __dl__FPv
lbl_806BB514:
/* 806BB514  7F E3 FB 78 */	mr r3, r31
/* 806BB518  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BB51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BB520  7C 08 03 A6 */	mtlr r0
/* 806BB524  38 21 00 10 */	addi r1, r1, 0x10
/* 806BB528  4E 80 00 20 */	blr 
