lbl_80CBE754:
/* 80CBE754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBE758  7C 08 02 A6 */	mflr r0
/* 80CBE75C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBE760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBE764  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBE768  41 82 00 1C */	beq lbl_80CBE784
/* 80CBE76C  3C A0 80 CC */	lis r5, __vt__8cM3dGAab@ha /* 0x80CBE880@ha */
/* 80CBE770  38 05 E8 80 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80CBE880@l */
/* 80CBE774  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CBE778  7C 80 07 35 */	extsh. r0, r4
/* 80CBE77C  40 81 00 08 */	ble lbl_80CBE784
/* 80CBE780  4B 61 05 BD */	bl __dl__FPv
lbl_80CBE784:
/* 80CBE784  7F E3 FB 78 */	mr r3, r31
/* 80CBE788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBE78C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBE790  7C 08 03 A6 */	mtlr r0
/* 80CBE794  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBE798  4E 80 00 20 */	blr 
