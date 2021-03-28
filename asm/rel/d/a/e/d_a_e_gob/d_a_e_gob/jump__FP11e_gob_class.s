lbl_806DAB6C:
/* 806DAB6C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806DAB70  7C 08 02 A6 */	mflr r0
/* 806DAB74  90 01 00 94 */	stw r0, 0x94(r1)
/* 806DAB78  39 61 00 90 */	addi r11, r1, 0x90
/* 806DAB7C  4B C8 76 5C */	b _savegpr_28
/* 806DAB80  7C 7D 1B 78 */	mr r29, r3
/* 806DAB84  3C 60 80 6E */	lis r3, lit_3763@ha
/* 806DAB88  3B E3 EE 38 */	addi r31, r3, lit_3763@l
/* 806DAB8C  3B C0 00 00 */	li r30, 0
/* 806DAB90  A8 1D 06 58 */	lha r0, 0x658(r29)
/* 806DAB94  2C 00 00 01 */	cmpwi r0, 1
/* 806DAB98  41 82 01 D0 */	beq lbl_806DAD68
/* 806DAB9C  40 80 03 44 */	bge lbl_806DAEE0
/* 806DABA0  2C 00 00 00 */	cmpwi r0, 0
/* 806DABA4  40 80 00 08 */	bge lbl_806DABAC
/* 806DABA8  48 00 03 38 */	b lbl_806DAEE0
lbl_806DABAC:
/* 806DABAC  38 00 00 00 */	li r0, 0
/* 806DABB0  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 806DABB4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DABB8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806DABBC  3B C0 00 01 */	li r30, 1
/* 806DABC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701FB@ha */
/* 806DABC4  38 03 01 FB */	addi r0, r3, 0x01FB /* 0x000701FB@l */
/* 806DABC8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806DABCC  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 806DABD0  38 81 00 2C */	addi r4, r1, 0x2c
/* 806DABD4  38 A0 FF FF */	li r5, -1
/* 806DABD8  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 806DABDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806DABE0  7D 89 03 A6 */	mtctr r12
/* 806DABE4  4E 80 04 21 */	bctrl 
/* 806DABE8  7F A3 EB 78 */	mr r3, r29
/* 806DABEC  38 80 00 1B */	li r4, 0x1b
/* 806DABF0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806DABF4  38 A0 00 02 */	li r5, 2
/* 806DABF8  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806DABFC  4B FF D9 7D */	bl anm_init__FP11e_gob_classifUcf
/* 806DAC00  38 00 00 01 */	li r0, 1
/* 806DAC04  B0 1D 06 58 */	sth r0, 0x658(r29)
/* 806DAC08  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 806DAC0C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806DAC10  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 806DAC14  4B B8 CD 78 */	b cM_rndFX__Ff
/* 806DAC18  FC 00 08 1E */	fctiwz f0, f1
/* 806DAC1C  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 806DAC20  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 806DAC24  B0 1D 06 B6 */	sth r0, 0x6b6(r29)
/* 806DAC28  A8 1D 0D 38 */	lha r0, 0xd38(r29)
/* 806DAC2C  2C 00 00 00 */	cmpwi r0, 0
/* 806DAC30  41 82 00 50 */	beq lbl_806DAC80
/* 806DAC34  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DAC38  D0 1D 06 B8 */	stfs f0, 0x6b8(r29)
/* 806DAC3C  D0 1D 06 BC */	stfs f0, 0x6bc(r29)
/* 806DAC40  D0 1D 06 C0 */	stfs f0, 0x6c0(r29)
/* 806DAC44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DAC48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DAC4C  80 63 00 00 */	lwz r3, 0(r3)
/* 806DAC50  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806DAC54  4B BD 4C 30 */	b subBgmStop__8Z2SeqMgrFv
/* 806DAC58  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DAC5C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DAC60  80 63 00 00 */	lwz r3, 0(r3)
/* 806DAC64  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DAC68  D0 03 04 14 */	stfs f0, 0x414(r3)
/* 806DAC6C  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 806DAC70  38 00 00 00 */	li r0, 0
/* 806DAC74  90 03 04 20 */	stw r0, 0x420(r3)
/* 806DAC78  D0 03 04 1C */	stfs f0, 0x41c(r3)
/* 806DAC7C  48 00 02 64 */	b lbl_806DAEE0
lbl_806DAC80:
/* 806DAC80  38 61 00 54 */	addi r3, r1, 0x54
/* 806DAC84  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806DAC88  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 806DAC8C  4B B8 BE A8 */	b __mi__4cXyzCFRC3Vec
/* 806DAC90  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 806DAC94  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 806DAC98  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806DAC9C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806DACA0  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 806DACA4  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 806DACA8  4B B8 C9 CC */	b cM_atan2s__Fff
/* 806DACAC  7C 7C 1B 78 */	mr r28, r3
/* 806DACB0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806DACB4  4B B8 CC A0 */	b cM_rndF__Ff
/* 806DACB8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806DACBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DACC0  40 80 00 20 */	bge lbl_806DACE0
/* 806DACC4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806DACC8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806DACCC  80 63 00 00 */	lwz r3, 0(r3)
/* 806DACD0  38 1C 40 00 */	addi r0, r28, 0x4000
/* 806DACD4  7C 04 07 34 */	extsh r4, r0
/* 806DACD8  4B 93 17 04 */	b mDoMtx_YrotS__FPA4_fs
/* 806DACDC  48 00 00 1C */	b lbl_806DACF8
lbl_806DACE0:
/* 806DACE0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806DACE4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806DACE8  80 63 00 00 */	lwz r3, 0(r3)
/* 806DACEC  38 1C C0 00 */	addi r0, r28, -16384
/* 806DACF0  7C 04 07 34 */	extsh r4, r0
/* 806DACF4  4B 93 16 E8 */	b mDoMtx_YrotS__FPA4_fs
lbl_806DACF8:
/* 806DACF8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DACFC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806DAD00  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806DAD04  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 806DAD08  4B B8 CC 4C */	b cM_rndF__Ff
/* 806DAD0C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 806DAD10  EC 00 08 2A */	fadds f0, f0, f1
/* 806DAD14  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806DAD18  38 61 00 60 */	addi r3, r1, 0x60
/* 806DAD1C  38 9D 06 B8 */	addi r4, r29, 0x6b8
/* 806DAD20  4B B9 61 CC */	b MtxPosition__FP4cXyzP4cXyz
/* 806DAD24  88 1D 06 D8 */	lbz r0, 0x6d8(r29)
/* 806DAD28  2C 00 00 01 */	cmpwi r0, 1
/* 806DAD2C  40 82 00 20 */	bne lbl_806DAD4C
/* 806DAD30  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DAD34  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DAD38  80 63 00 00 */	lwz r3, 0(r3)
/* 806DAD3C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806DAD40  38 80 00 01 */	li r4, 1
/* 806DAD44  4B BD 70 B0 */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 806DAD48  48 00 01 98 */	b lbl_806DAEE0
lbl_806DAD4C:
/* 806DAD4C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DAD50  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DAD54  80 63 00 00 */	lwz r3, 0(r3)
/* 806DAD58  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806DAD5C  38 80 00 04 */	li r4, 4
/* 806DAD60  4B BD 70 94 */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 806DAD64  48 00 01 7C */	b lbl_806DAEE0
lbl_806DAD68:
/* 806DAD68  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 806DAD6C  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 806DAD70  EC 01 00 2A */	fadds f0, f1, f0
/* 806DAD74  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 806DAD78  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 806DAD7C  C0 1D 06 C0 */	lfs f0, 0x6c0(r29)
/* 806DAD80  EC 01 00 2A */	fadds f0, f1, f0
/* 806DAD84  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 806DAD88  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806DAD8C  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 806DAD90  EC 01 00 2A */	fadds f0, f1, f0
/* 806DAD94  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 806DAD98  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 806DAD9C  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 806DADA0  EC 01 00 2A */	fadds f0, f1, f0
/* 806DADA4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806DADA8  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 806DADAC  A8 1D 06 B6 */	lha r0, 0x6b6(r29)
/* 806DADB0  7C 03 02 14 */	add r0, r3, r0
/* 806DADB4  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 806DADB8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806DADBC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DADC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DADC4  40 80 01 1C */	bge lbl_806DAEE0
/* 806DADC8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 806DADCC  A8 7D 06 D6 */	lha r3, 0x6d6(r29)
/* 806DADD0  38 03 00 01 */	addi r0, r3, 1
/* 806DADD4  B0 1D 06 D6 */	sth r0, 0x6d6(r29)
/* 806DADD8  A8 1D 06 D6 */	lha r0, 0x6d6(r29)
/* 806DADDC  2C 00 00 02 */	cmpwi r0, 2
/* 806DADE0  41 80 00 F8 */	blt lbl_806DAED8
/* 806DADE4  38 00 00 08 */	li r0, 8
/* 806DADE8  B0 1D 06 56 */	sth r0, 0x656(r29)
/* 806DADEC  38 00 00 05 */	li r0, 5
/* 806DADF0  B0 1D 06 58 */	sth r0, 0x658(r29)
/* 806DADF4  A8 1D 0D 38 */	lha r0, 0xd38(r29)
/* 806DADF8  2C 00 00 00 */	cmpwi r0, 0
/* 806DADFC  40 82 00 78 */	bne lbl_806DAE74
/* 806DAE00  38 61 00 48 */	addi r3, r1, 0x48
/* 806DAE04  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806DAE08  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 806DAE0C  4B B8 BD 28 */	b __mi__4cXyzCFRC3Vec
/* 806DAE10  38 61 00 3C */	addi r3, r1, 0x3c
/* 806DAE14  38 81 00 48 */	addi r4, r1, 0x48
/* 806DAE18  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806DAE1C  4B B8 BD 68 */	b __ml__4cXyzCFf
/* 806DAE20  38 61 00 30 */	addi r3, r1, 0x30
/* 806DAE24  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 806DAE28  38 A1 00 3C */	addi r5, r1, 0x3c
/* 806DAE2C  4B B8 BC B8 */	b __pl__4cXyzCFRC3Vec
/* 806DAE30  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806DAE34  D0 1D 06 5C */	stfs f0, 0x65c(r29)
/* 806DAE38  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806DAE3C  D0 1D 06 60 */	stfs f0, 0x660(r29)
/* 806DAE40  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806DAE44  D0 1D 06 64 */	stfs f0, 0x664(r29)
/* 806DAE48  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701FB@ha */
/* 806DAE4C  38 03 01 FB */	addi r0, r3, 0x01FB /* 0x000701FB@l */
/* 806DAE50  90 01 00 28 */	stw r0, 0x28(r1)
/* 806DAE54  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 806DAE58  38 81 00 28 */	addi r4, r1, 0x28
/* 806DAE5C  38 A0 FF FF */	li r5, -1
/* 806DAE60  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 806DAE64  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806DAE68  7D 89 03 A6 */	mtctr r12
/* 806DAE6C  4E 80 04 21 */	bctrl 
/* 806DAE70  48 00 00 40 */	b lbl_806DAEB0
lbl_806DAE74:
/* 806DAE74  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 806DAE78  D0 1D 06 5C */	stfs f0, 0x65c(r29)
/* 806DAE7C  D0 3D 06 60 */	stfs f1, 0x660(r29)
/* 806DAE80  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 806DAE84  D0 1D 06 64 */	stfs f0, 0x664(r29)
/* 806DAE88  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701FF@ha */
/* 806DAE8C  38 03 01 FF */	addi r0, r3, 0x01FF /* 0x000701FF@l */
/* 806DAE90  90 01 00 24 */	stw r0, 0x24(r1)
/* 806DAE94  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 806DAE98  38 81 00 24 */	addi r4, r1, 0x24
/* 806DAE9C  38 A0 FF FF */	li r5, -1
/* 806DAEA0  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 806DAEA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806DAEA8  7D 89 03 A6 */	mtctr r12
/* 806DAEAC  4E 80 04 21 */	bctrl 
lbl_806DAEB0:
/* 806DAEB0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806DAEB4  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 806DAEB8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806DAEBC  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 806DAEC0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806DAEC4  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 806DAEC8  38 00 00 0A */	li r0, 0xa
/* 806DAECC  98 1D 06 D9 */	stb r0, 0x6d9(r29)
/* 806DAED0  3B C0 00 01 */	li r30, 1
/* 806DAED4  48 00 00 0C */	b lbl_806DAEE0
lbl_806DAED8:
/* 806DAED8  38 00 00 00 */	li r0, 0
/* 806DAEDC  B0 1D 06 58 */	sth r0, 0x658(r29)
lbl_806DAEE0:
/* 806DAEE0  7F C0 07 75 */	extsb. r0, r30
/* 806DAEE4  41 82 01 3C */	beq lbl_806DB020
/* 806DAEE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701EC@ha */
/* 806DAEEC  38 03 01 EC */	addi r0, r3, 0x01EC /* 0x000701EC@l */
/* 806DAEF0  90 01 00 20 */	stw r0, 0x20(r1)
/* 806DAEF4  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 806DAEF8  38 81 00 20 */	addi r4, r1, 0x20
/* 806DAEFC  38 A0 00 00 */	li r5, 0
/* 806DAF00  38 C0 FF FF */	li r6, -1
/* 806DAF04  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 806DAF08  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806DAF0C  7D 89 03 A6 */	mtctr r12
/* 806DAF10  4E 80 04 21 */	bctrl 
/* 806DAF14  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806DAF18  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806DAF1C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806DAF20  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806DAF24  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806DAF28  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806DAF2C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DAF30  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806DAF34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DAF38  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 806DAF3C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806DAF40  38 80 00 00 */	li r4, 0
/* 806DAF44  90 81 00 08 */	stw r4, 8(r1)
/* 806DAF48  38 00 FF FF */	li r0, -1
/* 806DAF4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806DAF50  90 81 00 10 */	stw r4, 0x10(r1)
/* 806DAF54  90 81 00 14 */	stw r4, 0x14(r1)
/* 806DAF58  90 81 00 18 */	stw r4, 0x18(r1)
/* 806DAF5C  38 80 00 00 */	li r4, 0
/* 806DAF60  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000845B@ha */
/* 806DAF64  38 A5 84 5B */	addi r5, r5, 0x845B /* 0x0000845B@l */
/* 806DAF68  38 C1 00 6C */	addi r6, r1, 0x6c
/* 806DAF6C  38 E0 00 00 */	li r7, 0
/* 806DAF70  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 806DAF74  3D 20 80 6E */	lis r9, base_sc@ha
/* 806DAF78  39 29 F3 08 */	addi r9, r9, base_sc@l
/* 806DAF7C  39 40 00 FF */	li r10, 0xff
/* 806DAF80  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806DAF84  4B 97 1B 0C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806DAF88  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806DAF8C  38 80 00 00 */	li r4, 0
/* 806DAF90  90 81 00 08 */	stw r4, 8(r1)
/* 806DAF94  38 00 FF FF */	li r0, -1
/* 806DAF98  90 01 00 0C */	stw r0, 0xc(r1)
/* 806DAF9C  90 81 00 10 */	stw r4, 0x10(r1)
/* 806DAFA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 806DAFA4  90 81 00 18 */	stw r4, 0x18(r1)
/* 806DAFA8  38 80 00 00 */	li r4, 0
/* 806DAFAC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000845C@ha */
/* 806DAFB0  38 A5 84 5C */	addi r5, r5, 0x845C /* 0x0000845C@l */
/* 806DAFB4  38 C1 00 6C */	addi r6, r1, 0x6c
/* 806DAFB8  38 E0 00 00 */	li r7, 0
/* 806DAFBC  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 806DAFC0  3D 20 80 6E */	lis r9, base_sc@ha
/* 806DAFC4  39 29 F3 08 */	addi r9, r9, base_sc@l
/* 806DAFC8  39 40 00 FF */	li r10, 0xff
/* 806DAFCC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806DAFD0  4B 97 1A C0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806DAFD4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806DAFD8  38 80 00 00 */	li r4, 0
/* 806DAFDC  90 81 00 08 */	stw r4, 8(r1)
/* 806DAFE0  38 00 FF FF */	li r0, -1
/* 806DAFE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806DAFE8  90 81 00 10 */	stw r4, 0x10(r1)
/* 806DAFEC  90 81 00 14 */	stw r4, 0x14(r1)
/* 806DAFF0  90 81 00 18 */	stw r4, 0x18(r1)
/* 806DAFF4  38 80 00 00 */	li r4, 0
/* 806DAFF8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000845D@ha */
/* 806DAFFC  38 A5 84 5D */	addi r5, r5, 0x845D /* 0x0000845D@l */
/* 806DB000  38 C1 00 6C */	addi r6, r1, 0x6c
/* 806DB004  38 E0 00 00 */	li r7, 0
/* 806DB008  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 806DB00C  3D 20 80 6E */	lis r9, base_sc@ha
/* 806DB010  39 29 F3 08 */	addi r9, r9, base_sc@l
/* 806DB014  39 40 00 FF */	li r10, 0xff
/* 806DB018  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806DB01C  4B 97 1A 74 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_806DB020:
/* 806DB020  39 61 00 90 */	addi r11, r1, 0x90
/* 806DB024  4B C8 72 00 */	b _restgpr_28
/* 806DB028  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806DB02C  7C 08 03 A6 */	mtlr r0
/* 806DB030  38 21 00 90 */	addi r1, r1, 0x90
/* 806DB034  4E 80 00 20 */	blr 
