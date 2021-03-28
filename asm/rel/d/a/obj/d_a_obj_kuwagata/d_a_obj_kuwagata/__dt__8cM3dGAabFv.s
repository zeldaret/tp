lbl_80C4D398:
/* 80C4D398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4D39C  7C 08 02 A6 */	mflr r0
/* 80C4D3A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4D3A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4D3A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C4D3AC  41 82 00 1C */	beq lbl_80C4D3C8
/* 80C4D3B0  3C A0 80 C5 */	lis r5, __vt__8cM3dGAab@ha
/* 80C4D3B4  38 05 D6 1C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C4D3B8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C4D3BC  7C 80 07 35 */	extsh. r0, r4
/* 80C4D3C0  40 81 00 08 */	ble lbl_80C4D3C8
/* 80C4D3C4  4B 68 19 78 */	b __dl__FPv
lbl_80C4D3C8:
/* 80C4D3C8  7F E3 FB 78 */	mr r3, r31
/* 80C4D3CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4D3D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4D3D4  7C 08 03 A6 */	mtlr r0
/* 80C4D3D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4D3DC  4E 80 00 20 */	blr 
