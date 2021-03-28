lbl_80D26938:
/* 80D26938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2693C  7C 08 02 A6 */	mflr r0
/* 80D26940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D26944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D26948  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2694C  41 82 00 30 */	beq lbl_80D2697C
/* 80D26950  3C 60 80 D2 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D26954  38 03 6E 2C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D26958  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2695C  41 82 00 10 */	beq lbl_80D2696C
/* 80D26960  3C 60 80 D2 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D26964  38 03 6E 20 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D26968  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D2696C:
/* 80D2696C  7C 80 07 35 */	extsh. r0, r4
/* 80D26970  40 81 00 0C */	ble lbl_80D2697C
/* 80D26974  7F E3 FB 78 */	mr r3, r31
/* 80D26978  4B 5A 83 C4 */	b __dl__FPv
lbl_80D2697C:
/* 80D2697C  7F E3 FB 78 */	mr r3, r31
/* 80D26980  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D26984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D26988  7C 08 03 A6 */	mtlr r0
/* 80D2698C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D26990  4E 80 00 20 */	blr 
