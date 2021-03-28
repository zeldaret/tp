lbl_80D47548:
/* 80D47548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4754C  7C 08 02 A6 */	mflr r0
/* 80D47550  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D47554  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D47558  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4755C  41 82 00 1C */	beq lbl_80D47578
/* 80D47560  3C A0 80 D5 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80D47564  38 05 C6 6C */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80D47568  90 1F 00 00 */	stw r0, 0(r31)
/* 80D4756C  7C 80 07 35 */	extsh. r0, r4
/* 80D47570  40 81 00 08 */	ble lbl_80D47578
/* 80D47574  4B 58 77 C8 */	b __dl__FPv
lbl_80D47578:
/* 80D47578  7F E3 FB 78 */	mr r3, r31
/* 80D4757C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D47580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D47584  7C 08 03 A6 */	mtlr r0
/* 80D47588  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4758C  4E 80 00 20 */	blr 
