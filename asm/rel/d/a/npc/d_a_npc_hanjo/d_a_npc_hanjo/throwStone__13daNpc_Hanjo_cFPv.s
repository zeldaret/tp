lbl_809FDEFC:
/* 809FDEFC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809FDF00  7C 08 02 A6 */	mflr r0
/* 809FDF04  90 01 00 54 */	stw r0, 0x54(r1)
/* 809FDF08  39 61 00 50 */	addi r11, r1, 0x50
/* 809FDF0C  4B 96 42 CD */	bl _savegpr_28
/* 809FDF10  7C 7E 1B 78 */	mr r30, r3
/* 809FDF14  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha /* 0x80A00600@ha */
/* 809FDF18  3B E3 06 00 */	addi r31, r3, m__19daNpc_Hanjo_Param_c@l /* 0x80A00600@l */
/* 809FDF1C  38 7F 00 00 */	addi r3, r31, 0
/* 809FDF20  AB 83 00 AE */	lha r28, 0xae(r3)
/* 809FDF24  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 809FDF28  2C 00 00 02 */	cmpwi r0, 2
/* 809FDF2C  41 82 01 40 */	beq lbl_809FE06C
/* 809FDF30  40 80 03 94 */	bge lbl_809FE2C4
/* 809FDF34  2C 00 00 00 */	cmpwi r0, 0
/* 809FDF38  40 80 00 0C */	bge lbl_809FDF44
/* 809FDF3C  48 00 03 88 */	b lbl_809FE2C4
/* 809FDF40  48 00 03 84 */	b lbl_809FE2C4
lbl_809FDF44:
/* 809FDF44  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 809FDF48  2C 00 00 00 */	cmpwi r0, 0
/* 809FDF4C  40 82 01 20 */	bne lbl_809FE06C
/* 809FDF50  38 60 00 8B */	li r3, 0x8b
/* 809FDF54  4B 74 EB 59 */	bl daNpcT_chkEvtBit__FUl
/* 809FDF58  2C 03 00 00 */	cmpwi r3, 0
/* 809FDF5C  41 82 00 60 */	beq lbl_809FDFBC
/* 809FDF60  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809FDF64  2C 00 00 07 */	cmpwi r0, 7
/* 809FDF68  41 82 00 24 */	beq lbl_809FDF8C
/* 809FDF6C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809FDF70  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809FDF74  4B 74 79 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FDF78  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809FDF7C  38 00 00 07 */	li r0, 7
/* 809FDF80  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809FDF84  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FDF88  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809FDF8C:
/* 809FDF8C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FDF90  2C 00 00 00 */	cmpwi r0, 0
/* 809FDF94  41 82 00 D0 */	beq lbl_809FE064
/* 809FDF98  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FDF9C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FDFA0  4B 74 78 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FDFA4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FDFA8  38 00 00 00 */	li r0, 0
/* 809FDFAC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FDFB0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FDFB4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809FDFB8  48 00 00 AC */	b lbl_809FE064
lbl_809FDFBC:
/* 809FDFBC  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809FDFC0  2C 00 00 07 */	cmpwi r0, 7
/* 809FDFC4  41 82 00 24 */	beq lbl_809FDFE8
/* 809FDFC8  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809FDFCC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809FDFD0  4B 74 78 C9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FDFD4  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809FDFD8  38 00 00 07 */	li r0, 7
/* 809FDFDC  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809FDFE0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FDFE4  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809FDFE8:
/* 809FDFE8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FDFEC  2C 00 00 02 */	cmpwi r0, 2
/* 809FDFF0  41 82 00 24 */	beq lbl_809FE014
/* 809FDFF4  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FDFF8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FDFFC  4B 74 78 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FE000  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FE004  38 00 00 02 */	li r0, 2
/* 809FE008  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FE00C  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FE010  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809FE014:
/* 809FE014  C0 3F 01 A0 */	lfs f1, 0x1a0(r31)
/* 809FE018  C8 7F 01 48 */	lfd f3, 0x148(r31)
/* 809FE01C  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 809FE020  90 61 00 24 */	stw r3, 0x24(r1)
/* 809FE024  3C 00 43 30 */	lis r0, 0x4330
/* 809FE028  90 01 00 20 */	stw r0, 0x20(r1)
/* 809FE02C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 809FE030  EC 00 18 28 */	fsubs f0, f0, f3
/* 809FE034  EC 21 00 32 */	fmuls f1, f1, f0
/* 809FE038  C0 5F 01 EC */	lfs f2, 0x1ec(r31)
/* 809FE03C  90 61 00 2C */	stw r3, 0x2c(r1)
/* 809FE040  90 01 00 28 */	stw r0, 0x28(r1)
/* 809FE044  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 809FE048  EC 00 18 28 */	fsubs f0, f0, f3
/* 809FE04C  EC 42 00 32 */	fmuls f2, f2, f0
/* 809FE050  48 00 1E 39 */	bl func_809FFE88
/* 809FE054  FC 00 08 1E */	fctiwz f0, f1
/* 809FE058  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809FE05C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809FE060  90 1E 17 04 */	stw r0, 0x1704(r30)
lbl_809FE064:
/* 809FE064  38 00 00 02 */	li r0, 2
/* 809FE068  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809FE06C:
/* 809FE06C  38 60 00 8B */	li r3, 0x8b
/* 809FE070  4B 74 EA 3D */	bl daNpcT_chkEvtBit__FUl
/* 809FE074  2C 03 00 00 */	cmpwi r3, 0
/* 809FE078  41 82 00 98 */	beq lbl_809FE110
/* 809FE07C  38 60 00 AD */	li r3, 0xad
/* 809FE080  4B 74 EA 2D */	bl daNpcT_chkEvtBit__FUl
/* 809FE084  2C 03 00 00 */	cmpwi r3, 0
/* 809FE088  40 82 00 88 */	bne lbl_809FE110
/* 809FE08C  38 60 00 B7 */	li r3, 0xb7
/* 809FE090  4B 74 EA 1D */	bl daNpcT_chkEvtBit__FUl
/* 809FE094  2C 03 00 00 */	cmpwi r3, 0
/* 809FE098  40 82 00 78 */	bne lbl_809FE110
/* 809FE09C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809FE0A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809FE0A4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809FE0A8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 809FE0AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809FE0B0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 809FE0B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809FE0B8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 809FE0BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809FE0C0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809FE0C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 809FE0C8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809FE0CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809FE0D0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809FE0D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809FE0D8  7F C3 F3 78 */	mr r3, r30
/* 809FE0DC  38 81 00 14 */	addi r4, r1, 0x14
/* 809FE0E0  38 A1 00 08 */	addi r5, r1, 8
/* 809FE0E4  38 DF 00 00 */	addi r6, r31, 0
/* 809FE0E8  C0 26 00 A4 */	lfs f1, 0xa4(r6)
/* 809FE0EC  C0 5F 01 F0 */	lfs f2, 0x1f0(r31)
/* 809FE0F0  C0 7F 01 F4 */	lfs f3, 0x1f4(r31)
/* 809FE0F4  38 C0 00 00 */	li r6, 0
/* 809FE0F8  4B 74 CB F9 */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 809FE0FC  7C 60 00 34 */	cntlzw r0, r3
/* 809FE100  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 809FE104  41 82 00 0C */	beq lbl_809FE110
/* 809FE108  38 00 00 08 */	li r0, 8
/* 809FE10C  B0 1E 0E 30 */	sth r0, 0xe30(r30)
lbl_809FE110:
/* 809FE110  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 809FE114  2C 00 00 00 */	cmpwi r0, 0
/* 809FE118  40 82 01 AC */	bne lbl_809FE2C4
/* 809FE11C  38 60 00 8B */	li r3, 0x8b
/* 809FE120  4B 74 E9 8D */	bl daNpcT_chkEvtBit__FUl
/* 809FE124  2C 03 00 00 */	cmpwi r3, 0
/* 809FE128  41 82 00 60 */	beq lbl_809FE188
/* 809FE12C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FE130  2C 00 00 01 */	cmpwi r0, 1
/* 809FE134  41 82 00 28 */	beq lbl_809FE15C
/* 809FE138  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FE13C  4B 74 75 C1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809FE140  38 00 00 00 */	li r0, 0
/* 809FE144  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FE148  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FE14C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FE150  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE154  38 00 00 01 */	li r0, 1
/* 809FE158  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809FE15C:
/* 809FE15C  38 00 00 00 */	li r0, 0
/* 809FE160  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE164  7F C3 F3 78 */	mr r3, r30
/* 809FE168  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809FE16C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809FE170  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809FE174  4B 61 C5 9D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809FE178  7C 64 1B 78 */	mr r4, r3
/* 809FE17C  7F C3 F3 78 */	mr r3, r30
/* 809FE180  4B FF DE ED */	bl lookround__13daNpc_Hanjo_cFs
/* 809FE184  48 00 01 40 */	b lbl_809FE2C4
lbl_809FE188:
/* 809FE188  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FE18C  2C 00 00 00 */	cmpwi r0, 0
/* 809FE190  41 82 00 24 */	beq lbl_809FE1B4
/* 809FE194  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FE198  4B 74 75 65 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809FE19C  38 00 00 00 */	li r0, 0
/* 809FE1A0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FE1A4  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FE1A8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FE1AC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE1B0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809FE1B4:
/* 809FE1B4  38 00 00 00 */	li r0, 0
/* 809FE1B8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FE1BC  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 809FE1C0  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809FE1C4  7C 04 00 00 */	cmpw r4, r0
/* 809FE1C8  41 82 00 58 */	beq lbl_809FE220
/* 809FE1CC  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 809FE1D0  28 00 00 00 */	cmplwi r0, 0
/* 809FE1D4  41 82 00 30 */	beq lbl_809FE204
/* 809FE1D8  7F C3 F3 78 */	mr r3, r30
/* 809FE1DC  38 A0 00 07 */	li r5, 7
/* 809FE1E0  38 C0 00 0E */	li r6, 0xe
/* 809FE1E4  38 E0 00 0F */	li r7, 0xf
/* 809FE1E8  39 00 00 00 */	li r8, 0
/* 809FE1EC  4B 74 D4 5D */	bl step__8daNpcT_cFsiiii
/* 809FE1F0  2C 03 00 00 */	cmpwi r3, 0
/* 809FE1F4  41 82 00 20 */	beq lbl_809FE214
/* 809FE1F8  38 00 00 01 */	li r0, 1
/* 809FE1FC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809FE200  48 00 00 14 */	b lbl_809FE214
lbl_809FE204:
/* 809FE204  7F C3 F3 78 */	mr r3, r30
/* 809FE208  4B 74 C8 11 */	bl setAngle__8daNpcT_cFs
/* 809FE20C  38 00 00 01 */	li r0, 1
/* 809FE210  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809FE214:
/* 809FE214  38 00 00 00 */	li r0, 0
/* 809FE218  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 809FE21C  48 00 00 A8 */	b lbl_809FE2C4
lbl_809FE220:
/* 809FE220  80 1E 17 04 */	lwz r0, 0x1704(r30)
/* 809FE224  2C 00 00 00 */	cmpwi r0, 0
/* 809FE228  41 82 00 40 */	beq lbl_809FE268
/* 809FE22C  38 7E 17 04 */	addi r3, r30, 0x1704
/* 809FE230  48 00 1C 3D */	bl func_809FFE6C
/* 809FE234  2C 03 00 00 */	cmpwi r3, 0
/* 809FE238  40 82 00 8C */	bne lbl_809FE2C4
/* 809FE23C  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 809FE240  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 809FE244  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 809FE248  38 03 00 01 */	addi r0, r3, 1
/* 809FE24C  90 1E 17 08 */	stw r0, 0x1708(r30)
/* 809FE250  7F C3 F3 78 */	mr r3, r30
/* 809FE254  38 80 00 00 */	li r4, 0
/* 809FE258  4B FF D5 49 */	bl initShoot__13daNpc_Hanjo_cFi
/* 809FE25C  38 00 FF FF */	li r0, -1
/* 809FE260  90 1E 17 0C */	stw r0, 0x170c(r30)
/* 809FE264  48 00 00 60 */	b lbl_809FE2C4
lbl_809FE268:
/* 809FE268  7F C3 F3 78 */	mr r3, r30
/* 809FE26C  38 80 00 00 */	li r4, 0
/* 809FE270  4B FF D6 9D */	bl shoot__13daNpc_Hanjo_cFi
/* 809FE274  2C 03 00 00 */	cmpwi r3, 0
/* 809FE278  41 82 00 4C */	beq lbl_809FE2C4
/* 809FE27C  80 1E 17 08 */	lwz r0, 0x1708(r30)
/* 809FE280  2C 00 00 00 */	cmpwi r0, 0
/* 809FE284  41 82 00 38 */	beq lbl_809FE2BC
/* 809FE288  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FE28C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FE290  4B 74 76 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FE294  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FE298  38 00 00 0F */	li r0, 0xf
/* 809FE29C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FE2A0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FE2A4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809FE2A8  38 7E 17 08 */	addi r3, r30, 0x1708
/* 809FE2AC  48 00 1B C1 */	bl func_809FFE6C
/* 809FE2B0  38 00 FF FF */	li r0, -1
/* 809FE2B4  90 1E 17 0C */	stw r0, 0x170c(r30)
/* 809FE2B8  48 00 00 0C */	b lbl_809FE2C4
lbl_809FE2BC:
/* 809FE2BC  38 00 00 01 */	li r0, 1
/* 809FE2C0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809FE2C4:
/* 809FE2C4  38 60 00 01 */	li r3, 1
/* 809FE2C8  39 61 00 50 */	addi r11, r1, 0x50
/* 809FE2CC  4B 96 3F 59 */	bl _restgpr_28
/* 809FE2D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809FE2D4  7C 08 03 A6 */	mtlr r0
/* 809FE2D8  38 21 00 50 */	addi r1, r1, 0x50
/* 809FE2DC  4E 80 00 20 */	blr 
