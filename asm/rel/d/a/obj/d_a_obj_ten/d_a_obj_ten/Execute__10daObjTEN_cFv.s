lbl_80D0A644:
/* 80D0A644  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D0A648  7C 08 02 A6 */	mflr r0
/* 80D0A64C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D0A650  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D0A654  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D0A658  7C 7F 1B 78 */	mr r31, r3
/* 80D0A65C  3C 80 80 D1 */	lis r4, lit_3775@ha
/* 80D0A660  3B C4 B8 F0 */	addi r30, r4, lit_3775@l
/* 80D0A664  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80D0A668  2C 00 00 00 */	cmpwi r0, 0
/* 80D0A66C  40 81 00 70 */	ble lbl_80D0A6DC
/* 80D0A670  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80D0A674  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80D0A678  C8 3E 00 C0 */	lfd f1, 0xc0(r30)
/* 80D0A67C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D0A680  3C 00 43 30 */	lis r0, 0x4330
/* 80D0A684  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D0A688  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80D0A68C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D0A690  EC 02 00 2A */	fadds f0, f2, f0
/* 80D0A694  D0 1F 06 18 */	stfs f0, 0x618(r31)
/* 80D0A698  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80D0A69C  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80D0A6A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D0A6A4  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80D0A6A8  38 81 00 20 */	addi r4, r1, 0x20
/* 80D0A6AC  38 A0 00 00 */	li r5, 0
/* 80D0A6B0  38 C0 FF FF */	li r6, -1
/* 80D0A6B4  81 9F 09 C4 */	lwz r12, 0x9c4(r31)
/* 80D0A6B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80D0A6BC  7D 89 03 A6 */	mtctr r12
/* 80D0A6C0  4E 80 04 21 */	bctrl 
/* 80D0A6C4  7F E3 FB 78 */	mr r3, r31
/* 80D0A6C8  4B 45 39 B0 */	b Insect_GetDemoMain__9dInsect_cFv
/* 80D0A6CC  7F E3 FB 78 */	mr r3, r31
/* 80D0A6D0  4B FF FA 85 */	bl ParticleSet__10daObjTEN_cFv
/* 80D0A6D4  38 60 00 01 */	li r3, 1
/* 80D0A6D8  48 00 01 D8 */	b lbl_80D0A8B0
lbl_80D0A6DC:
/* 80D0A6DC  4B FF F9 FD */	bl checkGroundPos__10daObjTEN_cFv
/* 80D0A6E0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D0A6E4  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D0A6E8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D0A6EC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D0A6F0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D0A6F4  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80D0A6F8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D0A6FC  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80D0A700  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D0A704  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80D0A708  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D0A70C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80D0A710  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80D0A714  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80D0A718  EC 01 00 2A */	fadds f0, f1, f0
/* 80D0A71C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80D0A720  88 1F 06 24 */	lbz r0, 0x624(r31)
/* 80D0A724  2C 00 00 01 */	cmpwi r0, 1
/* 80D0A728  41 82 01 0C */	beq lbl_80D0A834
/* 80D0A72C  40 80 01 10 */	bge lbl_80D0A83C
/* 80D0A730  2C 00 00 00 */	cmpwi r0, 0
/* 80D0A734  40 80 00 08 */	bge lbl_80D0A73C
/* 80D0A738  48 00 01 04 */	b lbl_80D0A83C
lbl_80D0A73C:
/* 80D0A73C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80D0A740  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80D0A744  40 82 00 10 */	bne lbl_80D0A754
/* 80D0A748  7F E3 FB 78 */	mr r3, r31
/* 80D0A74C  4B FF F8 0D */	bl Action__10daObjTEN_cFv
/* 80D0A750  48 00 00 1C */	b lbl_80D0A76C
lbl_80D0A754:
/* 80D0A754  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D0A758  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80D0A75C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D0A760  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80D0A764  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D0A768  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
lbl_80D0A76C:
/* 80D0A76C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0A770  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D0A774  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D0A778  38 00 00 FF */	li r0, 0xff
/* 80D0A77C  90 01 00 08 */	stw r0, 8(r1)
/* 80D0A780  38 80 00 00 */	li r4, 0
/* 80D0A784  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D0A788  38 00 FF FF */	li r0, -1
/* 80D0A78C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D0A790  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D0A794  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D0A798  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D0A79C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D0A7A0  38 A0 00 00 */	li r5, 0
/* 80D0A7A4  38 C0 0A 1C */	li r6, 0xa1c
/* 80D0A7A8  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80D0A7AC  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80D0A7B0  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80D0A7B4  39 40 00 00 */	li r10, 0
/* 80D0A7B8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D0A7BC  4B 34 2D 10 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D0A7C0  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80D0A7C4  7F E3 FB 78 */	mr r3, r31
/* 80D0A7C8  4B FF E0 99 */	bl SetCcSph__10daObjTEN_cFv
/* 80D0A7CC  7F E3 FB 78 */	mr r3, r31
/* 80D0A7D0  48 00 00 F9 */	bl ObjHit__10daObjTEN_cFv
/* 80D0A7D4  7F E3 FB 78 */	mr r3, r31
/* 80D0A7D8  4B FF FA A1 */	bl BoomChk__10daObjTEN_cFv
/* 80D0A7DC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D0A7E0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80D0A7E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D0A7E8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80D0A7EC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D0A7F0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80D0A7F4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80D0A7F8  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D0A7FC  EC 00 08 2A */	fadds f0, f0, f1
/* 80D0A800  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80D0A804  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80D0A808  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D0A80C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80D0A810  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D0A814  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80D0A818  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80D0A81C  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80D0A820  EC 00 08 2A */	fadds f0, f0, f1
/* 80D0A824  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80D0A828  7F E3 FB 78 */	mr r3, r31
/* 80D0A82C  4B FF F9 29 */	bl ParticleSet__10daObjTEN_cFv
/* 80D0A830  48 00 00 0C */	b lbl_80D0A83C
lbl_80D0A834:
/* 80D0A834  7F E3 FB 78 */	mr r3, r31
/* 80D0A838  4B FF F7 E5 */	bl ShopAction__10daObjTEN_cFv
lbl_80D0A83C:
/* 80D0A83C  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 80D0A840  28 00 00 01 */	cmplwi r0, 1
/* 80D0A844  40 82 00 34 */	bne lbl_80D0A878
/* 80D0A848  88 1F 05 E9 */	lbz r0, 0x5e9(r31)
/* 80D0A84C  28 00 00 02 */	cmplwi r0, 2
/* 80D0A850  40 82 00 28 */	bne lbl_80D0A878
/* 80D0A854  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80D0A858  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D0A85C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0A860  40 80 00 18 */	bge lbl_80D0A878
/* 80D0A864  38 7F 07 AC */	addi r3, r31, 0x7ac
/* 80D0A868  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D0A86C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D0A870  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D0A874  4B 36 C2 38 */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_80D0A878:
/* 80D0A878  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D0A87C  7C 03 07 74 */	extsb r3, r0
/* 80D0A880  4B 32 27 EC */	b dComIfGp_getReverb__Fi
/* 80D0A884  7C 65 1B 78 */	mr r5, r3
/* 80D0A888  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80D0A88C  38 80 00 00 */	li r4, 0
/* 80D0A890  4B 30 68 20 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80D0A894  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80D0A898  4B 30 2B 90 */	b play__14mDoExt_baseAnmFv
/* 80D0A89C  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 80D0A8A0  4B 30 2B 88 */	b play__14mDoExt_baseAnmFv
/* 80D0A8A4  7F E3 FB 78 */	mr r3, r31
/* 80D0A8A8  48 00 03 8D */	bl setBaseMtx__10daObjTEN_cFv
/* 80D0A8AC  38 60 00 01 */	li r3, 1
lbl_80D0A8B0:
/* 80D0A8B0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D0A8B4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D0A8B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D0A8BC  7C 08 03 A6 */	mtlr r0
/* 80D0A8C0  38 21 00 40 */	addi r1, r1, 0x40
/* 80D0A8C4  4E 80 00 20 */	blr 
