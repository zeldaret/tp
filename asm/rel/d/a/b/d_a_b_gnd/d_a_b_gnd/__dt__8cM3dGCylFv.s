lbl_80601E4C:
/* 80601E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601E50  7C 08 02 A6 */	mflr r0
/* 80601E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80601E5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80601E60  41 82 00 1C */	beq lbl_80601E7C
/* 80601E64  3C A0 80 60 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80602EF4@ha */
/* 80601E68  38 05 2E F4 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80602EF4@l */
/* 80601E6C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80601E70  7C 80 07 35 */	extsh. r0, r4
/* 80601E74  40 81 00 08 */	ble lbl_80601E7C
/* 80601E78  4B CC CE C5 */	bl __dl__FPv
lbl_80601E7C:
/* 80601E7C  7F E3 FB 78 */	mr r3, r31
/* 80601E80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80601E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601E88  7C 08 03 A6 */	mtlr r0
/* 80601E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80601E90  4E 80 00 20 */	blr 
