lbl_80D2E430:
/* 80D2E430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2E434  7C 08 02 A6 */	mflr r0
/* 80D2E438  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2E43C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2E440  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2E444  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D2E448  7C 9F 23 78 */	mr r31, r4
/* 80D2E44C  41 82 02 4C */	beq lbl_80D2E698
/* 80D2E450  3C 60 80 D3 */	lis r3, __vt__12daWtPillar_c@ha
/* 80D2E454  38 63 EA 64 */	addi r3, r3, __vt__12daWtPillar_c@l
/* 80D2E458  90 7E 05 80 */	stw r3, 0x580(r30)
/* 80D2E45C  38 03 00 08 */	addi r0, r3, 8
/* 80D2E460  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80D2E464  34 1E 09 5C */	addic. r0, r30, 0x95c
/* 80D2E468  41 82 00 84 */	beq lbl_80D2E4EC
/* 80D2E46C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D2E470  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D2E474  90 7E 09 98 */	stw r3, 0x998(r30)
/* 80D2E478  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D2E47C  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80D2E480  38 03 00 84 */	addi r0, r3, 0x84
/* 80D2E484  90 1E 0A 94 */	stw r0, 0xa94(r30)
/* 80D2E488  34 1E 0A 60 */	addic. r0, r30, 0xa60
/* 80D2E48C  41 82 00 54 */	beq lbl_80D2E4E0
/* 80D2E490  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D2E494  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D2E498  90 7E 0A 7C */	stw r3, 0xa7c(r30)
/* 80D2E49C  38 03 00 58 */	addi r0, r3, 0x58
/* 80D2E4A0  90 1E 0A 94 */	stw r0, 0xa94(r30)
/* 80D2E4A4  34 1E 0A 80 */	addic. r0, r30, 0xa80
/* 80D2E4A8  41 82 00 10 */	beq lbl_80D2E4B8
/* 80D2E4AC  3C 60 80 D3 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D2E4B0  38 03 EA B0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D2E4B4  90 1E 0A 94 */	stw r0, 0xa94(r30)
lbl_80D2E4B8:
/* 80D2E4B8  34 1E 0A 60 */	addic. r0, r30, 0xa60
/* 80D2E4BC  41 82 00 24 */	beq lbl_80D2E4E0
/* 80D2E4C0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D2E4C4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D2E4C8  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80D2E4CC  34 1E 0A 60 */	addic. r0, r30, 0xa60
/* 80D2E4D0  41 82 00 10 */	beq lbl_80D2E4E0
/* 80D2E4D4  3C 60 80 D3 */	lis r3, __vt__8cM3dGAab@ha
/* 80D2E4D8  38 03 EA BC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D2E4DC  90 1E 0A 78 */	stw r0, 0xa78(r30)
lbl_80D2E4E0:
/* 80D2E4E0  38 7E 09 5C */	addi r3, r30, 0x95c
/* 80D2E4E4  38 80 00 00 */	li r4, 0
/* 80D2E4E8  4B 35 5B FC */	b __dt__12dCcD_GObjInfFv
lbl_80D2E4EC:
/* 80D2E4EC  34 1E 08 18 */	addic. r0, r30, 0x818
/* 80D2E4F0  41 82 00 7C */	beq lbl_80D2E56C
/* 80D2E4F4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha
/* 80D2E4F8  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l
/* 80D2E4FC  90 7E 08 54 */	stw r3, 0x854(r30)
/* 80D2E500  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D2E504  90 1E 09 38 */	stw r0, 0x938(r30)
/* 80D2E508  38 03 00 84 */	addi r0, r3, 0x84
/* 80D2E50C  90 1E 09 54 */	stw r0, 0x954(r30)
/* 80D2E510  34 1E 09 1C */	addic. r0, r30, 0x91c
/* 80D2E514  41 82 00 4C */	beq lbl_80D2E560
/* 80D2E518  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80D2E51C  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 80D2E520  90 7E 09 38 */	stw r3, 0x938(r30)
/* 80D2E524  38 03 00 58 */	addi r0, r3, 0x58
/* 80D2E528  90 1E 09 54 */	stw r0, 0x954(r30)
/* 80D2E52C  38 7E 09 3C */	addi r3, r30, 0x93c
/* 80D2E530  38 80 00 00 */	li r4, 0
/* 80D2E534  4B 54 0A 70 */	b __dt__8cM3dGCpsFv
/* 80D2E538  34 1E 09 1C */	addic. r0, r30, 0x91c
/* 80D2E53C  41 82 00 24 */	beq lbl_80D2E560
/* 80D2E540  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D2E544  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D2E548  90 1E 09 38 */	stw r0, 0x938(r30)
/* 80D2E54C  34 1E 09 1C */	addic. r0, r30, 0x91c
/* 80D2E550  41 82 00 10 */	beq lbl_80D2E560
/* 80D2E554  3C 60 80 D3 */	lis r3, __vt__8cM3dGAab@ha
/* 80D2E558  38 03 EA BC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D2E55C  90 1E 09 34 */	stw r0, 0x934(r30)
lbl_80D2E560:
/* 80D2E560  38 7E 08 18 */	addi r3, r30, 0x818
/* 80D2E564  38 80 00 00 */	li r4, 0
/* 80D2E568  4B 35 5B 7C */	b __dt__12dCcD_GObjInfFv
lbl_80D2E56C:
/* 80D2E56C  34 1E 07 DC */	addic. r0, r30, 0x7dc
/* 80D2E570  41 82 00 54 */	beq lbl_80D2E5C4
/* 80D2E574  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D2E578  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D2E57C  90 7E 07 F4 */	stw r3, 0x7f4(r30)
/* 80D2E580  38 03 00 20 */	addi r0, r3, 0x20
/* 80D2E584  90 1E 07 F8 */	stw r0, 0x7f8(r30)
/* 80D2E588  34 1E 07 F8 */	addic. r0, r30, 0x7f8
/* 80D2E58C  41 82 00 24 */	beq lbl_80D2E5B0
/* 80D2E590  3C 60 80 D3 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D2E594  38 03 EA A4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D2E598  90 1E 07 F8 */	stw r0, 0x7f8(r30)
/* 80D2E59C  34 1E 07 F8 */	addic. r0, r30, 0x7f8
/* 80D2E5A0  41 82 00 10 */	beq lbl_80D2E5B0
/* 80D2E5A4  3C 60 80 D3 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D2E5A8  38 03 EA 98 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D2E5AC  90 1E 07 F8 */	stw r0, 0x7f8(r30)
lbl_80D2E5B0:
/* 80D2E5B0  34 1E 07 DC */	addic. r0, r30, 0x7dc
/* 80D2E5B4  41 82 00 10 */	beq lbl_80D2E5C4
/* 80D2E5B8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D2E5BC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D2E5C0  90 1E 07 F4 */	stw r0, 0x7f4(r30)
lbl_80D2E5C4:
/* 80D2E5C4  34 1E 07 9C */	addic. r0, r30, 0x79c
/* 80D2E5C8  41 82 00 28 */	beq lbl_80D2E5F0
/* 80D2E5CC  3C 60 80 D3 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80D2E5D0  38 03 EA 8C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80D2E5D4  90 1E 07 A8 */	stw r0, 0x7a8(r30)
/* 80D2E5D8  38 7E 07 B0 */	addi r3, r30, 0x7b0
/* 80D2E5DC  38 80 FF FF */	li r4, -1
/* 80D2E5E0  4B 54 09 38 */	b __dt__8cM3dGCirFv
/* 80D2E5E4  38 7E 07 9C */	addi r3, r30, 0x79c
/* 80D2E5E8  38 80 00 00 */	li r4, 0
/* 80D2E5EC  4B 53 9A C4 */	b __dt__13cBgS_PolyInfoFv
lbl_80D2E5F0:
/* 80D2E5F0  34 1E 05 C4 */	addic. r0, r30, 0x5c4
/* 80D2E5F4  41 82 00 2C */	beq lbl_80D2E620
/* 80D2E5F8  3C 60 80 D3 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80D2E5FC  38 63 EA C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80D2E600  90 7E 05 D4 */	stw r3, 0x5d4(r30)
/* 80D2E604  38 03 00 0C */	addi r0, r3, 0xc
/* 80D2E608  90 1E 05 D8 */	stw r0, 0x5d8(r30)
/* 80D2E60C  38 03 00 18 */	addi r0, r3, 0x18
/* 80D2E610  90 1E 05 E8 */	stw r0, 0x5e8(r30)
/* 80D2E614  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80D2E618  38 80 00 00 */	li r4, 0
/* 80D2E61C  4B 34 79 78 */	b __dt__9dBgS_AcchFv
lbl_80D2E620:
/* 80D2E620  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80D2E624  41 82 00 20 */	beq lbl_80D2E644
/* 80D2E628  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80D2E62C  41 82 00 18 */	beq lbl_80D2E644
/* 80D2E630  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80D2E634  41 82 00 10 */	beq lbl_80D2E644
/* 80D2E638  3C 60 80 D3 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D2E63C  38 03 EA EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D2E640  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80D2E644:
/* 80D2E644  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80D2E648  41 82 00 20 */	beq lbl_80D2E668
/* 80D2E64C  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80D2E650  41 82 00 18 */	beq lbl_80D2E668
/* 80D2E654  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80D2E658  41 82 00 10 */	beq lbl_80D2E668
/* 80D2E65C  3C 60 80 D3 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D2E660  38 03 EA EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D2E664  90 1E 05 90 */	stw r0, 0x590(r30)
lbl_80D2E668:
/* 80D2E668  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80D2E66C  41 82 00 10 */	beq lbl_80D2E67C
/* 80D2E670  3C 60 80 D3 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80D2E674  38 03 EA F8 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80D2E678  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_80D2E67C:
/* 80D2E67C  7F C3 F3 78 */	mr r3, r30
/* 80D2E680  38 80 00 00 */	li r4, 0
/* 80D2E684  4B 2E A6 08 */	b __dt__10fopAc_ac_cFv
/* 80D2E688  7F E0 07 35 */	extsh. r0, r31
/* 80D2E68C  40 81 00 0C */	ble lbl_80D2E698
/* 80D2E690  7F C3 F3 78 */	mr r3, r30
/* 80D2E694  4B 5A 06 A8 */	b __dl__FPv
lbl_80D2E698:
/* 80D2E698  7F C3 F3 78 */	mr r3, r30
/* 80D2E69C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2E6A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2E6A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2E6A8  7C 08 03 A6 */	mtlr r0
/* 80D2E6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2E6B0  4E 80 00 20 */	blr 
