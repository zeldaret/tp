lbl_80D3B538:
/* 80D3B538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B53C  7C 08 02 A6 */	mflr r0
/* 80D3B540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3B548  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3B54C  41 82 00 1C */	beq lbl_80D3B568
/* 80D3B550  3C A0 80 D4 */	lis r5, __vt__10cCcD_GStts@ha
/* 80D3B554  38 05 B8 28 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80D3B558  90 1F 00 00 */	stw r0, 0(r31)
/* 80D3B55C  7C 80 07 35 */	extsh. r0, r4
/* 80D3B560  40 81 00 08 */	ble lbl_80D3B568
/* 80D3B564  4B 59 37 D8 */	b __dl__FPv
lbl_80D3B568:
/* 80D3B568  7F E3 FB 78 */	mr r3, r31
/* 80D3B56C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3B570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3B574  7C 08 03 A6 */	mtlr r0
/* 80D3B578  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3B57C  4E 80 00 20 */	blr 
