lbl_80C16758:
/* 80C16758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1675C  7C 08 02 A6 */	mflr r0
/* 80C16760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16768  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1676C  7C 7F 1B 78 */	mr r31, r3
/* 80C16770  4B 40 23 F4 */	b __ct__10fopAc_ac_cFv
/* 80C16774  3C 60 80 C1 */	lis r3, __vt__14daObjHBarrel_c@ha
/* 80C16778  38 03 73 D0 */	addi r0, r3, __vt__14daObjHBarrel_c@l
/* 80C1677C  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80C16780  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C16784  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C16788  90 1F 05 90 */	stw r0, 0x590(r31)
/* 80C1678C  38 7F 05 94 */	addi r3, r31, 0x594
/* 80C16790  4B 46 CF D0 */	b __ct__10dCcD_GSttsFv
/* 80C16794  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C16798  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C1679C  90 7F 05 90 */	stw r3, 0x590(r31)
/* 80C167A0  38 03 00 20 */	addi r0, r3, 0x20
/* 80C167A4  90 1F 05 94 */	stw r0, 0x594(r31)
/* 80C167A8  3B DF 05 B4 */	addi r30, r31, 0x5b4
/* 80C167AC  7F C3 F3 78 */	mr r3, r30
/* 80C167B0  4B 46 D2 78 */	b __ct__12dCcD_GObjInfFv
/* 80C167B4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C167B8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C167BC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C167C0  3C 60 80 C1 */	lis r3, __vt__8cM3dGAab@ha
/* 80C167C4  38 03 74 00 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C167C8  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80C167CC  3C 60 80 C1 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C167D0  38 03 73 F4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C167D4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C167D8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C167DC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C167E0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C167E4  38 03 00 58 */	addi r0, r3, 0x58
/* 80C167E8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C167EC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C167F0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C167F4  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C167F8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C167FC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C16800  38 03 00 84 */	addi r0, r3, 0x84
/* 80C16804  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C16808  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C1680C  4B 6A 80 38 */	b __ct__16Z2SoundObjSimpleFv
/* 80C16810  7F E3 FB 78 */	mr r3, r31
/* 80C16814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C16818  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1681C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16820  7C 08 03 A6 */	mtlr r0
/* 80C16824  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16828  4E 80 00 20 */	blr 
