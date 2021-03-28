lbl_80C04BB0:
/* 80C04BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04BB4  7C 08 02 A6 */	mflr r0
/* 80C04BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04BBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C04BC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C04BC4  41 82 00 1C */	beq lbl_80C04BE0
/* 80C04BC8  3C A0 80 C1 */	lis r5, __vt__8cM3dGCyl@ha
/* 80C04BCC  38 05 08 70 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80C04BD0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C04BD4  7C 80 07 35 */	extsh. r0, r4
/* 80C04BD8  40 81 00 08 */	ble lbl_80C04BE0
/* 80C04BDC  4B 6C A1 60 */	b __dl__FPv
lbl_80C04BE0:
/* 80C04BE0  7F E3 FB 78 */	mr r3, r31
/* 80C04BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C04BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04BEC  7C 08 03 A6 */	mtlr r0
/* 80C04BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04BF4  4E 80 00 20 */	blr 
