lbl_809E4298:
/* 809E4298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E429C  7C 08 02 A6 */	mflr r0
/* 809E42A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E42A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E42A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E42AC  41 82 00 1C */	beq lbl_809E42C8
/* 809E42B0  3C A0 80 9F */	lis r5, __vt__8cM3dGAab@ha
/* 809E42B4  38 05 82 0C */	addi r0, r5, __vt__8cM3dGAab@l
/* 809E42B8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809E42BC  7C 80 07 35 */	extsh. r0, r4
/* 809E42C0  40 81 00 08 */	ble lbl_809E42C8
/* 809E42C4  4B 8E AA 78 */	b __dl__FPv
lbl_809E42C8:
/* 809E42C8  7F E3 FB 78 */	mr r3, r31
/* 809E42CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E42D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E42D4  7C 08 03 A6 */	mtlr r0
/* 809E42D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809E42DC  4E 80 00 20 */	blr 
