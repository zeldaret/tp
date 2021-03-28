lbl_80CFBF60:
/* 80CFBF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFBF64  7C 08 02 A6 */	mflr r0
/* 80CFBF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFBF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFBF70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CFBF74  41 82 00 1C */	beq lbl_80CFBF90
/* 80CFBF78  3C A0 80 D0 */	lis r5, __vt__8cM3dGSph@ha
/* 80CFBF7C  38 05 D4 54 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80CFBF80  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CFBF84  7C 80 07 35 */	extsh. r0, r4
/* 80CFBF88  40 81 00 08 */	ble lbl_80CFBF90
/* 80CFBF8C  4B 5D 2D B0 */	b __dl__FPv
lbl_80CFBF90:
/* 80CFBF90  7F E3 FB 78 */	mr r3, r31
/* 80CFBF94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFBF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFBF9C  7C 08 03 A6 */	mtlr r0
/* 80CFBFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFBFA4  4E 80 00 20 */	blr 
