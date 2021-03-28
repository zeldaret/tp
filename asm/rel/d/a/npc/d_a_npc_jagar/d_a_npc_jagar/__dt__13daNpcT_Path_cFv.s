lbl_80A19470:
/* 80A19470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A19474  7C 08 02 A6 */	mflr r0
/* 80A19478  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1947C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A19480  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A19484  41 82 00 1C */	beq lbl_80A194A0
/* 80A19488  3C A0 80 A2 */	lis r5, __vt__13daNpcT_Path_c@ha
/* 80A1948C  38 05 AC FC */	addi r0, r5, __vt__13daNpcT_Path_c@l
/* 80A19490  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80A19494  7C 80 07 35 */	extsh. r0, r4
/* 80A19498  40 81 00 08 */	ble lbl_80A194A0
/* 80A1949C  4B 8B 58 A0 */	b __dl__FPv
lbl_80A194A0:
/* 80A194A0  7F E3 FB 78 */	mr r3, r31
/* 80A194A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A194A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A194AC  7C 08 03 A6 */	mtlr r0
/* 80A194B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A194B4  4E 80 00 20 */	blr 
