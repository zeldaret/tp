lbl_8068E708:
/* 8068E708  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8068E70C  7C 08 02 A6 */	mflr r0
/* 8068E710  90 01 00 54 */	stw r0, 0x54(r1)
/* 8068E714  39 61 00 50 */	addi r11, r1, 0x50
/* 8068E718  4B CD 3A B9 */	bl _savegpr_26
/* 8068E71C  7C 7E 1B 78 */	mr r30, r3
/* 8068E720  3C 80 80 69 */	lis r4, lit_3788@ha /* 0x80690DD8@ha */
/* 8068E724  3B E4 0D D8 */	addi r31, r4, lit_3788@l /* 0x80690DD8@l */
/* 8068E728  38 00 00 05 */	li r0, 5
/* 8068E72C  B0 03 06 A4 */	sth r0, 0x6a4(r3)
/* 8068E730  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8068E734  2C 00 00 01 */	cmpwi r0, 1
/* 8068E738  41 82 00 54 */	beq lbl_8068E78C
/* 8068E73C  40 80 00 10 */	bge lbl_8068E74C
/* 8068E740  2C 00 00 00 */	cmpwi r0, 0
/* 8068E744  40 80 00 14 */	bge lbl_8068E758
/* 8068E748  48 00 01 64 */	b lbl_8068E8AC
lbl_8068E74C:
/* 8068E74C  2C 00 00 03 */	cmpwi r0, 3
/* 8068E750  40 80 01 5C */	bge lbl_8068E8AC
/* 8068E754  48 00 01 18 */	b lbl_8068E86C
lbl_8068E758:
/* 8068E758  38 80 00 04 */	li r4, 4
/* 8068E75C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8068E760  38 A0 00 00 */	li r5, 0
/* 8068E764  FC 40 08 90 */	fmr f2, f1
/* 8068E768  4B FF FA 8D */	bl anm_init__FP10e_bs_classifUcf
/* 8068E76C  38 00 00 01 */	li r0, 1
/* 8068E770  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068E774  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8068E778  4B BD 91 DD */	bl cM_rndF__Ff
/* 8068E77C  FC 00 08 1E */	fctiwz f0, f1
/* 8068E780  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8068E784  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8068E788  B0 1E 06 9C */	sth r0, 0x69c(r30)
lbl_8068E78C:
/* 8068E78C  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 8068E790  2C 00 00 00 */	cmpwi r0, 0
/* 8068E794  40 82 01 18 */	bne lbl_8068E8AC
/* 8068E798  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 8068E79C  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8068E7A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068E7A4  40 80 01 08 */	bge lbl_8068E8AC
/* 8068E7A8  38 00 00 02 */	li r0, 2
/* 8068E7AC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8068E7B0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8068E7B4  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8068E7B8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8068E7BC  A8 1E 06 84 */	lha r0, 0x684(r30)
/* 8068E7C0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8068E7C4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8068E7C8  38 00 00 01 */	li r0, 1
/* 8068E7CC  98 1E 06 94 */	stb r0, 0x694(r30)
/* 8068E7D0  3B 40 00 00 */	li r26, 0
/* 8068E7D4  3B A0 00 00 */	li r29, 0
/* 8068E7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068E7DC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068E7E0  3C 60 80 69 */	lis r3, ap_name_3966@ha /* 0x80690EFC@ha */
/* 8068E7E4  3B 83 0E FC */	addi r28, r3, ap_name_3966@l /* 0x80690EFC@l */
lbl_8068E7E8:
/* 8068E7E8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8068E7EC  38 80 00 00 */	li r4, 0
/* 8068E7F0  90 81 00 08 */	stw r4, 8(r1)
/* 8068E7F4  38 00 FF FF */	li r0, -1
/* 8068E7F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8068E7FC  90 81 00 10 */	stw r4, 0x10(r1)
/* 8068E800  90 81 00 14 */	stw r4, 0x14(r1)
/* 8068E804  90 81 00 18 */	stw r4, 0x18(r1)
/* 8068E808  38 80 00 00 */	li r4, 0
/* 8068E80C  7C BC EA 2E */	lhzx r5, r28, r29
/* 8068E810  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 8068E814  38 E0 00 00 */	li r7, 0
/* 8068E818  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8068E81C  39 20 00 00 */	li r9, 0
/* 8068E820  39 40 00 FF */	li r10, 0xff
/* 8068E824  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068E828  4B 9B E2 69 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8068E82C  3B 5A 00 01 */	addi r26, r26, 1
/* 8068E830  2C 1A 00 01 */	cmpwi r26, 1
/* 8068E834  3B BD 00 02 */	addi r29, r29, 2
/* 8068E838  40 81 FF B0 */	ble lbl_8068E7E8
/* 8068E83C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700AF@ha */
/* 8068E840  38 03 00 AF */	addi r0, r3, 0x00AF /* 0x000700AF@l */
/* 8068E844  90 01 00 20 */	stw r0, 0x20(r1)
/* 8068E848  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8068E84C  38 81 00 20 */	addi r4, r1, 0x20
/* 8068E850  38 A0 00 00 */	li r5, 0
/* 8068E854  38 C0 FF FF */	li r6, -1
/* 8068E858  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 8068E85C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068E860  7D 89 03 A6 */	mtctr r12
/* 8068E864  4E 80 04 21 */	bctrl 
/* 8068E868  48 00 00 44 */	b lbl_8068E8AC
lbl_8068E86C:
/* 8068E86C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8068E870  38 80 00 01 */	li r4, 1
/* 8068E874  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8068E878  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8068E87C  40 82 00 18 */	bne lbl_8068E894
/* 8068E880  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8068E884  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8068E888  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8068E88C  41 82 00 08 */	beq lbl_8068E894
/* 8068E890  38 80 00 00 */	li r4, 0
lbl_8068E894:
/* 8068E894  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8068E898  41 82 00 14 */	beq lbl_8068E8AC
/* 8068E89C  38 00 00 02 */	li r0, 2
/* 8068E8A0  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 8068E8A4  38 00 00 00 */	li r0, 0
/* 8068E8A8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8068E8AC:
/* 8068E8AC  39 61 00 50 */	addi r11, r1, 0x50
/* 8068E8B0  4B CD 39 6D */	bl _restgpr_26
/* 8068E8B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8068E8B8  7C 08 03 A6 */	mtlr r0
/* 8068E8BC  38 21 00 50 */	addi r1, r1, 0x50
/* 8068E8C0  4E 80 00 20 */	blr 
