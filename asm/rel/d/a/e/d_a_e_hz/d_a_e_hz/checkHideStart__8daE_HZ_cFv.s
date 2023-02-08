lbl_806EAB68:
/* 806EAB68  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806EAB6C  7C 08 02 A6 */	mflr r0
/* 806EAB70  90 01 00 44 */	stw r0, 0x44(r1)
/* 806EAB74  39 61 00 40 */	addi r11, r1, 0x40
/* 806EAB78  4B C7 76 61 */	bl _savegpr_28
/* 806EAB7C  7C 7C 1B 78 */	mr r28, r3
/* 806EAB80  3C 60 80 6F */	lis r3, lit_1109@ha /* 0x806F0B30@ha */
/* 806EAB84  3B C3 0B 30 */	addi r30, r3, lit_1109@l /* 0x806F0B30@l */
/* 806EAB88  3C 60 80 6F */	lis r3, lit_3966@ha /* 0x806F0860@ha */
/* 806EAB8C  3B E3 08 60 */	addi r31, r3, lit_3966@l /* 0x806F0860@l */
/* 806EAB90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EAB94  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EAB98  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 806EAB9C  A8 1C 06 DE */	lha r0, 0x6de(r28)
/* 806EABA0  2C 00 00 00 */	cmpwi r0, 0
/* 806EABA4  41 82 00 0C */	beq lbl_806EABB0
/* 806EABA8  38 60 00 01 */	li r3, 1
/* 806EABAC  48 00 03 18 */	b lbl_806EAEC4
lbl_806EABB0:
/* 806EABB0  C0 3C 06 A4 */	lfs f1, 0x6a4(r28)
/* 806EABB4  38 7E 00 4C */	addi r3, r30, 0x4c
/* 806EABB8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806EABBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EABC0  41 80 00 10 */	blt lbl_806EABD0
/* 806EABC4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 806EABC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EABCC  40 81 00 0C */	ble lbl_806EABD8
lbl_806EABD0:
/* 806EABD0  38 60 00 01 */	li r3, 1
/* 806EABD4  48 00 02 F0 */	b lbl_806EAEC4
lbl_806EABD8:
/* 806EABD8  80 04 5F 18 */	lwz r0, 0x5f18(r4)
/* 806EABDC  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 806EABE0  41 82 01 34 */	beq lbl_806EAD14
/* 806EABE4  7F A3 EB 78 */	mr r3, r29
/* 806EABE8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806EABEC  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 806EABF0  7D 89 03 A6 */	mtctr r12
/* 806EABF4  4E 80 04 21 */	bctrl 
/* 806EABF8  28 03 00 00 */	cmplwi r3, 0
/* 806EABFC  41 82 01 18 */	beq lbl_806EAD14
/* 806EAC00  7F A3 EB 78 */	mr r3, r29
/* 806EAC04  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806EAC08  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 806EAC0C  7D 89 03 A6 */	mtctr r12
/* 806EAC10  4E 80 04 21 */	bctrl 
/* 806EAC14  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806EAC18  4B C5 C7 85 */	bl PSVECSquareDistance
/* 806EAC1C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EAC20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EAC24  40 81 00 58 */	ble lbl_806EAC7C
/* 806EAC28  FC 00 08 34 */	frsqrte f0, f1
/* 806EAC2C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806EAC30  FC 44 00 32 */	fmul f2, f4, f0
/* 806EAC34  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806EAC38  FC 00 00 32 */	fmul f0, f0, f0
/* 806EAC3C  FC 01 00 32 */	fmul f0, f1, f0
/* 806EAC40  FC 03 00 28 */	fsub f0, f3, f0
/* 806EAC44  FC 02 00 32 */	fmul f0, f2, f0
/* 806EAC48  FC 44 00 32 */	fmul f2, f4, f0
/* 806EAC4C  FC 00 00 32 */	fmul f0, f0, f0
/* 806EAC50  FC 01 00 32 */	fmul f0, f1, f0
/* 806EAC54  FC 03 00 28 */	fsub f0, f3, f0
/* 806EAC58  FC 02 00 32 */	fmul f0, f2, f0
/* 806EAC5C  FC 44 00 32 */	fmul f2, f4, f0
/* 806EAC60  FC 00 00 32 */	fmul f0, f0, f0
/* 806EAC64  FC 01 00 32 */	fmul f0, f1, f0
/* 806EAC68  FC 03 00 28 */	fsub f0, f3, f0
/* 806EAC6C  FC 02 00 32 */	fmul f0, f2, f0
/* 806EAC70  FC 21 00 32 */	fmul f1, f1, f0
/* 806EAC74  FC 20 08 18 */	frsp f1, f1
/* 806EAC78  48 00 00 88 */	b lbl_806EAD00
lbl_806EAC7C:
/* 806EAC7C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806EAC80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EAC84  40 80 00 10 */	bge lbl_806EAC94
/* 806EAC88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806EAC8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806EAC90  48 00 00 70 */	b lbl_806EAD00
lbl_806EAC94:
/* 806EAC94  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806EAC98  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806EAC9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806EACA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806EACA4  7C 03 00 00 */	cmpw r3, r0
/* 806EACA8  41 82 00 14 */	beq lbl_806EACBC
/* 806EACAC  40 80 00 40 */	bge lbl_806EACEC
/* 806EACB0  2C 03 00 00 */	cmpwi r3, 0
/* 806EACB4  41 82 00 20 */	beq lbl_806EACD4
/* 806EACB8  48 00 00 34 */	b lbl_806EACEC
lbl_806EACBC:
/* 806EACBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806EACC0  41 82 00 0C */	beq lbl_806EACCC
/* 806EACC4  38 00 00 01 */	li r0, 1
/* 806EACC8  48 00 00 28 */	b lbl_806EACF0
lbl_806EACCC:
/* 806EACCC  38 00 00 02 */	li r0, 2
/* 806EACD0  48 00 00 20 */	b lbl_806EACF0
lbl_806EACD4:
/* 806EACD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806EACD8  41 82 00 0C */	beq lbl_806EACE4
/* 806EACDC  38 00 00 05 */	li r0, 5
/* 806EACE0  48 00 00 10 */	b lbl_806EACF0
lbl_806EACE4:
/* 806EACE4  38 00 00 03 */	li r0, 3
/* 806EACE8  48 00 00 08 */	b lbl_806EACF0
lbl_806EACEC:
/* 806EACEC  38 00 00 04 */	li r0, 4
lbl_806EACF0:
/* 806EACF0  2C 00 00 01 */	cmpwi r0, 1
/* 806EACF4  40 82 00 0C */	bne lbl_806EAD00
/* 806EACF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806EACFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806EAD00:
/* 806EAD00  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806EAD04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EAD08  40 80 00 0C */	bge lbl_806EAD14
/* 806EAD0C  38 60 00 01 */	li r3, 1
/* 806EAD10  48 00 01 B4 */	b lbl_806EAEC4
lbl_806EAD14:
/* 806EAD14  38 00 00 00 */	li r0, 0
/* 806EAD18  90 1E 00 90 */	stw r0, 0x90(r30)
/* 806EAD1C  90 1E 00 8C */	stw r0, 0x8c(r30)
/* 806EAD20  90 1E 00 88 */	stw r0, 0x88(r30)
/* 806EAD24  3C 60 80 6F */	lis r3, s_obj_sub__FPvPv@ha /* 0x806EA9B8@ha */
/* 806EAD28  38 63 A9 B8 */	addi r3, r3, s_obj_sub__FPvPv@l /* 0x806EA9B8@l */
/* 806EAD2C  7F 84 E3 78 */	mr r4, r28
/* 806EAD30  4B 93 66 09 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806EAD34  80 1E 00 88 */	lwz r0, 0x88(r30)
/* 806EAD38  28 00 00 00 */	cmplwi r0, 0
/* 806EAD3C  40 82 00 1C */	bne lbl_806EAD58
/* 806EAD40  80 1E 00 8C */	lwz r0, 0x8c(r30)
/* 806EAD44  28 00 00 00 */	cmplwi r0, 0
/* 806EAD48  40 82 00 10 */	bne lbl_806EAD58
/* 806EAD4C  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 806EAD50  28 00 00 00 */	cmplwi r0, 0
/* 806EAD54  41 82 00 0C */	beq lbl_806EAD60
lbl_806EAD58:
/* 806EAD58  38 60 00 01 */	li r3, 1
/* 806EAD5C  48 00 01 68 */	b lbl_806EAEC4
lbl_806EAD60:
/* 806EAD60  7F A3 EB 78 */	mr r3, r29
/* 806EAD64  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806EAD68  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 806EAD6C  7D 89 03 A6 */	mtctr r12
/* 806EAD70  4E 80 04 21 */	bctrl 
/* 806EAD74  28 03 00 00 */	cmplwi r3, 0
/* 806EAD78  41 82 01 48 */	beq lbl_806EAEC0
/* 806EAD7C  7F A3 EB 78 */	mr r3, r29
/* 806EAD80  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806EAD84  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 806EAD88  7D 89 03 A6 */	mtctr r12
/* 806EAD8C  4E 80 04 21 */	bctrl 
/* 806EAD90  C0 43 00 08 */	lfs f2, 8(r3)
/* 806EAD94  C0 03 00 00 */	lfs f0, 0(r3)
/* 806EAD98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806EAD9C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806EADA0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806EADA4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 806EADA8  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 806EADAC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806EADB0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806EADB4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806EADB8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 806EADBC  38 61 00 10 */	addi r3, r1, 0x10
/* 806EADC0  38 81 00 1C */	addi r4, r1, 0x1c
/* 806EADC4  4B C5 C5 D9 */	bl PSVECSquareDistance
/* 806EADC8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EADCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EADD0  40 81 00 58 */	ble lbl_806EAE28
/* 806EADD4  FC 00 08 34 */	frsqrte f0, f1
/* 806EADD8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806EADDC  FC 44 00 32 */	fmul f2, f4, f0
/* 806EADE0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806EADE4  FC 00 00 32 */	fmul f0, f0, f0
/* 806EADE8  FC 01 00 32 */	fmul f0, f1, f0
/* 806EADEC  FC 03 00 28 */	fsub f0, f3, f0
/* 806EADF0  FC 02 00 32 */	fmul f0, f2, f0
/* 806EADF4  FC 44 00 32 */	fmul f2, f4, f0
/* 806EADF8  FC 00 00 32 */	fmul f0, f0, f0
/* 806EADFC  FC 01 00 32 */	fmul f0, f1, f0
/* 806EAE00  FC 03 00 28 */	fsub f0, f3, f0
/* 806EAE04  FC 02 00 32 */	fmul f0, f2, f0
/* 806EAE08  FC 44 00 32 */	fmul f2, f4, f0
/* 806EAE0C  FC 00 00 32 */	fmul f0, f0, f0
/* 806EAE10  FC 01 00 32 */	fmul f0, f1, f0
/* 806EAE14  FC 03 00 28 */	fsub f0, f3, f0
/* 806EAE18  FC 02 00 32 */	fmul f0, f2, f0
/* 806EAE1C  FC 21 00 32 */	fmul f1, f1, f0
/* 806EAE20  FC 20 08 18 */	frsp f1, f1
/* 806EAE24  48 00 00 88 */	b lbl_806EAEAC
lbl_806EAE28:
/* 806EAE28  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806EAE2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EAE30  40 80 00 10 */	bge lbl_806EAE40
/* 806EAE34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806EAE38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806EAE3C  48 00 00 70 */	b lbl_806EAEAC
lbl_806EAE40:
/* 806EAE40  D0 21 00 08 */	stfs f1, 8(r1)
/* 806EAE44  80 81 00 08 */	lwz r4, 8(r1)
/* 806EAE48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806EAE4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806EAE50  7C 03 00 00 */	cmpw r3, r0
/* 806EAE54  41 82 00 14 */	beq lbl_806EAE68
/* 806EAE58  40 80 00 40 */	bge lbl_806EAE98
/* 806EAE5C  2C 03 00 00 */	cmpwi r3, 0
/* 806EAE60  41 82 00 20 */	beq lbl_806EAE80
/* 806EAE64  48 00 00 34 */	b lbl_806EAE98
lbl_806EAE68:
/* 806EAE68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806EAE6C  41 82 00 0C */	beq lbl_806EAE78
/* 806EAE70  38 00 00 01 */	li r0, 1
/* 806EAE74  48 00 00 28 */	b lbl_806EAE9C
lbl_806EAE78:
/* 806EAE78  38 00 00 02 */	li r0, 2
/* 806EAE7C  48 00 00 20 */	b lbl_806EAE9C
lbl_806EAE80:
/* 806EAE80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806EAE84  41 82 00 0C */	beq lbl_806EAE90
/* 806EAE88  38 00 00 05 */	li r0, 5
/* 806EAE8C  48 00 00 10 */	b lbl_806EAE9C
lbl_806EAE90:
/* 806EAE90  38 00 00 03 */	li r0, 3
/* 806EAE94  48 00 00 08 */	b lbl_806EAE9C
lbl_806EAE98:
/* 806EAE98  38 00 00 04 */	li r0, 4
lbl_806EAE9C:
/* 806EAE9C  2C 00 00 01 */	cmpwi r0, 1
/* 806EAEA0  40 82 00 0C */	bne lbl_806EAEAC
/* 806EAEA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806EAEA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806EAEAC:
/* 806EAEAC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 806EAEB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EAEB4  40 80 00 0C */	bge lbl_806EAEC0
/* 806EAEB8  38 60 00 01 */	li r3, 1
/* 806EAEBC  48 00 00 08 */	b lbl_806EAEC4
lbl_806EAEC0:
/* 806EAEC0  38 60 00 00 */	li r3, 0
lbl_806EAEC4:
/* 806EAEC4  39 61 00 40 */	addi r11, r1, 0x40
/* 806EAEC8  4B C7 73 5D */	bl _restgpr_28
/* 806EAECC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806EAED0  7C 08 03 A6 */	mtlr r0
/* 806EAED4  38 21 00 40 */	addi r1, r1, 0x40
/* 806EAED8  4E 80 00 20 */	blr 
