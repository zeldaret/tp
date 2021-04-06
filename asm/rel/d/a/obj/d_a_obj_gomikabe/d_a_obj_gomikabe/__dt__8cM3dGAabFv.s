lbl_80BFF74C:
/* 80BFF74C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFF750  7C 08 02 A6 */	mflr r0
/* 80BFF754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFF758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFF75C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFF760  41 82 00 1C */	beq lbl_80BFF77C
/* 80BFF764  3C A0 80 C0 */	lis r5, __vt__8cM3dGAab@ha /* 0x80BFFDB4@ha */
/* 80BFF768  38 05 FD B4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BFFDB4@l */
/* 80BFF76C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BFF770  7C 80 07 35 */	extsh. r0, r4
/* 80BFF774  40 81 00 08 */	ble lbl_80BFF77C
/* 80BFF778  4B 6C F5 C5 */	bl __dl__FPv
lbl_80BFF77C:
/* 80BFF77C  7F E3 FB 78 */	mr r3, r31
/* 80BFF780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFF784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFF788  7C 08 03 A6 */	mtlr r0
/* 80BFF78C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFF790  4E 80 00 20 */	blr 
