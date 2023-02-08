lbl_80C3D168:
/* 80C3D168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3D16C  7C 08 02 A6 */	mflr r0
/* 80C3D170  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3D174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3D178  93 C1 00 08 */	stw r30, 8(r1)
/* 80C3D17C  7C 7F 1B 78 */	mr r31, r3
/* 80C3D180  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C3D184  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C3D188  40 82 00 A8 */	bne lbl_80C3D230
/* 80C3D18C  7F E0 FB 79 */	or. r0, r31, r31
/* 80C3D190  41 82 00 94 */	beq lbl_80C3D224
/* 80C3D194  7C 1E 03 78 */	mr r30, r0
/* 80C3D198  4B 3D B9 CD */	bl __ct__10fopAc_ac_cFv
/* 80C3D19C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C3D1A0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C3D1A4  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 80C3D1A8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80C3D1AC  4B 44 65 B5 */	bl __ct__10dCcD_GSttsFv
/* 80C3D1B0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C3D1B4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C3D1B8  90 7E 05 CC */	stw r3, 0x5cc(r30)
/* 80C3D1BC  38 03 00 20 */	addi r0, r3, 0x20
/* 80C3D1C0  90 1E 05 D0 */	stw r0, 0x5d0(r30)
/* 80C3D1C4  3B DE 05 F0 */	addi r30, r30, 0x5f0
/* 80C3D1C8  7F C3 F3 78 */	mr r3, r30
/* 80C3D1CC  4B 44 68 5D */	bl __ct__12dCcD_GObjInfFv
/* 80C3D1D0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C3D1D4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C3D1D8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C3D1DC  3C 60 80 C4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C3D4FC@ha */
/* 80C3D1E0  38 03 D4 FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C3D4FC@l */
/* 80C3D1E4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80C3D1E8  3C 60 80 C4 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C3D508@ha */
/* 80C3D1EC  38 03 D5 08 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C3D508@l */
/* 80C3D1F0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C3D1F4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C3D1F8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C3D1FC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C3D200  38 03 00 58 */	addi r0, r3, 0x58
/* 80C3D204  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C3D208  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C3D20C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C3D210  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C3D214  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C3D218  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C3D21C  38 03 00 84 */	addi r0, r3, 0x84
/* 80C3D220  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80C3D224:
/* 80C3D224  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C3D228  60 00 00 08 */	ori r0, r0, 8
/* 80C3D22C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C3D230:
/* 80C3D230  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80C3D234  3C 80 80 C4 */	lis r4, l_arcName@ha /* 0x80C3D490@ha */
/* 80C3D238  38 84 D4 90 */	addi r4, r4, l_arcName@l /* 0x80C3D490@l */
/* 80C3D23C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C3D240  4B 3E FC 7D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C3D244  7C 7E 1B 78 */	mr r30, r3
/* 80C3D248  2C 1E 00 04 */	cmpwi r30, 4
/* 80C3D24C  40 82 00 38 */	bne lbl_80C3D284
/* 80C3D250  7F E3 FB 78 */	mr r3, r31
/* 80C3D254  3C 80 80 C4 */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha /* 0x80C3CC90@ha */
/* 80C3D258  38 84 CC 90 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l /* 0x80C3CC90@l */
/* 80C3D25C  38 A0 28 00 */	li r5, 0x2800
/* 80C3D260  4B 3D D2 51 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C3D264  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3D268  40 82 00 0C */	bne lbl_80C3D274
/* 80C3D26C  3B C0 00 05 */	li r30, 5
/* 80C3D270  48 00 00 14 */	b lbl_80C3D284
lbl_80C3D274:
/* 80C3D274  7F E3 FB 78 */	mr r3, r31
/* 80C3D278  4B FF F6 61 */	bl create_init__15daObjKazeNeko_cFv
/* 80C3D27C  38 1F 05 84 */	addi r0, r31, 0x584
/* 80C3D280  90 1F 05 04 */	stw r0, 0x504(r31)
lbl_80C3D284:
/* 80C3D284  7F C3 F3 78 */	mr r3, r30
/* 80C3D288  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3D28C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C3D290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3D294  7C 08 03 A6 */	mtlr r0
/* 80C3D298  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3D29C  4E 80 00 20 */	blr 
