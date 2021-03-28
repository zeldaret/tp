lbl_807C47FC:
/* 807C47FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C4800  7C 08 02 A6 */	mflr r0
/* 807C4804  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C4808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C480C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807C4810  41 82 00 1C */	beq lbl_807C482C
/* 807C4814  3C A0 80 7D */	lis r5, __vt__8cM3dGAab@ha
/* 807C4818  38 05 F4 54 */	addi r0, r5, __vt__8cM3dGAab@l
/* 807C481C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807C4820  7C 80 07 35 */	extsh. r0, r4
/* 807C4824  40 81 00 08 */	ble lbl_807C482C
/* 807C4828  4B B0 A5 14 */	b __dl__FPv
lbl_807C482C:
/* 807C482C  7F E3 FB 78 */	mr r3, r31
/* 807C4830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C4834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C4838  7C 08 03 A6 */	mtlr r0
/* 807C483C  38 21 00 10 */	addi r1, r1, 0x10
/* 807C4840  4E 80 00 20 */	blr 
