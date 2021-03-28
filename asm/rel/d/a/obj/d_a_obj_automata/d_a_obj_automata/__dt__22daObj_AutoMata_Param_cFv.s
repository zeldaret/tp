lbl_80BA6BA4:
/* 80BA6BA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA6BA8  7C 08 02 A6 */	mflr r0
/* 80BA6BAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA6BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA6BB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA6BB8  41 82 00 1C */	beq lbl_80BA6BD4
/* 80BA6BBC  3C A0 80 BA */	lis r5, __vt__22daObj_AutoMata_Param_c@ha
/* 80BA6BC0  38 05 6E 38 */	addi r0, r5, __vt__22daObj_AutoMata_Param_c@l
/* 80BA6BC4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA6BC8  7C 80 07 35 */	extsh. r0, r4
/* 80BA6BCC  40 81 00 08 */	ble lbl_80BA6BD4
/* 80BA6BD0  4B 72 81 6C */	b __dl__FPv
lbl_80BA6BD4:
/* 80BA6BD4  7F E3 FB 78 */	mr r3, r31
/* 80BA6BD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA6BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA6BE0  7C 08 03 A6 */	mtlr r0
/* 80BA6BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA6BE8  4E 80 00 20 */	blr 
