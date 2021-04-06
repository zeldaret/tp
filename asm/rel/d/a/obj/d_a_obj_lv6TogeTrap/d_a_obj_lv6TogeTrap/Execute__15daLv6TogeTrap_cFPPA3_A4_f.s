lbl_80C7A700:
/* 80C7A700  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C7A704  7C 08 02 A6 */	mflr r0
/* 80C7A708  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C7A70C  39 61 00 70 */	addi r11, r1, 0x70
/* 80C7A710  4B 6E 7A C9 */	bl _savegpr_28
/* 80C7A714  7C 7D 1B 78 */	mr r29, r3
/* 80C7A718  7C 9E 23 78 */	mr r30, r4
/* 80C7A71C  3C 80 80 C8 */	lis r4, lit_3631@ha /* 0x80C7C618@ha */
/* 80C7A720  3B E4 C6 18 */	addi r31, r4, lit_3631@l /* 0x80C7C618@l */
/* 80C7A724  48 00 02 59 */	bl moveLift__15daLv6TogeTrap_cFv
/* 80C7A728  38 7D 06 50 */	addi r3, r29, 0x650
/* 80C7A72C  4B 40 9D 35 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C7A730  28 03 00 00 */	cmplwi r3, 0
/* 80C7A734  41 82 00 8C */	beq lbl_80C7A7C0
/* 80C7A738  38 7D 06 50 */	addi r3, r29, 0x650
/* 80C7A73C  4B 40 9D BD */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C7A740  28 03 00 00 */	cmplwi r3, 0
/* 80C7A744  41 82 00 84 */	beq lbl_80C7A7C8
/* 80C7A748  4B 5E 93 01 */	bl GetAc__8cCcD_ObjFv
/* 80C7A74C  3B 80 00 01 */	li r28, 1
/* 80C7A750  28 03 00 00 */	cmplwi r3, 0
/* 80C7A754  41 82 00 74 */	beq lbl_80C7A7C8
/* 80C7A758  A8 03 00 08 */	lha r0, 8(r3)
/* 80C7A75C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C7A760  40 82 00 28 */	bne lbl_80C7A788
/* 80C7A764  38 7D 06 50 */	addi r3, r29, 0x650
/* 80C7A768  4B 40 9D E1 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C7A76C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C7A770  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80C7A774  41 82 00 14 */	beq lbl_80C7A788
/* 80C7A778  88 1D 08 D0 */	lbz r0, 0x8d0(r29)
/* 80C7A77C  28 00 00 00 */	cmplwi r0, 0
/* 80C7A780  41 82 00 08 */	beq lbl_80C7A788
/* 80C7A784  3B 80 00 00 */	li r28, 0
lbl_80C7A788:
/* 80C7A788  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80C7A78C  41 82 00 3C */	beq lbl_80C7A7C8
/* 80C7A790  38 7D 06 50 */	addi r3, r29, 0x650
/* 80C7A794  4B 40 9D E9 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80C7A798  38 80 00 01 */	li r4, 1
/* 80C7A79C  4B 40 9E 15 */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80C7A7A0  7C 64 1B 78 */	mr r4, r3
/* 80C7A7A4  38 7D 08 D4 */	addi r3, r29, 0x8d4
/* 80C7A7A8  38 A0 00 09 */	li r5, 9
/* 80C7A7AC  38 C0 00 00 */	li r6, 0
/* 80C7A7B0  4B 64 3C F5 */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 80C7A7B4  38 00 00 01 */	li r0, 1
/* 80C7A7B8  98 1D 08 D0 */	stb r0, 0x8d0(r29)
/* 80C7A7BC  48 00 00 0C */	b lbl_80C7A7C8
lbl_80C7A7C0:
/* 80C7A7C0  38 00 00 00 */	li r0, 0
/* 80C7A7C4  98 1D 08 D0 */	stb r0, 0x8d0(r29)
lbl_80C7A7C8:
/* 80C7A7C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7A7CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7A7D0  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 80C7A7D4  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80C7A7D8  A8 DD 04 E8 */	lha r6, 0x4e8(r29)
/* 80C7A7DC  4B 39 1A 2D */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80C7A7E0  C0 1D 05 FC */	lfs f0, 0x5fc(r29)
/* 80C7A7E4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C7A7E8  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C7A7EC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C7A7F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C7A7F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C7A7F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C7A7FC  38 81 00 44 */	addi r4, r1, 0x44
/* 80C7A800  38 A1 00 38 */	addi r5, r1, 0x38
/* 80C7A804  4B 6C C5 69 */	bl PSMTXMultVec
/* 80C7A808  38 7D 07 74 */	addi r3, r29, 0x774
/* 80C7A80C  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 80C7A810  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80C7A814  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C7A818  4B 5F 4E F1 */	bl SetR__8cM3dGSphFf
/* 80C7A81C  C0 7D 04 D0 */	lfs f3, 0x4d0(r29)
/* 80C7A820  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80C7A824  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C7A828  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C7A82C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80C7A830  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80C7A834  C0 3D 06 10 */	lfs f1, 0x610(r29)
/* 80C7A838  EC 03 00 72 */	fmuls f0, f3, f1
/* 80C7A83C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C7A840  EC 02 00 72 */	fmuls f0, f2, f1
/* 80C7A844  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C7A848  38 61 00 14 */	addi r3, r1, 0x14
/* 80C7A84C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C7A850  38 A1 00 38 */	addi r5, r1, 0x38
/* 80C7A854  4B 5E C2 91 */	bl __pl__4cXyzCFRC3Vec
/* 80C7A858  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C7A85C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C7A860  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80C7A864  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C7A868  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C7A86C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C7A870  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80C7A874  EC 01 00 2A */	fadds f0, f1, f0
/* 80C7A878  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C7A87C  38 7D 07 74 */	addi r3, r29, 0x774
/* 80C7A880  38 81 00 20 */	addi r4, r1, 0x20
/* 80C7A884  4B 5F 4D C5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80C7A888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C7A88C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7A890  3B 83 23 3C */	addi r28, r3, 0x233c
/* 80C7A894  7F 83 E3 78 */	mr r3, r28
/* 80C7A898  38 9D 06 50 */	addi r4, r29, 0x650
/* 80C7A89C  4B 5E A3 0D */	bl Set__4cCcSFP8cCcD_Obj
/* 80C7A8A0  38 7D 08 AC */	addi r3, r29, 0x8ac
/* 80C7A8A4  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80C7A8A8  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 80C7A8AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C7A8B0  4B 5F 49 51 */	bl SetR__8cM3dGCylFf
/* 80C7A8B4  38 61 00 08 */	addi r3, r1, 8
/* 80C7A8B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C7A8BC  38 A1 00 38 */	addi r5, r1, 0x38
/* 80C7A8C0  4B 5E C2 25 */	bl __pl__4cXyzCFRC3Vec
/* 80C7A8C4  38 7D 08 AC */	addi r3, r29, 0x8ac
/* 80C7A8C8  38 81 00 08 */	addi r4, r1, 8
/* 80C7A8CC  4B 5F 49 11 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C7A8D0  38 7D 08 AC */	addi r3, r29, 0x8ac
/* 80C7A8D4  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80C7A8D8  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 80C7A8DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C7A8E0  4B 5F 49 19 */	bl SetH__8cM3dGCylFf
/* 80C7A8E4  7F 83 E3 78 */	mr r3, r28
/* 80C7A8E8  38 9D 07 88 */	addi r4, r29, 0x788
/* 80C7A8EC  4B 5E A2 BD */	bl Set__4cCcSFP8cCcD_Obj
/* 80C7A8F0  38 7D 06 30 */	addi r3, r29, 0x630
/* 80C7A8F4  4B 40 8F 3D */	bl Move__10dCcD_GSttsFv
/* 80C7A8F8  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80C7A8FC  3C 60 80 C8 */	lis r3, l_HIO@ha /* 0x80C7CA64@ha */
/* 80C7A900  38 63 CA 64 */	addi r3, r3, l_HIO@l /* 0x80C7CA64@l */
/* 80C7A904  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80C7A908  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C7A90C  FC 00 00 1E */	fctiwz f0, f0
/* 80C7A910  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80C7A914  80 61 00 54 */	lwz r3, 0x54(r1)
/* 80C7A918  A8 1D 06 00 */	lha r0, 0x600(r29)
/* 80C7A91C  7C 00 1A 14 */	add r0, r0, r3
/* 80C7A920  B0 1D 06 00 */	sth r0, 0x600(r29)
/* 80C7A924  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80C7A928  38 03 00 24 */	addi r0, r3, 0x24
/* 80C7A92C  90 1E 00 00 */	stw r0, 0(r30)
/* 80C7A930  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C7A934  7C 03 07 74 */	extsb r3, r0
/* 80C7A938  4B 3B 27 35 */	bl dComIfGp_getReverb__Fi
/* 80C7A93C  7C 65 1B 78 */	mr r5, r3
/* 80C7A940  38 7D 08 D4 */	addi r3, r29, 0x8d4
/* 80C7A944  38 80 00 00 */	li r4, 0
/* 80C7A948  81 9D 08 E4 */	lwz r12, 0x8e4(r29)
/* 80C7A94C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C7A950  7D 89 03 A6 */	mtctr r12
/* 80C7A954  4E 80 04 21 */	bctrl 
/* 80C7A958  7F A3 EB 78 */	mr r3, r29
/* 80C7A95C  4B FF F5 B5 */	bl setBaseMtx__15daLv6TogeTrap_cFv
/* 80C7A960  38 60 00 01 */	li r3, 1
/* 80C7A964  39 61 00 70 */	addi r11, r1, 0x70
/* 80C7A968  4B 6E 78 BD */	bl _restgpr_28
/* 80C7A96C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C7A970  7C 08 03 A6 */	mtlr r0
/* 80C7A974  38 21 00 70 */	addi r1, r1, 0x70
/* 80C7A978  4E 80 00 20 */	blr 
