lbl_80A922BC:
/* 80A922BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A922C0  7C 08 02 A6 */	mflr r0
/* 80A922C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A922C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A922CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A922D0  41 82 00 1C */	beq lbl_80A922EC
/* 80A922D4  3C A0 80 A9 */	lis r5, __vt__8cM3dGAab@ha
/* 80A922D8  38 05 2A 2C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80A922DC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A922E0  7C 80 07 35 */	extsh. r0, r4
/* 80A922E4  40 81 00 08 */	ble lbl_80A922EC
/* 80A922E8  4B 83 CA 54 */	b __dl__FPv
lbl_80A922EC:
/* 80A922EC  7F E3 FB 78 */	mr r3, r31
/* 80A922F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A922F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A922F8  7C 08 03 A6 */	mtlr r0
/* 80A922FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A92300  4E 80 00 20 */	blr 
