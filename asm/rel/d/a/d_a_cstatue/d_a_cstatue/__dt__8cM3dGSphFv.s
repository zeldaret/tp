lbl_80663CC0:
/* 80663CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80663CC4  7C 08 02 A6 */	mflr r0
/* 80663CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80663CCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80663CD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80663CD4  41 82 00 1C */	beq lbl_80663CF0
/* 80663CD8  3C A0 80 66 */	lis r5, __vt__8cM3dGSph@ha
/* 80663CDC  38 05 7B 50 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80663CE0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80663CE4  7C 80 07 35 */	extsh. r0, r4
/* 80663CE8  40 81 00 08 */	ble lbl_80663CF0
/* 80663CEC  4B C6 B0 50 */	b __dl__FPv
lbl_80663CF0:
/* 80663CF0  7F E3 FB 78 */	mr r3, r31
/* 80663CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80663CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80663CFC  7C 08 03 A6 */	mtlr r0
/* 80663D00  38 21 00 10 */	addi r1, r1, 0x10
/* 80663D04  4E 80 00 20 */	blr 
