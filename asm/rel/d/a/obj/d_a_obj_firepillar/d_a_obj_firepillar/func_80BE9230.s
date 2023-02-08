lbl_80BE9230:
/* 80BE9230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE9234  7C 08 02 A6 */	mflr r0
/* 80BE9238  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE923C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE9240  4B 77 8F 9D */	bl _savegpr_29
/* 80BE9244  7C 7F 1B 78 */	mr r31, r3
/* 80BE9248  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BE924C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BE9250  40 82 00 DC */	bne lbl_80BE932C
/* 80BE9254  7F E0 FB 79 */	or. r0, r31, r31
/* 80BE9258  41 82 00 C8 */	beq lbl_80BE9320
/* 80BE925C  7C 1E 03 78 */	mr r30, r0
/* 80BE9260  4B 42 F9 05 */	bl __ct__10fopAc_ac_cFv
/* 80BE9264  3B BE 05 74 */	addi r29, r30, 0x574
/* 80BE9268  7F A3 EB 78 */	mr r3, r29
/* 80BE926C  4B 48 CE 35 */	bl __ct__9dBgS_AcchFv
/* 80BE9270  3C 60 80 BF */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80BE9C08@ha */
/* 80BE9274  38 63 9C 08 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80BE9C08@l */
/* 80BE9278  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80BE927C  38 03 00 0C */	addi r0, r3, 0xc
/* 80BE9280  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80BE9284  38 03 00 18 */	addi r0, r3, 0x18
/* 80BE9288  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80BE928C  38 7D 00 14 */	addi r3, r29, 0x14
/* 80BE9290  4B 48 FB D9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BE9294  38 7E 07 4C */	addi r3, r30, 0x74c
/* 80BE9298  4B 48 CC 15 */	bl __ct__12dBgS_AcchCirFv
/* 80BE929C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BE92A0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BE92A4  90 1E 07 A4 */	stw r0, 0x7a4(r30)
/* 80BE92A8  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80BE92AC  4B 49 A4 B5 */	bl __ct__10dCcD_GSttsFv
/* 80BE92B0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BE92B4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BE92B8  90 7E 07 A4 */	stw r3, 0x7a4(r30)
/* 80BE92BC  38 03 00 20 */	addi r0, r3, 0x20
/* 80BE92C0  90 1E 07 A8 */	stw r0, 0x7a8(r30)
/* 80BE92C4  3B BE 07 C8 */	addi r29, r30, 0x7c8
/* 80BE92C8  7F A3 EB 78 */	mr r3, r29
/* 80BE92CC  4B 49 A7 5D */	bl __ct__12dCcD_GObjInfFv
/* 80BE92D0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BE92D4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BE92D8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BE92DC  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha /* 0x80BE9BFC@ha */
/* 80BE92E0  38 03 9B FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BE9BFC@l */
/* 80BE92E4  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80BE92E8  38 7D 01 24 */	addi r3, r29, 0x124
/* 80BE92EC  4B 68 5C 9D */	bl __ct__8cM3dGCpsFv
/* 80BE92F0  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 80BE92F4  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 80BE92F8  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80BE92FC  38 03 00 58 */	addi r0, r3, 0x58
/* 80BE9300  90 1D 01 3C */	stw r0, 0x13c(r29)
/* 80BE9304  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 80BE9308  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 80BE930C  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80BE9310  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BE9314  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BE9318  38 03 00 84 */	addi r0, r3, 0x84
/* 80BE931C  90 1D 01 3C */	stw r0, 0x13c(r29)
lbl_80BE9320:
/* 80BE9320  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BE9324  60 00 00 08 */	ori r0, r0, 8
/* 80BE9328  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BE932C:
/* 80BE932C  7F E3 FB 78 */	mr r3, r31
/* 80BE9330  4B FF FE 61 */	bl Create__14daObjFPillar_cFv
/* 80BE9334  2C 03 00 00 */	cmpwi r3, 0
/* 80BE9338  40 82 00 0C */	bne lbl_80BE9344
/* 80BE933C  38 60 00 05 */	li r3, 5
/* 80BE9340  48 00 00 08 */	b lbl_80BE9348
lbl_80BE9344:
/* 80BE9344  38 60 00 04 */	li r3, 4
lbl_80BE9348:
/* 80BE9348  39 61 00 20 */	addi r11, r1, 0x20
/* 80BE934C  4B 77 8E DD */	bl _restgpr_29
/* 80BE9350  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE9354  7C 08 03 A6 */	mtlr r0
/* 80BE9358  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE935C  4E 80 00 20 */	blr 
