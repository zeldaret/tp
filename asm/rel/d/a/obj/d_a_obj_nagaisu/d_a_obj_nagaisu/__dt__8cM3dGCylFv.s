lbl_80C9FC4C:
/* 80C9FC4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9FC50  7C 08 02 A6 */	mflr r0
/* 80C9FC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9FC58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9FC5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9FC60  41 82 00 1C */	beq lbl_80C9FC7C
/* 80C9FC64  3C A0 80 CA */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CA0474@ha */
/* 80C9FC68  38 05 04 74 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CA0474@l */
/* 80C9FC6C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C9FC70  7C 80 07 35 */	extsh. r0, r4
/* 80C9FC74  40 81 00 08 */	ble lbl_80C9FC7C
/* 80C9FC78  4B 62 F0 C5 */	bl __dl__FPv
lbl_80C9FC7C:
/* 80C9FC7C  7F E3 FB 78 */	mr r3, r31
/* 80C9FC80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9FC84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9FC88  7C 08 03 A6 */	mtlr r0
/* 80C9FC8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9FC90  4E 80 00 20 */	blr 
