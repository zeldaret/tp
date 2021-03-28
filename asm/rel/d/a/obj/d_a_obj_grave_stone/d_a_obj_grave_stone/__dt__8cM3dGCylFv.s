lbl_80C12F30:
/* 80C12F30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C12F34  7C 08 02 A6 */	mflr r0
/* 80C12F38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C12F3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C12F40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C12F44  41 82 00 1C */	beq lbl_80C12F60
/* 80C12F48  3C A0 80 C1 */	lis r5, __vt__8cM3dGCyl@ha
/* 80C12F4C  38 05 33 58 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80C12F50  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C12F54  7C 80 07 35 */	extsh. r0, r4
/* 80C12F58  40 81 00 08 */	ble lbl_80C12F60
/* 80C12F5C  4B 6B BD E0 */	b __dl__FPv
lbl_80C12F60:
/* 80C12F60  7F E3 FB 78 */	mr r3, r31
/* 80C12F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C12F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C12F6C  7C 08 03 A6 */	mtlr r0
/* 80C12F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C12F74  4E 80 00 20 */	blr 
