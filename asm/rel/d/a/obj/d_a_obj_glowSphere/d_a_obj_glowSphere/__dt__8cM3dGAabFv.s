lbl_80BF9950:
/* 80BF9950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF9954  7C 08 02 A6 */	mflr r0
/* 80BF9958  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF995C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF9960  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF9964  41 82 00 1C */	beq lbl_80BF9980
/* 80BF9968  3C A0 80 C0 */	lis r5, __vt__8cM3dGAab@ha
/* 80BF996C  38 05 AB 40 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BF9970  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BF9974  7C 80 07 35 */	extsh. r0, r4
/* 80BF9978  40 81 00 08 */	ble lbl_80BF9980
/* 80BF997C  4B 6D 53 C0 */	b __dl__FPv
lbl_80BF9980:
/* 80BF9980  7F E3 FB 78 */	mr r3, r31
/* 80BF9984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF9988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF998C  7C 08 03 A6 */	mtlr r0
/* 80BF9990  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF9994  4E 80 00 20 */	blr 
