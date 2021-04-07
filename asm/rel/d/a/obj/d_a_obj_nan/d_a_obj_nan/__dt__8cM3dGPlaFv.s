lbl_80CA0D54:
/* 80CA0D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA0D58  7C 08 02 A6 */	mflr r0
/* 80CA0D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA0D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA0D64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA0D68  41 82 00 1C */	beq lbl_80CA0D84
/* 80CA0D6C  3C A0 80 CA */	lis r5, __vt__8cM3dGPla@ha /* 0x80CA3468@ha */
/* 80CA0D70  38 05 34 68 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80CA3468@l */
/* 80CA0D74  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CA0D78  7C 80 07 35 */	extsh. r0, r4
/* 80CA0D7C  40 81 00 08 */	ble lbl_80CA0D84
/* 80CA0D80  4B 62 DF BD */	bl __dl__FPv
lbl_80CA0D84:
/* 80CA0D84  7F E3 FB 78 */	mr r3, r31
/* 80CA0D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA0D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA0D90  7C 08 03 A6 */	mtlr r0
/* 80CA0D94  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA0D98  4E 80 00 20 */	blr 
