lbl_80CA8A54:
/* 80CA8A54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8A58  7C 08 02 A6 */	mflr r0
/* 80CA8A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8A60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA8A64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA8A68  41 82 00 1C */	beq lbl_80CA8A84
/* 80CA8A6C  3C A0 80 CB */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CA9D68@ha */
/* 80CA8A70  38 05 9D 68 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CA9D68@l */
/* 80CA8A74  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CA8A78  7C 80 07 35 */	extsh. r0, r4
/* 80CA8A7C  40 81 00 08 */	ble lbl_80CA8A84
/* 80CA8A80  4B 62 62 BD */	bl __dl__FPv
lbl_80CA8A84:
/* 80CA8A84  7F E3 FB 78 */	mr r3, r31
/* 80CA8A88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA8A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA8A90  7C 08 03 A6 */	mtlr r0
/* 80CA8A94  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8A98  4E 80 00 20 */	blr 
