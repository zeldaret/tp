lbl_80D1CC80:
/* 80D1CC80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1CC84  7C 08 02 A6 */	mflr r0
/* 80D1CC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1CC8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1CC90  93 C1 00 08 */	stw r30, 8(r1)
/* 80D1CC94  7C 7F 1B 78 */	mr r31, r3
/* 80D1CC98  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D1CC9C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D1CCA0  40 82 00 A4 */	bne lbl_80D1CD44
/* 80D1CCA4  7F E0 FB 79 */	or. r0, r31, r31
/* 80D1CCA8  41 82 00 90 */	beq lbl_80D1CD38
/* 80D1CCAC  7C 1E 03 78 */	mr r30, r0
/* 80D1CCB0  4B 2F BE B4 */	b __ct__10fopAc_ac_cFv
/* 80D1CCB4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D1CCB8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D1CCBC  90 1E 05 80 */	stw r0, 0x580(r30)
/* 80D1CCC0  38 7E 05 84 */	addi r3, r30, 0x584
/* 80D1CCC4  4B 36 6A 9C */	b __ct__10dCcD_GSttsFv
/* 80D1CCC8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D1CCCC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D1CCD0  90 7E 05 80 */	stw r3, 0x580(r30)
/* 80D1CCD4  38 03 00 20 */	addi r0, r3, 0x20
/* 80D1CCD8  90 1E 05 84 */	stw r0, 0x584(r30)
/* 80D1CCDC  3B DE 05 A4 */	addi r30, r30, 0x5a4
/* 80D1CCE0  7F C3 F3 78 */	mr r3, r30
/* 80D1CCE4  4B 36 6D 44 */	b __ct__12dCcD_GObjInfFv
/* 80D1CCE8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D1CCEC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D1CCF0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D1CCF4  3C 60 80 D2 */	lis r3, __vt__8cM3dGAab@ha
/* 80D1CCF8  38 03 D4 F4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D1CCFC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80D1CD00  38 7E 01 24 */	addi r3, r30, 0x124
/* 80D1CD04  4B 55 22 84 */	b __ct__8cM3dGCpsFv
/* 80D1CD08  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80D1CD0C  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 80D1CD10  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D1CD14  38 03 00 58 */	addi r0, r3, 0x58
/* 80D1CD18  90 1E 01 3C */	stw r0, 0x13c(r30)
/* 80D1CD1C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha
/* 80D1CD20  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l
/* 80D1CD24  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D1CD28  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D1CD2C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D1CD30  38 03 00 84 */	addi r0, r3, 0x84
/* 80D1CD34  90 1E 01 3C */	stw r0, 0x13c(r30)
lbl_80D1CD38:
/* 80D1CD38  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D1CD3C  60 00 00 08 */	ori r0, r0, 8
/* 80D1CD40  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D1CD44:
/* 80D1CD44  7F E3 FB 78 */	mr r3, r31
/* 80D1CD48  4B FF FC 45 */	bl Create__12daObjTrnd2_cFv
/* 80D1CD4C  2C 03 00 00 */	cmpwi r3, 0
/* 80D1CD50  40 82 00 0C */	bne lbl_80D1CD5C
/* 80D1CD54  38 60 00 05 */	li r3, 5
/* 80D1CD58  48 00 00 08 */	b lbl_80D1CD60
lbl_80D1CD5C:
/* 80D1CD5C  38 60 00 04 */	li r3, 4
lbl_80D1CD60:
/* 80D1CD60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1CD64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D1CD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1CD6C  7C 08 03 A6 */	mtlr r0
/* 80D1CD70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1CD74  4E 80 00 20 */	blr 
