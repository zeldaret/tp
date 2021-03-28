lbl_80D22258:
/* 80D22258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2225C  7C 08 02 A6 */	mflr r0
/* 80D22260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D22264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D22268  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2226C  41 82 00 1C */	beq lbl_80D22288
/* 80D22270  3C A0 80 D2 */	lis r5, __vt__8cM3dGSph@ha
/* 80D22274  38 05 40 D8 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80D22278  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D2227C  7C 80 07 35 */	extsh. r0, r4
/* 80D22280  40 81 00 08 */	ble lbl_80D22288
/* 80D22284  4B 5A CA B8 */	b __dl__FPv
lbl_80D22288:
/* 80D22288  7F E3 FB 78 */	mr r3, r31
/* 80D2228C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D22290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D22294  7C 08 03 A6 */	mtlr r0
/* 80D22298  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2229C  4E 80 00 20 */	blr 
