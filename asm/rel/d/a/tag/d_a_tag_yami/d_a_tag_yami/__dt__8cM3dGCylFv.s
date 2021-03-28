lbl_80D66178:
/* 80D66178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6617C  7C 08 02 A6 */	mflr r0
/* 80D66180  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D66188  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D6618C  41 82 00 1C */	beq lbl_80D661A8
/* 80D66190  3C A0 80 D6 */	lis r5, __vt__8cM3dGCyl@ha
/* 80D66194  38 05 62 E8 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80D66198  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D6619C  7C 80 07 35 */	extsh. r0, r4
/* 80D661A0  40 81 00 08 */	ble lbl_80D661A8
/* 80D661A4  4B 56 8B 98 */	b __dl__FPv
lbl_80D661A8:
/* 80D661A8  7F E3 FB 78 */	mr r3, r31
/* 80D661AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D661B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D661B4  7C 08 03 A6 */	mtlr r0
/* 80D661B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D661BC  4E 80 00 20 */	blr 
