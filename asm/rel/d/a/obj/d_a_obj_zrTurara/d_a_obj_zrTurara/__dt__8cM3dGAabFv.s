lbl_80D40B64:
/* 80D40B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D40B68  7C 08 02 A6 */	mflr r0
/* 80D40B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D40B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D40B74  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D40B78  41 82 00 1C */	beq lbl_80D40B94
/* 80D40B7C  3C A0 80 D4 */	lis r5, __vt__8cM3dGAab@ha
/* 80D40B80  38 05 17 28 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D40B84  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D40B88  7C 80 07 35 */	extsh. r0, r4
/* 80D40B8C  40 81 00 08 */	ble lbl_80D40B94
/* 80D40B90  4B 58 E1 AC */	b __dl__FPv
lbl_80D40B94:
/* 80D40B94  7F E3 FB 78 */	mr r3, r31
/* 80D40B98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D40B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D40BA0  7C 08 03 A6 */	mtlr r0
/* 80D40BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D40BA8  4E 80 00 20 */	blr 
