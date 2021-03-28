lbl_80D047D4:
/* 80D047D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D047D8  7C 08 02 A6 */	mflr r0
/* 80D047DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D047E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D047E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D047E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D047EC  7C 9F 23 78 */	mr r31, r4
/* 80D047F0  41 82 00 40 */	beq lbl_80D04830
/* 80D047F4  3C 80 80 D0 */	lis r4, __vt__11dBgS_WtrChk@ha
/* 80D047F8  38 84 4C E0 */	addi r4, r4, __vt__11dBgS_WtrChk@l
/* 80D047FC  90 9E 00 0C */	stw r4, 0xc(r30)
/* 80D04800  38 04 00 0C */	addi r0, r4, 0xc
/* 80D04804  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80D04808  38 04 00 18 */	addi r0, r4, 0x18
/* 80D0480C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D04810  38 04 00 24 */	addi r0, r4, 0x24
/* 80D04814  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80D04818  38 80 00 00 */	li r4, 0
/* 80D0481C  4B 37 44 5C */	b __dt__14dBgS_SplGrpChkFv
/* 80D04820  7F E0 07 35 */	extsh. r0, r31
/* 80D04824  40 81 00 0C */	ble lbl_80D04830
/* 80D04828  7F C3 F3 78 */	mr r3, r30
/* 80D0482C  4B 5C A5 10 */	b __dl__FPv
lbl_80D04830:
/* 80D04830  7F C3 F3 78 */	mr r3, r30
/* 80D04834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D04838  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0483C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04840  7C 08 03 A6 */	mtlr r0
/* 80D04844  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04848  4E 80 00 20 */	blr 
