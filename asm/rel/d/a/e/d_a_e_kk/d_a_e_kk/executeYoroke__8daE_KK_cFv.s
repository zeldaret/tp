lbl_806FC75C:
/* 806FC75C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806FC760  7C 08 02 A6 */	mflr r0
/* 806FC764  90 01 00 24 */	stw r0, 0x24(r1)
/* 806FC768  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806FC76C  7C 7F 1B 78 */	mr r31, r3
/* 806FC770  3C 80 80 70 */	lis r4, lit_3792@ha /* 0x806FF5E8@ha */
/* 806FC774  38 C4 F5 E8 */	addi r6, r4, lit_3792@l /* 0x806FF5E8@l */
/* 806FC778  80 03 06 64 */	lwz r0, 0x664(r3)
/* 806FC77C  2C 00 00 01 */	cmpwi r0, 1
/* 806FC780  41 82 00 90 */	beq lbl_806FC810
/* 806FC784  40 80 00 10 */	bge lbl_806FC794
/* 806FC788  2C 00 00 00 */	cmpwi r0, 0
/* 806FC78C  40 80 00 14 */	bge lbl_806FC7A0
/* 806FC790  48 00 01 50 */	b lbl_806FC8E0
lbl_806FC794:
/* 806FC794  2C 00 00 03 */	cmpwi r0, 3
/* 806FC798  40 80 01 48 */	bge lbl_806FC8E0
/* 806FC79C  48 00 00 C0 */	b lbl_806FC85C
lbl_806FC7A0:
/* 806FC7A0  88 1F 06 7D */	lbz r0, 0x67d(r31)
/* 806FC7A4  28 00 00 00 */	cmplwi r0, 0
/* 806FC7A8  40 82 00 1C */	bne lbl_806FC7C4
/* 806FC7AC  38 80 00 09 */	li r4, 9
/* 806FC7B0  38 A0 00 00 */	li r5, 0
/* 806FC7B4  C0 26 00 58 */	lfs f1, 0x58(r6)
/* 806FC7B8  C0 46 00 08 */	lfs f2, 8(r6)
/* 806FC7BC  4B FF E2 AD */	bl setBck__8daE_KK_cFiUcff
/* 806FC7C0  48 00 00 18 */	b lbl_806FC7D8
lbl_806FC7C4:
/* 806FC7C4  38 80 00 0B */	li r4, 0xb
/* 806FC7C8  38 A0 00 00 */	li r5, 0
/* 806FC7CC  C0 26 00 58 */	lfs f1, 0x58(r6)
/* 806FC7D0  C0 46 00 08 */	lfs f2, 8(r6)
/* 806FC7D4  4B FF E2 95 */	bl setBck__8daE_KK_cFiUcff
lbl_806FC7D8:
/* 806FC7D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070380@ha */
/* 806FC7DC  38 03 03 80 */	addi r0, r3, 0x0380 /* 0x00070380@l */
/* 806FC7E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FC7E4  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806FC7E8  38 81 00 0C */	addi r4, r1, 0xc
/* 806FC7EC  38 A0 00 00 */	li r5, 0
/* 806FC7F0  38 C0 FF FF */	li r6, -1
/* 806FC7F4  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806FC7F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FC7FC  7D 89 03 A6 */	mtctr r12
/* 806FC800  4E 80 04 21 */	bctrl 
/* 806FC804  38 00 00 02 */	li r0, 2
/* 806FC808  90 1F 06 64 */	stw r0, 0x664(r31)
/* 806FC80C  48 00 00 D4 */	b lbl_806FC8E0
lbl_806FC810:
/* 806FC810  38 80 00 0F */	li r4, 0xf
/* 806FC814  38 A0 00 00 */	li r5, 0
/* 806FC818  C0 26 00 58 */	lfs f1, 0x58(r6)
/* 806FC81C  C0 46 00 08 */	lfs f2, 8(r6)
/* 806FC820  4B FF E2 49 */	bl setBck__8daE_KK_cFiUcff
/* 806FC824  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070380@ha */
/* 806FC828  38 03 03 80 */	addi r0, r3, 0x0380 /* 0x00070380@l */
/* 806FC82C  90 01 00 08 */	stw r0, 8(r1)
/* 806FC830  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806FC834  38 81 00 08 */	addi r4, r1, 8
/* 806FC838  38 A0 00 00 */	li r5, 0
/* 806FC83C  38 C0 FF FF */	li r6, -1
/* 806FC840  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806FC844  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FC848  7D 89 03 A6 */	mtctr r12
/* 806FC84C  4E 80 04 21 */	bctrl 
/* 806FC850  38 00 00 02 */	li r0, 2
/* 806FC854  90 1F 06 64 */	stw r0, 0x664(r31)
/* 806FC858  48 00 00 88 */	b lbl_806FC8E0
lbl_806FC85C:
/* 806FC85C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806FC860  38 80 00 01 */	li r4, 1
/* 806FC864  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FC868  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FC86C  40 82 00 18 */	bne lbl_806FC884
/* 806FC870  C0 26 00 04 */	lfs f1, 4(r6)
/* 806FC874  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FC878  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FC87C  41 82 00 08 */	beq lbl_806FC884
/* 806FC880  38 80 00 00 */	li r4, 0
lbl_806FC884:
/* 806FC884  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FC888  41 82 00 58 */	beq lbl_806FC8E0
/* 806FC88C  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 806FC890  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 806FC894  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 806FC898  88 1F 06 7D */	lbz r0, 0x67d(r31)
/* 806FC89C  28 00 00 00 */	cmplwi r0, 0
/* 806FC8A0  40 82 00 10 */	bne lbl_806FC8B0
/* 806FC8A4  7F E3 FB 78 */	mr r3, r31
/* 806FC8A8  4B FF EA 45 */	bl nextActionCheck__8daE_KK_cFv
/* 806FC8AC  48 00 00 34 */	b lbl_806FC8E0
lbl_806FC8B0:
/* 806FC8B0  7F E3 FB 78 */	mr r3, r31
/* 806FC8B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FC8B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FC8BC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806FC8C0  4B 91 DE 51 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FC8C4  3C 63 00 01 */	addis r3, r3, 1
/* 806FC8C8  38 03 80 00 */	addi r0, r3, -32768
/* 806FC8CC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 806FC8D0  7F E3 FB 78 */	mr r3, r31
/* 806FC8D4  38 80 00 04 */	li r4, 4
/* 806FC8D8  38 A0 00 00 */	li r5, 0
/* 806FC8DC  4B FF E3 A5 */	bl setActionMode__8daE_KK_cFii
lbl_806FC8E0:
/* 806FC8E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806FC8E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FC8E8  7C 08 03 A6 */	mtlr r0
/* 806FC8EC  38 21 00 20 */	addi r1, r1, 0x20
/* 806FC8F0  4E 80 00 20 */	blr 
