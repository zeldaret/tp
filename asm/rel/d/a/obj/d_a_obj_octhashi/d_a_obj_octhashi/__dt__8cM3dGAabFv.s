lbl_80CA5F2C:
/* 80CA5F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA5F30  7C 08 02 A6 */	mflr r0
/* 80CA5F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA5F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA5F3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA5F40  41 82 00 1C */	beq lbl_80CA5F5C
/* 80CA5F44  3C A0 80 CA */	lis r5, __vt__8cM3dGAab@ha /* 0x80CA664C@ha */
/* 80CA5F48  38 05 66 4C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80CA664C@l */
/* 80CA5F4C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CA5F50  7C 80 07 35 */	extsh. r0, r4
/* 80CA5F54  40 81 00 08 */	ble lbl_80CA5F5C
/* 80CA5F58  4B 62 8D E5 */	bl __dl__FPv
lbl_80CA5F5C:
/* 80CA5F5C  7F E3 FB 78 */	mr r3, r31
/* 80CA5F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA5F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA5F68  7C 08 03 A6 */	mtlr r0
/* 80CA5F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA5F70  4E 80 00 20 */	blr 
