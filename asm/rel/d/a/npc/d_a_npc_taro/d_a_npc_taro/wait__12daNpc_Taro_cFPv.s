lbl_8056E270:
/* 8056E270  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8056E274  7C 08 02 A6 */	mflr r0
/* 8056E278  90 01 00 54 */	stw r0, 0x54(r1)
/* 8056E27C  39 61 00 50 */	addi r11, r1, 0x50
/* 8056E280  4B DF 3F 51 */	bl _savegpr_26
/* 8056E284  7C 7B 1B 78 */	mr r27, r3
/* 8056E288  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha /* 0x805716C8@ha */
/* 8056E28C  3B E3 16 C8 */	addi r31, r3, m__18daNpc_Taro_Param_c@l /* 0x805716C8@l */
/* 8056E290  38 7F 00 00 */	addi r3, r31, 0
/* 8056E294  AB C3 00 8E */	lha r30, 0x8e(r3)
/* 8056E298  AB BB 04 B6 */	lha r29, 0x4b6(r27)
/* 8056E29C  A0 1B 0E 22 */	lhz r0, 0xe22(r27)
/* 8056E2A0  2C 00 00 02 */	cmpwi r0, 2
/* 8056E2A4  41 82 03 CC */	beq lbl_8056E670
/* 8056E2A8  40 80 0F E4 */	bge lbl_8056F28C
/* 8056E2AC  2C 00 00 00 */	cmpwi r0, 0
/* 8056E2B0  40 80 00 0C */	bge lbl_8056E2BC
/* 8056E2B4  48 00 0F D8 */	b lbl_8056F28C
/* 8056E2B8  48 00 0F D4 */	b lbl_8056F28C
lbl_8056E2BC:
/* 8056E2BC  A8 1B 0D 1C */	lha r0, 0xd1c(r27)
/* 8056E2C0  2C 00 00 00 */	cmpwi r0, 0
/* 8056E2C4  40 82 03 AC */	bne lbl_8056E670
/* 8056E2C8  88 1B 10 C4 */	lbz r0, 0x10c4(r27)
/* 8056E2CC  28 00 00 0D */	cmplwi r0, 0xd
/* 8056E2D0  41 81 03 40 */	bgt lbl_8056E610
/* 8056E2D4  3C 60 80 57 */	lis r3, lit_8837@ha /* 0x80573364@ha */
/* 8056E2D8  38 63 33 64 */	addi r3, r3, lit_8837@l /* 0x80573364@l */
/* 8056E2DC  54 00 10 3A */	slwi r0, r0, 2
/* 8056E2E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056E2E4  7C 09 03 A6 */	mtctr r0
/* 8056E2E8  4E 80 04 20 */	bctr 
lbl_8056E2EC:
/* 8056E2EC  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056E2F0  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056E2F4  41 82 00 24 */	beq lbl_8056E318
/* 8056E2F8  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056E2FC  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056E300  4B BD 75 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E304  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056E308  38 00 00 1F */	li r0, 0x1f
/* 8056E30C  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056E310  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E314  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056E318:
/* 8056E318  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056E31C  2C 00 00 19 */	cmpwi r0, 0x19
/* 8056E320  41 82 00 24 */	beq lbl_8056E344
/* 8056E324  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056E328  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056E32C  4B BD 75 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E330  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056E334  38 00 00 19 */	li r0, 0x19
/* 8056E338  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056E33C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E340  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8056E344:
/* 8056E344  7F C0 0E 70 */	srawi r0, r30, 1
/* 8056E348  7C 60 01 94 */	addze r3, r0
/* 8056E34C  7F C4 F3 78 */	mr r4, r30
/* 8056E350  48 00 2E D5 */	bl func_80571224
/* 8056E354  90 7B 11 9C */	stw r3, 0x119c(r27)
/* 8056E358  48 00 03 10 */	b lbl_8056E668
lbl_8056E35C:
/* 8056E35C  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056E360  2C 00 00 19 */	cmpwi r0, 0x19
/* 8056E364  41 82 00 24 */	beq lbl_8056E388
/* 8056E368  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056E36C  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056E370  4B BD 75 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E374  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056E378  38 00 00 19 */	li r0, 0x19
/* 8056E37C  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056E380  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E384  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056E388:
/* 8056E388  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056E38C  2C 00 00 23 */	cmpwi r0, 0x23
/* 8056E390  41 82 02 D8 */	beq lbl_8056E668
/* 8056E394  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056E398  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056E39C  4B BD 74 FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E3A0  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056E3A4  38 00 00 23 */	li r0, 0x23
/* 8056E3A8  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056E3AC  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E3B0  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8056E3B4  48 00 02 B4 */	b lbl_8056E668
lbl_8056E3B8:
/* 8056E3B8  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056E3BC  2C 00 00 18 */	cmpwi r0, 0x18
/* 8056E3C0  41 82 00 24 */	beq lbl_8056E3E4
/* 8056E3C4  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056E3C8  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056E3CC  4B BD 74 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E3D0  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056E3D4  38 00 00 18 */	li r0, 0x18
/* 8056E3D8  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056E3DC  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E3E0  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056E3E4:
/* 8056E3E4  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056E3E8  2C 00 00 13 */	cmpwi r0, 0x13
/* 8056E3EC  41 82 02 7C */	beq lbl_8056E668
/* 8056E3F0  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056E3F4  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056E3F8  4B BD 74 A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E3FC  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056E400  38 00 00 13 */	li r0, 0x13
/* 8056E404  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056E408  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E40C  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8056E410  48 00 02 58 */	b lbl_8056E668
lbl_8056E414:
/* 8056E414  88 1B 11 A2 */	lbz r0, 0x11a2(r27)
/* 8056E418  28 00 00 00 */	cmplwi r0, 0
/* 8056E41C  41 82 00 60 */	beq lbl_8056E47C
/* 8056E420  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056E424  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8056E428  41 82 00 24 */	beq lbl_8056E44C
/* 8056E42C  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056E430  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056E434  4B BD 74 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E438  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056E43C  38 00 00 1A */	li r0, 0x1a
/* 8056E440  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056E444  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E448  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056E44C:
/* 8056E44C  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056E450  2C 00 00 15 */	cmpwi r0, 0x15
/* 8056E454  41 82 02 14 */	beq lbl_8056E668
/* 8056E458  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056E45C  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056E460  4B BD 74 39 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E464  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056E468  38 00 00 15 */	li r0, 0x15
/* 8056E46C  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056E470  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E474  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8056E478  48 00 01 F0 */	b lbl_8056E668
lbl_8056E47C:
/* 8056E47C  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056E480  2C 00 00 1D */	cmpwi r0, 0x1d
/* 8056E484  41 82 00 24 */	beq lbl_8056E4A8
/* 8056E488  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056E48C  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056E490  4B BD 74 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E494  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056E498  38 00 00 1D */	li r0, 0x1d
/* 8056E49C  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056E4A0  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E4A4  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056E4A8:
/* 8056E4A8  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056E4AC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8056E4B0  41 82 01 B8 */	beq lbl_8056E668
/* 8056E4B4  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056E4B8  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056E4BC  4B BD 73 DD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E4C0  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056E4C4  38 00 00 1A */	li r0, 0x1a
/* 8056E4C8  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056E4CC  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E4D0  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8056E4D4  48 00 01 94 */	b lbl_8056E668
lbl_8056E4D8:
/* 8056E4D8  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 8056E4DC  4B BD 72 2D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056E4E0  28 03 00 00 */	cmplwi r3, 0
/* 8056E4E4  41 82 00 60 */	beq lbl_8056E544
/* 8056E4E8  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056E4EC  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056E4F0  41 82 00 24 */	beq lbl_8056E514
/* 8056E4F4  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056E4F8  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056E4FC  4B BD 73 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E500  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056E504  38 00 00 1F */	li r0, 0x1f
/* 8056E508  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056E50C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E510  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056E514:
/* 8056E514  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056E518  2C 00 00 00 */	cmpwi r0, 0
/* 8056E51C  41 82 01 4C */	beq lbl_8056E668
/* 8056E520  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056E524  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056E528  4B BD 73 71 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E52C  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056E530  38 00 00 00 */	li r0, 0
/* 8056E534  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056E538  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E53C  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8056E540  48 00 01 28 */	b lbl_8056E668
lbl_8056E544:
/* 8056E544  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056E548  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056E54C  41 82 00 24 */	beq lbl_8056E570
/* 8056E550  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056E554  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056E558  4B BD 73 41 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E55C  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056E560  38 00 00 1F */	li r0, 0x1f
/* 8056E564  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056E568  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E56C  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056E570:
/* 8056E570  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056E574  2C 00 00 05 */	cmpwi r0, 5
/* 8056E578  41 82 00 24 */	beq lbl_8056E59C
/* 8056E57C  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056E580  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056E584  4B BD 73 15 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E588  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056E58C  38 00 00 05 */	li r0, 5
/* 8056E590  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056E594  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E598  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8056E59C:
/* 8056E59C  7F C0 0E 70 */	srawi r0, r30, 1
/* 8056E5A0  7C 60 01 94 */	addze r3, r0
/* 8056E5A4  7F C4 F3 78 */	mr r4, r30
/* 8056E5A8  48 00 2C 7D */	bl func_80571224
/* 8056E5AC  90 7B 11 9C */	stw r3, 0x119c(r27)
/* 8056E5B0  48 00 00 B8 */	b lbl_8056E668
lbl_8056E5B4:
/* 8056E5B4  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056E5B8  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056E5BC  41 82 00 24 */	beq lbl_8056E5E0
/* 8056E5C0  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056E5C4  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056E5C8  4B BD 72 D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E5CC  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056E5D0  38 00 00 1F */	li r0, 0x1f
/* 8056E5D4  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056E5D8  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E5DC  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056E5E0:
/* 8056E5E0  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056E5E4  2C 00 00 19 */	cmpwi r0, 0x19
/* 8056E5E8  41 82 00 80 */	beq lbl_8056E668
/* 8056E5EC  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056E5F0  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056E5F4  4B BD 72 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E5F8  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056E5FC  38 00 00 19 */	li r0, 0x19
/* 8056E600  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056E604  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E608  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8056E60C  48 00 00 5C */	b lbl_8056E668
lbl_8056E610:
/* 8056E610  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056E614  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056E618  41 82 00 24 */	beq lbl_8056E63C
/* 8056E61C  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056E620  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056E624  4B BD 72 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E628  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056E62C  38 00 00 1F */	li r0, 0x1f
/* 8056E630  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056E634  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E638  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056E63C:
/* 8056E63C  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056E640  2C 00 00 00 */	cmpwi r0, 0
/* 8056E644  41 82 00 24 */	beq lbl_8056E668
/* 8056E648  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056E64C  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056E650  4B BD 72 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056E654  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056E658  38 00 00 00 */	li r0, 0
/* 8056E65C  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056E660  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056E664  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8056E668:
/* 8056E668  38 00 00 02 */	li r0, 2
/* 8056E66C  B0 1B 0E 22 */	sth r0, 0xe22(r27)
lbl_8056E670:
/* 8056E670  88 1B 10 C4 */	lbz r0, 0x10c4(r27)
/* 8056E674  28 00 00 0E */	cmplwi r0, 0xe
/* 8056E678  41 81 03 5C */	bgt lbl_8056E9D4
/* 8056E67C  3C 60 80 57 */	lis r3, lit_8838@ha /* 0x80573328@ha */
/* 8056E680  38 63 33 28 */	addi r3, r3, lit_8838@l /* 0x80573328@l */
/* 8056E684  54 00 10 3A */	slwi r0, r0, 2
/* 8056E688  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056E68C  7C 09 03 A6 */	mtctr r0
/* 8056E690  4E 80 04 20 */	bctr 
lbl_8056E694:
/* 8056E694  38 60 00 1F */	li r3, 0x1f
/* 8056E698  4B BD E4 15 */	bl daNpcT_chkEvtBit__FUl
/* 8056E69C  2C 03 00 00 */	cmpwi r3, 0
/* 8056E6A0  40 82 00 70 */	bne lbl_8056E710
/* 8056E6A4  38 7B 10 E0 */	addi r3, r27, 0x10e0
/* 8056E6A8  4B BD 70 61 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056E6AC  28 03 00 00 */	cmplwi r3, 0
/* 8056E6B0  41 82 03 24 */	beq lbl_8056E9D4
/* 8056E6B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056E6B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056E6BC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056E6C0  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 8056E6C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8056E6C8  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 8056E6CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8056E6D0  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 8056E6D4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8056E6D8  38 81 00 24 */	addi r4, r1, 0x24
/* 8056E6DC  48 00 2F 79 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 8056E6E0  2C 03 00 00 */	cmpwi r3, 0
/* 8056E6E4  41 82 02 F0 */	beq lbl_8056E9D4
/* 8056E6E8  38 60 02 3B */	li r3, 0x23b
/* 8056E6EC  4B BD E3 C1 */	bl daNpcT_chkEvtBit__FUl
/* 8056E6F0  2C 03 00 00 */	cmpwi r3, 0
/* 8056E6F4  41 82 00 10 */	beq lbl_8056E704
/* 8056E6F8  38 00 00 08 */	li r0, 8
/* 8056E6FC  B0 1B 0E 30 */	sth r0, 0xe30(r27)
/* 8056E700  48 00 02 D4 */	b lbl_8056E9D4
lbl_8056E704:
/* 8056E704  38 00 00 07 */	li r0, 7
/* 8056E708  B0 1B 0E 30 */	sth r0, 0xe30(r27)
/* 8056E70C  48 00 02 C8 */	b lbl_8056E9D4
lbl_8056E710:
/* 8056E710  88 1B 0E 25 */	lbz r0, 0xe25(r27)
/* 8056E714  28 00 00 00 */	cmplwi r0, 0
/* 8056E718  41 82 02 BC */	beq lbl_8056E9D4
/* 8056E71C  7F 63 DB 78 */	mr r3, r27
/* 8056E720  4B AA B5 5D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8056E724  38 60 00 01 */	li r3, 1
/* 8056E728  48 00 0B 68 */	b lbl_8056F290
lbl_8056E72C:
/* 8056E72C  38 7B 11 78 */	addi r3, r27, 0x1178
/* 8056E730  4B BD 6F D9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056E734  28 03 00 00 */	cmplwi r3, 0
/* 8056E738  41 82 00 44 */	beq lbl_8056E77C
/* 8056E73C  7F 64 DB 78 */	mr r4, r27
/* 8056E740  38 BF 00 00 */	addi r5, r31, 0
/* 8056E744  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 8056E748  C0 45 00 74 */	lfs f2, 0x74(r5)
/* 8056E74C  C0 65 00 78 */	lfs f3, 0x78(r5)
/* 8056E750  C0 85 00 7C */	lfs f4, 0x7c(r5)
/* 8056E754  C0 A5 00 80 */	lfs f5, 0x80(r5)
/* 8056E758  C0 C5 00 84 */	lfs f6, 0x84(r5)
/* 8056E75C  C0 E5 00 88 */	lfs f7, 0x88(r5)
/* 8056E760  48 4F 79 79 */	bl checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff
/* 8056E764  2C 03 00 00 */	cmpwi r3, 0
/* 8056E768  41 82 00 14 */	beq lbl_8056E77C
/* 8056E76C  38 00 00 0C */	li r0, 0xc
/* 8056E770  B0 1B 0E 30 */	sth r0, 0xe30(r27)
/* 8056E774  38 00 00 01 */	li r0, 1
/* 8056E778  98 1B 11 A1 */	stb r0, 0x11a1(r27)
lbl_8056E77C:
/* 8056E77C  88 1B 11 A1 */	lbz r0, 0x11a1(r27)
/* 8056E780  28 00 00 00 */	cmplwi r0, 0
/* 8056E784  41 82 02 50 */	beq lbl_8056E9D4
/* 8056E788  38 60 00 3C */	li r3, 0x3c
/* 8056E78C  4B BD E3 21 */	bl daNpcT_chkEvtBit__FUl
/* 8056E790  2C 03 00 00 */	cmpwi r3, 0
/* 8056E794  41 82 02 40 */	beq lbl_8056E9D4
/* 8056E798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056E79C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056E7A0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8056E7A4  28 00 00 00 */	cmplwi r0, 0
/* 8056E7A8  40 82 02 2C */	bne lbl_8056E9D4
/* 8056E7AC  38 00 00 00 */	li r0, 0
/* 8056E7B0  98 1B 11 A1 */	stb r0, 0x11a1(r27)
/* 8056E7B4  48 00 02 20 */	b lbl_8056E9D4
lbl_8056E7B8:
/* 8056E7B8  38 60 00 3C */	li r3, 0x3c
/* 8056E7BC  4B BD E3 B1 */	bl daNpcT_chkTmpBit__FUl
/* 8056E7C0  2C 03 00 00 */	cmpwi r3, 0
/* 8056E7C4  41 82 00 1C */	beq lbl_8056E7E0
/* 8056E7C8  7F 63 DB 78 */	mr r3, r27
/* 8056E7CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056E7D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056E7D4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056E7D8  4B AA BF 39 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8056E7DC  7C 7D 1B 78 */	mr r29, r3
lbl_8056E7E0:
/* 8056E7E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056E7E4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056E7E8  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 8056E7EC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8056E7F0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8056E7F4  41 82 01 E0 */	beq lbl_8056E9D4
/* 8056E7F8  88 1B 0E 25 */	lbz r0, 0xe25(r27)
/* 8056E7FC  28 00 00 00 */	cmplwi r0, 0
/* 8056E800  40 82 01 D4 */	bne lbl_8056E9D4
/* 8056E804  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 8056E808  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 8056E80C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8056E810  41 82 01 C4 */	beq lbl_8056E9D4
/* 8056E814  3B 40 00 00 */	li r26, 0
lbl_8056E818:
/* 8056E818  38 1A 00 03 */	addi r0, r26, 3
/* 8056E81C  54 03 18 38 */	slwi r3, r0, 3
/* 8056E820  38 63 10 C8 */	addi r3, r3, 0x10c8
/* 8056E824  7C 7B 1A 14 */	add r3, r27, r3
/* 8056E828  4B BD 6E E1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056E82C  28 03 00 00 */	cmplwi r3, 0
/* 8056E830  41 82 00 3C */	beq lbl_8056E86C
/* 8056E834  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8056E838  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 8056E83C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8056E840  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 8056E844  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8056E848  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 8056E84C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8056E850  38 81 00 18 */	addi r4, r1, 0x18
/* 8056E854  48 00 2E 01 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 8056E858  2C 03 00 00 */	cmpwi r3, 0
/* 8056E85C  41 82 00 10 */	beq lbl_8056E86C
/* 8056E860  38 00 00 15 */	li r0, 0x15
/* 8056E864  B0 1B 0E 30 */	sth r0, 0xe30(r27)
/* 8056E868  48 00 01 6C */	b lbl_8056E9D4
lbl_8056E86C:
/* 8056E86C  3B 5A 00 01 */	addi r26, r26, 1
/* 8056E870  2C 1A 00 10 */	cmpwi r26, 0x10
/* 8056E874  41 80 FF A4 */	blt lbl_8056E818
/* 8056E878  48 00 01 5C */	b lbl_8056E9D4
lbl_8056E87C:
/* 8056E87C  38 60 02 5C */	li r3, 0x25c
/* 8056E880  4B BD E2 2D */	bl daNpcT_chkEvtBit__FUl
/* 8056E884  2C 03 00 00 */	cmpwi r3, 0
/* 8056E888  40 82 00 18 */	bne lbl_8056E8A0
/* 8056E88C  38 00 00 03 */	li r0, 3
/* 8056E890  B0 1B 0E 30 */	sth r0, 0xe30(r27)
/* 8056E894  38 00 00 01 */	li r0, 1
/* 8056E898  98 1B 0E 33 */	stb r0, 0xe33(r27)
/* 8056E89C  48 00 01 38 */	b lbl_8056E9D4
lbl_8056E8A0:
/* 8056E8A0  7F 63 DB 78 */	mr r3, r27
/* 8056E8A4  4B AA B3 D9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8056E8A8  38 60 00 01 */	li r3, 1
/* 8056E8AC  48 00 09 E4 */	b lbl_8056F290
lbl_8056E8B0:
/* 8056E8B0  38 7B 10 E0 */	addi r3, r27, 0x10e0
/* 8056E8B4  4B BD 6E 55 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056E8B8  28 03 00 00 */	cmplwi r3, 0
/* 8056E8BC  41 82 00 50 */	beq lbl_8056E90C
/* 8056E8C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056E8C4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056E8C8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056E8CC  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 8056E8D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8056E8D4  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 8056E8D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8056E8DC  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 8056E8E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8056E8E4  38 81 00 0C */	addi r4, r1, 0xc
/* 8056E8E8  48 00 2D 6D */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 8056E8EC  2C 03 00 00 */	cmpwi r3, 0
/* 8056E8F0  41 82 00 1C */	beq lbl_8056E90C
/* 8056E8F4  38 60 02 5D */	li r3, 0x25d
/* 8056E8F8  4B BD E1 B5 */	bl daNpcT_chkEvtBit__FUl
/* 8056E8FC  2C 03 00 00 */	cmpwi r3, 0
/* 8056E900  40 82 00 0C */	bne lbl_8056E90C
/* 8056E904  38 00 00 04 */	li r0, 4
/* 8056E908  B0 1B 0E 30 */	sth r0, 0xe30(r27)
lbl_8056E90C:
/* 8056E90C  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8056E910  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8056E914  28 04 00 FF */	cmplwi r4, 0xff
/* 8056E918  41 82 00 54 */	beq lbl_8056E96C
/* 8056E91C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056E920  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056E924  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 8056E928  7C 05 07 74 */	extsb r5, r0
/* 8056E92C  4B AC 6A 35 */	bl isSwitch__10dSv_info_cCFii
/* 8056E930  2C 03 00 00 */	cmpwi r3, 0
/* 8056E934  41 82 00 38 */	beq lbl_8056E96C
/* 8056E938  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8056E93C  54 04 46 3E */	srwi r4, r0, 0x18
/* 8056E940  28 04 00 FF */	cmplwi r4, 0xff
/* 8056E944  41 82 00 28 */	beq lbl_8056E96C
/* 8056E948  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056E94C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056E950  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 8056E954  7C 05 07 74 */	extsb r5, r0
/* 8056E958  4B AC 6A 09 */	bl isSwitch__10dSv_info_cCFii
/* 8056E95C  2C 03 00 00 */	cmpwi r3, 0
/* 8056E960  41 82 00 0C */	beq lbl_8056E96C
/* 8056E964  38 00 00 05 */	li r0, 5
/* 8056E968  B0 1B 0E 30 */	sth r0, 0xe30(r27)
lbl_8056E96C:
/* 8056E96C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005005C@ha */
/* 8056E970  38 03 00 5C */	addi r0, r3, 0x005C /* 0x0005005C@l */
/* 8056E974  90 01 00 08 */	stw r0, 8(r1)
/* 8056E978  38 7B 05 80 */	addi r3, r27, 0x580
/* 8056E97C  38 81 00 08 */	addi r4, r1, 8
/* 8056E980  38 A0 FF FF */	li r5, -1
/* 8056E984  81 9B 05 80 */	lwz r12, 0x580(r27)
/* 8056E988  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8056E98C  7D 89 03 A6 */	mtctr r12
/* 8056E990  4E 80 04 21 */	bctrl 
/* 8056E994  48 00 00 40 */	b lbl_8056E9D4
lbl_8056E998:
/* 8056E998  38 60 00 B8 */	li r3, 0xb8
/* 8056E99C  4B BD E1 11 */	bl daNpcT_chkEvtBit__FUl
/* 8056E9A0  2C 03 00 00 */	cmpwi r3, 0
/* 8056E9A4  41 82 00 20 */	beq lbl_8056E9C4
/* 8056E9A8  88 1B 0E 25 */	lbz r0, 0xe25(r27)
/* 8056E9AC  28 00 00 00 */	cmplwi r0, 0
/* 8056E9B0  41 82 00 24 */	beq lbl_8056E9D4
/* 8056E9B4  7F 63 DB 78 */	mr r3, r27
/* 8056E9B8  4B AA B2 C5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8056E9BC  38 60 00 01 */	li r3, 1
/* 8056E9C0  48 00 08 D0 */	b lbl_8056F290
lbl_8056E9C4:
/* 8056E9C4  38 00 00 06 */	li r0, 6
/* 8056E9C8  B0 1B 0E 30 */	sth r0, 0xe30(r27)
/* 8056E9CC  38 00 00 01 */	li r0, 1
/* 8056E9D0  98 1B 0E 33 */	stb r0, 0xe33(r27)
lbl_8056E9D4:
/* 8056E9D4  A8 1B 0D 1C */	lha r0, 0xd1c(r27)
/* 8056E9D8  2C 00 00 00 */	cmpwi r0, 0
/* 8056E9DC  40 82 08 B0 */	bne lbl_8056F28C
/* 8056E9E0  88 1B 10 C4 */	lbz r0, 0x10c4(r27)
/* 8056E9E4  28 00 00 03 */	cmplwi r0, 3
/* 8056E9E8  40 82 00 40 */	bne lbl_8056EA28
/* 8056E9EC  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8056E9F0  2C 00 00 00 */	cmpwi r0, 0
/* 8056E9F4  41 82 00 24 */	beq lbl_8056EA18
/* 8056E9F8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8056E9FC  4B BD 6D 01 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056EA00  38 00 00 00 */	li r0, 0
/* 8056EA04  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8056EA08  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056EA0C  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8056EA10  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056EA14  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8056EA18:
/* 8056EA18  38 00 00 00 */	li r0, 0
/* 8056EA1C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056EA20  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 8056EA24  48 00 06 2C */	b lbl_8056F050
lbl_8056EA28:
/* 8056EA28  3B 80 00 00 */	li r28, 0
/* 8056EA2C  28 00 00 0D */	cmplwi r0, 0xd
/* 8056EA30  41 81 01 24 */	bgt lbl_8056EB54
/* 8056EA34  3C 60 80 57 */	lis r3, lit_8839@ha /* 0x805732F0@ha */
/* 8056EA38  38 63 32 F0 */	addi r3, r3, lit_8839@l /* 0x805732F0@l */
/* 8056EA3C  54 00 10 3A */	slwi r0, r0, 2
/* 8056EA40  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056EA44  7C 09 03 A6 */	mtctr r0
/* 8056EA48  4E 80 04 20 */	bctr 
lbl_8056EA4C:
/* 8056EA4C  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 8056EA50  4B BD 6C AD */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056EA54  48 00 01 00 */	b lbl_8056EB54
lbl_8056EA58:
/* 8056EA58  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 8056EA5C  4B BD 6C A1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056EA60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056EA64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056EA68  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8056EA6C  38 80 0D 02 */	li r4, 0xd02
/* 8056EA70  4B AC 5F 4D */	bl isEventBit__11dSv_event_cCFUs
/* 8056EA74  2C 03 00 00 */	cmpwi r3, 0
/* 8056EA78  41 82 00 18 */	beq lbl_8056EA90
/* 8056EA7C  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 8056EA80  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056EA84  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056EA88  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056EA8C  4B BD 6C 55 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_8056EA90:
/* 8056EA90  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8056EA94  2C 00 00 00 */	cmpwi r0, 0
/* 8056EA98  41 82 00 24 */	beq lbl_8056EABC
/* 8056EA9C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8056EAA0  4B BD 6C 5D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056EAA4  38 00 00 00 */	li r0, 0
/* 8056EAA8  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8056EAAC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056EAB0  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8056EAB4  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056EAB8  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8056EABC:
/* 8056EABC  38 00 00 00 */	li r0, 0
/* 8056EAC0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056EAC4  48 00 00 90 */	b lbl_8056EB54
lbl_8056EAC8:
/* 8056EAC8  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 8056EACC  4B BD 6C 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056EAD0  48 00 00 84 */	b lbl_8056EB54
lbl_8056EAD4:
/* 8056EAD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056EAD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056EADC  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8056EAE0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 8056EAE4  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 8056EAE8  4B AC 5F 1D */	bl getEventReg__11dSv_event_cCFUs
/* 8056EAEC  7C 7C 1B 78 */	mr r28, r3
/* 8056EAF0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8056EAF4  28 00 00 02 */	cmplwi r0, 2
/* 8056EAF8  41 82 00 0C */	beq lbl_8056EB04
/* 8056EAFC  28 00 00 01 */	cmplwi r0, 1
/* 8056EB00  40 82 00 1C */	bne lbl_8056EB1C
lbl_8056EB04:
/* 8056EB04  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 8056EB08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056EB0C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056EB10  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8056EB14  4B BD 6B CD */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056EB18  48 00 00 3C */	b lbl_8056EB54
lbl_8056EB1C:
/* 8056EB1C  28 00 00 00 */	cmplwi r0, 0
/* 8056EB20  40 82 00 34 */	bne lbl_8056EB54
/* 8056EB24  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 8056EB28  4B BD 6B D5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056EB2C  48 00 00 28 */	b lbl_8056EB54
lbl_8056EB30:
/* 8056EB30  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 8056EB34  4B BD 6B C9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056EB38  48 00 00 1C */	b lbl_8056EB54
lbl_8056EB3C:
/* 8056EB3C  38 60 00 49 */	li r3, 0x49
/* 8056EB40  4B BD DF 6D */	bl daNpcT_chkEvtBit__FUl
/* 8056EB44  2C 03 00 00 */	cmpwi r3, 0
/* 8056EB48  41 82 00 0C */	beq lbl_8056EB54
/* 8056EB4C  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 8056EB50  4B BD 6B AD */	bl remove__18daNpcT_ActorMngr_cFv
lbl_8056EB54:
/* 8056EB54  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 8056EB58  4B BD 6B B1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056EB5C  28 03 00 00 */	cmplwi r3, 0
/* 8056EB60  40 82 00 10 */	bne lbl_8056EB70
/* 8056EB64  88 1B 11 A0 */	lbz r0, 0x11a0(r27)
/* 8056EB68  28 00 00 00 */	cmplwi r0, 0
/* 8056EB6C  41 82 01 B8 */	beq lbl_8056ED24
lbl_8056EB70:
/* 8056EB70  88 1B 0A 89 */	lbz r0, 0xa89(r27)
/* 8056EB74  28 00 00 00 */	cmplwi r0, 0
/* 8056EB78  40 82 01 AC */	bne lbl_8056ED24
/* 8056EB7C  88 1B 10 C4 */	lbz r0, 0x10c4(r27)
/* 8056EB80  28 00 00 04 */	cmplwi r0, 4
/* 8056EB84  41 82 04 CC */	beq lbl_8056F050
/* 8056EB88  28 00 00 05 */	cmplwi r0, 5
/* 8056EB8C  41 82 04 C4 */	beq lbl_8056F050
/* 8056EB90  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8056EB94  2C 00 00 01 */	cmpwi r0, 1
/* 8056EB98  41 82 00 28 */	beq lbl_8056EBC0
/* 8056EB9C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8056EBA0  4B BD 6B 5D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056EBA4  38 00 00 00 */	li r0, 0
/* 8056EBA8  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8056EBAC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056EBB0  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8056EBB4  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056EBB8  38 00 00 01 */	li r0, 1
/* 8056EBBC  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8056EBC0:
/* 8056EBC0  38 00 00 00 */	li r0, 0
/* 8056EBC4  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056EBC8  88 1B 10 C4 */	lbz r0, 0x10c4(r27)
/* 8056EBCC  28 00 00 0B */	cmplwi r0, 0xb
/* 8056EBD0  40 82 00 48 */	bne lbl_8056EC18
/* 8056EBD4  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8056EBD8  28 00 00 01 */	cmplwi r0, 1
/* 8056EBDC  40 82 04 74 */	bne lbl_8056F050
/* 8056EBE0  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8056EBE4  2C 00 00 00 */	cmpwi r0, 0
/* 8056EBE8  41 82 00 24 */	beq lbl_8056EC0C
/* 8056EBEC  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8056EBF0  4B BD 6B 0D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056EBF4  38 00 00 00 */	li r0, 0
/* 8056EBF8  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8056EBFC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056EC00  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8056EC04  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056EC08  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8056EC0C:
/* 8056EC0C  38 00 00 00 */	li r0, 0
/* 8056EC10  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056EC14  48 00 04 3C */	b lbl_8056F050
lbl_8056EC18:
/* 8056EC18  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 8056EC1C  4B BD 6A ED */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056EC20  7C 64 1B 78 */	mr r4, r3
/* 8056EC24  7F 63 DB 78 */	mr r3, r27
/* 8056EC28  C0 3B 0D F8 */	lfs f1, 0xdf8(r27)
/* 8056EC2C  A8 BB 0D 7A */	lha r5, 0xd7a(r27)
/* 8056EC30  4B BD BF A1 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 8056EC34  2C 03 00 00 */	cmpwi r3, 0
/* 8056EC38  40 82 04 18 */	bne lbl_8056F050
/* 8056EC3C  88 1B 11 A0 */	lbz r0, 0x11a0(r27)
/* 8056EC40  28 00 00 00 */	cmplwi r0, 0
/* 8056EC44  40 82 04 0C */	bne lbl_8056F050
/* 8056EC48  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8056EC4C  2C 00 00 00 */	cmpwi r0, 0
/* 8056EC50  41 82 00 24 */	beq lbl_8056EC74
/* 8056EC54  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8056EC58  4B BD 6A A5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056EC5C  38 00 00 00 */	li r0, 0
/* 8056EC60  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8056EC64  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056EC68  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8056EC6C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056EC70  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8056EC74:
/* 8056EC74  38 00 00 00 */	li r0, 0
/* 8056EC78  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056EC7C  7F 63 DB 78 */	mr r3, r27
/* 8056EC80  4B BD C6 B9 */	bl srchPlayerActor__8daNpcT_cFv
/* 8056EC84  2C 03 00 00 */	cmpwi r3, 0
/* 8056EC88  40 82 00 28 */	bne lbl_8056ECB0
/* 8056EC8C  7F A3 07 34 */	extsh r3, r29
/* 8056EC90  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 8056EC94  7C 03 00 00 */	cmpw r3, r0
/* 8056EC98  40 82 00 0C */	bne lbl_8056ECA4
/* 8056EC9C  38 00 00 01 */	li r0, 1
/* 8056ECA0  B0 1B 0E 22 */	sth r0, 0xe22(r27)
lbl_8056ECA4:
/* 8056ECA4  38 00 00 00 */	li r0, 0
/* 8056ECA8  98 1B 11 A0 */	stb r0, 0x11a0(r27)
/* 8056ECAC  48 00 03 A4 */	b lbl_8056F050
lbl_8056ECB0:
/* 8056ECB0  88 1B 10 C4 */	lbz r0, 0x10c4(r27)
/* 8056ECB4  28 00 00 08 */	cmplwi r0, 8
/* 8056ECB8  40 82 03 98 */	bne lbl_8056F050
/* 8056ECBC  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056ECC0  2C 00 00 00 */	cmpwi r0, 0
/* 8056ECC4  41 82 03 8C */	beq lbl_8056F050
/* 8056ECC8  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056ECCC  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056ECD0  41 82 00 24 */	beq lbl_8056ECF4
/* 8056ECD4  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056ECD8  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056ECDC  4B BD 6B BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056ECE0  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056ECE4  38 00 00 1F */	li r0, 0x1f
/* 8056ECE8  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056ECEC  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056ECF0  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056ECF4:
/* 8056ECF4  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056ECF8  2C 00 00 00 */	cmpwi r0, 0
/* 8056ECFC  41 82 03 54 */	beq lbl_8056F050
/* 8056ED00  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056ED04  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056ED08  4B BD 6B 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056ED0C  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056ED10  38 00 00 00 */	li r0, 0
/* 8056ED14  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056ED18  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056ED1C  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8056ED20  48 00 03 30 */	b lbl_8056F050
lbl_8056ED24:
/* 8056ED24  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8056ED28  2C 00 00 00 */	cmpwi r0, 0
/* 8056ED2C  41 82 00 24 */	beq lbl_8056ED50
/* 8056ED30  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8056ED34  4B BD 69 C9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056ED38  38 00 00 00 */	li r0, 0
/* 8056ED3C  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8056ED40  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056ED44  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8056ED48  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056ED4C  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8056ED50:
/* 8056ED50  38 00 00 00 */	li r0, 0
/* 8056ED54  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056ED58  7F A3 07 34 */	extsh r3, r29
/* 8056ED5C  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 8056ED60  7C 03 00 00 */	cmpw r3, r0
/* 8056ED64  41 82 00 60 */	beq lbl_8056EDC4
/* 8056ED68  88 1B 0E 34 */	lbz r0, 0xe34(r27)
/* 8056ED6C  28 00 00 00 */	cmplwi r0, 0
/* 8056ED70  41 82 00 34 */	beq lbl_8056EDA4
/* 8056ED74  7F 63 DB 78 */	mr r3, r27
/* 8056ED78  7F A4 EB 78 */	mr r4, r29
/* 8056ED7C  38 A0 00 1F */	li r5, 0x1f
/* 8056ED80  38 C0 00 24 */	li r6, 0x24
/* 8056ED84  38 E0 00 0F */	li r7, 0xf
/* 8056ED88  39 00 00 00 */	li r8, 0
/* 8056ED8C  4B BD C8 BD */	bl step__8daNpcT_cFsiiii
/* 8056ED90  2C 03 00 00 */	cmpwi r3, 0
/* 8056ED94  41 82 00 24 */	beq lbl_8056EDB8
/* 8056ED98  38 00 00 01 */	li r0, 1
/* 8056ED9C  B0 1B 0E 22 */	sth r0, 0xe22(r27)
/* 8056EDA0  48 00 00 18 */	b lbl_8056EDB8
lbl_8056EDA4:
/* 8056EDA4  7F 63 DB 78 */	mr r3, r27
/* 8056EDA8  7F A4 EB 78 */	mr r4, r29
/* 8056EDAC  4B BD BC 6D */	bl setAngle__8daNpcT_cFs
/* 8056EDB0  38 00 00 01 */	li r0, 1
/* 8056EDB4  B0 1B 0E 22 */	sth r0, 0xe22(r27)
lbl_8056EDB8:
/* 8056EDB8  38 00 00 00 */	li r0, 0
/* 8056EDBC  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 8056EDC0  48 00 02 90 */	b lbl_8056F050
lbl_8056EDC4:
/* 8056EDC4  88 1B 10 C4 */	lbz r0, 0x10c4(r27)
/* 8056EDC8  2C 00 00 06 */	cmpwi r0, 6
/* 8056EDCC  40 80 00 1C */	bge lbl_8056EDE8
/* 8056EDD0  2C 00 00 03 */	cmpwi r0, 3
/* 8056EDD4  41 82 02 68 */	beq lbl_8056F03C
/* 8056EDD8  40 80 02 78 */	bge lbl_8056F050
/* 8056EDDC  2C 00 00 01 */	cmpwi r0, 1
/* 8056EDE0  40 80 00 20 */	bge lbl_8056EE00
/* 8056EDE4  48 00 02 58 */	b lbl_8056F03C
lbl_8056EDE8:
/* 8056EDE8  2C 00 00 09 */	cmpwi r0, 9
/* 8056EDEC  41 82 02 64 */	beq lbl_8056F050
/* 8056EDF0  40 80 02 4C */	bge lbl_8056F03C
/* 8056EDF4  2C 00 00 08 */	cmpwi r0, 8
/* 8056EDF8  40 80 01 90 */	bge lbl_8056EF88
/* 8056EDFC  48 00 02 40 */	b lbl_8056F03C
lbl_8056EE00:
/* 8056EE00  80 7B 11 9C */	lwz r3, 0x119c(r27)
/* 8056EE04  2C 03 00 00 */	cmpwi r3, 0
/* 8056EE08  40 82 00 94 */	bne lbl_8056EE9C
/* 8056EE0C  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056EE10  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056EE14  41 82 00 0C */	beq lbl_8056EE20
/* 8056EE18  2C 00 00 20 */	cmpwi r0, 0x20
/* 8056EE1C  40 82 02 34 */	bne lbl_8056F050
lbl_8056EE20:
/* 8056EE20  80 1B 0B 84 */	lwz r0, 0xb84(r27)
/* 8056EE24  2C 00 00 00 */	cmpwi r0, 0
/* 8056EE28  40 81 02 28 */	ble lbl_8056F050
/* 8056EE2C  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056EE30  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056EE34  41 82 00 24 */	beq lbl_8056EE58
/* 8056EE38  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056EE3C  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056EE40  4B BD 6A 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056EE44  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056EE48  38 00 00 1F */	li r0, 0x1f
/* 8056EE4C  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056EE50  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056EE54  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056EE58:
/* 8056EE58  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056EE5C  2C 00 00 19 */	cmpwi r0, 0x19
/* 8056EE60  41 82 00 24 */	beq lbl_8056EE84
/* 8056EE64  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056EE68  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056EE6C  4B BD 6A 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056EE70  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056EE74  38 00 00 19 */	li r0, 0x19
/* 8056EE78  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056EE7C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056EE80  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_8056EE84:
/* 8056EE84  7F C0 0E 70 */	srawi r0, r30, 1
/* 8056EE88  7C 60 01 94 */	addze r3, r0
/* 8056EE8C  7F C4 F3 78 */	mr r4, r30
/* 8056EE90  48 00 23 95 */	bl func_80571224
/* 8056EE94  90 7B 11 9C */	stw r3, 0x119c(r27)
/* 8056EE98  48 00 01 B8 */	b lbl_8056F050
lbl_8056EE9C:
/* 8056EE9C  38 03 FF FF */	addi r0, r3, -1
/* 8056EEA0  90 1B 11 9C */	stw r0, 0x119c(r27)
/* 8056EEA4  80 1B 11 9C */	lwz r0, 0x119c(r27)
/* 8056EEA8  2C 00 00 00 */	cmpwi r0, 0
/* 8056EEAC  40 81 00 60 */	ble lbl_8056EF0C
/* 8056EEB0  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056EEB4  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056EEB8  41 82 00 24 */	beq lbl_8056EEDC
/* 8056EEBC  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056EEC0  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056EEC4  4B BD 69 D5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056EEC8  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056EECC  38 00 00 1F */	li r0, 0x1f
/* 8056EED0  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056EED4  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056EED8  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056EEDC:
/* 8056EEDC  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056EEE0  2C 00 00 19 */	cmpwi r0, 0x19
/* 8056EEE4  41 82 01 6C */	beq lbl_8056F050
/* 8056EEE8  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056EEEC  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056EEF0  4B BD 69 A9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056EEF4  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056EEF8  38 00 00 19 */	li r0, 0x19
/* 8056EEFC  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056EF00  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056EF04  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8056EF08  48 00 01 48 */	b lbl_8056F050
lbl_8056EF0C:
/* 8056EF0C  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056EF10  2C 00 00 10 */	cmpwi r0, 0x10
/* 8056EF14  41 82 00 24 */	beq lbl_8056EF38
/* 8056EF18  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056EF1C  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056EF20  4B BD 69 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056EF24  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056EF28  38 00 00 10 */	li r0, 0x10
/* 8056EF2C  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056EF30  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056EF34  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056EF38:
/* 8056EF38  4B CF 89 35 */	bl cM_rnd__Fv
/* 8056EF3C  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 8056EF40  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8056EF44  40 80 00 0C */	bge lbl_8056EF50
/* 8056EF48  3B A0 00 1F */	li r29, 0x1f
/* 8056EF4C  48 00 00 08 */	b lbl_8056EF54
lbl_8056EF50:
/* 8056EF50  3B A0 00 20 */	li r29, 0x20
lbl_8056EF54:
/* 8056EF54  2C 1D 00 00 */	cmpwi r29, 0
/* 8056EF58  41 80 00 F8 */	blt lbl_8056F050
/* 8056EF5C  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056EF60  7C 1D 00 00 */	cmpw r29, r0
/* 8056EF64  41 82 00 EC */	beq lbl_8056F050
/* 8056EF68  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056EF6C  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056EF70  4B BD 69 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056EF74  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056EF78  93 BB 0B 7C */	stw r29, 0xb7c(r27)
/* 8056EF7C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056EF80  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8056EF84  48 00 00 CC */	b lbl_8056F050
lbl_8056EF88:
/* 8056EF88  80 1B 11 9C */	lwz r0, 0x119c(r27)
/* 8056EF8C  2C 00 00 00 */	cmpwi r0, 0
/* 8056EF90  41 82 00 80 */	beq lbl_8056F010
/* 8056EF94  38 7B 11 9C */	addi r3, r27, 0x119c
/* 8056EF98  48 00 22 71 */	bl func_80571208
/* 8056EF9C  2C 03 00 00 */	cmpwi r3, 0
/* 8056EFA0  40 82 00 B0 */	bne lbl_8056F050
/* 8056EFA4  38 60 00 3C */	li r3, 0x3c
/* 8056EFA8  4B BD DB C5 */	bl daNpcT_chkTmpBit__FUl
/* 8056EFAC  2C 03 00 00 */	cmpwi r3, 0
/* 8056EFB0  40 82 00 A0 */	bne lbl_8056F050
/* 8056EFB4  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056EFB8  2C 00 00 17 */	cmpwi r0, 0x17
/* 8056EFBC  41 82 00 24 */	beq lbl_8056EFE0
/* 8056EFC0  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056EFC4  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056EFC8  4B BD 68 D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056EFCC  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056EFD0  38 00 00 17 */	li r0, 0x17
/* 8056EFD4  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056EFD8  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056EFDC  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056EFE0:
/* 8056EFE0  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056EFE4  2C 00 00 22 */	cmpwi r0, 0x22
/* 8056EFE8  41 82 00 68 */	beq lbl_8056F050
/* 8056EFEC  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056EFF0  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056EFF4  4B BD 68 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056EFF8  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056EFFC  38 00 00 22 */	li r0, 0x22
/* 8056F000  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056F004  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056F008  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8056F00C  48 00 00 44 */	b lbl_8056F050
lbl_8056F010:
/* 8056F010  38 60 00 3C */	li r3, 0x3c
/* 8056F014  4B BD DB 59 */	bl daNpcT_chkTmpBit__FUl
/* 8056F018  2C 03 00 00 */	cmpwi r3, 0
/* 8056F01C  40 82 00 14 */	bne lbl_8056F030
/* 8056F020  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056F024  4B BD 6A 01 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 8056F028  2C 03 00 00 */	cmpwi r3, 0
/* 8056F02C  41 82 00 24 */	beq lbl_8056F050
lbl_8056F030:
/* 8056F030  38 00 00 01 */	li r0, 1
/* 8056F034  B0 1B 0E 22 */	sth r0, 0xe22(r27)
/* 8056F038  48 00 00 18 */	b lbl_8056F050
lbl_8056F03C:
/* 8056F03C  88 1B 0A 89 */	lbz r0, 0xa89(r27)
/* 8056F040  28 00 00 00 */	cmplwi r0, 0
/* 8056F044  40 82 00 0C */	bne lbl_8056F050
/* 8056F048  7F 63 DB 78 */	mr r3, r27
/* 8056F04C  4B BD C2 ED */	bl srchPlayerActor__8daNpcT_cFv
lbl_8056F050:
/* 8056F050  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8056F054  2C 00 00 00 */	cmpwi r0, 0
/* 8056F058  41 82 00 08 */	beq lbl_8056F060
/* 8056F05C  48 00 01 F4 */	b lbl_8056F250
lbl_8056F060:
/* 8056F060  88 1B 10 C4 */	lbz r0, 0x10c4(r27)
/* 8056F064  2C 00 00 0A */	cmpwi r0, 0xa
/* 8056F068  41 82 00 74 */	beq lbl_8056F0DC
/* 8056F06C  40 80 01 E4 */	bge lbl_8056F250
/* 8056F070  2C 00 00 06 */	cmpwi r0, 6
/* 8056F074  40 80 01 DC */	bge lbl_8056F250
/* 8056F078  2C 00 00 04 */	cmpwi r0, 4
/* 8056F07C  40 80 00 08 */	bge lbl_8056F084
/* 8056F080  48 00 01 D0 */	b lbl_8056F250
lbl_8056F084:
/* 8056F084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056F088  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056F08C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8056F090  38 80 0E 40 */	li r4, 0xe40
/* 8056F094  4B AC 59 29 */	bl isEventBit__11dSv_event_cCFUs
/* 8056F098  2C 03 00 00 */	cmpwi r3, 0
/* 8056F09C  41 82 01 B4 */	beq lbl_8056F250
/* 8056F0A0  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8056F0A4  2C 00 00 01 */	cmpwi r0, 1
/* 8056F0A8  41 82 00 28 */	beq lbl_8056F0D0
/* 8056F0AC  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8056F0B0  4B BD 66 4D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056F0B4  38 00 00 00 */	li r0, 0
/* 8056F0B8  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8056F0BC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056F0C0  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8056F0C4  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056F0C8  38 00 00 01 */	li r0, 1
/* 8056F0CC  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8056F0D0:
/* 8056F0D0  38 00 00 00 */	li r0, 0
/* 8056F0D4  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056F0D8  48 00 01 78 */	b lbl_8056F250
lbl_8056F0DC:
/* 8056F0DC  38 60 00 64 */	li r3, 0x64
/* 8056F0E0  4B BD DA 8D */	bl daNpcT_chkTmpBit__FUl
/* 8056F0E4  2C 03 00 00 */	cmpwi r3, 0
/* 8056F0E8  41 82 00 14 */	beq lbl_8056F0FC
/* 8056F0EC  38 00 00 01 */	li r0, 1
/* 8056F0F0  98 1B 11 A7 */	stb r0, 0x11a7(r27)
/* 8056F0F4  38 00 80 00 */	li r0, -32768
/* 8056F0F8  B0 1B 04 B6 */	sth r0, 0x4b6(r27)
lbl_8056F0FC:
/* 8056F0FC  88 1B 11 A7 */	lbz r0, 0x11a7(r27)
/* 8056F100  28 00 00 00 */	cmplwi r0, 0
/* 8056F104  41 82 00 B0 */	beq lbl_8056F1B4
/* 8056F108  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8056F10C  2C 00 00 04 */	cmpwi r0, 4
/* 8056F110  41 82 00 28 */	beq lbl_8056F138
/* 8056F114  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8056F118  4B BD 65 E5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056F11C  38 00 00 00 */	li r0, 0
/* 8056F120  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8056F124  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056F128  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8056F12C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056F130  38 00 00 04 */	li r0, 4
/* 8056F134  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8056F138:
/* 8056F138  38 00 00 00 */	li r0, 0
/* 8056F13C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056F140  4B CC 90 5D */	bl getActor__12dMsgObject_cFv
/* 8056F144  28 03 00 00 */	cmplwi r3, 0
/* 8056F148  41 82 01 08 */	beq lbl_8056F250
/* 8056F14C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8056F150  28 00 00 06 */	cmplwi r0, 6
/* 8056F154  40 82 00 FC */	bne lbl_8056F250
/* 8056F158  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8056F15C  2C 00 00 06 */	cmpwi r0, 6
/* 8056F160  41 82 00 24 */	beq lbl_8056F184
/* 8056F164  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8056F168  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8056F16C  4B BD 67 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056F170  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8056F174  38 00 00 06 */	li r0, 6
/* 8056F178  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8056F17C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056F180  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_8056F184:
/* 8056F184  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8056F188  2C 00 00 02 */	cmpwi r0, 2
/* 8056F18C  41 82 00 C4 */	beq lbl_8056F250
/* 8056F190  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8056F194  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8056F198  4B BD 67 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056F19C  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8056F1A0  38 00 00 02 */	li r0, 2
/* 8056F1A4  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8056F1A8  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8056F1AC  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8056F1B0  48 00 00 A0 */	b lbl_8056F250
lbl_8056F1B4:
/* 8056F1B4  38 7B 10 D0 */	addi r3, r27, 0x10d0
/* 8056F1B8  4B BD 65 51 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056F1BC  7C 7C 1B 79 */	or. r28, r3, r3
/* 8056F1C0  41 82 00 90 */	beq lbl_8056F250
/* 8056F1C4  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8056F1C8  4B BD 65 41 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056F1CC  7C 63 E0 50 */	subf r3, r3, r28
/* 8056F1D0  30 03 FF FF */	addic r0, r3, -1
/* 8056F1D4  7C 00 19 10 */	subfe r0, r0, r3
/* 8056F1D8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056F1DC  40 82 00 10 */	bne lbl_8056F1EC
/* 8056F1E0  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8056F1E4  2C 00 00 02 */	cmpwi r0, 2
/* 8056F1E8  41 82 00 30 */	beq lbl_8056F218
lbl_8056F1EC:
/* 8056F1EC  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8056F1F0  4B BD 65 0D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056F1F4  38 00 00 00 */	li r0, 0
/* 8056F1F8  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8056F1FC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8056F200  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8056F204  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8056F208  38 00 00 02 */	li r0, 2
/* 8056F20C  90 1B 0C E0 */	stw r0, 0xce0(r27)
/* 8056F210  38 00 00 01 */	li r0, 1
/* 8056F214  48 00 00 08 */	b lbl_8056F21C
lbl_8056F218:
/* 8056F218  38 00 00 00 */	li r0, 0
lbl_8056F21C:
/* 8056F21C  2C 00 00 00 */	cmpwi r0, 0
/* 8056F220  41 82 00 28 */	beq lbl_8056F248
/* 8056F224  7F 83 E3 78 */	mr r3, r28
/* 8056F228  4B AA 9A B9 */	bl fopAc_IsActor__FPv
/* 8056F22C  2C 03 00 00 */	cmpwi r3, 0
/* 8056F230  41 82 00 18 */	beq lbl_8056F248
/* 8056F234  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8056F238  7F 84 E3 78 */	mr r4, r28
/* 8056F23C  4B BD 64 A5 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8056F240  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 8056F244  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
lbl_8056F248:
/* 8056F248  38 00 00 00 */	li r0, 0
/* 8056F24C  98 1B 0C FF */	stb r0, 0xcff(r27)
lbl_8056F250:
/* 8056F250  88 1B 10 C4 */	lbz r0, 0x10c4(r27)
/* 8056F254  2C 00 00 0C */	cmpwi r0, 0xc
/* 8056F258  41 82 00 34 */	beq lbl_8056F28C
/* 8056F25C  40 80 00 30 */	bge lbl_8056F28C
/* 8056F260  2C 00 00 06 */	cmpwi r0, 6
/* 8056F264  40 80 00 10 */	bge lbl_8056F274
/* 8056F268  2C 00 00 04 */	cmpwi r0, 4
/* 8056F26C  40 80 00 18 */	bge lbl_8056F284
/* 8056F270  48 00 00 1C */	b lbl_8056F28C
lbl_8056F274:
/* 8056F274  2C 00 00 0A */	cmpwi r0, 0xa
/* 8056F278  40 80 00 0C */	bge lbl_8056F284
/* 8056F27C  48 00 00 10 */	b lbl_8056F28C
/* 8056F280  48 00 00 0C */	b lbl_8056F28C
lbl_8056F284:
/* 8056F284  38 00 00 00 */	li r0, 0
/* 8056F288  90 1B 05 5C */	stw r0, 0x55c(r27)
lbl_8056F28C:
/* 8056F28C  38 60 00 01 */	li r3, 1
lbl_8056F290:
/* 8056F290  39 61 00 50 */	addi r11, r1, 0x50
/* 8056F294  4B DF 2F 89 */	bl _restgpr_26
/* 8056F298  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8056F29C  7C 08 03 A6 */	mtlr r0
/* 8056F2A0  38 21 00 50 */	addi r1, r1, 0x50
/* 8056F2A4  4E 80 00 20 */	blr 
