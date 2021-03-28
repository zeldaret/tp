lbl_80517D40:
/* 80517D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517D44  7C 08 02 A6 */	mflr r0
/* 80517D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80517D50  93 C1 00 08 */	stw r30, 8(r1)
/* 80517D54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80517D58  7C 9F 23 78 */	mr r31, r4
/* 80517D5C  41 82 00 94 */	beq lbl_80517DF0
/* 80517D60  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80517D64  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80517D68  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80517D6C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80517D70  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80517D74  38 03 00 84 */	addi r0, r3, 0x84
/* 80517D78  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80517D7C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80517D80  41 82 00 54 */	beq lbl_80517DD4
/* 80517D84  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80517D88  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80517D8C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80517D90  38 03 00 58 */	addi r0, r3, 0x58
/* 80517D94  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80517D98  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80517D9C  41 82 00 10 */	beq lbl_80517DAC
/* 80517DA0  3C 60 80 52 */	lis r3, __vt__8cM3dGSph@ha
/* 80517DA4  38 03 90 BC */	addi r0, r3, __vt__8cM3dGSph@l
/* 80517DA8  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80517DAC:
/* 80517DAC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80517DB0  41 82 00 24 */	beq lbl_80517DD4
/* 80517DB4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80517DB8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80517DBC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80517DC0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80517DC4  41 82 00 10 */	beq lbl_80517DD4
/* 80517DC8  3C 60 80 52 */	lis r3, __vt__8cM3dGAab@ha
/* 80517DCC  38 03 90 C8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80517DD0  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80517DD4:
/* 80517DD4  7F C3 F3 78 */	mr r3, r30
/* 80517DD8  38 80 00 00 */	li r4, 0
/* 80517DDC  4B B6 C3 08 */	b __dt__12dCcD_GObjInfFv
/* 80517DE0  7F E0 07 35 */	extsh. r0, r31
/* 80517DE4  40 81 00 0C */	ble lbl_80517DF0
/* 80517DE8  7F C3 F3 78 */	mr r3, r30
/* 80517DEC  4B DB 6F 50 */	b __dl__FPv
lbl_80517DF0:
/* 80517DF0  7F C3 F3 78 */	mr r3, r30
/* 80517DF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80517DF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80517DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517E00  7C 08 03 A6 */	mtlr r0
/* 80517E04  38 21 00 10 */	addi r1, r1, 0x10
/* 80517E08  4E 80 00 20 */	blr 
