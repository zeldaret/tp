lbl_80B614D0:
/* 80B614D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B614D4  7C 08 02 A6 */	mflr r0
/* 80B614D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B614DC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B614E0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B614E4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80B614E8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80B614EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B614F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B614F4  7C 7E 1B 78 */	mr r30, r3
/* 80B614F8  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha
/* 80B614FC  3B E3 7C 38 */	addi r31, r3, m__17daNpc_ykW_Param_c@l
/* 80B61500  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80B61504  28 00 00 00 */	cmplwi r0, 0
/* 80B61508  40 82 01 9C */	bne lbl_80B616A4
/* 80B6150C  88 1E 10 68 */	lbz r0, 0x1068(r30)
/* 80B61510  28 00 00 00 */	cmplwi r0, 0
/* 80B61514  40 82 01 90 */	bne lbl_80B616A4
/* 80B61518  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B6151C  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B61520  38 A0 00 1F */	li r5, 0x1f
/* 80B61524  38 C0 00 00 */	li r6, 0
/* 80B61528  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6152C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B61530  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B61534  28 00 00 00 */	cmplwi r0, 0
/* 80B61538  40 82 00 10 */	bne lbl_80B61548
/* 80B6153C  88 1E 10 69 */	lbz r0, 0x1069(r30)
/* 80B61540  28 00 00 00 */	cmplwi r0, 0
/* 80B61544  41 82 00 10 */	beq lbl_80B61554
lbl_80B61548:
/* 80B61548  38 80 00 00 */	li r4, 0
/* 80B6154C  38 A0 00 00 */	li r5, 0
/* 80B61550  48 00 00 40 */	b lbl_80B61590
lbl_80B61554:
/* 80B61554  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B61558  28 00 00 00 */	cmplwi r0, 0
/* 80B6155C  41 82 00 10 */	beq lbl_80B6156C
/* 80B61560  38 80 00 00 */	li r4, 0
/* 80B61564  38 A0 00 00 */	li r5, 0
/* 80B61568  48 00 00 28 */	b lbl_80B61590
lbl_80B6156C:
/* 80B6156C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B61570  2C 00 00 00 */	cmpwi r0, 0
/* 80B61574  41 82 00 0C */	beq lbl_80B61580
/* 80B61578  38 80 00 00 */	li r4, 0
/* 80B6157C  38 A0 00 00 */	li r5, 0
lbl_80B61580:
/* 80B61580  88 1E 10 6A */	lbz r0, 0x106a(r30)
/* 80B61584  28 00 00 00 */	cmplwi r0, 0
/* 80B61588  41 82 00 08 */	beq lbl_80B61590
/* 80B6158C  38 C0 00 13 */	li r6, 0x13
lbl_80B61590:
/* 80B61590  38 00 00 79 */	li r0, 0x79
/* 80B61594  90 1E 0E 70 */	stw r0, 0xe70(r30)
/* 80B61598  90 9E 0E 6C */	stw r4, 0xe6c(r30)
/* 80B6159C  90 BE 0E 5C */	stw r5, 0xe5c(r30)
/* 80B615A0  3C 00 00 40 */	lis r0, 0x40
/* 80B615A4  90 1E 0E 54 */	stw r0, 0xe54(r30)
/* 80B615A8  90 DE 0E 44 */	stw r6, 0xe44(r30)
/* 80B615AC  80 1E 0E E0 */	lwz r0, 0xee0(r30)
/* 80B615B0  60 00 00 04 */	ori r0, r0, 4
/* 80B615B4  90 1E 0E E0 */	stw r0, 0xee0(r30)
/* 80B615B8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B615BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B615C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B615C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B615C8  C3 FE 0D EC */	lfs f31, 0xdec(r30)
/* 80B615CC  C3 DE 0D F0 */	lfs f30, 0xdf0(r30)
/* 80B615D0  3C 60 80 B7 */	lis r3, lit_5554@ha
/* 80B615D4  38 63 89 9C */	addi r3, r3, lit_5554@l
/* 80B615D8  38 9E 0F D8 */	addi r4, r30, 0xfd8
/* 80B615DC  4B 80 0A 6C */	b __ptmf_cmpr
/* 80B615E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B615E4  40 82 00 24 */	bne lbl_80B61608
/* 80B615E8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B615EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B615F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B615F4  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80B615F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B615FC  C3 FF 01 60 */	lfs f31, 0x160(r31)
/* 80B61600  C3 DF 01 64 */	lfs f30, 0x164(r31)
/* 80B61604  48 00 00 34 */	b lbl_80B61638
lbl_80B61608:
/* 80B61608  3C 60 80 B7 */	lis r3, lit_5558@ha
/* 80B6160C  38 63 89 A8 */	addi r3, r3, lit_5558@l
/* 80B61610  38 9E 0F D8 */	addi r4, r30, 0xfd8
/* 80B61614  4B 80 0A 34 */	b __ptmf_cmpr
/* 80B61618  2C 03 00 00 */	cmpwi r3, 0
/* 80B6161C  40 82 00 1C */	bne lbl_80B61638
/* 80B61620  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B61624  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B61628  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B6162C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B61630  C3 FF 01 68 */	lfs f31, 0x168(r31)
/* 80B61634  C3 DF 00 F4 */	lfs f30, 0xf4(r31)
lbl_80B61638:
/* 80B61638  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B6163C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B61640  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80B61644  4B 4A AD 98 */	b mDoMtx_YrotS__FPA4_fs
/* 80B61648  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B6164C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B61650  38 81 00 08 */	addi r4, r1, 8
/* 80B61654  7C 85 23 78 */	mr r5, r4
/* 80B61658  4B 7E 57 14 */	b PSMTXMultVec
/* 80B6165C  38 61 00 08 */	addi r3, r1, 8
/* 80B61660  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B61664  7C 65 1B 78 */	mr r5, r3
/* 80B61668  4B 7E 5A 28 */	b PSVECAdd
/* 80B6166C  38 7E 0F 68 */	addi r3, r30, 0xf68
/* 80B61670  FC 20 F8 90 */	fmr f1, f31
/* 80B61674  4B 70 DB 84 */	b SetH__8cM3dGCylFf
/* 80B61678  38 7E 0F 68 */	addi r3, r30, 0xf68
/* 80B6167C  FC 20 F0 90 */	fmr f1, f30
/* 80B61680  4B 70 DB 80 */	b SetR__8cM3dGCylFf
/* 80B61684  38 7E 0F 68 */	addi r3, r30, 0xf68
/* 80B61688  38 81 00 08 */	addi r4, r1, 8
/* 80B6168C  4B 70 DB 50 */	b SetC__8cM3dGCylFRC4cXyz
/* 80B61690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B61694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B61698  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B6169C  38 9E 0E 44 */	addi r4, r30, 0xe44
/* 80B616A0  4B 70 35 08 */	b Set__4cCcSFP8cCcD_Obj
lbl_80B616A4:
/* 80B616A4  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B616A8  81 9E 0E 80 */	lwz r12, 0xe80(r30)
/* 80B616AC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B616B0  7D 89 03 A6 */	mtctr r12
/* 80B616B4  4E 80 04 21 */	bctrl 
/* 80B616B8  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B616BC  81 9E 0E 80 */	lwz r12, 0xe80(r30)
/* 80B616C0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B616C4  7D 89 03 A6 */	mtctr r12
/* 80B616C8  4E 80 04 21 */	bctrl 
/* 80B616CC  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B616D0  81 9E 0E 80 */	lwz r12, 0xe80(r30)
/* 80B616D4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B616D8  7D 89 03 A6 */	mtctr r12
/* 80B616DC  4E 80 04 21 */	bctrl 
/* 80B616E0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B616E4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B616E8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80B616EC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80B616F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B616F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B616F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B616FC  7C 08 03 A6 */	mtlr r0
/* 80B61700  38 21 00 40 */	addi r1, r1, 0x40
/* 80B61704  4E 80 00 20 */	blr 
