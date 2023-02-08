lbl_80BCFF04:
/* 80BCFF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCFF08  7C 08 02 A6 */	mflr r0
/* 80BCFF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCFF10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCFF14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCFF18  41 82 00 1C */	beq lbl_80BCFF34
/* 80BCFF1C  3C A0 80 BD */	lis r5, __vt__8cM3dGAab@ha /* 0x80BD02B4@ha */
/* 80BCFF20  38 05 02 B4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BD02B4@l */
/* 80BCFF24  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BCFF28  7C 80 07 35 */	extsh. r0, r4
/* 80BCFF2C  40 81 00 08 */	ble lbl_80BCFF34
/* 80BCFF30  4B 6F EE 0D */	bl __dl__FPv
lbl_80BCFF34:
/* 80BCFF34  7F E3 FB 78 */	mr r3, r31
/* 80BCFF38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCFF3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCFF40  7C 08 03 A6 */	mtlr r0
/* 80BCFF44  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCFF48  4E 80 00 20 */	blr 
