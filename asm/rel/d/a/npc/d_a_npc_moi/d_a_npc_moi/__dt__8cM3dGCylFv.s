lbl_80A79FB0:
/* 80A79FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A79FB4  7C 08 02 A6 */	mflr r0
/* 80A79FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A79FBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A79FC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A79FC4  41 82 00 1C */	beq lbl_80A79FE0
/* 80A79FC8  3C A0 80 A8 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80A7BEA0@ha */
/* 80A79FCC  38 05 BE A0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80A7BEA0@l */
/* 80A79FD0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A79FD4  7C 80 07 35 */	extsh. r0, r4
/* 80A79FD8  40 81 00 08 */	ble lbl_80A79FE0
/* 80A79FDC  4B 85 4D 61 */	bl __dl__FPv
lbl_80A79FE0:
/* 80A79FE0  7F E3 FB 78 */	mr r3, r31
/* 80A79FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A79FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A79FEC  7C 08 03 A6 */	mtlr r0
/* 80A79FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A79FF4  4E 80 00 20 */	blr 
