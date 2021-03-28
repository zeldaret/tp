lbl_8067BD0C:
/* 8067BD0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067BD10  7C 08 02 A6 */	mflr r0
/* 8067BD14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067BD18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067BD1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8067BD20  41 82 00 1C */	beq lbl_8067BD3C
/* 8067BD24  3C A0 80 68 */	lis r5, __vt__8cM3dGSph@ha
/* 8067BD28  38 05 C6 3C */	addi r0, r5, __vt__8cM3dGSph@l
/* 8067BD2C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8067BD30  7C 80 07 35 */	extsh. r0, r4
/* 8067BD34  40 81 00 08 */	ble lbl_8067BD3C
/* 8067BD38  4B C5 30 04 */	b __dl__FPv
lbl_8067BD3C:
/* 8067BD3C  7F E3 FB 78 */	mr r3, r31
/* 8067BD40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067BD44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067BD48  7C 08 03 A6 */	mtlr r0
/* 8067BD4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8067BD50  4E 80 00 20 */	blr 
