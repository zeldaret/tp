lbl_80CAC0D8:
/* 80CAC0D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CAC0DC  7C 08 02 A6 */	mflr r0
/* 80CAC0E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CAC0E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAC0E8  4B 6B 60 F5 */	bl _savegpr_29
/* 80CAC0EC  7C 7F 1B 78 */	mr r31, r3
/* 80CAC0F0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CAC0F4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CAC0F8  40 82 00 BC */	bne lbl_80CAC1B4
/* 80CAC0FC  7F E0 FB 79 */	or. r0, r31, r31
/* 80CAC100  41 82 00 A8 */	beq lbl_80CAC1A8
/* 80CAC104  7C 1E 03 78 */	mr r30, r0
/* 80CAC108  4B 3C C5 1D */	bl __ct__16dBgS_MoveBgActorFv
/* 80CAC10C  3C 60 80 CB */	lis r3, __vt__13daObjPDtile_c@ha /* 0x80CAC73C@ha */
/* 80CAC110  38 03 C7 3C */	addi r0, r3, __vt__13daObjPDtile_c@l /* 0x80CAC73C@l */
/* 80CAC114  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CAC118  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CAC11C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CAC120  90 1E 06 4C */	stw r0, 0x64c(r30)
/* 80CAC124  38 7E 06 50 */	addi r3, r30, 0x650
/* 80CAC128  4B 3D 76 39 */	bl __ct__10dCcD_GSttsFv
/* 80CAC12C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CAC130  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CAC134  90 7E 06 4C */	stw r3, 0x64c(r30)
/* 80CAC138  38 03 00 20 */	addi r0, r3, 0x20
/* 80CAC13C  90 1E 06 50 */	stw r0, 0x650(r30)
/* 80CAC140  3B BE 06 70 */	addi r29, r30, 0x670
/* 80CAC144  7F A3 EB 78 */	mr r3, r29
/* 80CAC148  4B 3D 78 E1 */	bl __ct__12dCcD_GObjInfFv
/* 80CAC14C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CAC150  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CAC154  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CAC158  3C 60 80 CB */	lis r3, __vt__8cM3dGAab@ha /* 0x80CAC700@ha */
/* 80CAC15C  38 03 C7 00 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CAC700@l */
/* 80CAC160  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80CAC164  3C 60 80 CB */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CAC6F4@ha */
/* 80CAC168  38 03 C6 F4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CAC6F4@l */
/* 80CAC16C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CAC170  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CAC174  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CAC178  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80CAC17C  38 03 00 58 */	addi r0, r3, 0x58
/* 80CAC180  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CAC184  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CAC188  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CAC18C  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80CAC190  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CAC194  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80CAC198  38 03 00 84 */	addi r0, r3, 0x84
/* 80CAC19C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80CAC1A0  38 7E 07 DC */	addi r3, r30, 0x7dc
/* 80CAC1A4  4B 61 26 A1 */	bl __ct__16Z2SoundObjSimpleFv
lbl_80CAC1A8:
/* 80CAC1A8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CAC1AC  60 00 00 08 */	ori r0, r0, 8
/* 80CAC1B0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CAC1B4:
/* 80CAC1B4  7F E3 FB 78 */	mr r3, r31
/* 80CAC1B8  4B FF EB 29 */	bl create1st__13daObjPDtile_cFv
/* 80CAC1BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAC1C0  4B 6B 60 69 */	bl _restgpr_29
/* 80CAC1C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CAC1C8  7C 08 03 A6 */	mtlr r0
/* 80CAC1CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CAC1D0  4E 80 00 20 */	blr 
