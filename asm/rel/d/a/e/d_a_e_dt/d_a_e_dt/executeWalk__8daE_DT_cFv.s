lbl_806B07C4:
/* 806B07C4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806B07C8  7C 08 02 A6 */	mflr r0
/* 806B07CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 806B07D0  39 61 00 70 */	addi r11, r1, 0x70
/* 806B07D4  4B CB 1A 08 */	b _savegpr_29
/* 806B07D8  7C 7E 1B 78 */	mr r30, r3
/* 806B07DC  3C 60 80 6B */	lis r3, lit_3792@ha
/* 806B07E0  3B E3 5C D4 */	addi r31, r3, lit_3792@l
/* 806B07E4  80 1E 07 0C */	lwz r0, 0x70c(r30)
/* 806B07E8  2C 00 00 05 */	cmpwi r0, 5
/* 806B07EC  41 80 00 90 */	blt lbl_806B087C
/* 806B07F0  38 7E 09 D8 */	addi r3, r30, 0x9d8
/* 806B07F4  4B 9D 3C 6C */	b ChkTgHit__12dCcD_GObjInfFv
/* 806B07F8  28 03 00 00 */	cmplwi r3, 0
/* 806B07FC  40 82 00 34 */	bne lbl_806B0830
/* 806B0800  38 7E 0B 10 */	addi r3, r30, 0xb10
/* 806B0804  4B 9D 3C 5C */	b ChkTgHit__12dCcD_GObjInfFv
/* 806B0808  28 03 00 00 */	cmplwi r3, 0
/* 806B080C  40 82 00 24 */	bne lbl_806B0830
/* 806B0810  38 7E 0C 48 */	addi r3, r30, 0xc48
/* 806B0814  4B 9D 3C 4C */	b ChkTgHit__12dCcD_GObjInfFv
/* 806B0818  28 03 00 00 */	cmplwi r3, 0
/* 806B081C  40 82 00 14 */	bne lbl_806B0830
/* 806B0820  38 7E 0D 80 */	addi r3, r30, 0xd80
/* 806B0824  4B 9D 3C 3C */	b ChkTgHit__12dCcD_GObjInfFv
/* 806B0828  28 03 00 00 */	cmplwi r3, 0
/* 806B082C  41 82 00 50 */	beq lbl_806B087C
lbl_806B0830:
/* 806B0830  38 00 00 07 */	li r0, 7
/* 806B0834  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B0838  7F C3 F3 78 */	mr r3, r30
/* 806B083C  38 80 00 14 */	li r4, 0x14
/* 806B0840  38 A0 00 00 */	li r5, 0
/* 806B0844  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B0848  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B084C  4B FF DE 01 */	bl setBck__8daE_DT_cFiUcff
/* 806B0850  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007031C@ha */
/* 806B0854  38 03 03 1C */	addi r0, r3, 0x031C /* 0x0007031C@l */
/* 806B0858  90 01 00 20 */	stw r0, 0x20(r1)
/* 806B085C  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B0860  38 81 00 20 */	addi r4, r1, 0x20
/* 806B0864  38 A0 00 00 */	li r5, 0
/* 806B0868  38 C0 FF FF */	li r6, -1
/* 806B086C  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B0870  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B0874  7D 89 03 A6 */	mtctr r12
/* 806B0878  4E 80 04 21 */	bctrl 
lbl_806B087C:
/* 806B087C  80 1E 07 0C */	lwz r0, 0x70c(r30)
/* 806B0880  28 00 00 07 */	cmplwi r0, 7
/* 806B0884  41 81 05 C4 */	bgt lbl_806B0E48
/* 806B0888  3C 60 80 6B */	lis r3, lit_5320@ha
/* 806B088C  38 63 60 A4 */	addi r3, r3, lit_5320@l
/* 806B0890  54 00 10 3A */	slwi r0, r0, 2
/* 806B0894  7C 03 00 2E */	lwzx r0, r3, r0
/* 806B0898  7C 09 03 A6 */	mtctr r0
/* 806B089C  4E 80 04 20 */	bctr 
lbl_806B08A0:
/* 806B08A0  7F C3 F3 78 */	mr r3, r30
/* 806B08A4  38 80 00 17 */	li r4, 0x17
/* 806B08A8  38 A0 00 02 */	li r5, 2
/* 806B08AC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B08B0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B08B4  4B FF DD 99 */	bl setBck__8daE_DT_cFiUcff
/* 806B08B8  38 00 00 1E */	li r0, 0x1e
/* 806B08BC  90 1E 07 58 */	stw r0, 0x758(r30)
/* 806B08C0  38 00 00 01 */	li r0, 1
/* 806B08C4  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B08C8  38 00 04 B0 */	li r0, 0x4b0
/* 806B08CC  90 1E 07 5C */	stw r0, 0x75c(r30)
lbl_806B08D0:
/* 806B08D0  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 806B08D4  2C 00 00 00 */	cmpwi r0, 0
/* 806B08D8  40 82 05 70 */	bne lbl_806B0E48
/* 806B08DC  7F C3 F3 78 */	mr r3, r30
/* 806B08E0  38 80 00 15 */	li r4, 0x15
/* 806B08E4  38 A0 00 02 */	li r5, 2
/* 806B08E8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806B08EC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B08F0  4B FF DD 5D */	bl setBck__8daE_DT_cFiUcff
/* 806B08F4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B08F8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806B08FC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806B0900  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 806B0904  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806B0908  7F C3 F3 78 */	mr r3, r30
/* 806B090C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806B0910  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806B0914  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806B0918  4B 96 9D F8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B091C  7C 7D 1B 78 */	mr r29, r3
/* 806B0920  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 806B0924  4B BB 70 68 */	b cM_rndFX__Ff
/* 806B0928  7F A0 07 34 */	extsh r0, r29
/* 806B092C  C8 5F 00 30 */	lfd f2, 0x30(r31)
/* 806B0930  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806B0934  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806B0938  3C 00 43 30 */	lis r0, 0x4330
/* 806B093C  90 01 00 48 */	stw r0, 0x48(r1)
/* 806B0940  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 806B0944  EC 00 10 28 */	fsubs f0, f0, f2
/* 806B0948  EC 21 00 2A */	fadds f1, f1, f0
/* 806B094C  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 806B0950  EC 00 08 2A */	fadds f0, f0, f1
/* 806B0954  FC 00 00 1E */	fctiwz f0, f0
/* 806B0958  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806B095C  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 806B0960  38 7E 06 88 */	addi r3, r30, 0x688
/* 806B0964  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806B0968  38 C1 00 3C */	addi r6, r1, 0x3c
/* 806B096C  4B BC 04 54 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806B0970  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806B0974  38 9E 06 88 */	addi r4, r30, 0x688
/* 806B0978  4B BC 02 8C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806B097C  B0 7E 07 38 */	sth r3, 0x738(r30)
/* 806B0980  38 00 00 02 */	li r0, 2
/* 806B0984  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B0988  48 00 04 C0 */	b lbl_806B0E48
lbl_806B098C:
/* 806B098C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806B0990  A8 9E 07 38 */	lha r4, 0x738(r30)
/* 806B0994  38 A0 01 00 */	li r5, 0x100
/* 806B0998  4B BC 01 F8 */	b cLib_chaseAngleS__FPsss
/* 806B099C  2C 03 00 00 */	cmpwi r3, 0
/* 806B09A0  41 82 04 A8 */	beq lbl_806B0E48
/* 806B09A4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806B09A8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806B09AC  38 00 01 2C */	li r0, 0x12c
/* 806B09B0  90 1E 07 58 */	stw r0, 0x758(r30)
/* 806B09B4  7F C3 F3 78 */	mr r3, r30
/* 806B09B8  38 80 00 18 */	li r4, 0x18
/* 806B09BC  38 A0 00 02 */	li r5, 2
/* 806B09C0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806B09C4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B09C8  4B FF DC 85 */	bl setBck__8daE_DT_cFiUcff
/* 806B09CC  38 00 00 03 */	li r0, 3
/* 806B09D0  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B09D4  48 00 04 74 */	b lbl_806B0E48
lbl_806B09D8:
/* 806B09D8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B09DC  38 63 00 0C */	addi r3, r3, 0xc
/* 806B09E0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B09E4  4B C7 7A 48 */	b checkPass__12J3DFrameCtrlFf
/* 806B09E8  2C 03 00 00 */	cmpwi r3, 0
/* 806B09EC  40 82 00 1C */	bne lbl_806B0A08
/* 806B09F0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B09F4  38 63 00 0C */	addi r3, r3, 0xc
/* 806B09F8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806B09FC  4B C7 7A 30 */	b checkPass__12J3DFrameCtrlFf
/* 806B0A00  2C 03 00 00 */	cmpwi r3, 0
/* 806B0A04  41 82 00 30 */	beq lbl_806B0A34
lbl_806B0A08:
/* 806B0A08  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007030E@ha */
/* 806B0A0C  38 03 03 0E */	addi r0, r3, 0x030E /* 0x0007030E@l */
/* 806B0A10  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806B0A14  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B0A18  38 81 00 1C */	addi r4, r1, 0x1c
/* 806B0A1C  38 A0 00 00 */	li r5, 0
/* 806B0A20  38 C0 FF FF */	li r6, -1
/* 806B0A24  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B0A28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B0A2C  7D 89 03 A6 */	mtctr r12
/* 806B0A30  4E 80 04 21 */	bctrl 
lbl_806B0A34:
/* 806B0A34  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B0A38  38 63 00 0C */	addi r3, r3, 0xc
/* 806B0A3C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 806B0A40  4B C7 79 EC */	b checkPass__12J3DFrameCtrlFf
/* 806B0A44  2C 03 00 00 */	cmpwi r3, 0
/* 806B0A48  41 82 00 30 */	beq lbl_806B0A78
/* 806B0A4C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007030F@ha */
/* 806B0A50  38 03 03 0F */	addi r0, r3, 0x030F /* 0x0007030F@l */
/* 806B0A54  90 01 00 18 */	stw r0, 0x18(r1)
/* 806B0A58  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B0A5C  38 81 00 18 */	addi r4, r1, 0x18
/* 806B0A60  38 A0 00 00 */	li r5, 0
/* 806B0A64  38 C0 FF FF */	li r6, -1
/* 806B0A68  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B0A6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B0A70  7D 89 03 A6 */	mtctr r12
/* 806B0A74  4E 80 04 21 */	bctrl 
lbl_806B0A78:
/* 806B0A78  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B0A7C  38 63 00 0C */	addi r3, r3, 0xc
/* 806B0A80  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 806B0A84  4B C7 79 A8 */	b checkPass__12J3DFrameCtrlFf
/* 806B0A88  2C 03 00 00 */	cmpwi r3, 0
/* 806B0A8C  41 82 00 30 */	beq lbl_806B0ABC
/* 806B0A90  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070310@ha */
/* 806B0A94  38 03 03 10 */	addi r0, r3, 0x0310 /* 0x00070310@l */
/* 806B0A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B0A9C  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B0AA0  38 81 00 14 */	addi r4, r1, 0x14
/* 806B0AA4  38 A0 00 00 */	li r5, 0
/* 806B0AA8  38 C0 FF FF */	li r6, -1
/* 806B0AAC  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B0AB0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B0AB4  7D 89 03 A6 */	mtctr r12
/* 806B0AB8  4E 80 04 21 */	bctrl 
lbl_806B0ABC:
/* 806B0ABC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806B0AC0  3C 80 80 6B */	lis r4, l_HIO@ha
/* 806B0AC4  38 84 62 AC */	addi r4, r4, l_HIO@l
/* 806B0AC8  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 806B0ACC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B0AD0  4B BB FC 70 */	b cLib_chaseF__FPfff
/* 806B0AD4  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 806B0AD8  2C 00 00 00 */	cmpwi r0, 0
/* 806B0ADC  41 82 01 2C */	beq lbl_806B0C08
/* 806B0AE0  C0 5E 06 90 */	lfs f2, 0x690(r30)
/* 806B0AE4  C0 1E 06 88 */	lfs f0, 0x688(r30)
/* 806B0AE8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806B0AEC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B0AF0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806B0AF4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 806B0AF8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 806B0AFC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806B0B00  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806B0B04  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 806B0B08  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 806B0B0C  38 61 00 24 */	addi r3, r1, 0x24
/* 806B0B10  38 81 00 30 */	addi r4, r1, 0x30
/* 806B0B14  4B C9 68 88 */	b PSVECSquareDistance
/* 806B0B18  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B0B1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B0B20  40 81 00 58 */	ble lbl_806B0B78
/* 806B0B24  FC 00 08 34 */	frsqrte f0, f1
/* 806B0B28  C8 9F 00 90 */	lfd f4, 0x90(r31)
/* 806B0B2C  FC 44 00 32 */	fmul f2, f4, f0
/* 806B0B30  C8 7F 00 98 */	lfd f3, 0x98(r31)
/* 806B0B34  FC 00 00 32 */	fmul f0, f0, f0
/* 806B0B38  FC 01 00 32 */	fmul f0, f1, f0
/* 806B0B3C  FC 03 00 28 */	fsub f0, f3, f0
/* 806B0B40  FC 02 00 32 */	fmul f0, f2, f0
/* 806B0B44  FC 44 00 32 */	fmul f2, f4, f0
/* 806B0B48  FC 00 00 32 */	fmul f0, f0, f0
/* 806B0B4C  FC 01 00 32 */	fmul f0, f1, f0
/* 806B0B50  FC 03 00 28 */	fsub f0, f3, f0
/* 806B0B54  FC 02 00 32 */	fmul f0, f2, f0
/* 806B0B58  FC 44 00 32 */	fmul f2, f4, f0
/* 806B0B5C  FC 00 00 32 */	fmul f0, f0, f0
/* 806B0B60  FC 01 00 32 */	fmul f0, f1, f0
/* 806B0B64  FC 03 00 28 */	fsub f0, f3, f0
/* 806B0B68  FC 02 00 32 */	fmul f0, f2, f0
/* 806B0B6C  FC 21 00 32 */	fmul f1, f1, f0
/* 806B0B70  FC 20 08 18 */	frsp f1, f1
/* 806B0B74  48 00 00 88 */	b lbl_806B0BFC
lbl_806B0B78:
/* 806B0B78  C8 1F 00 A0 */	lfd f0, 0xa0(r31)
/* 806B0B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B0B80  40 80 00 10 */	bge lbl_806B0B90
/* 806B0B84  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806B0B88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806B0B8C  48 00 00 70 */	b lbl_806B0BFC
lbl_806B0B90:
/* 806B0B90  D0 21 00 08 */	stfs f1, 8(r1)
/* 806B0B94  80 81 00 08 */	lwz r4, 8(r1)
/* 806B0B98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806B0B9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806B0BA0  7C 03 00 00 */	cmpw r3, r0
/* 806B0BA4  41 82 00 14 */	beq lbl_806B0BB8
/* 806B0BA8  40 80 00 40 */	bge lbl_806B0BE8
/* 806B0BAC  2C 03 00 00 */	cmpwi r3, 0
/* 806B0BB0  41 82 00 20 */	beq lbl_806B0BD0
/* 806B0BB4  48 00 00 34 */	b lbl_806B0BE8
lbl_806B0BB8:
/* 806B0BB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806B0BBC  41 82 00 0C */	beq lbl_806B0BC8
/* 806B0BC0  38 00 00 01 */	li r0, 1
/* 806B0BC4  48 00 00 28 */	b lbl_806B0BEC
lbl_806B0BC8:
/* 806B0BC8  38 00 00 02 */	li r0, 2
/* 806B0BCC  48 00 00 20 */	b lbl_806B0BEC
lbl_806B0BD0:
/* 806B0BD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806B0BD4  41 82 00 0C */	beq lbl_806B0BE0
/* 806B0BD8  38 00 00 05 */	li r0, 5
/* 806B0BDC  48 00 00 10 */	b lbl_806B0BEC
lbl_806B0BE0:
/* 806B0BE0  38 00 00 03 */	li r0, 3
/* 806B0BE4  48 00 00 08 */	b lbl_806B0BEC
lbl_806B0BE8:
/* 806B0BE8  38 00 00 04 */	li r0, 4
lbl_806B0BEC:
/* 806B0BEC  2C 00 00 01 */	cmpwi r0, 1
/* 806B0BF0  40 82 00 0C */	bne lbl_806B0BFC
/* 806B0BF4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806B0BF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806B0BFC:
/* 806B0BFC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806B0C00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B0C04  40 80 02 44 */	bge lbl_806B0E48
lbl_806B0C08:
/* 806B0C08  7F C3 F3 78 */	mr r3, r30
/* 806B0C0C  38 80 00 15 */	li r4, 0x15
/* 806B0C10  38 A0 00 02 */	li r5, 2
/* 806B0C14  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806B0C18  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B0C1C  4B FF DA 31 */	bl setBck__8daE_DT_cFiUcff
/* 806B0C20  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806B0C24  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806B0C28  4B BB FF DC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806B0C2C  B0 7E 07 38 */	sth r3, 0x738(r30)
/* 806B0C30  38 00 00 04 */	li r0, 4
/* 806B0C34  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B0C38  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806B0C3C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806B0C40  48 00 02 08 */	b lbl_806B0E48
lbl_806B0C44:
/* 806B0C44  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806B0C48  A8 9E 07 38 */	lha r4, 0x738(r30)
/* 806B0C4C  38 A0 01 00 */	li r5, 0x100
/* 806B0C50  4B BB FF 40 */	b cLib_chaseAngleS__FPsss
/* 806B0C54  2C 03 00 00 */	cmpwi r3, 0
/* 806B0C58  41 82 01 F0 */	beq lbl_806B0E48
/* 806B0C5C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806B0C60  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806B0C64  7F C3 F3 78 */	mr r3, r30
/* 806B0C68  38 80 00 17 */	li r4, 0x17
/* 806B0C6C  38 A0 00 02 */	li r5, 2
/* 806B0C70  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806B0C74  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B0C78  4B FF D9 D5 */	bl setBck__8daE_DT_cFiUcff
/* 806B0C7C  38 00 00 05 */	li r0, 5
/* 806B0C80  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B0C84  38 00 00 00 */	li r0, 0
/* 806B0C88  90 1E 07 04 */	stw r0, 0x704(r30)
/* 806B0C8C  48 00 01 BC */	b lbl_806B0E48
lbl_806B0C90:
/* 806B0C90  7F C3 F3 78 */	mr r3, r30
/* 806B0C94  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806B0C98  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 806B0C9C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806B0CA0  4B 96 9A 70 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B0CA4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806B0CA8  7C 03 00 50 */	subf r0, r3, r0
/* 806B0CAC  7C 03 07 34 */	extsh r3, r0
/* 806B0CB0  4B CB 44 20 */	b abs
/* 806B0CB4  2C 03 30 00 */	cmpwi r3, 0x3000
/* 806B0CB8  40 80 00 38 */	bge lbl_806B0CF0
/* 806B0CBC  7F C3 F3 78 */	mr r3, r30
/* 806B0CC0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806B0CC4  4B 96 9A 74 */	b fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B0CC8  B0 7E 07 3E */	sth r3, 0x73e(r30)
/* 806B0CCC  7F C3 F3 78 */	mr r3, r30
/* 806B0CD0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806B0CD4  4B 96 9A 3C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B0CD8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806B0CDC  7C 00 18 50 */	subf r0, r0, r3
/* 806B0CE0  B0 1E 07 40 */	sth r0, 0x740(r30)
/* 806B0CE4  38 00 00 00 */	li r0, 0
/* 806B0CE8  90 1E 07 04 */	stw r0, 0x704(r30)
/* 806B0CEC  48 00 01 5C */	b lbl_806B0E48
lbl_806B0CF0:
/* 806B0CF0  80 7E 07 04 */	lwz r3, 0x704(r30)
/* 806B0CF4  38 03 00 01 */	addi r0, r3, 1
/* 806B0CF8  90 1E 07 04 */	stw r0, 0x704(r30)
/* 806B0CFC  80 1E 07 04 */	lwz r0, 0x704(r30)
/* 806B0D00  2C 00 00 96 */	cmpwi r0, 0x96
/* 806B0D04  41 80 01 44 */	blt lbl_806B0E48
/* 806B0D08  38 00 00 06 */	li r0, 6
/* 806B0D0C  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B0D10  7F C3 F3 78 */	mr r3, r30
/* 806B0D14  38 80 00 0F */	li r4, 0xf
/* 806B0D18  38 A0 00 00 */	li r5, 0
/* 806B0D1C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806B0D20  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B0D24  4B FF D9 29 */	bl setBck__8daE_DT_cFiUcff
/* 806B0D28  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007031A@ha */
/* 806B0D2C  38 03 03 1A */	addi r0, r3, 0x031A /* 0x0007031A@l */
/* 806B0D30  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B0D34  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B0D38  38 81 00 10 */	addi r4, r1, 0x10
/* 806B0D3C  38 A0 FF FF */	li r5, -1
/* 806B0D40  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B0D44  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B0D48  7D 89 03 A6 */	mtctr r12
/* 806B0D4C  4E 80 04 21 */	bctrl 
/* 806B0D50  48 00 00 F8 */	b lbl_806B0E48
lbl_806B0D54:
/* 806B0D54  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B0D58  38 63 00 0C */	addi r3, r3, 0xc
/* 806B0D5C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806B0D60  4B C7 76 CC */	b checkPass__12J3DFrameCtrlFf
/* 806B0D64  2C 03 00 00 */	cmpwi r3, 0
/* 806B0D68  41 82 00 2C */	beq lbl_806B0D94
/* 806B0D6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007031A@ha */
/* 806B0D70  38 03 03 1A */	addi r0, r3, 0x031A /* 0x0007031A@l */
/* 806B0D74  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B0D78  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806B0D7C  38 81 00 0C */	addi r4, r1, 0xc
/* 806B0D80  38 A0 FF FF */	li r5, -1
/* 806B0D84  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806B0D88  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B0D8C  7D 89 03 A6 */	mtctr r12
/* 806B0D90  4E 80 04 21 */	bctrl 
lbl_806B0D94:
/* 806B0D94  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B0D98  38 80 00 01 */	li r4, 1
/* 806B0D9C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B0DA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B0DA4  40 82 00 18 */	bne lbl_806B0DBC
/* 806B0DA8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B0DAC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B0DB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B0DB4  41 82 00 08 */	beq lbl_806B0DBC
/* 806B0DB8  38 80 00 00 */	li r4, 0
lbl_806B0DBC:
/* 806B0DBC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B0DC0  41 82 00 88 */	beq lbl_806B0E48
/* 806B0DC4  7F C3 F3 78 */	mr r3, r30
/* 806B0DC8  38 80 00 17 */	li r4, 0x17
/* 806B0DCC  38 A0 00 02 */	li r5, 2
/* 806B0DD0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806B0DD4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B0DD8  4B FF D8 75 */	bl setBck__8daE_DT_cFiUcff
/* 806B0DDC  38 00 00 05 */	li r0, 5
/* 806B0DE0  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B0DE4  38 00 00 00 */	li r0, 0
/* 806B0DE8  90 1E 07 04 */	stw r0, 0x704(r30)
/* 806B0DEC  48 00 00 5C */	b lbl_806B0E48
lbl_806B0DF0:
/* 806B0DF0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B0DF4  38 80 00 01 */	li r4, 1
/* 806B0DF8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B0DFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B0E00  40 82 00 18 */	bne lbl_806B0E18
/* 806B0E04  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806B0E08  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B0E0C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B0E10  41 82 00 08 */	beq lbl_806B0E18
/* 806B0E14  38 80 00 00 */	li r4, 0
lbl_806B0E18:
/* 806B0E18  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B0E1C  41 82 00 2C */	beq lbl_806B0E48
/* 806B0E20  7F C3 F3 78 */	mr r3, r30
/* 806B0E24  38 80 00 17 */	li r4, 0x17
/* 806B0E28  38 A0 00 02 */	li r5, 2
/* 806B0E2C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806B0E30  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806B0E34  4B FF D8 19 */	bl setBck__8daE_DT_cFiUcff
/* 806B0E38  38 00 00 05 */	li r0, 5
/* 806B0E3C  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 806B0E40  38 00 00 00 */	li r0, 0
/* 806B0E44  90 1E 07 04 */	stw r0, 0x704(r30)
lbl_806B0E48:
/* 806B0E48  7F C3 F3 78 */	mr r3, r30
/* 806B0E4C  4B FF EE E5 */	bl getNumberOfOtama__8daE_DT_cFv
/* 806B0E50  2C 03 00 01 */	cmpwi r3, 1
/* 806B0E54  41 80 00 20 */	blt lbl_806B0E74
/* 806B0E58  7F C3 F3 78 */	mr r3, r30
/* 806B0E5C  4B FF EE D5 */	bl getNumberOfOtama__8daE_DT_cFv
/* 806B0E60  2C 03 00 14 */	cmpwi r3, 0x14
/* 806B0E64  40 80 00 20 */	bge lbl_806B0E84
/* 806B0E68  80 1E 07 5C */	lwz r0, 0x75c(r30)
/* 806B0E6C  2C 00 00 00 */	cmpwi r0, 0
/* 806B0E70  40 82 00 14 */	bne lbl_806B0E84
lbl_806B0E74:
/* 806B0E74  7F C3 F3 78 */	mr r3, r30
/* 806B0E78  38 80 00 04 */	li r4, 4
/* 806B0E7C  38 A0 00 00 */	li r5, 0
/* 806B0E80  4B FF D8 CD */	bl setActionMode__8daE_DT_cFii
lbl_806B0E84:
/* 806B0E84  39 61 00 70 */	addi r11, r1, 0x70
/* 806B0E88  4B CB 13 A0 */	b _restgpr_29
/* 806B0E8C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806B0E90  7C 08 03 A6 */	mtlr r0
/* 806B0E94  38 21 00 70 */	addi r1, r1, 0x70
/* 806B0E98  4E 80 00 20 */	blr 
