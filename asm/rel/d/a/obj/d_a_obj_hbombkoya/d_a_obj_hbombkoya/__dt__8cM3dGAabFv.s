lbl_80C1BB34:
/* 80C1BB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1BB38  7C 08 02 A6 */	mflr r0
/* 80C1BB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1BB40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1BB44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1BB48  41 82 00 1C */	beq lbl_80C1BB64
/* 80C1BB4C  3C A0 80 C2 */	lis r5, __vt__8cM3dGAab@ha
/* 80C1BB50  38 05 C9 9C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C1BB54  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C1BB58  7C 80 07 35 */	extsh. r0, r4
/* 80C1BB5C  40 81 00 08 */	ble lbl_80C1BB64
/* 80C1BB60  4B 6B 31 DC */	b __dl__FPv
lbl_80C1BB64:
/* 80C1BB64  7F E3 FB 78 */	mr r3, r31
/* 80C1BB68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1BB6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1BB70  7C 08 03 A6 */	mtlr r0
/* 80C1BB74  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1BB78  4E 80 00 20 */	blr 
