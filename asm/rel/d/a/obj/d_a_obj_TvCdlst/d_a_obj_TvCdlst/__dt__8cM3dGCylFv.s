lbl_80B9F0B4:
/* 80B9F0B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9F0B8  7C 08 02 A6 */	mflr r0
/* 80B9F0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9F0C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9F0C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9F0C8  41 82 00 1C */	beq lbl_80B9F0E4
/* 80B9F0CC  3C A0 80 BA */	lis r5, __vt__8cM3dGCyl@ha
/* 80B9F0D0  38 05 F9 94 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80B9F0D4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B9F0D8  7C 80 07 35 */	extsh. r0, r4
/* 80B9F0DC  40 81 00 08 */	ble lbl_80B9F0E4
/* 80B9F0E0  4B 72 FC 5C */	b __dl__FPv
lbl_80B9F0E4:
/* 80B9F0E4  7F E3 FB 78 */	mr r3, r31
/* 80B9F0E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9F0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9F0F0  7C 08 03 A6 */	mtlr r0
/* 80B9F0F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9F0F8  4E 80 00 20 */	blr 
