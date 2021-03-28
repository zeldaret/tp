lbl_80B93FCC:
/* 80B93FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B93FD0  7C 08 02 A6 */	mflr r0
/* 80B93FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B93FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B93FDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B93FE0  41 82 00 1C */	beq lbl_80B93FFC
/* 80B93FE4  3C A0 80 BA */	lis r5, __vt__8cM3dGAab@ha
/* 80B93FE8  38 05 B8 24 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80B93FEC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B93FF0  7C 80 07 35 */	extsh. r0, r4
/* 80B93FF4  40 81 00 08 */	ble lbl_80B93FFC
/* 80B93FF8  4B 73 AD 44 */	b __dl__FPv
lbl_80B93FFC:
/* 80B93FFC  7F E3 FB 78 */	mr r3, r31
/* 80B94000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B94004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B94008  7C 08 03 A6 */	mtlr r0
/* 80B9400C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B94010  4E 80 00 20 */	blr 
