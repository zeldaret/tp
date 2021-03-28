lbl_8061D718:
/* 8061D718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061D71C  7C 08 02 A6 */	mflr r0
/* 8061D720  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061D724  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061D728  93 C1 00 08 */	stw r30, 8(r1)
/* 8061D72C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8061D730  7C 9F 23 78 */	mr r31, r4
/* 8061D734  41 82 00 94 */	beq lbl_8061D7C8
/* 8061D738  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8061D73C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8061D740  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8061D744  38 03 00 2C */	addi r0, r3, 0x2c
/* 8061D748  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8061D74C  38 03 00 84 */	addi r0, r3, 0x84
/* 8061D750  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8061D754  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8061D758  41 82 00 54 */	beq lbl_8061D7AC
/* 8061D75C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8061D760  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8061D764  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8061D768  38 03 00 58 */	addi r0, r3, 0x58
/* 8061D76C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8061D770  34 1E 01 24 */	addic. r0, r30, 0x124
/* 8061D774  41 82 00 10 */	beq lbl_8061D784
/* 8061D778  3C 60 80 62 */	lis r3, __vt__8cM3dGSph@ha
/* 8061D77C  38 03 DB 48 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8061D780  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_8061D784:
/* 8061D784  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8061D788  41 82 00 24 */	beq lbl_8061D7AC
/* 8061D78C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8061D790  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8061D794  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8061D798  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8061D79C  41 82 00 10 */	beq lbl_8061D7AC
/* 8061D7A0  3C 60 80 62 */	lis r3, __vt__8cM3dGAab@ha
/* 8061D7A4  38 03 DB 3C */	addi r0, r3, __vt__8cM3dGAab@l
/* 8061D7A8  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_8061D7AC:
/* 8061D7AC  7F C3 F3 78 */	mr r3, r30
/* 8061D7B0  38 80 00 00 */	li r4, 0
/* 8061D7B4  4B A6 69 30 */	b __dt__12dCcD_GObjInfFv
/* 8061D7B8  7F E0 07 35 */	extsh. r0, r31
/* 8061D7BC  40 81 00 0C */	ble lbl_8061D7C8
/* 8061D7C0  7F C3 F3 78 */	mr r3, r30
/* 8061D7C4  4B CB 15 78 */	b __dl__FPv
lbl_8061D7C8:
/* 8061D7C8  7F C3 F3 78 */	mr r3, r30
/* 8061D7CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061D7D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8061D7D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061D7D8  7C 08 03 A6 */	mtlr r0
/* 8061D7DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8061D7E0  4E 80 00 20 */	blr 
