lbl_80B5A3FC:
/* 80B5A3FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B5A400  7C 08 02 A6 */	mflr r0
/* 80B5A404  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B5A408  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5A40C  4B 80 7D C5 */	bl _savegpr_26
/* 80B5A410  7C 7C 1B 78 */	mr r28, r3
/* 80B5A414  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha /* 0x80B5D794@ha */
/* 80B5A418  3B C3 D7 94 */	addi r30, r3, m__17daNpc_ykM_Param_c@l /* 0x80B5D794@l */
/* 80B5A41C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5A420  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5A424  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80B5A428  A0 1C 0E 22 */	lhz r0, 0xe22(r28)
/* 80B5A42C  2C 00 00 02 */	cmpwi r0, 2
/* 80B5A430  41 82 01 E4 */	beq lbl_80B5A614
/* 80B5A434  40 80 07 58 */	bge lbl_80B5AB8C
/* 80B5A438  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A43C  40 80 00 0C */	bge lbl_80B5A448
/* 80B5A440  48 00 07 4C */	b lbl_80B5AB8C
/* 80B5A444  48 00 07 48 */	b lbl_80B5AB8C
lbl_80B5A448:
/* 80B5A448  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80B5A44C  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A450  40 82 01 C4 */	bne lbl_80B5A614
/* 80B5A454  88 1C 15 81 */	lbz r0, 0x1581(r28)
/* 80B5A458  28 00 00 00 */	cmplwi r0, 0
/* 80B5A45C  41 82 00 60 */	beq lbl_80B5A4BC
/* 80B5A460  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B5A464  2C 00 00 0B */	cmpwi r0, 0xb
/* 80B5A468  41 82 00 24 */	beq lbl_80B5A48C
/* 80B5A46C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B5A470  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B5A474  4B 5E B4 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5A478  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B5A47C  38 00 00 0B */	li r0, 0xb
/* 80B5A480  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B5A484  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5A488  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B5A48C:
/* 80B5A48C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5A490  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80B5A494  41 82 01 54 */	beq lbl_80B5A5E8
/* 80B5A498  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5A49C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5A4A0  4B 5E B3 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5A4A4  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5A4A8  38 00 00 1C */	li r0, 0x1c
/* 80B5A4AC  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5A4B0  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5A4B4  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B5A4B8  48 00 01 30 */	b lbl_80B5A5E8
lbl_80B5A4BC:
/* 80B5A4BC  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 80B5A4C0  28 00 00 02 */	cmplwi r0, 2
/* 80B5A4C4  40 82 00 60 */	bne lbl_80B5A524
/* 80B5A4C8  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B5A4CC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B5A4D0  41 82 00 24 */	beq lbl_80B5A4F4
/* 80B5A4D4  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B5A4D8  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B5A4DC  4B 5E B3 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5A4E0  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B5A4E4  38 00 00 0F */	li r0, 0xf
/* 80B5A4E8  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B5A4EC  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B5A4F0  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B5A4F4:
/* 80B5A4F4  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5A4F8  2C 00 00 29 */	cmpwi r0, 0x29
/* 80B5A4FC  41 82 00 EC */	beq lbl_80B5A5E8
/* 80B5A500  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5A504  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5A508  4B 5E B3 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5A50C  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5A510  38 00 00 29 */	li r0, 0x29
/* 80B5A514  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5A518  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B5A51C  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B5A520  48 00 00 C8 */	b lbl_80B5A5E8
lbl_80B5A524:
/* 80B5A524  38 60 00 55 */	li r3, 0x55
/* 80B5A528  4B 5F 26 45 */	bl daNpcT_chkTmpBit__FUl
/* 80B5A52C  2C 03 00 00 */	cmpwi r3, 0
/* 80B5A530  41 82 00 60 */	beq lbl_80B5A590
/* 80B5A534  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B5A538  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B5A53C  41 82 00 24 */	beq lbl_80B5A560
/* 80B5A540  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B5A544  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B5A548  4B 5E B3 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5A54C  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B5A550  38 00 00 0F */	li r0, 0xf
/* 80B5A554  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B5A558  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B5A55C  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B5A560:
/* 80B5A560  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5A564  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B5A568  41 82 00 80 */	beq lbl_80B5A5E8
/* 80B5A56C  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5A570  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5A574  4B 5E B3 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5A578  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5A57C  38 00 00 0A */	li r0, 0xa
/* 80B5A580  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5A584  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B5A588  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B5A58C  48 00 00 5C */	b lbl_80B5A5E8
lbl_80B5A590:
/* 80B5A590  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B5A594  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B5A598  41 82 00 24 */	beq lbl_80B5A5BC
/* 80B5A59C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B5A5A0  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B5A5A4  4B 5E B2 F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5A5A8  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B5A5AC  38 00 00 0F */	li r0, 0xf
/* 80B5A5B0  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B5A5B4  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B5A5B8  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B5A5BC:
/* 80B5A5BC  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5A5C0  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A5C4  41 82 00 24 */	beq lbl_80B5A5E8
/* 80B5A5C8  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5A5CC  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5A5D0  4B 5E B2 C9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5A5D4  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5A5D8  38 00 00 00 */	li r0, 0
/* 80B5A5DC  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5A5E0  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B5A5E4  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80B5A5E8:
/* 80B5A5E8  38 60 00 B4 */	li r3, 0xb4
/* 80B5A5EC  38 80 00 5A */	li r4, 0x5a
/* 80B5A5F0  48 00 2D A5 */	bl func_80B5D394
/* 80B5A5F4  90 7C 15 44 */	stw r3, 0x1544(r28)
/* 80B5A5F8  38 00 00 00 */	li r0, 0
/* 80B5A5FC  90 1C 15 48 */	stw r0, 0x1548(r28)
/* 80B5A600  80 7C 15 4C */	lwz r3, 0x154c(r28)
/* 80B5A604  38 03 00 01 */	addi r0, r3, 1
/* 80B5A608  90 1C 15 4C */	stw r0, 0x154c(r28)
/* 80B5A60C  38 00 00 02 */	li r0, 2
/* 80B5A610  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_80B5A614:
/* 80B5A614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5A618  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5A61C  80 7B 5D B4 */	lwz r3, 0x5db4(r27)
/* 80B5A620  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B5A624  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B5A628  40 82 00 98 */	bne lbl_80B5A6C0
/* 80B5A62C  88 1C 15 85 */	lbz r0, 0x1585(r28)
/* 80B5A630  28 00 00 00 */	cmplwi r0, 0
/* 80B5A634  40 82 00 8C */	bne lbl_80B5A6C0
/* 80B5A638  3B 40 00 00 */	li r26, 0
lbl_80B5A63C:
/* 80B5A63C  38 1A 00 06 */	addi r0, r26, 6
/* 80B5A640  54 03 18 38 */	slwi r3, r0, 3
/* 80B5A644  38 63 14 78 */	addi r3, r3, 0x1478
/* 80B5A648  7C 7C 1A 14 */	add r3, r28, r3
/* 80B5A64C  4B 5E B0 BD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5A650  28 03 00 00 */	cmplwi r3, 0
/* 80B5A654  41 82 00 60 */	beq lbl_80B5A6B4
/* 80B5A658  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B5A65C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B5A660  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B5A664  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B5A668  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B5A66C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B5A670  38 81 00 08 */	addi r4, r1, 8
/* 80B5A674  48 00 30 AD */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80B5A678  2C 03 00 00 */	cmpwi r3, 0
/* 80B5A67C  41 82 00 38 */	beq lbl_80B5A6B4
/* 80B5A680  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 80B5A684  28 00 00 02 */	cmplwi r0, 2
/* 80B5A688  40 82 00 20 */	bne lbl_80B5A6A8
/* 80B5A68C  80 7B 5D B4 */	lwz r3, 0x5db4(r27)
/* 80B5A690  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B5A694  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B5A698  40 82 00 1C */	bne lbl_80B5A6B4
/* 80B5A69C  38 00 00 02 */	li r0, 2
/* 80B5A6A0  B0 1C 0E 30 */	sth r0, 0xe30(r28)
/* 80B5A6A4  48 00 00 10 */	b lbl_80B5A6B4
lbl_80B5A6A8:
/* 80B5A6A8  38 00 00 01 */	li r0, 1
/* 80B5A6AC  98 1C 0E 32 */	stb r0, 0xe32(r28)
/* 80B5A6B0  98 1C 15 83 */	stb r0, 0x1583(r28)
lbl_80B5A6B4:
/* 80B5A6B4  3B 5A 00 01 */	addi r26, r26, 1
/* 80B5A6B8  2C 1A 00 02 */	cmpwi r26, 2
/* 80B5A6BC  41 80 FF 80 */	blt lbl_80B5A63C
lbl_80B5A6C0:
/* 80B5A6C0  88 1C 15 81 */	lbz r0, 0x1581(r28)
/* 80B5A6C4  28 00 00 00 */	cmplwi r0, 0
/* 80B5A6C8  41 82 00 3C */	beq lbl_80B5A704
/* 80B5A6CC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B5A6D0  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A6D4  41 82 00 24 */	beq lbl_80B5A6F8
/* 80B5A6D8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5A6DC  4B 5E B0 21 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B5A6E0  38 00 00 00 */	li r0, 0
/* 80B5A6E4  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B5A6E8  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5A6EC  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B5A6F0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5A6F4  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B5A6F8:
/* 80B5A6F8  38 00 00 00 */	li r0, 0
/* 80B5A6FC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5A700  48 00 04 8C */	b lbl_80B5AB8C
lbl_80B5A704:
/* 80B5A704  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80B5A708  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A70C  40 82 04 80 */	bne lbl_80B5AB8C
/* 80B5A710  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 80B5A714  28 00 00 04 */	cmplwi r0, 4
/* 80B5A718  40 82 00 20 */	bne lbl_80B5A738
/* 80B5A71C  88 1C 15 83 */	lbz r0, 0x1583(r28)
/* 80B5A720  28 00 00 00 */	cmplwi r0, 0
/* 80B5A724  41 82 00 7C */	beq lbl_80B5A7A0
/* 80B5A728  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80B5A72C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B5A730  4B 5E AF B1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B5A734  48 00 00 6C */	b lbl_80B5A7A0
lbl_80B5A738:
/* 80B5A738  28 00 00 02 */	cmplwi r0, 2
/* 80B5A73C  40 82 00 64 */	bne lbl_80B5A7A0
/* 80B5A740  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80B5A744  4B 5E AF C5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5A748  28 03 00 00 */	cmplwi r3, 0
/* 80B5A74C  41 82 00 48 */	beq lbl_80B5A794
/* 80B5A750  38 7C 15 38 */	addi r3, r28, 0x1538
/* 80B5A754  48 00 2C 25 */	bl func_80B5D378
/* 80B5A758  2C 03 00 00 */	cmpwi r3, 0
/* 80B5A75C  40 82 00 20 */	bne lbl_80B5A77C
/* 80B5A760  38 60 00 5A */	li r3, 0x5a
/* 80B5A764  38 80 00 5A */	li r4, 0x5a
/* 80B5A768  48 00 2C 2D */	bl func_80B5D394
/* 80B5A76C  90 7C 15 38 */	stw r3, 0x1538(r28)
/* 80B5A770  80 1C 15 3C */	lwz r0, 0x153c(r28)
/* 80B5A774  68 00 00 01 */	xori r0, r0, 1
/* 80B5A778  90 1C 15 3C */	stw r0, 0x153c(r28)
lbl_80B5A77C:
/* 80B5A77C  80 1C 15 3C */	lwz r0, 0x153c(r28)
/* 80B5A780  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A784  41 82 00 1C */	beq lbl_80B5A7A0
/* 80B5A788  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80B5A78C  4B 5E AF 71 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B5A790  48 00 00 10 */	b lbl_80B5A7A0
lbl_80B5A794:
/* 80B5A794  38 00 00 00 */	li r0, 0
/* 80B5A798  90 1C 15 38 */	stw r0, 0x1538(r28)
/* 80B5A79C  90 1C 15 3C */	stw r0, 0x153c(r28)
lbl_80B5A7A0:
/* 80B5A7A0  38 60 00 55 */	li r3, 0x55
/* 80B5A7A4  4B 5F 23 C9 */	bl daNpcT_chkTmpBit__FUl
/* 80B5A7A8  2C 03 00 00 */	cmpwi r3, 0
/* 80B5A7AC  41 82 00 0C */	beq lbl_80B5A7B8
/* 80B5A7B0  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80B5A7B4  4B 5E AF 49 */	bl remove__18daNpcT_ActorMngr_cFv
lbl_80B5A7B8:
/* 80B5A7B8  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80B5A7BC  4B 5E AF 4D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5A7C0  28 03 00 00 */	cmplwi r3, 0
/* 80B5A7C4  41 82 00 CC */	beq lbl_80B5A890
/* 80B5A7C8  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B5A7CC  2C 00 00 01 */	cmpwi r0, 1
/* 80B5A7D0  41 82 00 28 */	beq lbl_80B5A7F8
/* 80B5A7D4  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5A7D8  4B 5E AF 25 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B5A7DC  38 00 00 00 */	li r0, 0
/* 80B5A7E0  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B5A7E4  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5A7E8  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B5A7EC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5A7F0  38 00 00 01 */	li r0, 1
/* 80B5A7F4  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B5A7F8:
/* 80B5A7F8  38 00 00 00 */	li r0, 0
/* 80B5A7FC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5A800  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 80B5A804  28 00 00 04 */	cmplwi r0, 4
/* 80B5A808  41 82 00 5C */	beq lbl_80B5A864
/* 80B5A80C  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80B5A810  4B 5E AE F9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5A814  7C 64 1B 78 */	mr r4, r3
/* 80B5A818  7F 83 E3 78 */	mr r3, r28
/* 80B5A81C  C0 3C 0D F8 */	lfs f1, 0xdf8(r28)
/* 80B5A820  A8 BC 0D 7A */	lha r5, 0xd7a(r28)
/* 80B5A824  4B 5F 03 AD */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B5A828  2C 03 00 00 */	cmpwi r3, 0
/* 80B5A82C  40 82 00 38 */	bne lbl_80B5A864
/* 80B5A830  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B5A834  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A838  41 82 00 24 */	beq lbl_80B5A85C
/* 80B5A83C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5A840  4B 5E AE BD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B5A844  38 00 00 00 */	li r0, 0
/* 80B5A848  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B5A84C  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5A850  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B5A854  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5A858  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B5A85C:
/* 80B5A85C  38 00 00 00 */	li r0, 0
/* 80B5A860  98 1C 0C FF */	stb r0, 0xcff(r28)
lbl_80B5A864:
/* 80B5A864  7F 83 E3 78 */	mr r3, r28
/* 80B5A868  4B 5F 0A D1 */	bl srchPlayerActor__8daNpcT_cFv
/* 80B5A86C  2C 03 00 00 */	cmpwi r3, 0
/* 80B5A870  40 82 00 C4 */	bne lbl_80B5A934
/* 80B5A874  A8 7C 04 B6 */	lha r3, 0x4b6(r28)
/* 80B5A878  A8 1C 0D 7A */	lha r0, 0xd7a(r28)
/* 80B5A87C  7C 03 00 00 */	cmpw r3, r0
/* 80B5A880  40 82 00 B4 */	bne lbl_80B5A934
/* 80B5A884  38 00 00 01 */	li r0, 1
/* 80B5A888  B0 1C 0E 22 */	sth r0, 0xe22(r28)
/* 80B5A88C  48 00 00 A8 */	b lbl_80B5A934
lbl_80B5A890:
/* 80B5A890  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B5A894  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A898  41 82 00 24 */	beq lbl_80B5A8BC
/* 80B5A89C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5A8A0  4B 5E AE 5D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B5A8A4  38 00 00 00 */	li r0, 0
/* 80B5A8A8  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B5A8AC  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5A8B0  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B5A8B4  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5A8B8  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B5A8BC:
/* 80B5A8BC  38 00 00 00 */	li r0, 0
/* 80B5A8C0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5A8C4  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80B5A8C8  A8 1C 0D 7A */	lha r0, 0xd7a(r28)
/* 80B5A8CC  7C 04 00 00 */	cmpw r4, r0
/* 80B5A8D0  41 82 00 5C */	beq lbl_80B5A92C
/* 80B5A8D4  88 1C 0E 34 */	lbz r0, 0xe34(r28)
/* 80B5A8D8  28 00 00 00 */	cmplwi r0, 0
/* 80B5A8DC  41 82 00 34 */	beq lbl_80B5A910
/* 80B5A8E0  7F 83 E3 78 */	mr r3, r28
/* 80B5A8E4  38 A0 00 0F */	li r5, 0xf
/* 80B5A8E8  38 C0 00 1E */	li r6, 0x1e
/* 80B5A8EC  38 FE 00 00 */	addi r7, r30, 0
/* 80B5A8F0  A8 E7 00 8C */	lha r7, 0x8c(r7)
/* 80B5A8F4  39 00 00 00 */	li r8, 0
/* 80B5A8F8  4B 5F 0D 51 */	bl step__8daNpcT_cFsiiii
/* 80B5A8FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B5A900  41 82 00 20 */	beq lbl_80B5A920
/* 80B5A904  38 00 00 01 */	li r0, 1
/* 80B5A908  B0 1C 0E 22 */	sth r0, 0xe22(r28)
/* 80B5A90C  48 00 00 14 */	b lbl_80B5A920
lbl_80B5A910:
/* 80B5A910  7F 83 E3 78 */	mr r3, r28
/* 80B5A914  4B 5F 01 05 */	bl setAngle__8daNpcT_cFs
/* 80B5A918  38 00 00 01 */	li r0, 1
/* 80B5A91C  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_80B5A920:
/* 80B5A920  38 00 00 00 */	li r0, 0
/* 80B5A924  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80B5A928  48 00 00 0C */	b lbl_80B5A934
lbl_80B5A92C:
/* 80B5A92C  7F 83 E3 78 */	mr r3, r28
/* 80B5A930  4B 5F 0A 09 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80B5A934:
/* 80B5A934  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 80B5A938  28 00 00 04 */	cmplwi r0, 4
/* 80B5A93C  40 82 00 18 */	bne lbl_80B5A954
/* 80B5A940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5A944  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5A948  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80B5A94C  38 80 0D 02 */	li r4, 0xd02
/* 80B5A950  4B 4D A0 55 */	bl offEventBit__11dSv_event_cFUs
lbl_80B5A954:
/* 80B5A954  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B5A958  2C 00 00 01 */	cmpwi r0, 1
/* 80B5A95C  41 82 00 14 */	beq lbl_80B5A970
/* 80B5A960  40 80 02 2C */	bge lbl_80B5AB8C
/* 80B5A964  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A968  40 80 00 5C */	bge lbl_80B5A9C4
/* 80B5A96C  48 00 02 20 */	b lbl_80B5AB8C
lbl_80B5A970:
/* 80B5A970  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 80B5A974  28 00 00 04 */	cmplwi r0, 4
/* 80B5A978  40 82 02 14 */	bne lbl_80B5AB8C
/* 80B5A97C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5A980  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5A984  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80B5A988  38 80 0D 02 */	li r4, 0xd02
/* 80B5A98C  4B 4D A0 01 */	bl onEventBit__11dSv_event_cFUs
/* 80B5A990  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5A994  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A998  41 82 01 F4 */	beq lbl_80B5AB8C
/* 80B5A99C  41 82 01 F0 */	beq lbl_80B5AB8C
/* 80B5A9A0  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5A9A4  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5A9A8  4B 5E AE F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5A9AC  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5A9B0  38 00 00 00 */	li r0, 0
/* 80B5A9B4  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5A9B8  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B5A9BC  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B5A9C0  48 00 01 CC */	b lbl_80B5AB8C
lbl_80B5A9C4:
/* 80B5A9C4  88 1C 14 74 */	lbz r0, 0x1474(r28)
/* 80B5A9C8  28 00 00 04 */	cmplwi r0, 4
/* 80B5A9CC  40 82 01 C0 */	bne lbl_80B5AB8C
/* 80B5A9D0  38 60 00 55 */	li r3, 0x55
/* 80B5A9D4  4B 5F 21 99 */	bl daNpcT_chkTmpBit__FUl
/* 80B5A9D8  2C 03 00 00 */	cmpwi r3, 0
/* 80B5A9DC  41 82 00 A4 */	beq lbl_80B5AA80
/* 80B5A9E0  38 7C 14 A0 */	addi r3, r28, 0x14a0
/* 80B5A9E4  4B 5E AD 25 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5A9E8  7C 7B 1B 79 */	or. r27, r3, r3
/* 80B5A9EC  41 82 01 A0 */	beq lbl_80B5AB8C
/* 80B5A9F0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5A9F4  4B 5E AD 15 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5A9F8  7C 63 D8 50 */	subf r3, r3, r27
/* 80B5A9FC  30 03 FF FF */	addic r0, r3, -1
/* 80B5AA00  7C 00 19 10 */	subfe r0, r0, r3
/* 80B5AA04  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B5AA08  40 82 00 10 */	bne lbl_80B5AA18
/* 80B5AA0C  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B5AA10  2C 00 00 02 */	cmpwi r0, 2
/* 80B5AA14  41 82 00 30 */	beq lbl_80B5AA44
lbl_80B5AA18:
/* 80B5AA18  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5AA1C  4B 5E AC E1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B5AA20  38 00 00 00 */	li r0, 0
/* 80B5AA24  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B5AA28  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5AA2C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B5AA30  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5AA34  38 00 00 02 */	li r0, 2
/* 80B5AA38  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80B5AA3C  38 00 00 01 */	li r0, 1
/* 80B5AA40  48 00 00 08 */	b lbl_80B5AA48
lbl_80B5AA44:
/* 80B5AA44  38 00 00 00 */	li r0, 0
lbl_80B5AA48:
/* 80B5AA48  2C 00 00 00 */	cmpwi r0, 0
/* 80B5AA4C  41 82 00 28 */	beq lbl_80B5AA74
/* 80B5AA50  7F 63 DB 78 */	mr r3, r27
/* 80B5AA54  4B 4B E2 8D */	bl fopAc_IsActor__FPv
/* 80B5AA58  2C 03 00 00 */	cmpwi r3, 0
/* 80B5AA5C  41 82 00 18 */	beq lbl_80B5AA74
/* 80B5AA60  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5AA64  7F 64 DB 78 */	mr r4, r27
/* 80B5AA68  4B 5E AC 79 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B5AA6C  C0 1E 02 88 */	lfs f0, 0x288(r30)
/* 80B5AA70  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
lbl_80B5AA74:
/* 80B5AA74  38 00 00 00 */	li r0, 0
/* 80B5AA78  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5AA7C  48 00 01 10 */	b lbl_80B5AB8C
lbl_80B5AA80:
/* 80B5AA80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5AA84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5AA88  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80B5AA8C  38 80 0E 40 */	li r4, 0xe40
/* 80B5AA90  4B 4D 9F 2D */	bl isEventBit__11dSv_event_cCFUs
/* 80B5AA94  2C 03 00 00 */	cmpwi r3, 0
/* 80B5AA98  41 82 00 40 */	beq lbl_80B5AAD8
/* 80B5AA9C  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B5AAA0  2C 00 00 01 */	cmpwi r0, 1
/* 80B5AAA4  41 82 00 28 */	beq lbl_80B5AACC
/* 80B5AAA8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5AAAC  4B 5E AC 51 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B5AAB0  38 00 00 00 */	li r0, 0
/* 80B5AAB4  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B5AAB8  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5AABC  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B5AAC0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5AAC4  38 00 00 01 */	li r0, 1
/* 80B5AAC8  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B5AACC:
/* 80B5AACC  38 00 00 00 */	li r0, 0
/* 80B5AAD0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5AAD4  48 00 00 B8 */	b lbl_80B5AB8C
lbl_80B5AAD8:
/* 80B5AAD8  38 7C 14 A0 */	addi r3, r28, 0x14a0
/* 80B5AADC  4B 5E AC 2D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5AAE0  7C 7B 1B 79 */	or. r27, r3, r3
/* 80B5AAE4  41 82 00 A8 */	beq lbl_80B5AB8C
/* 80B5AAE8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5AAEC  4B 5E AC 1D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5AAF0  7C 63 D8 50 */	subf r3, r3, r27
/* 80B5AAF4  30 03 FF FF */	addic r0, r3, -1
/* 80B5AAF8  7C 00 19 10 */	subfe r0, r0, r3
/* 80B5AAFC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B5AB00  40 82 00 10 */	bne lbl_80B5AB10
/* 80B5AB04  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B5AB08  2C 00 00 02 */	cmpwi r0, 2
/* 80B5AB0C  41 82 00 30 */	beq lbl_80B5AB3C
lbl_80B5AB10:
/* 80B5AB10  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5AB14  4B 5E AB E9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B5AB18  38 00 00 00 */	li r0, 0
/* 80B5AB1C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B5AB20  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5AB24  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B5AB28  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5AB2C  38 00 00 02 */	li r0, 2
/* 80B5AB30  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80B5AB34  38 00 00 01 */	li r0, 1
/* 80B5AB38  48 00 00 08 */	b lbl_80B5AB40
lbl_80B5AB3C:
/* 80B5AB3C  38 00 00 00 */	li r0, 0
lbl_80B5AB40:
/* 80B5AB40  2C 00 00 00 */	cmpwi r0, 0
/* 80B5AB44  41 82 00 28 */	beq lbl_80B5AB6C
/* 80B5AB48  7F 63 DB 78 */	mr r3, r27
/* 80B5AB4C  4B 4B E1 95 */	bl fopAc_IsActor__FPv
/* 80B5AB50  2C 03 00 00 */	cmpwi r3, 0
/* 80B5AB54  41 82 00 18 */	beq lbl_80B5AB6C
/* 80B5AB58  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5AB5C  7F 64 DB 78 */	mr r4, r27
/* 80B5AB60  4B 5E AB 81 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B5AB64  C0 1E 02 88 */	lfs f0, 0x288(r30)
/* 80B5AB68  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
lbl_80B5AB6C:
/* 80B5AB6C  38 00 00 00 */	li r0, 0
/* 80B5AB70  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5AB74  7F 83 E3 78 */	mr r3, r28
/* 80B5AB78  4B FF F6 AD */	bl dialogue__11daNpc_ykM_cFv
/* 80B5AB7C  2C 03 00 00 */	cmpwi r3, 0
/* 80B5AB80  41 82 00 0C */	beq lbl_80B5AB8C
/* 80B5AB84  38 00 00 01 */	li r0, 1
/* 80B5AB88  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_80B5AB8C:
/* 80B5AB8C  38 60 00 01 */	li r3, 1
/* 80B5AB90  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5AB94  4B 80 76 89 */	bl _restgpr_26
/* 80B5AB98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B5AB9C  7C 08 03 A6 */	mtlr r0
/* 80B5ABA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B5ABA4  4E 80 00 20 */	blr 
