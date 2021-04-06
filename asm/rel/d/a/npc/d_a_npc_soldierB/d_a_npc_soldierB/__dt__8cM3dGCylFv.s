lbl_80AF2E30:
/* 80AF2E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF2E34  7C 08 02 A6 */	mflr r0
/* 80AF2E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF2E3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF2E40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF2E44  41 82 00 1C */	beq lbl_80AF2E60
/* 80AF2E48  3C A0 80 AF */	lis r5, __vt__8cM3dGCyl@ha /* 0x80AF5DF4@ha */
/* 80AF2E4C  38 05 5D F4 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80AF5DF4@l */
/* 80AF2E50  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AF2E54  7C 80 07 35 */	extsh. r0, r4
/* 80AF2E58  40 81 00 08 */	ble lbl_80AF2E60
/* 80AF2E5C  4B 7D BE E1 */	bl __dl__FPv
lbl_80AF2E60:
/* 80AF2E60  7F E3 FB 78 */	mr r3, r31
/* 80AF2E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF2E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF2E6C  7C 08 03 A6 */	mtlr r0
/* 80AF2E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF2E74  4E 80 00 20 */	blr 
