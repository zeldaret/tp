lbl_804CD660:
/* 804CD660  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CD664  7C 08 02 A6 */	mflr r0
/* 804CD668  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CD66C  39 61 00 20 */	addi r11, r1, 0x20
/* 804CD670  4B E9 4B 6D */	bl _savegpr_29
/* 804CD674  7C 7F 1B 78 */	mr r31, r3
/* 804CD678  3C 60 80 4D */	lis r3, l_cyl_src@ha /* 0x804CE3F4@ha */
/* 804CD67C  3B C3 E3 F4 */	addi r30, r3, l_cyl_src@l /* 0x804CE3F4@l */
/* 804CD680  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CD684  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CD688  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 804CD68C  38 7D 3E C8 */	addi r3, r29, 0x3ec8
/* 804CD690  3C 80 80 4D */	lis r4, d_a_obj_life_container__stringBase0@ha /* 0x804CE4A4@ha */
/* 804CD694  38 84 E4 A4 */	addi r4, r4, d_a_obj_life_container__stringBase0@l /* 0x804CE4A4@l */
/* 804CD698  4B E9 B2 FD */	bl strcmp
/* 804CD69C  2C 03 00 00 */	cmpwi r3, 0
/* 804CD6A0  40 82 00 F4 */	bne lbl_804CD794
/* 804CD6A4  A0 7F 09 48 */	lhz r3, 0x948(r31)
/* 804CD6A8  28 03 4E 20 */	cmplwi r3, 0x4e20
/* 804CD6AC  40 80 00 0C */	bge lbl_804CD6B8
/* 804CD6B0  38 03 00 01 */	addi r0, r3, 1
/* 804CD6B4  B0 1F 09 48 */	sth r0, 0x948(r31)
lbl_804CD6B8:
/* 804CD6B8  A0 1F 09 48 */	lhz r0, 0x948(r31)
/* 804CD6BC  28 00 00 01 */	cmplwi r0, 1
/* 804CD6C0  40 82 00 18 */	bne lbl_804CD6D8
/* 804CD6C4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 804CD6C8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804CD6CC  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 804CD6D0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 804CD6D4  48 00 00 2C */	b lbl_804CD700
lbl_804CD6D8:
/* 804CD6D8  28 00 00 32 */	cmplwi r0, 0x32
/* 804CD6DC  41 80 00 24 */	blt lbl_804CD700
/* 804CD6E0  28 00 07 D0 */	cmplwi r0, 0x7d0
/* 804CD6E4  40 80 00 1C */	bge lbl_804CD700
/* 804CD6E8  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 804CD6EC  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 804CD6F0  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 804CD6F4  C0 7E 00 98 */	lfs f3, 0x98(r30)
/* 804CD6F8  C0 9E 00 9C */	lfs f4, 0x9c(r30)
/* 804CD6FC  4B DA 22 81 */	bl cLib_addCalc__FPfffff
lbl_804CD700:
/* 804CD700  7F E3 FB 78 */	mr r3, r31
/* 804CD704  38 9F 07 A4 */	addi r4, r31, 0x7a4
/* 804CD708  4B B4 CF C5 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 804CD70C  38 7F 05 8C */	addi r3, r31, 0x58c
/* 804CD710  7F A4 EB 78 */	mr r4, r29
/* 804CD714  4B BA 93 99 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804CD718  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 804CD71C  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 804CD720  40 82 00 0C */	bne lbl_804CD72C
/* 804CD724  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804CD728  41 82 00 20 */	beq lbl_804CD748
lbl_804CD72C:
/* 804CD72C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 804CD730  D0 3F 04 F8 */	stfs f1, 0x4f8(r31)
/* 804CD734  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 804CD738  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804CD73C  D0 3F 05 00 */	stfs f1, 0x500(r31)
/* 804CD740  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 804CD744  48 00 00 38 */	b lbl_804CD77C
lbl_804CD748:
/* 804CD748  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 804CD74C  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804CD750  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CD754  40 80 00 28 */	bge lbl_804CD77C
/* 804CD758  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 804CD75C  80 1F 09 30 */	lwz r0, 0x930(r31)
/* 804CD760  1C 00 04 4C */	mulli r0, r0, 0x44c
/* 804CD764  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804CD768  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804CD76C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804CD770  7C 03 04 2E */	lfsx f0, r3, r0
/* 804CD774  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CD778  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_804CD77C:
/* 804CD77C  7F E3 FB 78 */	mr r3, r31
/* 804CD780  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 804CD784  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 804CD788  7D 89 03 A6 */	mtctr r12
/* 804CD78C  4E 80 04 21 */	bctrl 
/* 804CD790  48 00 00 AC */	b lbl_804CD83C
lbl_804CD794:
/* 804CD794  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 804CD798  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 804CD79C  40 82 00 10 */	bne lbl_804CD7AC
/* 804CD7A0  7F E3 FB 78 */	mr r3, r31
/* 804CD7A4  38 9F 07 A4 */	addi r4, r31, 0x7a4
/* 804CD7A8  4B B4 CF 25 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
lbl_804CD7AC:
/* 804CD7AC  38 7F 05 8C */	addi r3, r31, 0x58c
/* 804CD7B0  7F A4 EB 78 */	mr r4, r29
/* 804CD7B4  4B BA 92 F9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804CD7B8  7F E3 FB 78 */	mr r3, r31
/* 804CD7BC  4B FF FC 6D */	bl bg_check__11daObjLife_cFv
/* 804CD7C0  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 804CD7C4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804CD7C8  41 82 00 2C */	beq lbl_804CD7F4
/* 804CD7CC  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 804CD7D0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 804CD7D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CD7D8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 804CD7DC  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 804CD7E0  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 804CD7E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CD7E8  40 80 00 0C */	bge lbl_804CD7F4
/* 804CD7EC  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804CD7F0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_804CD7F4:
/* 804CD7F4  88 1F 09 36 */	lbz r0, 0x936(r31)
/* 804CD7F8  28 00 00 00 */	cmplwi r0, 0
/* 804CD7FC  41 82 00 30 */	beq lbl_804CD82C
/* 804CD800  7F E3 FB 78 */	mr r3, r31
/* 804CD804  4B C8 D8 B5 */	bl getData__12daItemBase_cFv
/* 804CD808  A8 83 00 1C */	lha r4, 0x1c(r3)
/* 804CD80C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804CD810  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804CD814  7C 00 23 D6 */	divw r0, r0, r4
/* 804CD818  7C 04 07 34 */	extsh r4, r0
/* 804CD81C  38 7F 09 62 */	addi r3, r31, 0x962
/* 804CD820  38 A0 00 05 */	li r5, 5
/* 804CD824  38 C0 07 D0 */	li r6, 0x7d0
/* 804CD828  4B DA 2D E1 */	bl cLib_addCalcAngleS2__FPssss
lbl_804CD82C:
/* 804CD82C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 804CD830  A8 1F 09 62 */	lha r0, 0x962(r31)
/* 804CD834  7C 03 02 14 */	add r0, r3, r0
/* 804CD838  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_804CD83C:
/* 804CD83C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CD840  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CD844  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 804CD848  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804CD84C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804CD850  7D 89 03 A6 */	mtctr r12
/* 804CD854  4E 80 04 21 */	bctrl 
/* 804CD858  28 03 00 00 */	cmplwi r3, 0
/* 804CD85C  40 82 00 30 */	bne lbl_804CD88C
/* 804CD860  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 804CD864  4B BB 6D F5 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 804CD868  28 03 00 00 */	cmplwi r3, 0
/* 804CD86C  41 82 00 20 */	beq lbl_804CD88C
/* 804CD870  83 DE 5D AC */	lwz r30, 0x5dac(r30)
/* 804CD874  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 804CD878  4B BB 5E 11 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 804CD87C  7C 1E 18 40 */	cmplw r30, r3
/* 804CD880  40 82 00 0C */	bne lbl_804CD88C
/* 804CD884  7F E3 FB 78 */	mr r3, r31
/* 804CD888  48 00 00 39 */	bl initActionOrderGetDemo__11daObjLife_cFv
lbl_804CD88C:
/* 804CD88C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804CD890  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 804CD894  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804CD898  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 804CD89C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804CD8A0  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 804CD8A4  38 60 00 01 */	li r3, 1
/* 804CD8A8  39 61 00 20 */	addi r11, r1, 0x20
/* 804CD8AC  4B E9 49 7D */	bl _restgpr_29
/* 804CD8B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CD8B4  7C 08 03 A6 */	mtlr r0
/* 804CD8B8  38 21 00 20 */	addi r1, r1, 0x20
/* 804CD8BC  4E 80 00 20 */	blr 
