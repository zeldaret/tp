lbl_80AFD0E8:
/* 80AFD0E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFD0EC  7C 08 02 A6 */	mflr r0
/* 80AFD0F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFD0F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFD0F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AFD0FC  41 82 00 1C */	beq lbl_80AFD118
/* 80AFD100  3C A0 80 B0 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80AFD104  38 05 12 24 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80AFD108  90 1F 00 00 */	stw r0, 0(r31)
/* 80AFD10C  7C 80 07 35 */	extsh. r0, r4
/* 80AFD110  40 81 00 08 */	ble lbl_80AFD118
/* 80AFD114  4B 7D 1C 28 */	b __dl__FPv
lbl_80AFD118:
/* 80AFD118  7F E3 FB 78 */	mr r3, r31
/* 80AFD11C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFD120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFD124  7C 08 03 A6 */	mtlr r0
/* 80AFD128  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFD12C  4E 80 00 20 */	blr 
