lbl_807BEBAC:
/* 807BEBAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807BEBB0  7C 08 02 A6 */	mflr r0
/* 807BEBB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 807BEBB8  39 61 00 40 */	addi r11, r1, 0x40
/* 807BEBBC  4B BA 36 21 */	bl _savegpr_29
/* 807BEBC0  7C 7D 1B 78 */	mr r29, r3
/* 807BEBC4  3C 60 80 7C */	lis r3, lit_3908@ha /* 0x807C1FB8@ha */
/* 807BEBC8  3B C3 1F B8 */	addi r30, r3, lit_3908@l /* 0x807C1FB8@l */
/* 807BEBCC  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 807BEBD0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807BEBD4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807BEBD8  41 82 01 30 */	beq lbl_807BED08
/* 807BEBDC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807BEBE0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807BEBE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807BEBE8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807BEBEC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 807BEBF0  C0 5D 04 B0 */	lfs f2, 0x4b0(r29)
/* 807BEBF4  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 807BEBF8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807BEBFC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807BEC00  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807BEC04  38 61 00 0C */	addi r3, r1, 0xc
/* 807BEC08  38 81 00 18 */	addi r4, r1, 0x18
/* 807BEC0C  4B B8 87 91 */	bl PSVECSquareDistance
/* 807BEC10  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807BEC14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BEC18  40 81 00 58 */	ble lbl_807BEC70
/* 807BEC1C  FC 00 08 34 */	frsqrte f0, f1
/* 807BEC20  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807BEC24  FC 44 00 32 */	fmul f2, f4, f0
/* 807BEC28  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807BEC2C  FC 00 00 32 */	fmul f0, f0, f0
/* 807BEC30  FC 01 00 32 */	fmul f0, f1, f0
/* 807BEC34  FC 03 00 28 */	fsub f0, f3, f0
/* 807BEC38  FC 02 00 32 */	fmul f0, f2, f0
/* 807BEC3C  FC 44 00 32 */	fmul f2, f4, f0
/* 807BEC40  FC 00 00 32 */	fmul f0, f0, f0
/* 807BEC44  FC 01 00 32 */	fmul f0, f1, f0
/* 807BEC48  FC 03 00 28 */	fsub f0, f3, f0
/* 807BEC4C  FC 02 00 32 */	fmul f0, f2, f0
/* 807BEC50  FC 44 00 32 */	fmul f2, f4, f0
/* 807BEC54  FC 00 00 32 */	fmul f0, f0, f0
/* 807BEC58  FC 01 00 32 */	fmul f0, f1, f0
/* 807BEC5C  FC 03 00 28 */	fsub f0, f3, f0
/* 807BEC60  FC 02 00 32 */	fmul f0, f2, f0
/* 807BEC64  FC 21 00 32 */	fmul f1, f1, f0
/* 807BEC68  FC 20 08 18 */	frsp f1, f1
/* 807BEC6C  48 00 00 88 */	b lbl_807BECF4
lbl_807BEC70:
/* 807BEC70  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807BEC74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BEC78  40 80 00 10 */	bge lbl_807BEC88
/* 807BEC7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BEC80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807BEC84  48 00 00 70 */	b lbl_807BECF4
lbl_807BEC88:
/* 807BEC88  D0 21 00 08 */	stfs f1, 8(r1)
/* 807BEC8C  80 81 00 08 */	lwz r4, 8(r1)
/* 807BEC90  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807BEC94  3C 00 7F 80 */	lis r0, 0x7f80
/* 807BEC98  7C 03 00 00 */	cmpw r3, r0
/* 807BEC9C  41 82 00 14 */	beq lbl_807BECB0
/* 807BECA0  40 80 00 40 */	bge lbl_807BECE0
/* 807BECA4  2C 03 00 00 */	cmpwi r3, 0
/* 807BECA8  41 82 00 20 */	beq lbl_807BECC8
/* 807BECAC  48 00 00 34 */	b lbl_807BECE0
lbl_807BECB0:
/* 807BECB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BECB4  41 82 00 0C */	beq lbl_807BECC0
/* 807BECB8  38 00 00 01 */	li r0, 1
/* 807BECBC  48 00 00 28 */	b lbl_807BECE4
lbl_807BECC0:
/* 807BECC0  38 00 00 02 */	li r0, 2
/* 807BECC4  48 00 00 20 */	b lbl_807BECE4
lbl_807BECC8:
/* 807BECC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807BECCC  41 82 00 0C */	beq lbl_807BECD8
/* 807BECD0  38 00 00 05 */	li r0, 5
/* 807BECD4  48 00 00 10 */	b lbl_807BECE4
lbl_807BECD8:
/* 807BECD8  38 00 00 03 */	li r0, 3
/* 807BECDC  48 00 00 08 */	b lbl_807BECE4
lbl_807BECE0:
/* 807BECE0  38 00 00 04 */	li r0, 4
lbl_807BECE4:
/* 807BECE4  2C 00 00 01 */	cmpwi r0, 1
/* 807BECE8  40 82 00 0C */	bne lbl_807BECF4
/* 807BECEC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807BECF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807BECF4:
/* 807BECF4  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 807BECF8  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 807BECFC  EC 02 00 2A */	fadds f0, f2, f0
/* 807BED00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BED04  41 81 00 48 */	bgt lbl_807BED4C
lbl_807BED08:
/* 807BED08  7F A3 EB 78 */	mr r3, r29
/* 807BED0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BED10  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BED14  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807BED18  4B 85 BA C9 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807BED1C  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 807BED20  3C 60 80 7C */	lis r3, l_HIO@ha /* 0x807C23EC@ha */
/* 807BED24  38 63 23 EC */	addi r3, r3, l_HIO@l /* 0x807C23EC@l */
/* 807BED28  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807BED2C  EC 02 00 2A */	fadds f0, f2, f0
/* 807BED30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BED34  41 81 00 18 */	bgt lbl_807BED4C
/* 807BED38  7F A3 EB 78 */	mr r3, r29
/* 807BED3C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807BED40  4B 85 E0 BD */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807BED44  2C 03 00 00 */	cmpwi r3, 0
/* 807BED48  41 82 00 0C */	beq lbl_807BED54
lbl_807BED4C:
/* 807BED4C  38 60 00 00 */	li r3, 0
/* 807BED50  48 00 00 08 */	b lbl_807BED58
lbl_807BED54:
/* 807BED54  38 60 00 01 */	li r3, 1
lbl_807BED58:
/* 807BED58  39 61 00 40 */	addi r11, r1, 0x40
/* 807BED5C  4B BA 34 CD */	bl _restgpr_29
/* 807BED60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807BED64  7C 08 03 A6 */	mtlr r0
/* 807BED68  38 21 00 40 */	addi r1, r1, 0x40
/* 807BED6C  4E 80 00 20 */	blr 
