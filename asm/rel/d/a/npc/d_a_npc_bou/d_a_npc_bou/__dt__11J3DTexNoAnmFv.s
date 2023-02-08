lbl_8096D6A4:
/* 8096D6A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096D6A8  7C 08 02 A6 */	mflr r0
/* 8096D6AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096D6B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096D6B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8096D6B8  41 82 00 1C */	beq lbl_8096D6D4
/* 8096D6BC  3C A0 80 97 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x809732C4@ha */
/* 8096D6C0  38 05 32 C4 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x809732C4@l */
/* 8096D6C4  90 1F 00 00 */	stw r0, 0(r31)
/* 8096D6C8  7C 80 07 35 */	extsh. r0, r4
/* 8096D6CC  40 81 00 08 */	ble lbl_8096D6D4
/* 8096D6D0  4B 96 16 6D */	bl __dl__FPv
lbl_8096D6D4:
/* 8096D6D4  7F E3 FB 78 */	mr r3, r31
/* 8096D6D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096D6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096D6E0  7C 08 03 A6 */	mtlr r0
/* 8096D6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8096D6E8  4E 80 00 20 */	blr 
