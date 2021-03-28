lbl_8079CDD4:
/* 8079CDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079CDD8  7C 08 02 A6 */	mflr r0
/* 8079CDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079CDE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079CDE4  93 C1 00 08 */	stw r30, 8(r1)
/* 8079CDE8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8079CDEC  7C 9F 23 78 */	mr r31, r4
/* 8079CDF0  41 82 00 38 */	beq lbl_8079CE28
/* 8079CDF4  3C 60 80 7A */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8079CDF8  38 03 DA BC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8079CDFC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8079CE00  38 7E 00 14 */	addi r3, r30, 0x14
/* 8079CE04  38 80 FF FF */	li r4, -1
/* 8079CE08  4B AD 21 10 */	b __dt__8cM3dGCirFv
/* 8079CE0C  7F C3 F3 78 */	mr r3, r30
/* 8079CE10  38 80 00 00 */	li r4, 0
/* 8079CE14  4B AC B2 9C */	b __dt__13cBgS_PolyInfoFv
/* 8079CE18  7F E0 07 35 */	extsh. r0, r31
/* 8079CE1C  40 81 00 0C */	ble lbl_8079CE28
/* 8079CE20  7F C3 F3 78 */	mr r3, r30
/* 8079CE24  4B B3 1F 18 */	b __dl__FPv
lbl_8079CE28:
/* 8079CE28  7F C3 F3 78 */	mr r3, r30
/* 8079CE2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079CE30  83 C1 00 08 */	lwz r30, 8(r1)
/* 8079CE34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079CE38  7C 08 03 A6 */	mtlr r0
/* 8079CE3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8079CE40  4E 80 00 20 */	blr 
