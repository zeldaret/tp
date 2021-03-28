lbl_8061D868:
/* 8061D868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061D86C  7C 08 02 A6 */	mflr r0
/* 8061D870  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061D874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061D878  7C 7F 1B 79 */	or. r31, r3, r3
/* 8061D87C  41 82 00 1C */	beq lbl_8061D898
/* 8061D880  3C A0 80 62 */	lis r5, __vt__8cM3dGSph@ha
/* 8061D884  38 05 DB 48 */	addi r0, r5, __vt__8cM3dGSph@l
/* 8061D888  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8061D88C  7C 80 07 35 */	extsh. r0, r4
/* 8061D890  40 81 00 08 */	ble lbl_8061D898
/* 8061D894  4B CB 14 A8 */	b __dl__FPv
lbl_8061D898:
/* 8061D898  7F E3 FB 78 */	mr r3, r31
/* 8061D89C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061D8A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061D8A4  7C 08 03 A6 */	mtlr r0
/* 8061D8A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8061D8AC  4E 80 00 20 */	blr 
