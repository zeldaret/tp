lbl_806D0758:
/* 806D0758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D075C  7C 08 02 A6 */	mflr r0
/* 806D0760  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D0764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D0768  7C 7F 1B 79 */	or. r31, r3, r3
/* 806D076C  41 82 00 1C */	beq lbl_806D0788
/* 806D0770  3C A0 80 6D */	lis r5, __vt__8cM3dGSph@ha
/* 806D0774  38 05 10 E4 */	addi r0, r5, __vt__8cM3dGSph@l
/* 806D0778  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806D077C  7C 80 07 35 */	extsh. r0, r4
/* 806D0780  40 81 00 08 */	ble lbl_806D0788
/* 806D0784  4B BF E5 B8 */	b __dl__FPv
lbl_806D0788:
/* 806D0788  7F E3 FB 78 */	mr r3, r31
/* 806D078C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D0790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D0794  7C 08 03 A6 */	mtlr r0
/* 806D0798  38 21 00 10 */	addi r1, r1, 0x10
/* 806D079C  4E 80 00 20 */	blr 
