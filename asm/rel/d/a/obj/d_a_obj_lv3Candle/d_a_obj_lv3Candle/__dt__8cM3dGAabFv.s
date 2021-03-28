lbl_80C57F24:
/* 80C57F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57F28  7C 08 02 A6 */	mflr r0
/* 80C57F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C57F34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C57F38  41 82 00 1C */	beq lbl_80C57F54
/* 80C57F3C  3C A0 80 C6 */	lis r5, __vt__8cM3dGAab@ha
/* 80C57F40  38 05 86 94 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C57F44  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C57F48  7C 80 07 35 */	extsh. r0, r4
/* 80C57F4C  40 81 00 08 */	ble lbl_80C57F54
/* 80C57F50  4B 67 6D EC */	b __dl__FPv
lbl_80C57F54:
/* 80C57F54  7F E3 FB 78 */	mr r3, r31
/* 80C57F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C57F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C57F60  7C 08 03 A6 */	mtlr r0
/* 80C57F64  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57F68  4E 80 00 20 */	blr 
