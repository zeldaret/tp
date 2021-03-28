lbl_804D14E4:
/* 804D14E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D14E8  7C 08 02 A6 */	mflr r0
/* 804D14EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D14F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D14F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D14F8  41 82 00 1C */	beq lbl_804D1514
/* 804D14FC  3C A0 80 4D */	lis r5, __vt__8cM3dGAab@ha
/* 804D1500  38 05 17 84 */	addi r0, r5, __vt__8cM3dGAab@l
/* 804D1504  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804D1508  7C 80 07 35 */	extsh. r0, r4
/* 804D150C  40 81 00 08 */	ble lbl_804D1514
/* 804D1510  4B DF D8 2C */	b __dl__FPv
lbl_804D1514:
/* 804D1514  7F E3 FB 78 */	mr r3, r31
/* 804D1518  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D151C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D1520  7C 08 03 A6 */	mtlr r0
/* 804D1524  38 21 00 10 */	addi r1, r1, 0x10
/* 804D1528  4E 80 00 20 */	blr 
