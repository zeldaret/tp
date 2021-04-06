lbl_80D3F0F4:
/* 80D3F0F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F0F8  7C 08 02 A6 */	mflr r0
/* 80D3F0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3F104  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3F108  41 82 00 1C */	beq lbl_80D3F124
/* 80D3F10C  3C A0 80 D4 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D3F374@ha */
/* 80D3F110  38 05 F3 74 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D3F374@l */
/* 80D3F114  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D3F118  7C 80 07 35 */	extsh. r0, r4
/* 80D3F11C  40 81 00 08 */	ble lbl_80D3F124
/* 80D3F120  4B 58 FC 1D */	bl __dl__FPv
lbl_80D3F124:
/* 80D3F124  7F E3 FB 78 */	mr r3, r31
/* 80D3F128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3F12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F130  7C 08 03 A6 */	mtlr r0
/* 80D3F134  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F138  4E 80 00 20 */	blr 
