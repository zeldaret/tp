lbl_80B9F0FC:
/* 80B9F0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9F100  7C 08 02 A6 */	mflr r0
/* 80B9F104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9F108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9F10C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9F110  41 82 00 1C */	beq lbl_80B9F12C
/* 80B9F114  3C A0 80 BA */	lis r5, __vt__8cM3dGAab@ha /* 0x80B9F9A0@ha */
/* 80B9F118  38 05 F9 A0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B9F9A0@l */
/* 80B9F11C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B9F120  7C 80 07 35 */	extsh. r0, r4
/* 80B9F124  40 81 00 08 */	ble lbl_80B9F12C
/* 80B9F128  4B 72 FC 15 */	bl __dl__FPv
lbl_80B9F12C:
/* 80B9F12C  7F E3 FB 78 */	mr r3, r31
/* 80B9F130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9F134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9F138  7C 08 03 A6 */	mtlr r0
/* 80B9F13C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9F140  4E 80 00 20 */	blr 
