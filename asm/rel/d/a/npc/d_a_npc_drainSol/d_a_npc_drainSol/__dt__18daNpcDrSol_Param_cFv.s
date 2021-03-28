lbl_809AF938:
/* 809AF938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AF93C  7C 08 02 A6 */	mflr r0
/* 809AF940  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AF944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AF948  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AF94C  41 82 00 1C */	beq lbl_809AF968
/* 809AF950  3C A0 80 9B */	lis r5, __vt__18daNpcDrSol_Param_c@ha
/* 809AF954  38 05 FC 28 */	addi r0, r5, __vt__18daNpcDrSol_Param_c@l
/* 809AF958  90 1F 00 00 */	stw r0, 0(r31)
/* 809AF95C  7C 80 07 35 */	extsh. r0, r4
/* 809AF960  40 81 00 08 */	ble lbl_809AF968
/* 809AF964  4B 91 F3 D8 */	b __dl__FPv
lbl_809AF968:
/* 809AF968  7F E3 FB 78 */	mr r3, r31
/* 809AF96C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AF970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AF974  7C 08 03 A6 */	mtlr r0
/* 809AF978  38 21 00 10 */	addi r1, r1, 0x10
/* 809AF97C  4E 80 00 20 */	blr 
