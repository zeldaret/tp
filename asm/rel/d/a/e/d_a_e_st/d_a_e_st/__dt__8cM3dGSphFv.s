lbl_807A5FE4:
/* 807A5FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A5FE8  7C 08 02 A6 */	mflr r0
/* 807A5FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A5FF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A5FF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807A5FF8  41 82 00 1C */	beq lbl_807A6014
/* 807A5FFC  3C A0 80 7A */	lis r5, __vt__8cM3dGSph@ha
/* 807A6000  38 05 6D 08 */	addi r0, r5, __vt__8cM3dGSph@l
/* 807A6004  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807A6008  7C 80 07 35 */	extsh. r0, r4
/* 807A600C  40 81 00 08 */	ble lbl_807A6014
/* 807A6010  4B B2 8D 2C */	b __dl__FPv
lbl_807A6014:
/* 807A6014  7F E3 FB 78 */	mr r3, r31
/* 807A6018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A601C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A6020  7C 08 03 A6 */	mtlr r0
/* 807A6024  38 21 00 10 */	addi r1, r1, 0x10
/* 807A6028  4E 80 00 20 */	blr 
