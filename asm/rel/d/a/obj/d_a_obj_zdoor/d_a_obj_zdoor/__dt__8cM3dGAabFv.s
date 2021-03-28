lbl_80D3FF60:
/* 80D3FF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3FF64  7C 08 02 A6 */	mflr r0
/* 80D3FF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3FF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3FF70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3FF74  41 82 00 1C */	beq lbl_80D3FF90
/* 80D3FF78  3C A0 80 D4 */	lis r5, __vt__8cM3dGAab@ha
/* 80D3FF7C  38 05 04 18 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D3FF80  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D3FF84  7C 80 07 35 */	extsh. r0, r4
/* 80D3FF88  40 81 00 08 */	ble lbl_80D3FF90
/* 80D3FF8C  4B 58 ED B0 */	b __dl__FPv
lbl_80D3FF90:
/* 80D3FF90  7F E3 FB 78 */	mr r3, r31
/* 80D3FF94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3FF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3FF9C  7C 08 03 A6 */	mtlr r0
/* 80D3FFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3FFA4  4E 80 00 20 */	blr 
