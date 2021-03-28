lbl_80C1768C:
/* 80C1768C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C17690  7C 08 02 A6 */	mflr r0
/* 80C17694  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17698  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1769C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C176A0  41 82 00 1C */	beq lbl_80C176BC
/* 80C176A4  3C A0 80 C2 */	lis r5, __vt__8cM3dGCyl@ha
/* 80C176A8  38 05 82 08 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80C176AC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C176B0  7C 80 07 35 */	extsh. r0, r4
/* 80C176B4  40 81 00 08 */	ble lbl_80C176BC
/* 80C176B8  4B 6B 76 84 */	b __dl__FPv
lbl_80C176BC:
/* 80C176BC  7F E3 FB 78 */	mr r3, r31
/* 80C176C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C176C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C176C8  7C 08 03 A6 */	mtlr r0
/* 80C176CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C176D0  4E 80 00 20 */	blr 
