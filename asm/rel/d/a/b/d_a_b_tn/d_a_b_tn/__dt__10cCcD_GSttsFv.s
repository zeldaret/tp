lbl_8062D944:
/* 8062D944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D948  7C 08 02 A6 */	mflr r0
/* 8062D94C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062D954  7C 7F 1B 79 */	or. r31, r3, r3
/* 8062D958  41 82 00 1C */	beq lbl_8062D974
/* 8062D95C  3C A0 80 63 */	lis r5, __vt__10cCcD_GStts@ha
/* 8062D960  38 05 EF 6C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 8062D964  90 1F 00 00 */	stw r0, 0(r31)
/* 8062D968  7C 80 07 35 */	extsh. r0, r4
/* 8062D96C  40 81 00 08 */	ble lbl_8062D974
/* 8062D970  4B CA 13 CC */	b __dl__FPv
lbl_8062D974:
/* 8062D974  7F E3 FB 78 */	mr r3, r31
/* 8062D978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062D97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D980  7C 08 03 A6 */	mtlr r0
/* 8062D984  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D988  4E 80 00 20 */	blr 
