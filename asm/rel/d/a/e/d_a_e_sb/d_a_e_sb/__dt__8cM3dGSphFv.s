lbl_80784BA0:
/* 80784BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80784BA4  7C 08 02 A6 */	mflr r0
/* 80784BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80784BAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80784BB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80784BB4  41 82 00 1C */	beq lbl_80784BD0
/* 80784BB8  3C A0 80 78 */	lis r5, __vt__8cM3dGSph@ha /* 0x80784EE4@ha */
/* 80784BBC  38 05 4E E4 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80784EE4@l */
/* 80784BC0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80784BC4  7C 80 07 35 */	extsh. r0, r4
/* 80784BC8  40 81 00 08 */	ble lbl_80784BD0
/* 80784BCC  4B B4 A1 71 */	bl __dl__FPv
lbl_80784BD0:
/* 80784BD0  7F E3 FB 78 */	mr r3, r31
/* 80784BD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80784BD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80784BDC  7C 08 03 A6 */	mtlr r0
/* 80784BE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80784BE4  4E 80 00 20 */	blr 
