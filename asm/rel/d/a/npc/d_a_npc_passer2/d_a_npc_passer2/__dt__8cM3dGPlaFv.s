lbl_80AA78C4:
/* 80AA78C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA78C8  7C 08 02 A6 */	mflr r0
/* 80AA78CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA78D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA78D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA78D8  41 82 00 1C */	beq lbl_80AA78F4
/* 80AA78DC  3C A0 80 AB */	lis r5, __vt__8cM3dGPla@ha
/* 80AA78E0  38 05 8B 80 */	addi r0, r5, __vt__8cM3dGPla@l
/* 80AA78E4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80AA78E8  7C 80 07 35 */	extsh. r0, r4
/* 80AA78EC  40 81 00 08 */	ble lbl_80AA78F4
/* 80AA78F0  4B 82 74 4C */	b __dl__FPv
lbl_80AA78F4:
/* 80AA78F4  7F E3 FB 78 */	mr r3, r31
/* 80AA78F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA78FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA7900  7C 08 03 A6 */	mtlr r0
/* 80AA7904  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA7908  4E 80 00 20 */	blr 
