lbl_8056F7E8:
/* 8056F7E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056F7EC  7C 08 02 A6 */	mflr r0
/* 8056F7F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056F7F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8056F7F8  4B DF 29 DD */	bl _savegpr_27
/* 8056F7FC  7C 7C 1B 78 */	mr r28, r3
/* 8056F800  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha /* 0x805716C8@ha */
/* 8056F804  3B E3 16 C8 */	addi r31, r3, m__18daNpc_Taro_Param_c@l /* 0x805716C8@l */
/* 8056F808  38 7F 00 00 */	addi r3, r31, 0
/* 8056F80C  AB C3 00 8E */	lha r30, 0x8e(r3)
/* 8056F810  3B A0 00 00 */	li r29, 0
/* 8056F814  A0 1C 0E 22 */	lhz r0, 0xe22(r28)
/* 8056F818  2C 00 00 02 */	cmpwi r0, 2
/* 8056F81C  41 82 00 8C */	beq lbl_8056F8A8
/* 8056F820  40 80 03 E4 */	bge lbl_8056FC04
/* 8056F824  2C 00 00 00 */	cmpwi r0, 0
/* 8056F828  40 80 00 0C */	bge lbl_8056F834
/* 8056F82C  48 00 03 D8 */	b lbl_8056FC04
/* 8056F830  48 00 03 D4 */	b lbl_8056FC04
lbl_8056F834:
/* 8056F834  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8056F838  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056F83C  41 82 00 24 */	beq lbl_8056F860
/* 8056F840  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8056F844  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8056F848  4B BD 60 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056F84C  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8056F850  38 00 00 1F */	li r0, 0x1f
/* 8056F854  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8056F858  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056F85C  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8056F860:
/* 8056F860  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8056F864  2C 00 00 19 */	cmpwi r0, 0x19
/* 8056F868  41 82 00 24 */	beq lbl_8056F88C
/* 8056F86C  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8056F870  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8056F874  4B BD 60 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056F878  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8056F87C  38 00 00 19 */	li r0, 0x19
/* 8056F880  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8056F884  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056F888  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_8056F88C:
/* 8056F88C  7F C0 0E 70 */	srawi r0, r30, 1
/* 8056F890  7C 60 01 94 */	addze r3, r0
/* 8056F894  7F C4 F3 78 */	mr r4, r30
/* 8056F898  48 00 19 8D */	bl func_80571224
/* 8056F89C  90 7C 11 9C */	stw r3, 0x119c(r28)
/* 8056F8A0  38 00 00 02 */	li r0, 2
/* 8056F8A4  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_8056F8A8:
/* 8056F8A8  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 8056F8AC  2C 00 00 00 */	cmpwi r0, 0
/* 8056F8B0  40 82 03 54 */	bne lbl_8056FC04
/* 8056F8B4  88 1C 0E 34 */	lbz r0, 0xe34(r28)
/* 8056F8B8  28 00 00 00 */	cmplwi r0, 0
/* 8056F8BC  40 82 00 64 */	bne lbl_8056F920
/* 8056F8C0  38 00 00 00 */	li r0, 0
/* 8056F8C4  98 1C 11 A0 */	stb r0, 0x11a0(r28)
/* 8056F8C8  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 8056F8CC  A8 1C 0D 7A */	lha r0, 0xd7a(r28)
/* 8056F8D0  7C 04 00 00 */	cmpw r4, r0
/* 8056F8D4  41 82 00 4C */	beq lbl_8056F920
/* 8056F8D8  7F 83 E3 78 */	mr r3, r28
/* 8056F8DC  4B BD B1 3D */	bl setAngle__8daNpcT_cFs
/* 8056F8E0  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8056F8E4  2C 00 00 00 */	cmpwi r0, 0
/* 8056F8E8  41 82 00 24 */	beq lbl_8056F90C
/* 8056F8EC  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8056F8F0  4B BD 5E 0D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056F8F4  38 00 00 00 */	li r0, 0
/* 8056F8F8  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 8056F8FC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056F900  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8056F904  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056F908  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_8056F90C:
/* 8056F90C  38 00 00 00 */	li r0, 0
/* 8056F910  B0 1C 0C D4 */	sth r0, 0xcd4(r28)
/* 8056F914  B0 1C 0C D6 */	sth r0, 0xcd6(r28)
/* 8056F918  38 00 00 01 */	li r0, 1
/* 8056F91C  98 1C 0C FF */	stb r0, 0xcff(r28)
lbl_8056F920:
/* 8056F920  88 1C 11 A0 */	lbz r0, 0x11a0(r28)
/* 8056F924  28 00 00 00 */	cmplwi r0, 0
/* 8056F928  40 82 00 14 */	bne lbl_8056F93C
/* 8056F92C  7F 83 E3 78 */	mr r3, r28
/* 8056F930  4B BD BA 09 */	bl srchPlayerActor__8daNpcT_cFv
/* 8056F934  2C 03 00 00 */	cmpwi r3, 0
/* 8056F938  41 82 00 BC */	beq lbl_8056F9F4
lbl_8056F93C:
/* 8056F93C  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8056F940  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056F944  41 82 00 24 */	beq lbl_8056F968
/* 8056F948  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8056F94C  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8056F950  4B BD 5F 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056F954  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8056F958  38 00 00 1F */	li r0, 0x1f
/* 8056F95C  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8056F960  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056F964  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8056F968:
/* 8056F968  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8056F96C  2C 00 00 00 */	cmpwi r0, 0
/* 8056F970  41 82 00 24 */	beq lbl_8056F994
/* 8056F974  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8056F978  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8056F97C  4B BD 5F 1D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056F980  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8056F984  38 00 00 00 */	li r0, 0
/* 8056F988  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8056F98C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056F990  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_8056F994:
/* 8056F994  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8056F998  2C 00 00 01 */	cmpwi r0, 1
/* 8056F99C  41 82 00 28 */	beq lbl_8056F9C4
/* 8056F9A0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8056F9A4  4B BD 5D 59 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056F9A8  38 00 00 00 */	li r0, 0
/* 8056F9AC  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 8056F9B0  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056F9B4  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8056F9B8  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056F9BC  38 00 00 01 */	li r0, 1
/* 8056F9C0  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_8056F9C4:
/* 8056F9C4  38 00 00 00 */	li r0, 0
/* 8056F9C8  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056F9CC  7F C0 0E 70 */	srawi r0, r30, 1
/* 8056F9D0  7C 60 01 94 */	addze r3, r0
/* 8056F9D4  7F C4 F3 78 */	mr r4, r30
/* 8056F9D8  48 00 18 4D */	bl func_80571224
/* 8056F9DC  90 7C 11 9C */	stw r3, 0x119c(r28)
/* 8056F9E0  A8 1C 0D D8 */	lha r0, 0xdd8(r28)
/* 8056F9E4  20 00 00 01 */	subfic r0, r0, 1
/* 8056F9E8  7C 00 00 34 */	cntlzw r0, r0
/* 8056F9EC  54 1D DE 3E */	rlwinm r29, r0, 0x1b, 0x18, 0x1f
/* 8056F9F0  48 00 01 E0 */	b lbl_8056FBD0
lbl_8056F9F4:
/* 8056F9F4  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8056F9F8  2C 00 00 00 */	cmpwi r0, 0
/* 8056F9FC  41 82 00 24 */	beq lbl_8056FA20
/* 8056FA00  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8056FA04  4B BD 5C F9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056FA08  38 00 00 00 */	li r0, 0
/* 8056FA0C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 8056FA10  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056FA14  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8056FA18  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056FA1C  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_8056FA20:
/* 8056FA20  38 00 00 00 */	li r0, 0
/* 8056FA24  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056FA28  A8 7C 04 B6 */	lha r3, 0x4b6(r28)
/* 8056FA2C  A8 1C 0D 7A */	lha r0, 0xd7a(r28)
/* 8056FA30  7C 03 00 00 */	cmpw r3, r0
/* 8056FA34  40 82 01 98 */	bne lbl_8056FBCC
/* 8056FA38  88 1C 10 C4 */	lbz r0, 0x10c4(r28)
/* 8056FA3C  28 00 00 09 */	cmplwi r0, 9
/* 8056FA40  41 82 01 90 */	beq lbl_8056FBD0
/* 8056FA44  80 7C 11 9C */	lwz r3, 0x119c(r28)
/* 8056FA48  2C 03 00 00 */	cmpwi r3, 0
/* 8056FA4C  40 82 00 94 */	bne lbl_8056FAE0
/* 8056FA50  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8056FA54  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056FA58  41 82 00 0C */	beq lbl_8056FA64
/* 8056FA5C  2C 00 00 20 */	cmpwi r0, 0x20
/* 8056FA60  40 82 01 70 */	bne lbl_8056FBD0
lbl_8056FA64:
/* 8056FA64  80 1C 0B 84 */	lwz r0, 0xb84(r28)
/* 8056FA68  2C 00 00 00 */	cmpwi r0, 0
/* 8056FA6C  40 81 01 64 */	ble lbl_8056FBD0
/* 8056FA70  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8056FA74  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056FA78  41 82 00 24 */	beq lbl_8056FA9C
/* 8056FA7C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8056FA80  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8056FA84  4B BD 5E 15 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056FA88  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8056FA8C  38 00 00 1F */	li r0, 0x1f
/* 8056FA90  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8056FA94  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056FA98  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8056FA9C:
/* 8056FA9C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8056FAA0  2C 00 00 19 */	cmpwi r0, 0x19
/* 8056FAA4  41 82 00 24 */	beq lbl_8056FAC8
/* 8056FAA8  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8056FAAC  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8056FAB0  4B BD 5D E9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056FAB4  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8056FAB8  38 00 00 19 */	li r0, 0x19
/* 8056FABC  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8056FAC0  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056FAC4  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_8056FAC8:
/* 8056FAC8  7F C0 0E 70 */	srawi r0, r30, 1
/* 8056FACC  7C 60 01 94 */	addze r3, r0
/* 8056FAD0  7F C4 F3 78 */	mr r4, r30
/* 8056FAD4  48 00 17 51 */	bl func_80571224
/* 8056FAD8  90 7C 11 9C */	stw r3, 0x119c(r28)
/* 8056FADC  48 00 00 F4 */	b lbl_8056FBD0
lbl_8056FAE0:
/* 8056FAE0  38 03 FF FF */	addi r0, r3, -1
/* 8056FAE4  90 1C 11 9C */	stw r0, 0x119c(r28)
/* 8056FAE8  80 1C 11 9C */	lwz r0, 0x119c(r28)
/* 8056FAEC  2C 00 00 00 */	cmpwi r0, 0
/* 8056FAF0  40 81 00 60 */	ble lbl_8056FB50
/* 8056FAF4  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8056FAF8  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056FAFC  41 82 00 24 */	beq lbl_8056FB20
/* 8056FB00  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8056FB04  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8056FB08  4B BD 5D 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056FB0C  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8056FB10  38 00 00 1F */	li r0, 0x1f
/* 8056FB14  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8056FB18  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056FB1C  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8056FB20:
/* 8056FB20  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8056FB24  2C 00 00 19 */	cmpwi r0, 0x19
/* 8056FB28  41 82 00 A8 */	beq lbl_8056FBD0
/* 8056FB2C  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8056FB30  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8056FB34  4B BD 5D 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056FB38  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8056FB3C  38 00 00 19 */	li r0, 0x19
/* 8056FB40  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8056FB44  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056FB48  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 8056FB4C  48 00 00 84 */	b lbl_8056FBD0
lbl_8056FB50:
/* 8056FB50  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8056FB54  2C 00 00 10 */	cmpwi r0, 0x10
/* 8056FB58  41 82 00 24 */	beq lbl_8056FB7C
/* 8056FB5C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8056FB60  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8056FB64  4B BD 5D 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056FB68  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8056FB6C  38 00 00 10 */	li r0, 0x10
/* 8056FB70  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8056FB74  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056FB78  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8056FB7C:
/* 8056FB7C  4B CF 7C F1 */	bl cM_rnd__Fv
/* 8056FB80  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 8056FB84  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8056FB88  40 80 00 0C */	bge lbl_8056FB94
/* 8056FB8C  3B C0 00 1F */	li r30, 0x1f
/* 8056FB90  48 00 00 08 */	b lbl_8056FB98
lbl_8056FB94:
/* 8056FB94  3B C0 00 20 */	li r30, 0x20
lbl_8056FB98:
/* 8056FB98  2C 1E 00 00 */	cmpwi r30, 0
/* 8056FB9C  41 80 00 34 */	blt lbl_8056FBD0
/* 8056FBA0  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8056FBA4  7C 1E 00 00 */	cmpw r30, r0
/* 8056FBA8  41 82 00 28 */	beq lbl_8056FBD0
/* 8056FBAC  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8056FBB0  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8056FBB4  4B BD 5C E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056FBB8  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8056FBBC  93 DC 0B 7C */	stw r30, 0xb7c(r28)
/* 8056FBC0  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056FBC4  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 8056FBC8  48 00 00 08 */	b lbl_8056FBD0
lbl_8056FBCC:
/* 8056FBCC  3B A0 00 01 */	li r29, 1
lbl_8056FBD0:
/* 8056FBD0  2C 1D 00 00 */	cmpwi r29, 0
/* 8056FBD4  41 82 00 30 */	beq lbl_8056FC04
/* 8056FBD8  7F 83 E3 78 */	mr r3, r28
/* 8056FBDC  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 8056FBE0  38 A0 00 1F */	li r5, 0x1f
/* 8056FBE4  38 C0 00 24 */	li r6, 0x24
/* 8056FBE8  38 E0 00 0F */	li r7, 0xf
/* 8056FBEC  39 00 00 00 */	li r8, 0
/* 8056FBF0  4B BD BA 59 */	bl step__8daNpcT_cFsiiii
/* 8056FBF4  2C 03 00 00 */	cmpwi r3, 0
/* 8056FBF8  41 82 00 0C */	beq lbl_8056FC04
/* 8056FBFC  38 00 00 01 */	li r0, 1
/* 8056FC00  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_8056FC04:
/* 8056FC04  38 60 00 01 */	li r3, 1
/* 8056FC08  39 61 00 20 */	addi r11, r1, 0x20
/* 8056FC0C  4B DF 26 15 */	bl _restgpr_27
/* 8056FC10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056FC14  7C 08 03 A6 */	mtlr r0
/* 8056FC18  38 21 00 20 */	addi r1, r1, 0x20
/* 8056FC1C  4E 80 00 20 */	blr 
