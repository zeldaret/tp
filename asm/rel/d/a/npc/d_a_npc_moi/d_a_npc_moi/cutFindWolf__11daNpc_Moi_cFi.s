lbl_80A785FC:
/* 80A785FC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A78600  7C 08 02 A6 */	mflr r0
/* 80A78604  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A78608  39 61 00 60 */	addi r11, r1, 0x60
/* 80A7860C  4B 8E 9B C4 */	b _savegpr_26
/* 80A78610  7C 7C 1B 78 */	mr r28, r3
/* 80A78614  7C 9A 23 78 */	mr r26, r4
/* 80A78618  3B E0 00 00 */	li r31, 0
/* 80A7861C  3B C0 FF FF */	li r30, -1
/* 80A78620  3B A0 00 00 */	li r29, 0
/* 80A78624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A78628  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A7862C  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A78630  7F 63 DB 78 */	mr r3, r27
/* 80A78634  3C A0 80 A8 */	lis r5, struct_80A7B0D8+0x0@ha
/* 80A78638  38 A5 B0 D8 */	addi r5, r5, struct_80A7B0D8+0x0@l
/* 80A7863C  38 A5 00 73 */	addi r5, r5, 0x73
/* 80A78640  38 C0 00 03 */	li r6, 3
/* 80A78644  4B 5C FA A8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A78648  28 03 00 00 */	cmplwi r3, 0
/* 80A7864C  41 82 00 08 */	beq lbl_80A78654
/* 80A78650  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A78654:
/* 80A78654  7F 63 DB 78 */	mr r3, r27
/* 80A78658  7F 44 D3 78 */	mr r4, r26
/* 80A7865C  3C A0 80 A8 */	lis r5, struct_80A7B0D8+0x0@ha
/* 80A78660  38 A5 B0 D8 */	addi r5, r5, struct_80A7B0D8+0x0@l
/* 80A78664  38 A5 00 77 */	addi r5, r5, 0x77
/* 80A78668  38 C0 00 03 */	li r6, 3
/* 80A7866C  4B 5C FA 80 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A78670  28 03 00 00 */	cmplwi r3, 0
/* 80A78674  41 82 00 08 */	beq lbl_80A7867C
/* 80A78678  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A7867C:
/* 80A7867C  7F 63 DB 78 */	mr r3, r27
/* 80A78680  7F 44 D3 78 */	mr r4, r26
/* 80A78684  4B 5C F6 C8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A78688  2C 03 00 00 */	cmpwi r3, 0
/* 80A7868C  41 82 01 F8 */	beq lbl_80A78884
/* 80A78690  2C 1E 00 01 */	cmpwi r30, 1
/* 80A78694  41 82 00 6C */	beq lbl_80A78700
/* 80A78698  40 80 00 10 */	bge lbl_80A786A8
/* 80A7869C  2C 1E 00 00 */	cmpwi r30, 0
/* 80A786A0  40 80 00 14 */	bge lbl_80A786B4
/* 80A786A4  48 00 01 E0 */	b lbl_80A78884
lbl_80A786A8:
/* 80A786A8  2C 1E 00 03 */	cmpwi r30, 3
/* 80A786AC  40 80 01 D8 */	bge lbl_80A78884
/* 80A786B0  48 00 01 D0 */	b lbl_80A78880
lbl_80A786B4:
/* 80A786B4  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80A786B8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A786BC  41 82 00 28 */	beq lbl_80A786E4
/* 80A786C0  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80A786C4  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80A786C8  4B 6C D1 D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A786CC  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80A786D0  38 00 00 0A */	li r0, 0xa
/* 80A786D4  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80A786D8  3C 60 80 A8 */	lis r3, lit_4115@ha
/* 80A786DC  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)
/* 80A786E0  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80A786E4:
/* 80A786E4  3C 60 80 A8 */	lis r3, lit_4115@ha
/* 80A786E8  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)
/* 80A786EC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A786F0  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80A786F4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80A786F8  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80A786FC  48 00 01 88 */	b lbl_80A78884
lbl_80A78700:
/* 80A78700  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80A78704  2C 00 00 08 */	cmpwi r0, 8
/* 80A78708  41 82 00 28 */	beq lbl_80A78730
/* 80A7870C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80A78710  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80A78714  4B 6C D1 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A78718  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80A7871C  38 00 00 08 */	li r0, 8
/* 80A78720  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80A78724  3C 60 80 A8 */	lis r3, lit_4115@ha
/* 80A78728  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)
/* 80A7872C  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80A78730:
/* 80A78730  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80A78734  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A78738  41 82 00 28 */	beq lbl_80A78760
/* 80A7873C  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80A78740  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80A78744  4B 6C D1 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A78748  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80A7874C  38 00 00 10 */	li r0, 0x10
/* 80A78750  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80A78754  3C 60 80 A8 */	lis r3, lit_4115@ha
/* 80A78758  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)
/* 80A7875C  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80A78760:
/* 80A78760  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501D5@ha */
/* 80A78764  38 03 01 D5 */	addi r0, r3, 0x01D5 /* 0x000501D5@l */
/* 80A78768  90 01 00 08 */	stw r0, 8(r1)
/* 80A7876C  38 7C 05 80 */	addi r3, r28, 0x580
/* 80A78770  38 81 00 08 */	addi r4, r1, 8
/* 80A78774  38 A0 FF FF */	li r5, -1
/* 80A78778  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80A7877C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A78780  7D 89 03 A6 */	mtctr r12
/* 80A78784  4E 80 04 21 */	bctrl 
/* 80A78788  38 00 00 01 */	li r0, 1
/* 80A7878C  98 1C 16 6B */	stb r0, 0x166b(r28)
/* 80A78790  80 7C 15 E8 */	lwz r3, 0x15e8(r28)
/* 80A78794  80 83 00 08 */	lwz r4, 8(r3)
/* 80A78798  80 64 00 04 */	lwz r3, 4(r4)
/* 80A7879C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A787A0  90 61 00 24 */	stw r3, 0x24(r1)
/* 80A787A4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A787A8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A787AC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A787B0  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80A787B4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80A787B8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A787BC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80A787C0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A787C4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A787C8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80A787CC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80A787D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A787D4  7F 83 E3 78 */	mr r3, r28
/* 80A787D8  38 81 00 18 */	addi r4, r1, 0x18
/* 80A787DC  4B 6D 21 2C */	b setPos__8daNpcT_cF4cXyz
/* 80A787E0  38 60 00 00 */	li r3, 0
/* 80A787E4  98 7C 16 08 */	stb r3, 0x1608(r28)
/* 80A787E8  38 00 00 01 */	li r0, 1
/* 80A787EC  B0 1C 16 06 */	sth r0, 0x1606(r28)
/* 80A787F0  B0 7C 16 04 */	sth r3, 0x1604(r28)
/* 80A787F4  38 7C 15 E8 */	addi r3, r28, 0x15e8
/* 80A787F8  80 9C 15 E8 */	lwz r4, 0x15e8(r28)
/* 80A787FC  A0 84 00 00 */	lhz r4, 0(r4)
/* 80A78800  4B 6C D5 D0 */	b setNextIdx__13daNpcT_Path_cFi
/* 80A78804  A0 1C 16 04 */	lhz r0, 0x1604(r28)
/* 80A78808  80 7C 15 E8 */	lwz r3, 0x15e8(r28)
/* 80A7880C  80 63 00 08 */	lwz r3, 8(r3)
/* 80A78810  54 00 20 36 */	slwi r0, r0, 4
/* 80A78814  7C 83 02 14 */	add r4, r3, r0
/* 80A78818  80 64 00 04 */	lwz r3, 4(r4)
/* 80A7881C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A78820  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A78824  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A78828  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A7882C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A78830  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A78834  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A78838  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A7883C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A78840  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A78844  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A78848  7F 83 E3 78 */	mr r3, r28
/* 80A7884C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A78850  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 80A78854  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80A78858  4B 5A 1E B8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A7885C  B0 7C 16 64 */	sth r3, 0x1664(r28)
/* 80A78860  7F 83 E3 78 */	mr r3, r28
/* 80A78864  A8 9C 16 64 */	lha r4, 0x1664(r28)
/* 80A78868  4B 6D 21 B0 */	b setAngle__8daNpcT_cFs
/* 80A7886C  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80A78870  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80A78874  4B 6C CE 6C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A78878  93 BC 0D C4 */	stw r29, 0xdc4(r28)
/* 80A7887C  48 00 00 08 */	b lbl_80A78884
lbl_80A78880:
/* 80A78880  93 BC 0D C4 */	stw r29, 0xdc4(r28)
lbl_80A78884:
/* 80A78884  2C 1E 00 01 */	cmpwi r30, 1
/* 80A78888  41 82 00 60 */	beq lbl_80A788E8
/* 80A7888C  40 80 00 10 */	bge lbl_80A7889C
/* 80A78890  2C 1E 00 00 */	cmpwi r30, 0
/* 80A78894  40 80 00 14 */	bge lbl_80A788A8
/* 80A78898  48 00 01 24 */	b lbl_80A789BC
lbl_80A7889C:
/* 80A7889C  2C 1E 00 03 */	cmpwi r30, 3
/* 80A788A0  40 80 01 1C */	bge lbl_80A789BC
/* 80A788A4  48 00 00 B0 */	b lbl_80A78954
lbl_80A788A8:
/* 80A788A8  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80A788AC  2C 00 00 00 */	cmpwi r0, 0
/* 80A788B0  41 82 00 28 */	beq lbl_80A788D8
/* 80A788B4  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A788B8  4B 6C CE 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A788BC  38 00 00 00 */	li r0, 0
/* 80A788C0  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80A788C4  3C 60 80 A8 */	lis r3, lit_4115@ha
/* 80A788C8  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)
/* 80A788CC  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80A788D0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A788D4  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80A788D8:
/* 80A788D8  38 00 00 00 */	li r0, 0
/* 80A788DC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A788E0  3B E0 00 01 */	li r31, 1
/* 80A788E4  48 00 00 D8 */	b lbl_80A789BC
lbl_80A788E8:
/* 80A788E8  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80A788EC  2C 00 00 01 */	cmpwi r0, 1
/* 80A788F0  41 82 00 2C */	beq lbl_80A7891C
/* 80A788F4  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A788F8  4B 6C CE 04 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A788FC  38 00 00 00 */	li r0, 0
/* 80A78900  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80A78904  3C 60 80 A8 */	lis r3, lit_4115@ha
/* 80A78908  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)
/* 80A7890C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80A78910  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A78914  38 00 00 01 */	li r0, 1
/* 80A78918  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80A7891C:
/* 80A7891C  38 00 00 00 */	li r0, 0
/* 80A78920  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A78924  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 80A78928  48 00 22 3D */	bl func_80A7AB64
/* 80A7892C  2C 03 00 00 */	cmpwi r3, 0
/* 80A78930  40 82 00 8C */	bne lbl_80A789BC
/* 80A78934  38 00 00 01 */	li r0, 1
/* 80A78938  90 1C 16 60 */	stw r0, 0x1660(r28)
/* 80A7893C  7F 83 E3 78 */	mr r3, r28
/* 80A78940  4B FF E7 BD */	bl poise__11daNpc_Moi_cFv
/* 80A78944  38 00 00 00 */	li r0, 0
/* 80A78948  90 1C 16 5C */	stw r0, 0x165c(r28)
/* 80A7894C  3B E0 00 01 */	li r31, 1
/* 80A78950  48 00 00 6C */	b lbl_80A789BC
lbl_80A78954:
/* 80A78954  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80A78958  2C 00 00 01 */	cmpwi r0, 1
/* 80A7895C  41 82 00 2C */	beq lbl_80A78988
/* 80A78960  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A78964  4B 6C CD 98 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A78968  38 00 00 00 */	li r0, 0
/* 80A7896C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80A78970  3C 60 80 A8 */	lis r3, lit_4115@ha
/* 80A78974  C0 03 AF D8 */	lfs f0, lit_4115@l(r3)
/* 80A78978  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80A7897C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A78980  38 00 00 01 */	li r0, 1
/* 80A78984  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80A78988:
/* 80A78988  38 00 00 00 */	li r0, 0
/* 80A7898C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A78990  38 00 00 01 */	li r0, 1
/* 80A78994  90 1C 16 60 */	stw r0, 0x1660(r28)
/* 80A78998  7F 83 E3 78 */	mr r3, r28
/* 80A7899C  4B FF E7 61 */	bl poise__11daNpc_Moi_cFv
/* 80A789A0  38 00 00 00 */	li r0, 0
/* 80A789A4  90 1C 16 5C */	stw r0, 0x165c(r28)
/* 80A789A8  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 80A789AC  48 00 21 B9 */	bl func_80A7AB64
/* 80A789B0  2C 03 00 00 */	cmpwi r3, 0
/* 80A789B4  40 82 00 08 */	bne lbl_80A789BC
/* 80A789B8  3B E0 00 01 */	li r31, 1
lbl_80A789BC:
/* 80A789BC  7F E3 FB 78 */	mr r3, r31
/* 80A789C0  39 61 00 60 */	addi r11, r1, 0x60
/* 80A789C4  4B 8E 98 58 */	b _restgpr_26
/* 80A789C8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A789CC  7C 08 03 A6 */	mtlr r0
/* 80A789D0  38 21 00 60 */	addi r1, r1, 0x60
/* 80A789D4  4E 80 00 20 */	blr 
