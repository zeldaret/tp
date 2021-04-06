lbl_80ACEAC4:
/* 80ACEAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACEAC8  7C 08 02 A6 */	mflr r0
/* 80ACEACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACEAD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACEAD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACEAD8  7C 7F 1B 78 */	mr r31, r3
/* 80ACEADC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80ACEAE0  2C 00 00 02 */	cmpwi r0, 2
/* 80ACEAE4  41 82 00 5C */	beq lbl_80ACEB40
/* 80ACEAE8  40 80 01 E4 */	bge lbl_80ACECCC
/* 80ACEAEC  2C 00 00 00 */	cmpwi r0, 0
/* 80ACEAF0  40 80 00 0C */	bge lbl_80ACEAFC
/* 80ACEAF4  48 00 01 D8 */	b lbl_80ACECCC
/* 80ACEAF8  48 00 01 D4 */	b lbl_80ACECCC
lbl_80ACEAFC:
/* 80ACEAFC  80 1F 10 F8 */	lwz r0, 0x10f8(r31)
/* 80ACEB00  2C 00 00 02 */	cmpwi r0, 2
/* 80ACEB04  40 82 00 10 */	bne lbl_80ACEB14
/* 80ACEB08  38 80 00 01 */	li r4, 1
/* 80ACEB0C  4B 6C B5 C5 */	bl shop_init__13dShopSystem_cFb
/* 80ACEB10  48 00 00 28 */	b lbl_80ACEB38
lbl_80ACEB14:
/* 80ACEB14  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 80ACEB18  4B 6C 77 F5 */	bl Save__16ShopCam_action_cFv
/* 80ACEB1C  7F E3 FB 78 */	mr r3, r31
/* 80ACEB20  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80ACEB24  38 A0 00 00 */	li r5, 0
/* 80ACEB28  4B 67 D0 C9 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80ACEB2C  7F E3 FB 78 */	mr r3, r31
/* 80ACEB30  38 80 00 00 */	li r4, 0
/* 80ACEB34  4B 6C B5 9D */	bl shop_init__13dShopSystem_cFb
lbl_80ACEB38:
/* 80ACEB38  38 00 00 02 */	li r0, 2
/* 80ACEB3C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACEB40:
/* 80ACEB40  7F E3 FB 78 */	mr r3, r31
/* 80ACEB44  7F E4 FB 78 */	mr r4, r31
/* 80ACEB48  38 BF 09 74 */	addi r5, r31, 0x974
/* 80ACEB4C  4B 6C B6 0D */	bl shop_process__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c
/* 80ACEB50  90 7F 10 F8 */	stw r3, 0x10f8(r31)
/* 80ACEB54  80 1F 10 F8 */	lwz r0, 0x10f8(r31)
/* 80ACEB58  2C 00 00 00 */	cmpwi r0, 0
/* 80ACEB5C  41 82 01 70 */	beq lbl_80ACECCC
/* 80ACEB60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACEB64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACEB68  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80ACEB6C  4B 57 38 FD */	bl reset__14dEvt_control_cFv
/* 80ACEB70  38 00 00 01 */	li r0, 1
/* 80ACEB74  98 1F 10 FC */	stb r0, 0x10fc(r31)
/* 80ACEB78  38 60 00 A5 */	li r3, 0xa5
/* 80ACEB7C  4B 67 DF 31 */	bl daNpcT_chkEvtBit__FUl
/* 80ACEB80  2C 03 00 00 */	cmpwi r3, 0
/* 80ACEB84  41 82 00 B0 */	beq lbl_80ACEC34
/* 80ACEB88  88 1F 10 C0 */	lbz r0, 0x10c0(r31)
/* 80ACEB8C  28 00 00 00 */	cmplwi r0, 0
/* 80ACEB90  41 82 00 A4 */	beq lbl_80ACEC34
/* 80ACEB94  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACEB98  2C 00 00 06 */	cmpwi r0, 6
/* 80ACEB9C  41 82 00 28 */	beq lbl_80ACEBC4
/* 80ACEBA0  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACEBA4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACEBA8  4B 67 6C F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACEBAC  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACEBB0  38 00 00 06 */	li r0, 6
/* 80ACEBB4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACEBB8  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACEBBC  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACEBC0  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACEBC4:
/* 80ACEBC4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACEBC8  2C 00 00 0B */	cmpwi r0, 0xb
/* 80ACEBCC  41 82 00 28 */	beq lbl_80ACEBF4
/* 80ACEBD0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACEBD4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACEBD8  4B 67 6C C1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACEBDC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACEBE0  38 00 00 0B */	li r0, 0xb
/* 80ACEBE4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACEBE8  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACEBEC  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACEBF0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80ACEBF4:
/* 80ACEBF4  38 00 00 00 */	li r0, 0
/* 80ACEBF8  98 1F 10 C0 */	stb r0, 0x10c0(r31)
/* 80ACEBFC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACEC00  2C 00 00 00 */	cmpwi r0, 0
/* 80ACEC04  41 82 00 28 */	beq lbl_80ACEC2C
/* 80ACEC08  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACEC0C  4B 67 6A F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACEC10  38 00 00 00 */	li r0, 0
/* 80ACEC14  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACEC18  3C 60 80 AD */	lis r3, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACEC1C  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)  /* 0x80ACFE98@l */
/* 80ACEC20  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACEC24  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACEC28  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACEC2C:
/* 80ACEC2C  38 00 00 00 */	li r0, 0
/* 80ACEC30  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80ACEC34:
/* 80ACEC34  38 60 02 08 */	li r3, 0x208
/* 80ACEC38  4B 67 DE 75 */	bl daNpcT_chkEvtBit__FUl
/* 80ACEC3C  2C 03 00 00 */	cmpwi r3, 0
/* 80ACEC40  41 82 00 84 */	beq lbl_80ACECC4
/* 80ACEC44  38 60 02 08 */	li r3, 0x208
/* 80ACEC48  4B 67 DE 65 */	bl daNpcT_chkEvtBit__FUl
/* 80ACEC4C  88 1F 11 00 */	lbz r0, 0x1100(r31)
/* 80ACEC50  7C 00 18 00 */	cmpw r0, r3
/* 80ACEC54  41 82 00 70 */	beq lbl_80ACECC4
/* 80ACEC58  38 60 02 08 */	li r3, 0x208
/* 80ACEC5C  4B 67 DE 51 */	bl daNpcT_chkEvtBit__FUl
/* 80ACEC60  98 7F 11 00 */	stb r3, 0x1100(r31)
/* 80ACEC64  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACEC68  2C 00 00 06 */	cmpwi r0, 6
/* 80ACEC6C  41 82 00 28 */	beq lbl_80ACEC94
/* 80ACEC70  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACEC74  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACEC78  4B 67 6C 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACEC7C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACEC80  38 00 00 06 */	li r0, 6
/* 80ACEC84  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACEC88  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACEC8C  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACEC90  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACEC94:
/* 80ACEC94  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACEC98  2C 00 00 05 */	cmpwi r0, 5
/* 80ACEC9C  41 82 00 28 */	beq lbl_80ACECC4
/* 80ACECA0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACECA4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACECA8  4B 67 6B F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACECAC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACECB0  38 00 00 05 */	li r0, 5
/* 80ACECB4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACECB8  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACECBC  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACECC0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80ACECC4:
/* 80ACECC4  38 00 00 03 */	li r0, 3
/* 80ACECC8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACECCC:
/* 80ACECCC  38 60 00 00 */	li r3, 0
/* 80ACECD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACECD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACECD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACECDC  7C 08 03 A6 */	mtlr r0
/* 80ACECE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACECE4  4E 80 00 20 */	blr 
