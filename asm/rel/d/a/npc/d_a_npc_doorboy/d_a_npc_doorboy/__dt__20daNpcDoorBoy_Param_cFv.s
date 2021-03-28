lbl_809AD93C:
/* 809AD93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AD940  7C 08 02 A6 */	mflr r0
/* 809AD944  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AD948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AD94C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AD950  41 82 00 1C */	beq lbl_809AD96C
/* 809AD954  3C A0 80 9B */	lis r5, __vt__20daNpcDoorBoy_Param_c@ha
/* 809AD958  38 05 DD 40 */	addi r0, r5, __vt__20daNpcDoorBoy_Param_c@l
/* 809AD95C  90 1F 00 00 */	stw r0, 0(r31)
/* 809AD960  7C 80 07 35 */	extsh. r0, r4
/* 809AD964  40 81 00 08 */	ble lbl_809AD96C
/* 809AD968  4B 92 13 D4 */	b __dl__FPv
lbl_809AD96C:
/* 809AD96C  7F E3 FB 78 */	mr r3, r31
/* 809AD970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AD974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AD978  7C 08 03 A6 */	mtlr r0
/* 809AD97C  38 21 00 10 */	addi r1, r1, 0x10
/* 809AD980  4E 80 00 20 */	blr 
