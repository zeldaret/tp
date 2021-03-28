lbl_805A2BA4:
/* 805A2BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2BA8  7C 08 02 A6 */	mflr r0
/* 805A2BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A2BB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A2BB8  41 82 00 1C */	beq lbl_805A2BD4
/* 805A2BBC  3C A0 80 5A */	lis r5, __vt__8cM3dGAab@ha
/* 805A2BC0  38 05 33 D8 */	addi r0, r5, __vt__8cM3dGAab@l
/* 805A2BC4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805A2BC8  7C 80 07 35 */	extsh. r0, r4
/* 805A2BCC  40 81 00 08 */	ble lbl_805A2BD4
/* 805A2BD0  4B D2 C1 6C */	b __dl__FPv
lbl_805A2BD4:
/* 805A2BD4  7F E3 FB 78 */	mr r3, r31
/* 805A2BD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A2BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2BE0  7C 08 03 A6 */	mtlr r0
/* 805A2BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2BE8  4E 80 00 20 */	blr 
