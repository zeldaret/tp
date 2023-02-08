lbl_80D0B7B0:
/* 80D0B7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0B7B4  7C 08 02 A6 */	mflr r0
/* 80D0B7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0B7BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0B7C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0B7C4  41 82 00 1C */	beq lbl_80D0B7E0
/* 80D0B7C8  3C A0 80 D1 */	lis r5, __vt__8cM3dGSph@ha /* 0x80D0BA68@ha */
/* 80D0B7CC  38 05 BA 68 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80D0BA68@l */
/* 80D0B7D0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D0B7D4  7C 80 07 35 */	extsh. r0, r4
/* 80D0B7D8  40 81 00 08 */	ble lbl_80D0B7E0
/* 80D0B7DC  4B 5C 35 61 */	bl __dl__FPv
lbl_80D0B7E0:
/* 80D0B7E0  7F E3 FB 78 */	mr r3, r31
/* 80D0B7E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0B7E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0B7EC  7C 08 03 A6 */	mtlr r0
/* 80D0B7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0B7F4  4E 80 00 20 */	blr 
