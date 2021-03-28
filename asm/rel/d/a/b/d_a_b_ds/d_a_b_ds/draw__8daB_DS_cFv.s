lbl_805CB4F0:
/* 805CB4F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805CB4F4  7C 08 02 A6 */	mflr r0
/* 805CB4F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805CB4FC  39 61 00 40 */	addi r11, r1, 0x40
/* 805CB500  4B D9 6C D8 */	b _savegpr_28
/* 805CB504  7C 7F 1B 78 */	mr r31, r3
/* 805CB508  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805CB50C  3B C3 CA 54 */	addi r30, r3, lit_3932@l
/* 805CB510  88 1F 08 56 */	lbz r0, 0x856(r31)
/* 805CB514  28 00 00 01 */	cmplwi r0, 1
/* 805CB518  41 82 00 20 */	beq lbl_805CB538
/* 805CB51C  28 00 00 03 */	cmplwi r0, 3
/* 805CB520  41 82 00 18 */	beq lbl_805CB538
/* 805CB524  28 00 00 04 */	cmplwi r0, 4
/* 805CB528  41 82 00 10 */	beq lbl_805CB538
/* 805CB52C  88 1F 08 52 */	lbz r0, 0x852(r31)
/* 805CB530  28 00 00 64 */	cmplwi r0, 0x64
/* 805CB534  40 82 00 0C */	bne lbl_805CB540
lbl_805CB538:
/* 805CB538  38 60 00 01 */	li r3, 1
/* 805CB53C  48 00 05 54 */	b lbl_805CBA90
lbl_805CB540:
/* 805CB540  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805CB544  83 A3 00 04 */	lwz r29, 4(r3)
/* 805CB548  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805CB54C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805CB550  38 80 00 00 */	li r4, 0
/* 805CB554  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805CB558  38 DF 01 0C */	addi r6, r31, 0x10c
/* 805CB55C  4B BD 82 68 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805CB560  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805CB564  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805CB568  80 9D 00 04 */	lwz r4, 4(r29)
/* 805CB56C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805CB570  4B BD 98 30 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805CB574  83 9D 00 04 */	lwz r28, 4(r29)
/* 805CB578  88 1F 08 56 */	lbz r0, 0x856(r31)
/* 805CB57C  28 00 00 02 */	cmplwi r0, 2
/* 805CB580  40 82 01 9C */	bne lbl_805CB71C
/* 805CB584  88 1F 08 50 */	lbz r0, 0x850(r31)
/* 805CB588  28 00 00 00 */	cmplwi r0, 0
/* 805CB58C  40 82 00 E8 */	bne lbl_805CB674
/* 805CB590  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 805CB594  80 63 00 08 */	lwz r3, 8(r3)
/* 805CB598  28 03 00 00 */	cmplwi r3, 0
/* 805CB59C  41 82 00 68 */	beq lbl_805CB604
/* 805CB5A0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CB5A4  38 80 00 02 */	li r4, 2
/* 805CB5A8  81 83 00 00 */	lwz r12, 0(r3)
/* 805CB5AC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805CB5B0  7D 89 03 A6 */	mtctr r12
/* 805CB5B4  4E 80 04 21 */	bctrl 
/* 805CB5B8  C0 1F 07 E8 */	lfs f0, 0x7e8(r31)
/* 805CB5BC  FC 00 00 1E */	fctiwz f0, f0
/* 805CB5C0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805CB5C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CB5C8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 805CB5CC  B0 03 00 06 */	sth r0, 6(r3)
/* 805CB5D0  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 805CB5D4  80 63 00 04 */	lwz r3, 4(r3)
/* 805CB5D8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CB5DC  38 80 00 01 */	li r4, 1
/* 805CB5E0  81 83 00 00 */	lwz r12, 0(r3)
/* 805CB5E4  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 805CB5E8  7D 89 03 A6 */	mtctr r12
/* 805CB5EC  4E 80 04 21 */	bctrl 
/* 805CB5F0  C0 1F 07 EC */	lfs f0, 0x7ec(r31)
/* 805CB5F4  FC 00 00 1E */	fctiwz f0, f0
/* 805CB5F8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805CB5FC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805CB600  98 03 00 03 */	stb r0, 3(r3)
lbl_805CB604:
/* 805CB604  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805CB608  4B A4 5B B8 */	b entryDL__16mDoExt_McaMorfSOFv
/* 805CB60C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 805CB610  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805CB614  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805CB618  EC 21 00 2A */	fadds f1, f1, f0
/* 805CB61C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805CB620  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805CB624  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805CB628  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 805CB62C  C0 1F 07 F8 */	lfs f0, 0x7f8(r31)
/* 805CB630  D0 1F 04 50 */	stfs f0, 0x450(r31)
/* 805CB634  80 7F 08 48 */	lwz r3, 0x848(r31)
/* 805CB638  38 80 00 00 */	li r4, 0
/* 805CB63C  7F A5 EB 78 */	mr r5, r29
/* 805CB640  38 C1 00 14 */	addi r6, r1, 0x14
/* 805CB644  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 805CB648  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805CB64C  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 805CB650  C0 9F 09 48 */	lfs f4, 0x948(r31)
/* 805CB654  38 FF 09 A0 */	addi r7, r31, 0x9a0
/* 805CB658  39 1F 01 0C */	addi r8, r31, 0x10c
/* 805CB65C  39 20 00 00 */	li r9, 0
/* 805CB660  C0 BE 00 08 */	lfs f5, 8(r30)
/* 805CB664  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 805CB668  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 805CB66C  4B A6 32 A4 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 805CB670  90 7F 08 48 */	stw r3, 0x848(r31)
lbl_805CB674:
/* 805CB674  88 1F 08 5B */	lbz r0, 0x85b(r31)
/* 805CB678  28 00 00 00 */	cmplwi r0, 0
/* 805CB67C  40 82 00 54 */	bne lbl_805CB6D0
/* 805CB680  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805CB684  83 83 00 04 */	lwz r28, 4(r3)
/* 805CB688  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805CB68C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805CB690  38 80 00 00 */	li r4, 0
/* 805CB694  38 BF 06 E8 */	addi r5, r31, 0x6e8
/* 805CB698  38 DF 01 0C */	addi r6, r31, 0x10c
/* 805CB69C  4B BD 81 28 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805CB6A0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805CB6A4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805CB6A8  80 9C 00 04 */	lwz r4, 4(r28)
/* 805CB6AC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805CB6B0  4B BD 96 F0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805CB6B4  80 9C 00 04 */	lwz r4, 4(r28)
/* 805CB6B8  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 805CB6BC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805CB6C0  38 84 00 58 */	addi r4, r4, 0x58
/* 805CB6C4  4B A4 20 E4 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 805CB6C8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805CB6CC  4B A4 5A F4 */	b entryDL__16mDoExt_McaMorfSOFv
lbl_805CB6D0:
/* 805CB6D0  88 1F 08 5F */	lbz r0, 0x85f(r31)
/* 805CB6D4  28 00 00 00 */	cmplwi r0, 0
/* 805CB6D8  41 82 00 3C */	beq lbl_805CB714
/* 805CB6DC  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 805CB6E0  80 83 00 04 */	lwz r4, 4(r3)
/* 805CB6E4  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 805CB6E8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805CB6EC  38 84 00 58 */	addi r4, r4, 0x58
/* 805CB6F0  4B A4 20 B8 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 805CB6F4  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 805CB6F8  80 83 00 04 */	lwz r4, 4(r3)
/* 805CB6FC  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 805CB700  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805CB704  38 84 00 58 */	addi r4, r4, 0x58
/* 805CB708  4B A4 1F D0 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 805CB70C  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 805CB710  4B A4 25 B4 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_805CB714:
/* 805CB714  38 60 00 01 */	li r3, 1
/* 805CB718  48 00 03 78 */	b lbl_805CBA90
lbl_805CB71C:
/* 805CB71C  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 805CB720  80 63 00 08 */	lwz r3, 8(r3)
/* 805CB724  28 03 00 00 */	cmplwi r3, 0
/* 805CB728  41 82 00 68 */	beq lbl_805CB790
/* 805CB72C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CB730  38 80 00 02 */	li r4, 2
/* 805CB734  81 83 00 00 */	lwz r12, 0(r3)
/* 805CB738  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805CB73C  7D 89 03 A6 */	mtctr r12
/* 805CB740  4E 80 04 21 */	bctrl 
/* 805CB744  C0 1F 07 E8 */	lfs f0, 0x7e8(r31)
/* 805CB748  FC 00 00 1E */	fctiwz f0, f0
/* 805CB74C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805CB750  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805CB754  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 805CB758  B0 03 00 06 */	sth r0, 6(r3)
/* 805CB75C  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 805CB760  80 63 00 04 */	lwz r3, 4(r3)
/* 805CB764  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CB768  38 80 00 01 */	li r4, 1
/* 805CB76C  81 83 00 00 */	lwz r12, 0(r3)
/* 805CB770  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 805CB774  7D 89 03 A6 */	mtctr r12
/* 805CB778  4E 80 04 21 */	bctrl 
/* 805CB77C  C0 1F 07 EC */	lfs f0, 0x7ec(r31)
/* 805CB780  FC 00 00 1E */	fctiwz f0, f0
/* 805CB784  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805CB788  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CB78C  98 03 00 03 */	stb r0, 3(r3)
lbl_805CB790:
/* 805CB790  3B 80 00 00 */	li r28, 0
/* 805CB794  88 1F 08 52 */	lbz r0, 0x852(r31)
/* 805CB798  28 00 00 00 */	cmplwi r0, 0
/* 805CB79C  41 82 00 0C */	beq lbl_805CB7A8
/* 805CB7A0  3B 80 00 06 */	li r28, 6
/* 805CB7A4  48 00 00 24 */	b lbl_805CB7C8
lbl_805CB7A8:
/* 805CB7A8  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805CB7AC  28 00 00 01 */	cmplwi r0, 1
/* 805CB7B0  40 82 00 0C */	bne lbl_805CB7BC
/* 805CB7B4  3B 80 00 04 */	li r28, 4
/* 805CB7B8  48 00 00 10 */	b lbl_805CB7C8
lbl_805CB7BC:
/* 805CB7BC  28 00 00 02 */	cmplwi r0, 2
/* 805CB7C0  40 82 00 08 */	bne lbl_805CB7C8
/* 805CB7C4  3B 80 00 05 */	li r28, 5
lbl_805CB7C8:
/* 805CB7C8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 805CB7CC  88 9F 08 4F */	lbz r4, 0x84f(r31)
/* 805CB7D0  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 805CB7D4  7C 7F 02 14 */	add r3, r31, r0
/* 805CB7D8  C0 03 07 DC */	lfs f0, 0x7dc(r3)
/* 805CB7DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805CB7E0  41 82 00 58 */	beq lbl_805CB838
/* 805CB7E4  80 7D 00 04 */	lwz r3, 4(r29)
/* 805CB7E8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805CB7EC  38 04 00 04 */	addi r0, r4, 4
/* 805CB7F0  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 805CB7F4  7C 63 00 2E */	lwzx r3, r3, r0
/* 805CB7F8  28 03 00 00 */	cmplwi r3, 0
/* 805CB7FC  41 82 00 3C */	beq lbl_805CB838
/* 805CB800  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CB804  38 80 00 01 */	li r4, 1
/* 805CB808  81 83 00 00 */	lwz r12, 0(r3)
/* 805CB80C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 805CB810  7D 89 03 A6 */	mtctr r12
/* 805CB814  4E 80 04 21 */	bctrl 
/* 805CB818  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805CB81C  54 00 10 3A */	slwi r0, r0, 2
/* 805CB820  7C 9F 02 14 */	add r4, r31, r0
/* 805CB824  C0 04 07 DC */	lfs f0, 0x7dc(r4)
/* 805CB828  FC 00 00 1E */	fctiwz f0, f0
/* 805CB82C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805CB830  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805CB834  98 03 00 03 */	stb r0, 3(r3)
lbl_805CB838:
/* 805CB838  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805CB83C  28 00 00 00 */	cmplwi r0, 0
/* 805CB840  41 82 00 64 */	beq lbl_805CB8A4
/* 805CB844  28 00 00 03 */	cmplwi r0, 3
/* 805CB848  40 80 00 5C */	bge lbl_805CB8A4
/* 805CB84C  38 80 00 04 */	li r4, 4
/* 805CB850  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 805CB854  38 63 00 01 */	addi r3, r3, 1
/* 805CB858  38 03 FF FC */	addi r0, r3, -4
/* 805CB85C  7C 09 03 A6 */	mtctr r0
/* 805CB860  2C 03 00 04 */	cmpwi r3, 4
/* 805CB864  40 81 00 84 */	ble lbl_805CB8E8
lbl_805CB868:
/* 805CB868  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805CB86C  80 63 00 04 */	lwz r3, 4(r3)
/* 805CB870  80 63 00 04 */	lwz r3, 4(r3)
/* 805CB874  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805CB878  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 805CB87C  7C 63 00 2E */	lwzx r3, r3, r0
/* 805CB880  80 63 00 08 */	lwz r3, 8(r3)
/* 805CB884  28 03 00 00 */	cmplwi r3, 0
/* 805CB888  41 82 00 10 */	beq lbl_805CB898
/* 805CB88C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805CB890  60 00 00 01 */	ori r0, r0, 1
/* 805CB894  90 03 00 0C */	stw r0, 0xc(r3)
lbl_805CB898:
/* 805CB898  38 84 00 01 */	addi r4, r4, 1
/* 805CB89C  42 00 FF CC */	bdnz lbl_805CB868
/* 805CB8A0  48 00 00 48 */	b lbl_805CB8E8
lbl_805CB8A4:
/* 805CB8A4  38 80 00 04 */	li r4, 4
/* 805CB8A8  38 00 00 03 */	li r0, 3
/* 805CB8AC  7C 09 03 A6 */	mtctr r0
lbl_805CB8B0:
/* 805CB8B0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805CB8B4  80 63 00 04 */	lwz r3, 4(r3)
/* 805CB8B8  80 63 00 04 */	lwz r3, 4(r3)
/* 805CB8BC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805CB8C0  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 805CB8C4  7C 63 00 2E */	lwzx r3, r3, r0
/* 805CB8C8  80 63 00 08 */	lwz r3, 8(r3)
/* 805CB8CC  28 03 00 00 */	cmplwi r3, 0
/* 805CB8D0  41 82 00 10 */	beq lbl_805CB8E0
/* 805CB8D4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805CB8D8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CB8DC  90 03 00 0C */	stw r0, 0xc(r3)
lbl_805CB8E0:
/* 805CB8E0  38 84 00 01 */	addi r4, r4, 1
/* 805CB8E4  42 00 FF CC */	bdnz lbl_805CB8B0
lbl_805CB8E8:
/* 805CB8E8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805CB8EC  4B A4 58 D4 */	b entryDL__16mDoExt_McaMorfSOFv
/* 805CB8F0  88 1F 08 5B */	lbz r0, 0x85b(r31)
/* 805CB8F4  28 00 00 00 */	cmplwi r0, 0
/* 805CB8F8  40 82 00 54 */	bne lbl_805CB94C
/* 805CB8FC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805CB900  83 83 00 04 */	lwz r28, 4(r3)
/* 805CB904  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805CB908  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805CB90C  38 80 00 00 */	li r4, 0
/* 805CB910  38 BF 06 E8 */	addi r5, r31, 0x6e8
/* 805CB914  38 DF 01 0C */	addi r6, r31, 0x10c
/* 805CB918  4B BD 7E AC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805CB91C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805CB920  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805CB924  80 9C 00 04 */	lwz r4, 4(r28)
/* 805CB928  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805CB92C  4B BD 94 74 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805CB930  80 9C 00 04 */	lwz r4, 4(r28)
/* 805CB934  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 805CB938  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805CB93C  38 84 00 58 */	addi r4, r4, 0x58
/* 805CB940  4B A4 1E 68 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 805CB944  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805CB948  4B A4 58 78 */	b entryDL__16mDoExt_McaMorfSOFv
lbl_805CB94C:
/* 805CB94C  88 1F 08 5F */	lbz r0, 0x85f(r31)
/* 805CB950  28 00 00 00 */	cmplwi r0, 0
/* 805CB954  41 82 00 3C */	beq lbl_805CB990
/* 805CB958  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 805CB95C  80 83 00 04 */	lwz r4, 4(r3)
/* 805CB960  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 805CB964  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805CB968  38 84 00 58 */	addi r4, r4, 0x58
/* 805CB96C  4B A4 1E 3C */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 805CB970  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 805CB974  80 83 00 04 */	lwz r4, 4(r3)
/* 805CB978  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805CB97C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805CB980  38 84 00 58 */	addi r4, r4, 0x58
/* 805CB984  4B A4 1D 54 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 805CB988  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 805CB98C  4B A4 23 38 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_805CB990:
/* 805CB990  88 1F 08 5C */	lbz r0, 0x85c(r31)
/* 805CB994  28 00 00 00 */	cmplwi r0, 0
/* 805CB998  41 82 00 88 */	beq lbl_805CBA20
/* 805CB99C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 805CB9A0  83 83 00 04 */	lwz r28, 4(r3)
/* 805CB9A4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805CB9A8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805CB9AC  38 80 00 03 */	li r4, 3
/* 805CB9B0  38 BF 06 E8 */	addi r5, r31, 0x6e8
/* 805CB9B4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 805CB9B8  4B BD 7E 0C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805CB9BC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805CB9C0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805CB9C4  80 9C 00 04 */	lwz r4, 4(r28)
/* 805CB9C8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805CB9CC  4B BD 93 D4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805CB9D0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 805CB9D4  80 63 00 04 */	lwz r3, 4(r3)
/* 805CB9D8  80 63 00 04 */	lwz r3, 4(r3)
/* 805CB9DC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805CB9E0  80 63 00 08 */	lwz r3, 8(r3)
/* 805CB9E4  80 63 00 08 */	lwz r3, 8(r3)
/* 805CB9E8  28 03 00 00 */	cmplwi r3, 0
/* 805CB9EC  41 82 00 2C */	beq lbl_805CBA18
/* 805CB9F0  88 1F 08 5D */	lbz r0, 0x85d(r31)
/* 805CB9F4  28 00 00 00 */	cmplwi r0, 0
/* 805CB9F8  40 82 00 14 */	bne lbl_805CBA0C
/* 805CB9FC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805CBA00  60 00 00 01 */	ori r0, r0, 1
/* 805CBA04  90 03 00 0C */	stw r0, 0xc(r3)
/* 805CBA08  48 00 00 10 */	b lbl_805CBA18
lbl_805CBA0C:
/* 805CBA0C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805CBA10  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805CBA14  90 03 00 0C */	stw r0, 0xc(r3)
lbl_805CBA18:
/* 805CBA18  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 805CBA1C  4B A4 57 A4 */	b entryDL__16mDoExt_McaMorfSOFv
lbl_805CBA20:
/* 805CBA20  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 805CBA24  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805CBA28  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805CBA2C  EC 21 00 2A */	fadds f1, f1, f0
/* 805CBA30  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805CBA34  D0 01 00 08 */	stfs f0, 8(r1)
/* 805CBA38  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805CBA3C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805CBA40  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805CBA44  80 A3 00 04 */	lwz r5, 4(r3)
/* 805CBA48  C0 1F 07 F8 */	lfs f0, 0x7f8(r31)
/* 805CBA4C  D0 1F 04 50 */	stfs f0, 0x450(r31)
/* 805CBA50  80 7F 08 48 */	lwz r3, 0x848(r31)
/* 805CBA54  38 80 00 00 */	li r4, 0
/* 805CBA58  38 C1 00 08 */	addi r6, r1, 8
/* 805CBA5C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 805CBA60  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805CBA64  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 805CBA68  C0 9F 09 48 */	lfs f4, 0x948(r31)
/* 805CBA6C  38 FF 09 A0 */	addi r7, r31, 0x9a0
/* 805CBA70  39 1F 01 0C */	addi r8, r31, 0x10c
/* 805CBA74  39 20 00 00 */	li r9, 0
/* 805CBA78  C0 BE 00 08 */	lfs f5, 8(r30)
/* 805CBA7C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 805CBA80  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 805CBA84  4B A6 2E 8C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 805CBA88  90 7F 08 48 */	stw r3, 0x848(r31)
/* 805CBA8C  38 60 00 01 */	li r3, 1
lbl_805CBA90:
/* 805CBA90  39 61 00 40 */	addi r11, r1, 0x40
/* 805CBA94  4B D9 67 90 */	b _restgpr_28
/* 805CBA98  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805CBA9C  7C 08 03 A6 */	mtlr r0
/* 805CBAA0  38 21 00 40 */	addi r1, r1, 0x40
/* 805CBAA4  4E 80 00 20 */	blr 
