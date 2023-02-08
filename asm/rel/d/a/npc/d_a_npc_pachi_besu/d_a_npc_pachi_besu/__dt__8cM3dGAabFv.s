lbl_80A95C84:
/* 80A95C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A95C88  7C 08 02 A6 */	mflr r0
/* 80A95C8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A95C90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A95C94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A95C98  41 82 00 1C */	beq lbl_80A95CB4
/* 80A95C9C  3C A0 80 A9 */	lis r5, __vt__8cM3dGAab@ha /* 0x80A979D4@ha */
/* 80A95CA0  38 05 79 D4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80A979D4@l */
/* 80A95CA4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A95CA8  7C 80 07 35 */	extsh. r0, r4
/* 80A95CAC  40 81 00 08 */	ble lbl_80A95CB4
/* 80A95CB0  4B 83 90 8D */	bl __dl__FPv
lbl_80A95CB4:
/* 80A95CB4  7F E3 FB 78 */	mr r3, r31
/* 80A95CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A95CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A95CC0  7C 08 03 A6 */	mtlr r0
/* 80A95CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A95CC8  4E 80 00 20 */	blr 
