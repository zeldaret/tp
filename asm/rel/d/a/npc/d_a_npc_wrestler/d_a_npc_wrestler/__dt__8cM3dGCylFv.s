lbl_80B2F410:
/* 80B2F410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2F414  7C 08 02 A6 */	mflr r0
/* 80B2F418  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2F41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2F420  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2F424  41 82 00 1C */	beq lbl_80B2F440
/* 80B2F428  3C A0 80 B4 */	lis r5, __vt__8cM3dGCyl@ha
/* 80B2F42C  38 05 2D DC */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80B2F430  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B2F434  7C 80 07 35 */	extsh. r0, r4
/* 80B2F438  40 81 00 08 */	ble lbl_80B2F440
/* 80B2F43C  4B 79 F9 00 */	b __dl__FPv
lbl_80B2F440:
/* 80B2F440  7F E3 FB 78 */	mr r3, r31
/* 80B2F444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2F448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2F44C  7C 08 03 A6 */	mtlr r0
/* 80B2F450  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2F454  4E 80 00 20 */	blr 
