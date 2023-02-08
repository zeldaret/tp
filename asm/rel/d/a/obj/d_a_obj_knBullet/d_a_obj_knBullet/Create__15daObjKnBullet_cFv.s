lbl_80C47118:
/* 80C47118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C4711C  7C 08 02 A6 */	mflr r0
/* 80C47120  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C47124  39 61 00 20 */	addi r11, r1, 0x20
/* 80C47128  4B 71 B0 B5 */	bl _savegpr_29
/* 80C4712C  7C 7E 1B 78 */	mr r30, r3
/* 80C47130  3C 80 80 C4 */	lis r4, l_DATA@ha /* 0x80C47950@ha */
/* 80C47134  3B E4 79 50 */	addi r31, r4, l_DATA@l /* 0x80C47950@l */
/* 80C47138  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C4713C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C47140  40 82 00 A8 */	bne lbl_80C471E8
/* 80C47144  7F C0 F3 79 */	or. r0, r30, r30
/* 80C47148  41 82 00 94 */	beq lbl_80C471DC
/* 80C4714C  7C 1D 03 78 */	mr r29, r0
/* 80C47150  4B 3D 1A 15 */	bl __ct__10fopAc_ac_cFv
/* 80C47154  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C47158  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C4715C  90 1D 05 B0 */	stw r0, 0x5b0(r29)
/* 80C47160  38 7D 05 B4 */	addi r3, r29, 0x5b4
/* 80C47164  4B 43 C5 FD */	bl __ct__10dCcD_GSttsFv
/* 80C47168  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C4716C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C47170  90 7D 05 B0 */	stw r3, 0x5b0(r29)
/* 80C47174  38 03 00 20 */	addi r0, r3, 0x20
/* 80C47178  90 1D 05 B4 */	stw r0, 0x5b4(r29)
/* 80C4717C  3B BD 05 D4 */	addi r29, r29, 0x5d4
/* 80C47180  7F A3 EB 78 */	mr r3, r29
/* 80C47184  4B 43 C8 A5 */	bl __ct__12dCcD_GObjInfFv
/* 80C47188  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C4718C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C47190  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C47194  3C 60 80 C4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C47A28@ha */
/* 80C47198  38 03 7A 28 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C47A28@l */
/* 80C4719C  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C471A0  3C 60 80 C4 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C47A1C@ha */
/* 80C471A4  38 03 7A 1C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C47A1C@l */
/* 80C471A8  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80C471AC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C471B0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C471B4  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C471B8  38 03 00 58 */	addi r0, r3, 0x58
/* 80C471BC  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80C471C0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C471C4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C471C8  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C471CC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C471D0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C471D4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C471D8  90 1D 01 34 */	stw r0, 0x134(r29)
lbl_80C471DC:
/* 80C471DC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C471E0  60 00 00 08 */	ori r0, r0, 8
/* 80C471E4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C471E8:
/* 80C471E8  7F C3 F3 78 */	mr r3, r30
/* 80C471EC  48 00 02 A5 */	bl setBaseMtx__15daObjKnBullet_cFv
/* 80C471F0  38 1E 05 68 */	addi r0, r30, 0x568
/* 80C471F4  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C471F8  38 7F 00 00 */	addi r3, r31, 0
/* 80C471FC  A8 63 00 08 */	lha r3, 8(r3)
/* 80C47200  38 03 00 1E */	addi r0, r3, 0x1e
/* 80C47204  B0 1E 07 0E */	sth r0, 0x70e(r30)
/* 80C47208  7F C3 F3 78 */	mr r3, r30
/* 80C4720C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80C47210  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80C47214  FC 60 08 90 */	fmr f3, f1
/* 80C47218  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80C4721C  C0 BF 00 58 */	lfs f5, 0x58(r31)
/* 80C47220  FC C0 20 90 */	fmr f6, f4
/* 80C47224  4B 3D 33 25 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C47228  7F C3 F3 78 */	mr r3, r30
/* 80C4722C  48 00 02 BD */	bl col_init__15daObjKnBullet_cFv
/* 80C47230  38 80 00 00 */	li r4, 0
/* 80C47234  98 9E 07 0C */	stb r4, 0x70c(r30)
/* 80C47238  38 60 FF FF */	li r3, -1
/* 80C4723C  38 00 00 03 */	li r0, 3
/* 80C47240  7C 09 03 A6 */	mtctr r0
lbl_80C47244:
/* 80C47244  38 04 07 10 */	addi r0, r4, 0x710
/* 80C47248  7C 7E 01 2E */	stwx r3, r30, r0
/* 80C4724C  38 84 00 04 */	addi r4, r4, 4
/* 80C47250  42 00 FF F4 */	bdnz lbl_80C47244
/* 80C47254  38 60 00 04 */	li r3, 4
/* 80C47258  39 61 00 20 */	addi r11, r1, 0x20
/* 80C4725C  4B 71 AF CD */	bl _restgpr_29
/* 80C47260  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C47264  7C 08 03 A6 */	mtlr r0
/* 80C47268  38 21 00 20 */	addi r1, r1, 0x20
/* 80C4726C  4E 80 00 20 */	blr 
