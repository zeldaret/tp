lbl_807E6E44:
/* 807E6E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E6E48  7C 08 02 A6 */	mflr r0
/* 807E6E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E6E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E6E54  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E6E58  41 82 00 1C */	beq lbl_807E6E74
/* 807E6E5C  3C A0 80 7E */	lis r5, __vt__12daE_WS_HIO_c@ha
/* 807E6E60  38 05 75 A0 */	addi r0, r5, __vt__12daE_WS_HIO_c@l
/* 807E6E64  90 1F 00 00 */	stw r0, 0(r31)
/* 807E6E68  7C 80 07 35 */	extsh. r0, r4
/* 807E6E6C  40 81 00 08 */	ble lbl_807E6E74
/* 807E6E70  4B AE 7E CC */	b __dl__FPv
lbl_807E6E74:
/* 807E6E74  7F E3 FB 78 */	mr r3, r31
/* 807E6E78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E6E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E6E80  7C 08 03 A6 */	mtlr r0
/* 807E6E84  38 21 00 10 */	addi r1, r1, 0x10
/* 807E6E88  4E 80 00 20 */	blr 
