lbl_8053D868:
/* 8053D868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D86C  7C 08 02 A6 */	mflr r0
/* 8053D870  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053D878  7C 7F 1B 79 */	or. r31, r3, r3
/* 8053D87C  41 82 00 1C */	beq lbl_8053D898
/* 8053D880  3C A0 80 54 */	lis r5, __vt__8cM3dGAab@ha
/* 8053D884  38 05 FD 80 */	addi r0, r5, __vt__8cM3dGAab@l
/* 8053D888  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8053D88C  7C 80 07 35 */	extsh. r0, r4
/* 8053D890  40 81 00 08 */	ble lbl_8053D898
/* 8053D894  4B D9 14 A8 */	b __dl__FPv
lbl_8053D898:
/* 8053D898  7F E3 FB 78 */	mr r3, r31
/* 8053D89C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053D8A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D8A4  7C 08 03 A6 */	mtlr r0
/* 8053D8A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D8AC  4E 80 00 20 */	blr 
