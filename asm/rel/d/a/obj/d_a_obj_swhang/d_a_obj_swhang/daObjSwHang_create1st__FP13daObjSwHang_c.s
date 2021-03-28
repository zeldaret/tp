lbl_80CFCE0C:
/* 80CFCE0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFCE10  7C 08 02 A6 */	mflr r0
/* 80CFCE14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFCE18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFCE1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CFCE20  7C 7F 1B 78 */	mr r31, r3
/* 80CFCE24  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CFCE28  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CFCE2C  40 82 00 D4 */	bne lbl_80CFCF00
/* 80CFCE30  7F E0 FB 79 */	or. r0, r31, r31
/* 80CFCE34  41 82 00 C0 */	beq lbl_80CFCEF4
/* 80CFCE38  7C 1E 03 78 */	mr r30, r0
/* 80CFCE3C  4B 37 B7 E8 */	b __ct__16dBgS_MoveBgActorFv
/* 80CFCE40  3C 60 80 D0 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80CFCE44  38 03 D4 6C */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80CFCE48  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80CFCE4C  93 DE 05 A4 */	stw r30, 0x5a4(r30)
/* 80CFCE50  38 00 00 00 */	li r0, 0
/* 80CFCE54  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80CFCE58  3C 60 80 D0 */	lis r3, __vt__13daObjSwHang_c@ha
/* 80CFCE5C  38 63 D4 84 */	addi r3, r3, __vt__13daObjSwHang_c@l
/* 80CFCE60  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80CFCE64  38 03 00 28 */	addi r0, r3, 0x28
/* 80CFCE68  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80CFCE6C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CFCE70  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CFCE74  90 1E 05 D4 */	stw r0, 0x5d4(r30)
/* 80CFCE78  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80CFCE7C  4B 38 68 E4 */	b __ct__10dCcD_GSttsFv
/* 80CFCE80  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CFCE84  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CFCE88  90 7E 05 D4 */	stw r3, 0x5d4(r30)
/* 80CFCE8C  38 03 00 20 */	addi r0, r3, 0x20
/* 80CFCE90  90 1E 05 D8 */	stw r0, 0x5d8(r30)
/* 80CFCE94  3B DE 05 F8 */	addi r30, r30, 0x5f8
/* 80CFCE98  7F C3 F3 78 */	mr r3, r30
/* 80CFCE9C  4B 38 6B 8C */	b __ct__12dCcD_GObjInfFv
/* 80CFCEA0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CFCEA4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CFCEA8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CFCEAC  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha
/* 80CFCEB0  38 03 D4 60 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CFCEB4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80CFCEB8  3C 60 80 D0 */	lis r3, __vt__8cM3dGSph@ha
/* 80CFCEBC  38 03 D4 54 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80CFCEC0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CFCEC4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80CFCEC8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80CFCECC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CFCED0  38 03 00 58 */	addi r0, r3, 0x58
/* 80CFCED4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CFCED8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80CFCEDC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80CFCEE0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CFCEE4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CFCEE8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CFCEEC  38 03 00 84 */	addi r0, r3, 0x84
/* 80CFCEF0  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80CFCEF4:
/* 80CFCEF4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CFCEF8  60 00 00 08 */	ori r0, r0, 8
/* 80CFCEFC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CFCF00:
/* 80CFCF00  7F E3 FB 78 */	mr r3, r31
/* 80CFCF04  4B FF EE CD */	bl create1st__13daObjSwHang_cFv
/* 80CFCF08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFCF0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CFCF10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFCF14  7C 08 03 A6 */	mtlr r0
/* 80CFCF18  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFCF1C  4E 80 00 20 */	blr 
