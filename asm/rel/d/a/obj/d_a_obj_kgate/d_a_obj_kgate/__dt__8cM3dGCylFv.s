lbl_8058A96C:
/* 8058A96C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A970  7C 08 02 A6 */	mflr r0
/* 8058A974  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058A97C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058A980  41 82 00 1C */	beq lbl_8058A99C
/* 8058A984  3C A0 80 59 */	lis r5, __vt__8cM3dGCyl@ha
/* 8058A988  38 05 AE 70 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 8058A98C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8058A990  7C 80 07 35 */	extsh. r0, r4
/* 8058A994  40 81 00 08 */	ble lbl_8058A99C
/* 8058A998  4B D4 43 A4 */	b __dl__FPv
lbl_8058A99C:
/* 8058A99C  7F E3 FB 78 */	mr r3, r31
/* 8058A9A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058A9A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A9A8  7C 08 03 A6 */	mtlr r0
/* 8058A9AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A9B0  4E 80 00 20 */	blr 
