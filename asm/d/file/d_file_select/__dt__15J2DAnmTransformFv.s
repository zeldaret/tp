lbl_80184370:
/* 80184370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80184374  7C 08 02 A6 */	mflr r0
/* 80184378  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018437C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80184380  7C 7F 1B 79 */	or. r31, r3, r3
/* 80184384  41 82 00 30 */	beq lbl_801843B4
/* 80184388  3C 60 80 3C */	lis r3, __vt__15J2DAnmTransform@ha
/* 8018438C  38 03 B3 B8 */	addi r0, r3, __vt__15J2DAnmTransform@l
/* 80184390  90 1F 00 00 */	stw r0, 0(r31)
/* 80184394  41 82 00 10 */	beq lbl_801843A4
/* 80184398  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha
/* 8018439C  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l
/* 801843A0  90 1F 00 00 */	stw r0, 0(r31)
lbl_801843A4:
/* 801843A4  7C 80 07 35 */	extsh. r0, r4
/* 801843A8  40 81 00 0C */	ble lbl_801843B4
/* 801843AC  7F E3 FB 78 */	mr r3, r31
/* 801843B0  48 14 A9 8D */	bl __dl__FPv
lbl_801843B4:
/* 801843B4  7F E3 FB 78 */	mr r3, r31
/* 801843B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801843BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801843C0  7C 08 03 A6 */	mtlr r0
/* 801843C4  38 21 00 10 */	addi r1, r1, 0x10
/* 801843C8  4E 80 00 20 */	blr 
