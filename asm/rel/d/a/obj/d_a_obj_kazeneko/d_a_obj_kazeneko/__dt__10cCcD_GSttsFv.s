lbl_80C3D38C:
/* 80C3D38C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3D390  7C 08 02 A6 */	mflr r0
/* 80C3D394  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3D398  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3D39C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C3D3A0  41 82 00 1C */	beq lbl_80C3D3BC
/* 80C3D3A4  3C A0 80 C4 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C3D4E4@ha */
/* 80C3D3A8  38 05 D4 E4 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C3D4E4@l */
/* 80C3D3AC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C3D3B0  7C 80 07 35 */	extsh. r0, r4
/* 80C3D3B4  40 81 00 08 */	ble lbl_80C3D3BC
/* 80C3D3B8  4B 69 19 85 */	bl __dl__FPv
lbl_80C3D3BC:
/* 80C3D3BC  7F E3 FB 78 */	mr r3, r31
/* 80C3D3C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3D3C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3D3C8  7C 08 03 A6 */	mtlr r0
/* 80C3D3CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3D3D0  4E 80 00 20 */	blr 
