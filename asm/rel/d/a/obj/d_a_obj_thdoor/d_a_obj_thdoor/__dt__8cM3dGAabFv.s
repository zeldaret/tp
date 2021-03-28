lbl_80D0E47C:
/* 80D0E47C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E480  7C 08 02 A6 */	mflr r0
/* 80D0E484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E488  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0E48C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0E490  41 82 00 1C */	beq lbl_80D0E4AC
/* 80D0E494  3C A0 80 D1 */	lis r5, __vt__8cM3dGAab@ha
/* 80D0E498  38 05 E7 9C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D0E49C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D0E4A0  7C 80 07 35 */	extsh. r0, r4
/* 80D0E4A4  40 81 00 08 */	ble lbl_80D0E4AC
/* 80D0E4A8  4B 5C 08 94 */	b __dl__FPv
lbl_80D0E4AC:
/* 80D0E4AC  7F E3 FB 78 */	mr r3, r31
/* 80D0E4B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0E4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E4B8  7C 08 03 A6 */	mtlr r0
/* 80D0E4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E4C0  4E 80 00 20 */	blr 
