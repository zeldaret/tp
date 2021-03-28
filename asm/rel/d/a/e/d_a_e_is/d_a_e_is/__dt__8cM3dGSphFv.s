lbl_806F78B0:
/* 806F78B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F78B4  7C 08 02 A6 */	mflr r0
/* 806F78B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F78BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F78C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F78C4  41 82 00 1C */	beq lbl_806F78E0
/* 806F78C8  3C A0 80 6F */	lis r5, __vt__8cM3dGSph@ha
/* 806F78CC  38 05 7D 80 */	addi r0, r5, __vt__8cM3dGSph@l
/* 806F78D0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806F78D4  7C 80 07 35 */	extsh. r0, r4
/* 806F78D8  40 81 00 08 */	ble lbl_806F78E0
/* 806F78DC  4B BD 74 60 */	b __dl__FPv
lbl_806F78E0:
/* 806F78E0  7F E3 FB 78 */	mr r3, r31
/* 806F78E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F78E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F78EC  7C 08 03 A6 */	mtlr r0
/* 806F78F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806F78F4  4E 80 00 20 */	blr 
