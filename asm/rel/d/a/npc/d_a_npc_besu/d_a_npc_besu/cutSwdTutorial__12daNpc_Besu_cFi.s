lbl_8053A7A0:
/* 8053A7A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8053A7A4  7C 08 02 A6 */	mflr r0
/* 8053A7A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8053A7AC  39 61 00 40 */	addi r11, r1, 0x40
/* 8053A7B0  4B E2 7A 20 */	b _savegpr_26
/* 8053A7B4  7C 7D 1B 78 */	mr r29, r3
/* 8053A7B8  7C 9A 23 78 */	mr r26, r4
/* 8053A7BC  3C 60 80 54 */	lis r3, m__18daNpc_Besu_Param_c@ha
/* 8053A7C0  3B E3 E7 54 */	addi r31, r3, m__18daNpc_Besu_Param_c@l
/* 8053A7C4  3B C0 00 00 */	li r30, 0
/* 8053A7C8  3B 60 FF FF */	li r27, -1
/* 8053A7CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053A7D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053A7D4  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 8053A7D8  7F 83 E3 78 */	mr r3, r28
/* 8053A7DC  3C A0 80 54 */	lis r5, struct_8053E908+0x0@ha
/* 8053A7E0  38 A5 E9 08 */	addi r5, r5, struct_8053E908+0x0@l
/* 8053A7E4  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 8053A7E8  38 C0 00 03 */	li r6, 3
/* 8053A7EC  4B B0 D9 00 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053A7F0  28 03 00 00 */	cmplwi r3, 0
/* 8053A7F4  41 82 00 08 */	beq lbl_8053A7FC
/* 8053A7F8  83 63 00 00 */	lwz r27, 0(r3)
lbl_8053A7FC:
/* 8053A7FC  7F 83 E3 78 */	mr r3, r28
/* 8053A800  7F 44 D3 78 */	mr r4, r26
/* 8053A804  4B B0 D5 48 */	b getIsAddvance__16dEvent_manager_cFi
/* 8053A808  2C 03 00 00 */	cmpwi r3, 0
/* 8053A80C  41 82 00 D4 */	beq lbl_8053A8E0
/* 8053A810  2C 1B 00 47 */	cmpwi r27, 0x47
/* 8053A814  41 82 00 14 */	beq lbl_8053A828
/* 8053A818  40 80 00 C8 */	bge lbl_8053A8E0
/* 8053A81C  2C 1B 00 02 */	cmpwi r27, 2
/* 8053A820  40 80 00 C0 */	bge lbl_8053A8E0
/* 8053A824  48 00 00 BC */	b lbl_8053A8E0
lbl_8053A828:
/* 8053A828  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8053A82C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8053A830  4B C0 B0 68 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053A834  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8053A838  38 00 00 01 */	li r0, 1
/* 8053A83C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8053A840  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053A844  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
/* 8053A848  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8053A84C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8053A850  4B C0 B0 48 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053A854  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8053A858  38 00 00 02 */	li r0, 2
/* 8053A85C  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8053A860  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053A864  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 8053A868  7F A3 EB 78 */	mr r3, r29
/* 8053A86C  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 8053A870  4B C1 01 A8 */	b setAngle__8daNpcT_cFs
/* 8053A874  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 8053A878  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8053A87C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053A880  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8053A884  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8053A888  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8053A88C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8053A890  A8 9D 0D 7A */	lha r4, 0xd7a(r29)
/* 8053A894  4B AD 1B 48 */	b mDoMtx_YrotS__FPA4_fs
/* 8053A898  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8053A89C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8053A8A0  38 81 00 14 */	addi r4, r1, 0x14
/* 8053A8A4  7C 85 23 78 */	mr r5, r4
/* 8053A8A8  4B E0 C4 C4 */	b PSMTXMultVec
/* 8053A8AC  38 61 00 14 */	addi r3, r1, 0x14
/* 8053A8B0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8053A8B4  7C 65 1B 78 */	mr r5, r3
/* 8053A8B8  4B E0 C7 D8 */	b PSVECAdd
/* 8053A8BC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8053A8C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8053A8C4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8053A8C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8053A8CC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8053A8D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8053A8D4  7F A3 EB 78 */	mr r3, r29
/* 8053A8D8  38 81 00 08 */	addi r4, r1, 8
/* 8053A8DC  4B C1 00 2C */	b setPos__8daNpcT_cF4cXyz
lbl_8053A8E0:
/* 8053A8E0  2C 1B 00 01 */	cmpwi r27, 1
/* 8053A8E4  41 82 00 78 */	beq lbl_8053A95C
/* 8053A8E8  40 80 00 10 */	bge lbl_8053A8F8
/* 8053A8EC  2C 1B 00 00 */	cmpwi r27, 0
/* 8053A8F0  40 80 00 14 */	bge lbl_8053A904
/* 8053A8F4  48 00 01 5C */	b lbl_8053AA50
lbl_8053A8F8:
/* 8053A8F8  2C 1B 00 47 */	cmpwi r27, 0x47
/* 8053A8FC  41 82 01 1C */	beq lbl_8053AA18
/* 8053A900  48 00 01 50 */	b lbl_8053AA50
lbl_8053A904:
/* 8053A904  38 00 00 01 */	li r0, 1
/* 8053A908  90 1D 0D BC */	stw r0, 0xdbc(r29)
/* 8053A90C  7F A3 EB 78 */	mr r3, r29
/* 8053A910  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 8053A914  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8053A918  7D 89 03 A6 */	mtctr r12
/* 8053A91C  4E 80 04 21 */	bctrl 
/* 8053A920  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8053A924  2C 00 00 00 */	cmpwi r0, 0
/* 8053A928  41 82 00 24 */	beq lbl_8053A94C
/* 8053A92C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8053A930  4B C0 AD CC */	b remove__18daNpcT_ActorMngr_cFv
/* 8053A934  38 00 00 00 */	li r0, 0
/* 8053A938  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8053A93C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053A940  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8053A944  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8053A948  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8053A94C:
/* 8053A94C  38 00 00 00 */	li r0, 0
/* 8053A950  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8053A954  3B C0 00 01 */	li r30, 1
/* 8053A958  48 00 00 F8 */	b lbl_8053AA50
lbl_8053A95C:
/* 8053A95C  38 00 00 01 */	li r0, 1
/* 8053A960  90 1D 0D BC */	stw r0, 0xdbc(r29)
/* 8053A964  7F A3 EB 78 */	mr r3, r29
/* 8053A968  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 8053A96C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8053A970  7D 89 03 A6 */	mtctr r12
/* 8053A974  4E 80 04 21 */	bctrl 
/* 8053A978  38 7D 10 D0 */	addi r3, r29, 0x10d0
/* 8053A97C  4B C0 AD 8C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053A980  7C 7C 1B 78 */	mr r28, r3
/* 8053A984  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8053A988  4B C0 AD 80 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053A98C  7C 63 E0 50 */	subf r3, r3, r28
/* 8053A990  30 03 FF FF */	addic r0, r3, -1
/* 8053A994  7C 00 19 10 */	subfe r0, r0, r3
/* 8053A998  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8053A99C  40 82 00 10 */	bne lbl_8053A9AC
/* 8053A9A0  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8053A9A4  2C 00 00 02 */	cmpwi r0, 2
/* 8053A9A8  41 82 00 30 */	beq lbl_8053A9D8
lbl_8053A9AC:
/* 8053A9AC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8053A9B0  4B C0 AD 4C */	b remove__18daNpcT_ActorMngr_cFv
/* 8053A9B4  38 00 00 00 */	li r0, 0
/* 8053A9B8  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8053A9BC  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053A9C0  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8053A9C4  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8053A9C8  38 00 00 02 */	li r0, 2
/* 8053A9CC  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 8053A9D0  38 00 00 01 */	li r0, 1
/* 8053A9D4  48 00 00 08 */	b lbl_8053A9DC
lbl_8053A9D8:
/* 8053A9D8  38 00 00 00 */	li r0, 0
lbl_8053A9DC:
/* 8053A9DC  2C 00 00 00 */	cmpwi r0, 0
/* 8053A9E0  41 82 00 28 */	beq lbl_8053AA08
/* 8053A9E4  7F 83 E3 78 */	mr r3, r28
/* 8053A9E8  4B AD E2 F8 */	b fopAc_IsActor__FPv
/* 8053A9EC  2C 03 00 00 */	cmpwi r3, 0
/* 8053A9F0  41 82 00 18 */	beq lbl_8053AA08
/* 8053A9F4  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8053A9F8  7F 84 E3 78 */	mr r4, r28
/* 8053A9FC  4B C0 AC E4 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8053AA00  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8053AA04  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
lbl_8053AA08:
/* 8053AA08  38 00 00 00 */	li r0, 0
/* 8053AA0C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8053AA10  3B C0 00 01 */	li r30, 1
/* 8053AA14  48 00 00 3C */	b lbl_8053AA50
lbl_8053AA18:
/* 8053AA18  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8053AA1C  2C 00 00 04 */	cmpwi r0, 4
/* 8053AA20  41 82 00 28 */	beq lbl_8053AA48
/* 8053AA24  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8053AA28  4B C0 AC D4 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053AA2C  38 00 00 00 */	li r0, 0
/* 8053AA30  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8053AA34  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053AA38  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8053AA3C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8053AA40  38 00 00 04 */	li r0, 4
/* 8053AA44  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8053AA48:
/* 8053AA48  38 00 00 00 */	li r0, 0
/* 8053AA4C  98 1D 0C FF */	stb r0, 0xcff(r29)
lbl_8053AA50:
/* 8053AA50  7F C3 F3 78 */	mr r3, r30
/* 8053AA54  39 61 00 40 */	addi r11, r1, 0x40
/* 8053AA58  4B E2 77 C4 */	b _restgpr_26
/* 8053AA5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8053AA60  7C 08 03 A6 */	mtlr r0
/* 8053AA64  38 21 00 40 */	addi r1, r1, 0x40
/* 8053AA68  4E 80 00 20 */	blr 
