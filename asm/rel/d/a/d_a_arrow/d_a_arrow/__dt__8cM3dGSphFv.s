lbl_8049D880:
/* 8049D880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049D884  7C 08 02 A6 */	mflr r0
/* 8049D888  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049D88C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049D890  7C 7F 1B 79 */	or. r31, r3, r3
/* 8049D894  41 82 00 1C */	beq lbl_8049D8B0
/* 8049D898  3C A0 80 4A */	lis r5, __vt__8cM3dGSph@ha
/* 8049D89C  38 05 DF 34 */	addi r0, r5, __vt__8cM3dGSph@l
/* 8049D8A0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8049D8A4  7C 80 07 35 */	extsh. r0, r4
/* 8049D8A8  40 81 00 08 */	ble lbl_8049D8B0
/* 8049D8AC  4B E3 14 90 */	b __dl__FPv
lbl_8049D8B0:
/* 8049D8B0  7F E3 FB 78 */	mr r3, r31
/* 8049D8B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049D8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049D8BC  7C 08 03 A6 */	mtlr r0
/* 8049D8C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8049D8C4  4E 80 00 20 */	blr 
