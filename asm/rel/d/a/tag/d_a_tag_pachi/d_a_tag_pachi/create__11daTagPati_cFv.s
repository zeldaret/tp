lbl_80D5D570:
/* 80D5D570  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D5D574  7C 08 02 A6 */	mflr r0
/* 80D5D578  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D5D57C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5D580  4B 60 4C 5D */	bl _savegpr_29
/* 80D5D584  7C 7F 1B 78 */	mr r31, r3
/* 80D5D588  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5D58C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5D590  40 82 00 A8 */	bne lbl_80D5D638
/* 80D5D594  7F E0 FB 79 */	or. r0, r31, r31
/* 80D5D598  41 82 00 94 */	beq lbl_80D5D62C
/* 80D5D59C  7C 1E 03 78 */	mr r30, r0
/* 80D5D5A0  4B 2B B5 C5 */	bl __ct__10fopAc_ac_cFv
/* 80D5D5A4  3B BE 05 68 */	addi r29, r30, 0x568
/* 80D5D5A8  7F A3 EB 78 */	mr r3, r29
/* 80D5D5AC  4B 32 64 7D */	bl __ct__12dCcD_GObjInfFv
/* 80D5D5B0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D5D5B4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D5D5B8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D5D5BC  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D5D9B0@ha */
/* 80D5D5C0  38 03 D9 B0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D5D9B0@l */
/* 80D5D5C4  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80D5D5C8  3C 60 80 D6 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D5D9BC@ha */
/* 80D5D5CC  38 03 D9 BC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D5D9BC@l */
/* 80D5D5D0  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D5D5D4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D5D5D8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D5D5DC  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80D5D5E0  38 03 00 58 */	addi r0, r3, 0x58
/* 80D5D5E4  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D5D5E8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D5D5EC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D5D5F0  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80D5D5F4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D5D5F8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D5D5FC  38 03 00 84 */	addi r0, r3, 0x84
/* 80D5D600  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D5D604  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D5D608  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D5D60C  90 1E 06 BC */	stw r0, 0x6bc(r30)
/* 80D5D610  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 80D5D614  4B 32 61 4D */	bl __ct__10dCcD_GSttsFv
/* 80D5D618  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D5D61C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D5D620  90 7E 06 BC */	stw r3, 0x6bc(r30)
/* 80D5D624  38 03 00 20 */	addi r0, r3, 0x20
/* 80D5D628  90 1E 06 C0 */	stw r0, 0x6c0(r30)
lbl_80D5D62C:
/* 80D5D62C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D5D630  60 00 00 08 */	ori r0, r0, 8
/* 80D5D634  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D5D638:
/* 80D5D638  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5D63C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D5D640  28 00 00 FF */	cmplwi r0, 0xff
/* 80D5D644  40 82 00 08 */	bne lbl_80D5D64C
/* 80D5D648  38 00 00 00 */	li r0, 0
lbl_80D5D64C:
/* 80D5D64C  90 1F 06 E0 */	stw r0, 0x6e0(r31)
/* 80D5D650  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 80D5D654  38 80 00 FF */	li r4, 0xff
/* 80D5D658  38 A0 00 FF */	li r5, 0xff
/* 80D5D65C  7F E6 FB 78 */	mr r6, r31
/* 80D5D660  4B 32 62 01 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D5D664  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D5D668  3C 80 80 D6 */	lis r4, l_sph_src@ha /* 0x80D5D914@ha */
/* 80D5D66C  38 84 D9 14 */	addi r4, r4, l_sph_src@l /* 0x80D5D914@l */
/* 80D5D670  4B 32 72 45 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D5D674  38 1F 06 A4 */	addi r0, r31, 0x6a4
/* 80D5D678  90 1F 05 AC */	stw r0, 0x5ac(r31)
/* 80D5D67C  38 00 00 00 */	li r0, 0
/* 80D5D680  90 1F 06 E4 */	stw r0, 0x6e4(r31)
/* 80D5D684  38 60 00 04 */	li r3, 4
/* 80D5D688  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5D68C  4B 60 4B 9D */	bl _restgpr_29
/* 80D5D690  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D5D694  7C 08 03 A6 */	mtlr r0
/* 80D5D698  38 21 00 20 */	addi r1, r1, 0x20
/* 80D5D69C  4E 80 00 20 */	blr 
