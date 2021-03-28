lbl_801AFA00:
/* 801AFA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AFA04  7C 08 02 A6 */	mflr r0
/* 801AFA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AFA0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AFA10  93 C1 00 08 */	stw r30, 8(r1)
/* 801AFA14  7C 7F 1B 78 */	mr r31, r3
/* 801AFA18  7C 9E 23 78 */	mr r30, r4
/* 801AFA1C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801AFA20  40 82 00 18 */	bne lbl_801AFA38
/* 801AFA24  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801AFA28  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801AFA2C  88 03 0A 32 */	lbz r0, 0xa32(r3)
/* 801AFA30  28 00 00 00 */	cmplwi r0, 0
/* 801AFA34  41 82 00 5C */	beq lbl_801AFA90
lbl_801AFA38:
/* 801AFA38  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801AFA3C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801AFA40  C0 03 0A 24 */	lfs f0, 0xa24(r3)
/* 801AFA44  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 801AFA48  80 63 00 04 */	lwz r3, 4(r3)
/* 801AFA4C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801AFA50  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801AFA54  81 83 00 00 */	lwz r12, 0(r3)
/* 801AFA58  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801AFA5C  7D 89 03 A6 */	mtctr r12
/* 801AFA60  4E 80 04 21 */	bctrl 
/* 801AFA64  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801AFA68  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801AFA6C  C0 03 0A 28 */	lfs f0, 0xa28(r3)
/* 801AFA70  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 801AFA74  80 63 00 04 */	lwz r3, 4(r3)
/* 801AFA78  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801AFA7C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801AFA80  81 83 00 00 */	lwz r12, 0(r3)
/* 801AFA84  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801AFA88  7D 89 03 A6 */	mtctr r12
/* 801AFA8C  4E 80 04 21 */	bctrl 
lbl_801AFA90:
/* 801AFA90  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801AFA94  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801AFA98  88 03 06 B4 */	lbz r0, 0x6b4(r3)
/* 801AFA9C  28 00 00 00 */	cmplwi r0, 0
/* 801AFAA0  40 82 00 0C */	bne lbl_801AFAAC
/* 801AFAA4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801AFAA8  41 82 01 34 */	beq lbl_801AFBDC
lbl_801AFAAC:
/* 801AFAAC  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 801AFAB0  28 03 00 00 */	cmplwi r3, 0
/* 801AFAB4  41 82 00 44 */	beq lbl_801AFAF8
/* 801AFAB8  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801AFABC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801AFAC0  C0 24 06 60 */	lfs f1, 0x660(r4)
/* 801AFAC4  C0 44 06 64 */	lfs f2, 0x664(r4)
/* 801AFAC8  48 0A 4A E9 */	bl paneTrans__8CPaneMgrFff
/* 801AFACC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801AFAD0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801AFAD4  C0 03 06 68 */	lfs f0, 0x668(r3)
/* 801AFAD8  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 801AFADC  80 63 00 04 */	lwz r3, 4(r3)
/* 801AFAE0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801AFAE4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801AFAE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801AFAEC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801AFAF0  7D 89 03 A6 */	mtctr r12
/* 801AFAF4  4E 80 04 21 */	bctrl 
lbl_801AFAF8:
/* 801AFAF8  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 801AFAFC  28 03 00 00 */	cmplwi r3, 0
/* 801AFB00  41 82 00 44 */	beq lbl_801AFB44
/* 801AFB04  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801AFB08  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801AFB0C  C0 24 06 6C */	lfs f1, 0x66c(r4)
/* 801AFB10  C0 44 06 70 */	lfs f2, 0x670(r4)
/* 801AFB14  48 0A 4A 9D */	bl paneTrans__8CPaneMgrFff
/* 801AFB18  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801AFB1C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801AFB20  C0 03 06 74 */	lfs f0, 0x674(r3)
/* 801AFB24  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 801AFB28  80 63 00 04 */	lwz r3, 4(r3)
/* 801AFB2C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801AFB30  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801AFB34  81 83 00 00 */	lwz r12, 0(r3)
/* 801AFB38  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801AFB3C  7D 89 03 A6 */	mtctr r12
/* 801AFB40  4E 80 04 21 */	bctrl 
lbl_801AFB44:
/* 801AFB44  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801AFB48  28 03 00 00 */	cmplwi r3, 0
/* 801AFB4C  41 82 00 44 */	beq lbl_801AFB90
/* 801AFB50  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801AFB54  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801AFB58  C0 24 06 78 */	lfs f1, 0x678(r4)
/* 801AFB5C  C0 44 06 7C */	lfs f2, 0x67c(r4)
/* 801AFB60  48 0A 4A 51 */	bl paneTrans__8CPaneMgrFff
/* 801AFB64  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801AFB68  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801AFB6C  C0 03 06 80 */	lfs f0, 0x680(r3)
/* 801AFB70  80 7F 00 9C */	lwz r3, 0x9c(r31)
/* 801AFB74  80 63 00 04 */	lwz r3, 4(r3)
/* 801AFB78  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801AFB7C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801AFB80  81 83 00 00 */	lwz r12, 0(r3)
/* 801AFB84  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801AFB88  7D 89 03 A6 */	mtctr r12
/* 801AFB8C  4E 80 04 21 */	bctrl 
lbl_801AFB90:
/* 801AFB90  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 801AFB94  28 03 00 00 */	cmplwi r3, 0
/* 801AFB98  41 82 00 44 */	beq lbl_801AFBDC
/* 801AFB9C  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801AFBA0  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801AFBA4  C0 24 06 84 */	lfs f1, 0x684(r4)
/* 801AFBA8  C0 44 06 88 */	lfs f2, 0x688(r4)
/* 801AFBAC  48 0A 4A 05 */	bl paneTrans__8CPaneMgrFff
/* 801AFBB0  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801AFBB4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801AFBB8  C0 03 06 8C */	lfs f0, 0x68c(r3)
/* 801AFBBC  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 801AFBC0  80 63 00 04 */	lwz r3, 4(r3)
/* 801AFBC4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801AFBC8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801AFBCC  81 83 00 00 */	lwz r12, 0(r3)
/* 801AFBD0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801AFBD4  7D 89 03 A6 */	mtctr r12
/* 801AFBD8  4E 80 04 21 */	bctrl 
lbl_801AFBDC:
/* 801AFBDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AFBE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801AFBE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AFBE8  7C 08 03 A6 */	mtlr r0
/* 801AFBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 801AFBF0  4E 80 00 20 */	blr 
