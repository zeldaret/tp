lbl_80BA0208:
/* 80BA0208  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA020C  7C 08 02 A6 */	mflr r0
/* 80BA0210  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA0214  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BA0218  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BA021C  7C 7E 1B 78 */	mr r30, r3
/* 80BA0220  3C 80 80 BA */	lis r4, lit_3695@ha /* 0x80BA1154@ha */
/* 80BA0224  3B E4 11 54 */	addi r31, r4, lit_3695@l /* 0x80BA1154@l */
/* 80BA0228  A8 83 04 E6 */	lha r4, 0x4e6(r3)
/* 80BA022C  A8 03 04 E0 */	lha r0, 0x4e0(r3)
/* 80BA0230  7C 04 00 00 */	cmpw r4, r0
/* 80BA0234  41 82 00 F4 */	beq lbl_80BA0328
/* 80BA0238  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80BA023C  38 80 00 BE */	li r4, 0xbe
/* 80BA0240  38 A0 00 05 */	li r5, 5
/* 80BA0244  4B 6D 09 4D */	bl cLib_chaseAngleS__FPsss
/* 80BA0248  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80BA024C  A8 9E 04 E0 */	lha r4, 0x4e0(r30)
/* 80BA0250  A8 BE 04 DC */	lha r5, 0x4dc(r30)
/* 80BA0254  4B 6D 09 3D */	bl cLib_chaseAngleS__FPsss
/* 80BA0258  2C 03 00 00 */	cmpwi r3, 0
/* 80BA025C  41 82 00 7C */	beq lbl_80BA02D8
/* 80BA0260  38 00 00 00 */	li r0, 0
/* 80BA0264  B0 1E 07 72 */	sth r0, 0x772(r30)
/* 80BA0268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA026C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA0270  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80BA0274  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80BA0278  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 80BA027C  90 03 05 70 */	stw r0, 0x570(r3)
/* 80BA0280  38 00 FF FF */	li r0, -1
/* 80BA0284  98 1E 07 74 */	stb r0, 0x774(r30)
/* 80BA0288  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BA028C  7C 03 07 74 */	extsb r3, r0
/* 80BA0290  4B 48 CD DD */	bl dComIfGp_getReverb__Fi
/* 80BA0294  7C 67 1B 78 */	mr r7, r3
/* 80BA0298  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801CB@ha */
/* 80BA029C  38 03 01 CB */	addi r0, r3, 0x01CB /* 0x000801CB@l */
/* 80BA02A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA02A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BA02A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BA02AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA02B0  38 81 00 0C */	addi r4, r1, 0xc
/* 80BA02B4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BA02B8  38 C0 00 00 */	li r6, 0
/* 80BA02BC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80BA02C0  FC 40 08 90 */	fmr f2, f1
/* 80BA02C4  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80BA02C8  FC 80 18 90 */	fmr f4, f3
/* 80BA02CC  39 00 00 00 */	li r8, 0
/* 80BA02D0  4B 70 B6 B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BA02D4  48 00 01 70 */	b lbl_80BA0444
lbl_80BA02D8:
/* 80BA02D8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BA02DC  7C 03 07 74 */	extsb r3, r0
/* 80BA02E0  4B 48 CD 8D */	bl dComIfGp_getReverb__Fi
/* 80BA02E4  7C 67 1B 78 */	mr r7, r3
/* 80BA02E8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801CA@ha */
/* 80BA02EC  38 03 01 CA */	addi r0, r3, 0x01CA /* 0x000801CA@l */
/* 80BA02F0  90 01 00 08 */	stw r0, 8(r1)
/* 80BA02F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BA02F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BA02FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA0300  38 81 00 08 */	addi r4, r1, 8
/* 80BA0304  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BA0308  38 C0 00 00 */	li r6, 0
/* 80BA030C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80BA0310  FC 40 08 90 */	fmr f2, f1
/* 80BA0314  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80BA0318  FC 80 18 90 */	fmr f4, f3
/* 80BA031C  39 00 00 00 */	li r8, 0
/* 80BA0320  4B 70 C1 ED */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BA0324  48 00 01 20 */	b lbl_80BA0444
lbl_80BA0328:
/* 80BA0328  88 9E 07 74 */	lbz r4, 0x774(r30)
/* 80BA032C  7C 80 07 75 */	extsb. r0, r4
/* 80BA0330  41 82 00 6C */	beq lbl_80BA039C
/* 80BA0334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA0338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA033C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80BA0340  7C 80 07 75 */	extsb. r0, r4
/* 80BA0344  40 80 00 2C */	bge lbl_80BA0370
/* 80BA0348  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BA034C  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80BA0350  7D 89 03 A6 */	mtctr r12
/* 80BA0354  4E 80 04 21 */	bctrl 
/* 80BA0358  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80BA035C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA0360  40 81 00 E4 */	ble lbl_80BA0444
/* 80BA0364  38 00 00 01 */	li r0, 1
/* 80BA0368  98 1E 07 74 */	stb r0, 0x774(r30)
/* 80BA036C  48 00 00 D8 */	b lbl_80BA0444
lbl_80BA0370:
/* 80BA0370  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BA0374  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80BA0378  7D 89 03 A6 */	mtctr r12
/* 80BA037C  4E 80 04 21 */	bctrl 
/* 80BA0380  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80BA0384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA0388  4C 40 13 82 */	cror 2, 0, 2
/* 80BA038C  40 82 00 B8 */	bne lbl_80BA0444
/* 80BA0390  38 00 00 00 */	li r0, 0
/* 80BA0394  98 1E 07 74 */	stb r0, 0x774(r30)
/* 80BA0398  48 00 00 AC */	b lbl_80BA0444
lbl_80BA039C:
/* 80BA039C  88 9E 07 76 */	lbz r4, 0x776(r30)
/* 80BA03A0  7C 80 07 75 */	extsb. r0, r4
/* 80BA03A4  41 82 00 18 */	beq lbl_80BA03BC
/* 80BA03A8  7C 84 07 74 */	extsb r4, r4
/* 80BA03AC  88 1E 07 77 */	lbz r0, 0x777(r30)
/* 80BA03B0  7C 00 07 74 */	extsb r0, r0
/* 80BA03B4  7C 04 00 00 */	cmpw r4, r0
/* 80BA03B8  41 82 00 10 */	beq lbl_80BA03C8
lbl_80BA03BC:
/* 80BA03BC  38 00 00 00 */	li r0, 0
/* 80BA03C0  B0 1E 07 72 */	sth r0, 0x772(r30)
/* 80BA03C4  48 00 00 80 */	b lbl_80BA0444
lbl_80BA03C8:
/* 80BA03C8  A8 1E 07 70 */	lha r0, 0x770(r30)
/* 80BA03CC  2C 00 00 00 */	cmpwi r0, 0
/* 80BA03D0  40 82 00 74 */	bne lbl_80BA0444
/* 80BA03D4  A8 9E 07 72 */	lha r4, 0x772(r30)
/* 80BA03D8  38 04 00 01 */	addi r0, r4, 1
/* 80BA03DC  B0 1E 07 72 */	sth r0, 0x772(r30)
/* 80BA03E0  7C 00 07 34 */	extsh r0, r0
/* 80BA03E4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80BA03E8  40 81 00 5C */	ble lbl_80BA0444
/* 80BA03EC  88 9E 07 75 */	lbz r4, 0x775(r30)
/* 80BA03F0  88 1E 07 76 */	lbz r0, 0x776(r30)
/* 80BA03F4  7C 00 07 74 */	extsb r0, r0
/* 80BA03F8  7C 80 22 14 */	add r4, r0, r4
/* 80BA03FC  38 84 00 04 */	addi r4, r4, 4
/* 80BA0400  54 80 F0 02 */	slwi r0, r4, 0x1e
/* 80BA0404  54 84 0F FE */	srwi r4, r4, 0x1f
/* 80BA0408  7C 04 00 50 */	subf r0, r4, r0
/* 80BA040C  54 00 10 3E */	rotlwi r0, r0, 2
/* 80BA0410  7C 00 22 14 */	add r0, r0, r4
/* 80BA0414  98 1E 07 75 */	stb r0, 0x775(r30)
/* 80BA0418  38 00 00 00 */	li r0, 0
/* 80BA041C  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80BA0420  4B FF FC 41 */	bl setNextAngle__14daObjYtaihou_cFv
/* 80BA0424  7F C3 F3 78 */	mr r3, r30
/* 80BA0428  4B FF FB 85 */	bl saveAngle__14daObjYtaihou_cFv
/* 80BA042C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA0430  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA0434  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80BA0438  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80BA043C  60 00 08 00 */	ori r0, r0, 0x800
/* 80BA0440  90 03 05 70 */	stw r0, 0x570(r3)
lbl_80BA0444:
/* 80BA0444  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BA0448  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BA044C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA0450  7C 08 03 A6 */	mtlr r0
/* 80BA0454  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA0458  4E 80 00 20 */	blr 
