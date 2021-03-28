lbl_80A62628:
/* 80A62628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6262C  7C 08 02 A6 */	mflr r0
/* 80A62630  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A62634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A62638  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6263C  41 82 00 1C */	beq lbl_80A62658
/* 80A62640  3C A0 80 A6 */	lis r5, __vt__10cCcD_GStts@ha
/* 80A62644  38 05 40 E8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80A62648  90 1F 00 00 */	stw r0, 0(r31)
/* 80A6264C  7C 80 07 35 */	extsh. r0, r4
/* 80A62650  40 81 00 08 */	ble lbl_80A62658
/* 80A62654  4B 86 C6 E8 */	b __dl__FPv
lbl_80A62658:
/* 80A62658  7F E3 FB 78 */	mr r3, r31
/* 80A6265C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A62660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A62664  7C 08 03 A6 */	mtlr r0
/* 80A62668  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6266C  4E 80 00 20 */	blr 
