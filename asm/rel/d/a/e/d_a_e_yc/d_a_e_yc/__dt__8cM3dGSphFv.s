lbl_807F26BC:
/* 807F26BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F26C0  7C 08 02 A6 */	mflr r0
/* 807F26C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F26C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F26CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807F26D0  41 82 00 1C */	beq lbl_807F26EC
/* 807F26D4  3C A0 80 7F */	lis r5, __vt__8cM3dGSph@ha
/* 807F26D8  38 05 2A B8 */	addi r0, r5, __vt__8cM3dGSph@l
/* 807F26DC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807F26E0  7C 80 07 35 */	extsh. r0, r4
/* 807F26E4  40 81 00 08 */	ble lbl_807F26EC
/* 807F26E8  4B AD C6 54 */	b __dl__FPv
lbl_807F26EC:
/* 807F26EC  7F E3 FB 78 */	mr r3, r31
/* 807F26F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F26F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F26F8  7C 08 03 A6 */	mtlr r0
/* 807F26FC  38 21 00 10 */	addi r1, r1, 0x10
/* 807F2700  4E 80 00 20 */	blr 
