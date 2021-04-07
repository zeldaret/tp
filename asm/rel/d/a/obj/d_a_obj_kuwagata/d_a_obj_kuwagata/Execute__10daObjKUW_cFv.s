lbl_80C4C514:
/* 80C4C514  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C4C518  7C 08 02 A6 */	mflr r0
/* 80C4C51C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C4C520  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C4C524  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C4C528  7C 7F 1B 78 */	mr r31, r3
/* 80C4C52C  3C 80 80 C5 */	lis r4, lit_3775@ha /* 0x80C4D490@ha */
/* 80C4C530  3B C4 D4 90 */	addi r30, r4, lit_3775@l /* 0x80C4D490@l */
/* 80C4C534  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80C4C538  2C 00 00 00 */	cmpwi r0, 0
/* 80C4C53C  40 81 00 70 */	ble lbl_80C4C5AC
/* 80C4C540  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 80C4C544  80 1F 09 BC */	lwz r0, 0x9bc(r31)
/* 80C4C548  C8 3E 00 D0 */	lfd f1, 0xd0(r30)
/* 80C4C54C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C4C550  3C 00 43 30 */	lis r0, 0x4330
/* 80C4C554  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C4C558  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C4C55C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C4C560  EC 02 00 2A */	fadds f0, f2, f0
/* 80C4C564  D0 1F 09 B8 */	stfs f0, 0x9b8(r31)
/* 80C4C568  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80C4C56C  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80C4C570  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C4C574  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80C4C578  38 81 00 20 */	addi r4, r1, 0x20
/* 80C4C57C  38 A0 00 00 */	li r5, 0
/* 80C4C580  38 C0 FF FF */	li r6, -1
/* 80C4C584  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80C4C588  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C4C58C  7D 89 03 A6 */	mtctr r12
/* 80C4C590  4E 80 04 21 */	bctrl 
/* 80C4C594  7F E3 FB 78 */	mr r3, r31
/* 80C4C598  4B 51 1A E1 */	bl Insect_GetDemoMain__9dInsect_cFv
/* 80C4C59C  7F E3 FB 78 */	mr r3, r31
/* 80C4C5A0  4B FF F8 FD */	bl ParticleSet__10daObjKUW_cFv
/* 80C4C5A4  38 60 00 01 */	li r3, 1
/* 80C4C5A8  48 00 01 CC */	b lbl_80C4C774
lbl_80C4C5AC:
/* 80C4C5AC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C4C5B0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80C4C5B4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C4C5B8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C4C5BC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C4C5C0  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80C4C5C4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C4C5C8  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80C4C5CC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C4C5D0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C4C5D4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C4C5D8  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80C4C5DC  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80C4C5E0  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80C4C5E4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4C5E8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C4C5EC  88 1F 09 C0 */	lbz r0, 0x9c0(r31)
/* 80C4C5F0  2C 00 00 01 */	cmpwi r0, 1
/* 80C4C5F4  41 82 01 08 */	beq lbl_80C4C6FC
/* 80C4C5F8  40 80 01 08 */	bge lbl_80C4C700
/* 80C4C5FC  2C 00 00 00 */	cmpwi r0, 0
/* 80C4C600  40 80 00 08 */	bge lbl_80C4C608
/* 80C4C604  48 00 00 FC */	b lbl_80C4C700
lbl_80C4C608:
/* 80C4C608  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80C4C60C  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80C4C610  40 82 00 0C */	bne lbl_80C4C61C
/* 80C4C614  4B FF F5 75 */	bl Action__10daObjKUW_cFv
/* 80C4C618  48 00 00 1C */	b lbl_80C4C634
lbl_80C4C61C:
/* 80C4C61C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C4C620  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80C4C624  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C4C628  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80C4C62C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C4C630  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
lbl_80C4C634:
/* 80C4C634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4C638  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4C63C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C4C640  38 00 00 FF */	li r0, 0xff
/* 80C4C644  90 01 00 08 */	stw r0, 8(r1)
/* 80C4C648  38 80 00 00 */	li r4, 0
/* 80C4C64C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C4C650  38 00 FF FF */	li r0, -1
/* 80C4C654  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C4C658  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C4C65C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C4C660  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C4C664  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C4C668  38 A0 00 00 */	li r5, 0
/* 80C4C66C  38 C0 0A 1C */	li r6, 0xa1c
/* 80C4C670  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C4C674  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C4C678  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80C4C67C  39 40 00 00 */	li r10, 0
/* 80C4C680  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80C4C684  4B 40 0E 49 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C4C688  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80C4C68C  7F E3 FB 78 */	mr r3, r31
/* 80C4C690  4B FF DB F9 */	bl SetCcSph__10daObjKUW_cFv
/* 80C4C694  7F E3 FB 78 */	mr r3, r31
/* 80C4C698  4B FF FC F5 */	bl ObjHit__10daObjKUW_cFv
/* 80C4C69C  7F E3 FB 78 */	mr r3, r31
/* 80C4C6A0  4B FF F9 21 */	bl BoomChk__10daObjKUW_cFv
/* 80C4C6A4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C4C6A8  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80C4C6AC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C4C6B0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C4C6B4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C4C6B8  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80C4C6BC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80C4C6C0  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80C4C6C4  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4C6C8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C4C6CC  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80C4C6D0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80C4C6D4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80C4C6D8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C4C6DC  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80C4C6E0  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80C4C6E4  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80C4C6E8  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4C6EC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C4C6F0  7F E3 FB 78 */	mr r3, r31
/* 80C4C6F4  4B FF F7 A9 */	bl ParticleSet__10daObjKUW_cFv
/* 80C4C6F8  48 00 00 08 */	b lbl_80C4C700
lbl_80C4C6FC:
/* 80C4C6FC  4B FF F5 51 */	bl ShopAction__10daObjKUW_cFv
lbl_80C4C700:
/* 80C4C700  88 1F 09 80 */	lbz r0, 0x980(r31)
/* 80C4C704  28 00 00 01 */	cmplwi r0, 1
/* 80C4C708  40 82 00 34 */	bne lbl_80C4C73C
/* 80C4C70C  88 1F 09 81 */	lbz r0, 0x981(r31)
/* 80C4C710  28 00 00 02 */	cmplwi r0, 2
/* 80C4C714  40 82 00 28 */	bne lbl_80C4C73C
/* 80C4C718  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80C4C71C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C4C720  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4C724  40 80 00 18 */	bge lbl_80C4C73C
/* 80C4C728  38 7F 07 50 */	addi r3, r31, 0x750
/* 80C4C72C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4C730  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4C734  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C4C738  4B 42 A3 75 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_80C4C73C:
/* 80C4C73C  80 7F 09 B0 */	lwz r3, 0x9b0(r31)
/* 80C4C740  4B 3C 0C E9 */	bl play__14mDoExt_baseAnmFv
/* 80C4C744  80 7F 09 B4 */	lwz r3, 0x9b4(r31)
/* 80C4C748  4B 3C 0C E1 */	bl play__14mDoExt_baseAnmFv
/* 80C4C74C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C4C750  7C 03 07 74 */	extsb r3, r0
/* 80C4C754  4B 3E 09 19 */	bl dComIfGp_getReverb__Fi
/* 80C4C758  7C 65 1B 78 */	mr r5, r3
/* 80C4C75C  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C4C760  38 80 00 00 */	li r4, 0
/* 80C4C764  4B 3C 49 4D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80C4C768  7F E3 FB 78 */	mr r3, r31
/* 80C4C76C  48 00 00 89 */	bl setBaseMtx__10daObjKUW_cFv
/* 80C4C770  38 60 00 01 */	li r3, 1
lbl_80C4C774:
/* 80C4C774  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C4C778  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C4C77C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C4C780  7C 08 03 A6 */	mtlr r0
/* 80C4C784  38 21 00 40 */	addi r1, r1, 0x40
/* 80C4C788  4E 80 00 20 */	blr 
