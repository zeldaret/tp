lbl_80078C78:
/* 80078C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078C7C  7C 08 02 A6 */	mflr r0
/* 80078C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078C84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078C88  93 C1 00 08 */	stw r30, 8(r1)
/* 80078C8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80078C90  7C 9F 23 78 */	mr r31, r4
/* 80078C94  41 82 00 5C */	beq lbl_80078CF0
/* 80078C98  3C 60 80 3B */	lis r3, __vt__14dBgS_SplGrpChk@ha
/* 80078C9C  38 63 BA 08 */	addi r3, r3, __vt__14dBgS_SplGrpChk@l
/* 80078CA0  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80078CA4  38 03 00 0C */	addi r0, r3, 0xc
/* 80078CA8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80078CAC  38 03 00 18 */	addi r0, r3, 0x18
/* 80078CB0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80078CB4  38 03 00 24 */	addi r0, r3, 0x24
/* 80078CB8  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80078CBC  38 7E 00 24 */	addi r3, r30, 0x24
/* 80078CC0  38 80 00 00 */	li r4, 0
/* 80078CC4  4B FF E8 25 */	bl __dt__8dBgS_ChkFv
/* 80078CC8  38 7E 00 10 */	addi r3, r30, 0x10
/* 80078CCC  38 80 00 00 */	li r4, 0
/* 80078CD0  48 1E EE A1 */	bl __dt__8cBgS_ChkFv
/* 80078CD4  7F C3 F3 78 */	mr r3, r30
/* 80078CD8  38 80 00 00 */	li r4, 0
/* 80078CDC  48 1E F3 D5 */	bl __dt__13cBgS_PolyInfoFv
/* 80078CE0  7F E0 07 35 */	extsh. r0, r31
/* 80078CE4  40 81 00 0C */	ble lbl_80078CF0
/* 80078CE8  7F C3 F3 78 */	mr r3, r30
/* 80078CEC  48 25 60 51 */	bl __dl__FPv
lbl_80078CF0:
/* 80078CF0  7F C3 F3 78 */	mr r3, r30
/* 80078CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078CF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80078CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078D00  7C 08 03 A6 */	mtlr r0
/* 80078D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80078D08  4E 80 00 20 */	blr 
