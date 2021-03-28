lbl_80CF8E40:
/* 80CF8E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF8E44  7C 08 02 A6 */	mflr r0
/* 80CF8E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF8E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF8E50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF8E54  41 82 00 1C */	beq lbl_80CF8E70
/* 80CF8E58  3C A0 80 D0 */	lis r5, __vt__8cM3dGSph@ha
/* 80CF8E5C  38 05 B8 90 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80CF8E60  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CF8E64  7C 80 07 35 */	extsh. r0, r4
/* 80CF8E68  40 81 00 08 */	ble lbl_80CF8E70
/* 80CF8E6C  4B 5D 5E D0 */	b __dl__FPv
lbl_80CF8E70:
/* 80CF8E70  7F E3 FB 78 */	mr r3, r31
/* 80CF8E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF8E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF8E7C  7C 08 03 A6 */	mtlr r0
/* 80CF8E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF8E84  4E 80 00 20 */	blr 
