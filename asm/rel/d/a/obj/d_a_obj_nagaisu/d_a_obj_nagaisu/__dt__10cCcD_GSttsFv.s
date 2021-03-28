lbl_80CA030C:
/* 80CA030C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA0310  7C 08 02 A6 */	mflr r0
/* 80CA0314  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA0318  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA031C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA0320  41 82 00 1C */	beq lbl_80CA033C
/* 80CA0324  3C A0 80 CA */	lis r5, __vt__10cCcD_GStts@ha
/* 80CA0328  38 05 04 8C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CA032C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA0330  7C 80 07 35 */	extsh. r0, r4
/* 80CA0334  40 81 00 08 */	ble lbl_80CA033C
/* 80CA0338  4B 62 EA 04 */	b __dl__FPv
lbl_80CA033C:
/* 80CA033C  7F E3 FB 78 */	mr r3, r31
/* 80CA0340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA0344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA0348  7C 08 03 A6 */	mtlr r0
/* 80CA034C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA0350  4E 80 00 20 */	blr 
