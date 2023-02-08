lbl_80D1BFB0:
/* 80D1BFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1BFB4  7C 08 02 A6 */	mflr r0
/* 80D1BFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1BFBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1BFC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D1BFC4  7C 7F 1B 78 */	mr r31, r3
/* 80D1BFC8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D1BFCC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D1BFD0  40 82 00 A4 */	bne lbl_80D1C074
/* 80D1BFD4  7F E0 FB 79 */	or. r0, r31, r31
/* 80D1BFD8  41 82 00 90 */	beq lbl_80D1C068
/* 80D1BFDC  7C 1E 03 78 */	mr r30, r0
/* 80D1BFE0  4B 2F CB 85 */	bl __ct__10fopAc_ac_cFv
/* 80D1BFE4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D1BFE8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D1BFEC  90 1E 05 80 */	stw r0, 0x580(r30)
/* 80D1BFF0  38 7E 05 84 */	addi r3, r30, 0x584
/* 80D1BFF4  4B 36 77 6D */	bl __ct__10dCcD_GSttsFv
/* 80D1BFF8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D1BFFC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D1C000  90 7E 05 80 */	stw r3, 0x580(r30)
/* 80D1C004  38 03 00 20 */	addi r0, r3, 0x20
/* 80D1C008  90 1E 05 84 */	stw r0, 0x584(r30)
/* 80D1C00C  3B DE 05 A4 */	addi r30, r30, 0x5a4
/* 80D1C010  7F C3 F3 78 */	mr r3, r30
/* 80D1C014  4B 36 7A 15 */	bl __ct__12dCcD_GObjInfFv
/* 80D1C018  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D1C01C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D1C020  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D1C024  3C 60 80 D2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D1C450@ha */
/* 80D1C028  38 03 C4 50 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D1C450@l */
/* 80D1C02C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80D1C030  38 7E 01 24 */	addi r3, r30, 0x124
/* 80D1C034  4B 55 2F 55 */	bl __ct__8cM3dGCpsFv
/* 80D1C038  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 80D1C03C  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 80D1C040  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D1C044  38 03 00 58 */	addi r0, r3, 0x58
/* 80D1C048  90 1E 01 3C */	stw r0, 0x13c(r30)
/* 80D1C04C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 80D1C050  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 80D1C054  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D1C058  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D1C05C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D1C060  38 03 00 84 */	addi r0, r3, 0x84
/* 80D1C064  90 1E 01 3C */	stw r0, 0x13c(r30)
lbl_80D1C068:
/* 80D1C068  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D1C06C  60 00 00 08 */	ori r0, r0, 8
/* 80D1C070  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D1C074:
/* 80D1C074  7F E3 FB 78 */	mr r3, r31
/* 80D1C078  4B FF FD F5 */	bl Create__11daObjTrnd_cFv
/* 80D1C07C  2C 03 00 00 */	cmpwi r3, 0
/* 80D1C080  40 82 00 0C */	bne lbl_80D1C08C
/* 80D1C084  38 60 00 05 */	li r3, 5
/* 80D1C088  48 00 00 08 */	b lbl_80D1C090
lbl_80D1C08C:
/* 80D1C08C  38 60 00 04 */	li r3, 4
lbl_80D1C090:
/* 80D1C090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1C094  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D1C098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1C09C  7C 08 03 A6 */	mtlr r0
/* 80D1C0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1C0A4  4E 80 00 20 */	blr 
