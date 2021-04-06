lbl_80A9FB08:
/* 80A9FB08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A9FB0C  7C 08 02 A6 */	mflr r0
/* 80A9FB10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A9FB14  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9FB18  4B 8C 26 BD */	bl _savegpr_27
/* 80A9FB1C  7C 7F 1B 78 */	mr r31, r3
/* 80A9FB20  7C 9B 23 78 */	mr r27, r4
/* 80A9FB24  3C 60 80 AA */	lis r3, lit_5837@ha /* 0x80AA17F0@ha */
/* 80A9FB28  38 83 17 F0 */	addi r4, r3, lit_5837@l /* 0x80AA17F0@l */
/* 80A9FB2C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9FB30  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9FB34  90 61 00 08 */	stw r3, 8(r1)
/* 80A9FB38  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9FB3C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A9FB40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9FB44  93 E1 00 08 */	stw r31, 8(r1)
/* 80A9FB48  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A9FB4C  4B 6A 5B BD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9FB50  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A9FB54  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80A9FB58  4B 6A 5B B1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9FB5C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A9FB60  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80A9FB64  4B 6A 5B A5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9FB68  7C 7D 1B 78 */	mr r29, r3
/* 80A9FB6C  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A9FB70  4B 6A 5B 99 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9FB74  7C 7E 1B 78 */	mr r30, r3
/* 80A9FB78  3B 80 00 00 */	li r28, 0
/* 80A9FB7C  80 1B 00 00 */	lwz r0, 0(r27)
/* 80A9FB80  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A9FB84  41 82 00 BC */	beq lbl_80A9FC40
/* 80A9FB88  40 80 00 10 */	bge lbl_80A9FB98
/* 80A9FB8C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9FB90  40 80 00 14 */	bge lbl_80A9FBA4
/* 80A9FB94  48 00 01 3C */	b lbl_80A9FCD0
lbl_80A9FB98:
/* 80A9FB98  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A9FB9C  41 82 00 AC */	beq lbl_80A9FC48
/* 80A9FBA0  48 00 01 30 */	b lbl_80A9FCD0
lbl_80A9FBA4:
/* 80A9FBA4  7F E3 FB 78 */	mr r3, r31
/* 80A9FBA8  38 9F 0F EC */	addi r4, r31, 0xfec
/* 80A9FBAC  4B FF E7 21 */	bl _turn_pos__18daNpc_Pachi_Taro_cFRC4cXyz
/* 80A9FBB0  2C 03 00 00 */	cmpwi r3, 0
/* 80A9FBB4  41 82 01 1C */	beq lbl_80A9FCD0
/* 80A9FBB8  80 7F 0B C8 */	lwz r3, 0xbc8(r31)
/* 80A9FBBC  38 1F 0F F8 */	addi r0, r31, 0xff8
/* 80A9FBC0  7C 63 00 50 */	subf r3, r3, r0
/* 80A9FBC4  30 03 FF FF */	addic r0, r3, -1
/* 80A9FBC8  7C 00 19 10 */	subfe r0, r0, r3
/* 80A9FBCC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A9FBD0  40 82 00 10 */	bne lbl_80A9FBE0
/* 80A9FBD4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A9FBD8  2C 00 00 03 */	cmpwi r0, 3
/* 80A9FBDC  41 82 00 34 */	beq lbl_80A9FC10
lbl_80A9FBE0:
/* 80A9FBE0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A9FBE4  4B 6A 5B 19 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A9FBE8  38 00 00 00 */	li r0, 0
/* 80A9FBEC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A9FBF0  3C 60 80 AA */	lis r3, lit_4373@ha /* 0x80AA16A4@ha */
/* 80A9FBF4  C0 03 16 A4 */	lfs f0, lit_4373@l(r3)  /* 0x80AA16A4@l */
/* 80A9FBF8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A9FBFC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A9FC00  38 00 00 03 */	li r0, 3
/* 80A9FC04  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80A9FC08  38 00 00 01 */	li r0, 1
/* 80A9FC0C  48 00 00 08 */	b lbl_80A9FC14
lbl_80A9FC10:
/* 80A9FC10  38 00 00 00 */	li r0, 0
lbl_80A9FC14:
/* 80A9FC14  2C 00 00 00 */	cmpwi r0, 0
/* 80A9FC18  41 82 00 0C */	beq lbl_80A9FC24
/* 80A9FC1C  38 1F 0F F8 */	addi r0, r31, 0xff8
/* 80A9FC20  90 1F 0B C8 */	stw r0, 0xbc8(r31)
lbl_80A9FC24:
/* 80A9FC24  38 00 00 00 */	li r0, 0
/* 80A9FC28  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80A9FC2C  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80A9FC30  38 00 00 01 */	li r0, 1
/* 80A9FC34  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A9FC38  3B 80 00 01 */	li r28, 1
/* 80A9FC3C  48 00 00 94 */	b lbl_80A9FCD0
lbl_80A9FC40:
/* 80A9FC40  3B 80 00 01 */	li r28, 1
/* 80A9FC44  48 00 00 8C */	b lbl_80A9FCD0
lbl_80A9FC48:
/* 80A9FC48  7F E3 FB 78 */	mr r3, r31
/* 80A9FC4C  38 80 00 00 */	li r4, 0
/* 80A9FC50  38 A0 00 00 */	li r5, 0
/* 80A9FC54  38 C1 00 08 */	addi r6, r1, 8
/* 80A9FC58  38 E0 00 00 */	li r7, 0
/* 80A9FC5C  4B 6A C0 1D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A9FC60  2C 03 00 00 */	cmpwi r3, 0
/* 80A9FC64  41 82 00 0C */	beq lbl_80A9FC70
/* 80A9FC68  3B 80 00 01 */	li r28, 1
/* 80A9FC6C  48 00 00 64 */	b lbl_80A9FCD0
lbl_80A9FC70:
/* 80A9FC70  38 7F 09 74 */	addi r3, r31, 0x974
/* 80A9FC74  4B 7A A8 CD */	bl getNowMsgNo__10dMsgFlow_cFv
/* 80A9FC78  28 03 16 82 */	cmplwi r3, 0x1682
/* 80A9FC7C  40 82 00 2C */	bne lbl_80A9FCA8
/* 80A9FC80  A8 7F 0F DA */	lha r3, 0xfda(r31)
/* 80A9FC84  38 03 FF FF */	addi r0, r3, -1
/* 80A9FC88  B0 1F 0F DA */	sth r0, 0xfda(r31)
/* 80A9FC8C  7C 00 07 35 */	extsh. r0, r0
/* 80A9FC90  40 82 00 40 */	bne lbl_80A9FCD0
/* 80A9FC94  28 1D 00 00 */	cmplwi r29, 0
/* 80A9FC98  41 82 00 38 */	beq lbl_80A9FCD0
/* 80A9FC9C  38 00 00 03 */	li r0, 3
/* 80A9FCA0  98 1D 0F 9E */	stb r0, 0xf9e(r29)
/* 80A9FCA4  48 00 00 2C */	b lbl_80A9FCD0
lbl_80A9FCA8:
/* 80A9FCA8  28 03 16 83 */	cmplwi r3, 0x1683
/* 80A9FCAC  40 82 00 24 */	bne lbl_80A9FCD0
/* 80A9FCB0  28 1D 00 00 */	cmplwi r29, 0
/* 80A9FCB4  41 82 00 0C */	beq lbl_80A9FCC0
/* 80A9FCB8  38 00 00 04 */	li r0, 4
/* 80A9FCBC  98 1D 0F 9E */	stb r0, 0xf9e(r29)
lbl_80A9FCC0:
/* 80A9FCC0  28 1E 00 00 */	cmplwi r30, 0
/* 80A9FCC4  41 82 00 0C */	beq lbl_80A9FCD0
/* 80A9FCC8  38 00 00 01 */	li r0, 1
/* 80A9FCCC  98 1E 0F 86 */	stb r0, 0xf86(r30)
lbl_80A9FCD0:
/* 80A9FCD0  7F 83 E3 78 */	mr r3, r28
/* 80A9FCD4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9FCD8  4B 8C 25 49 */	bl _restgpr_27
/* 80A9FCDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A9FCE0  7C 08 03 A6 */	mtlr r0
/* 80A9FCE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A9FCE8  4E 80 00 20 */	blr 
