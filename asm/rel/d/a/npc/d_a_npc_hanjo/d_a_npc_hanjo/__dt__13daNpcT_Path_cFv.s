lbl_809FF2A0:
/* 809FF2A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FF2A4  7C 08 02 A6 */	mflr r0
/* 809FF2A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FF2AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FF2B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809FF2B4  41 82 00 1C */	beq lbl_809FF2D0
/* 809FF2B8  3C A0 80 A0 */	lis r5, __vt__13daNpcT_Path_c@ha
/* 809FF2BC  38 05 11 A0 */	addi r0, r5, __vt__13daNpcT_Path_c@l
/* 809FF2C0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 809FF2C4  7C 80 07 35 */	extsh. r0, r4
/* 809FF2C8  40 81 00 08 */	ble lbl_809FF2D0
/* 809FF2CC  4B 8C FA 70 */	b __dl__FPv
lbl_809FF2D0:
/* 809FF2D0  7F E3 FB 78 */	mr r3, r31
/* 809FF2D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FF2D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FF2DC  7C 08 03 A6 */	mtlr r0
/* 809FF2E0  38 21 00 10 */	addi r1, r1, 0x10
/* 809FF2E4  4E 80 00 20 */	blr 
