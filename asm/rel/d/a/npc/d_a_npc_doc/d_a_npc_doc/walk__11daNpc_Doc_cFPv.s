lbl_809A8A9C:
/* 809A8A9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809A8AA0  7C 08 02 A6 */	mflr r0
/* 809A8AA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 809A8AA8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 809A8AAC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 809A8AB0  7C 7F 1B 78 */	mr r31, r3
/* 809A8AB4  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809A8AB8  2C 00 00 02 */	cmpwi r0, 2
/* 809A8ABC  41 82 00 A0 */	beq lbl_809A8B5C
/* 809A8AC0  40 80 00 10 */	bge lbl_809A8AD0
/* 809A8AC4  2C 00 00 00 */	cmpwi r0, 0
/* 809A8AC8  40 80 00 14 */	bge lbl_809A8ADC
/* 809A8ACC  48 00 01 90 */	b lbl_809A8C5C
lbl_809A8AD0:
/* 809A8AD0  2C 00 00 04 */	cmpwi r0, 4
/* 809A8AD4  40 80 01 88 */	bge lbl_809A8C5C
/* 809A8AD8  48 00 01 78 */	b lbl_809A8C50
lbl_809A8ADC:
/* 809A8ADC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809A8AE0  2C 00 00 00 */	cmpwi r0, 0
/* 809A8AE4  40 82 00 78 */	bne lbl_809A8B5C
/* 809A8AE8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 809A8AEC  2C 00 00 09 */	cmpwi r0, 9
/* 809A8AF0  41 82 00 28 */	beq lbl_809A8B18
/* 809A8AF4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 809A8AF8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809A8AFC  4B 79 CD 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809A8B00  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 809A8B04  38 00 00 09 */	li r0, 9
/* 809A8B08  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 809A8B0C  3C 60 80 9B */	lis r3, lit_4588@ha /* 0x809AA3DC@ha */
/* 809A8B10  C0 03 A3 DC */	lfs f0, lit_4588@l(r3)  /* 0x809AA3DC@l */
/* 809A8B14  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_809A8B18:
/* 809A8B18  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809A8B1C  2C 00 00 0C */	cmpwi r0, 0xc
/* 809A8B20  41 82 00 28 */	beq lbl_809A8B48
/* 809A8B24  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809A8B28  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809A8B2C  4B 79 CD 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809A8B30  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809A8B34  38 00 00 0C */	li r0, 0xc
/* 809A8B38  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809A8B3C  3C 60 80 9B */	lis r3, lit_4588@ha /* 0x809AA3DC@ha */
/* 809A8B40  C0 03 A3 DC */	lfs f0, lit_4588@l(r3)  /* 0x809AA3DC@l */
/* 809A8B44  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809A8B48:
/* 809A8B48  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 809A8B4C  60 00 00 04 */	ori r0, r0, 4
/* 809A8B50  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 809A8B54  38 00 00 02 */	li r0, 2
/* 809A8B58  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809A8B5C:
/* 809A8B5C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 809A8B60  2C 00 00 00 */	cmpwi r0, 0
/* 809A8B64  40 82 00 E0 */	bne lbl_809A8C44
/* 809A8B68  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809A8B6C  2C 00 00 00 */	cmpwi r0, 0
/* 809A8B70  41 82 00 28 */	beq lbl_809A8B98
/* 809A8B74  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809A8B78  4B 79 CB 85 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809A8B7C  38 00 00 00 */	li r0, 0
/* 809A8B80  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809A8B84  3C 60 80 9B */	lis r3, lit_4037@ha /* 0x809AA3C4@ha */
/* 809A8B88  C0 03 A3 C4 */	lfs f0, lit_4037@l(r3)  /* 0x809AA3C4@l */
/* 809A8B8C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809A8B90  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809A8B94  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809A8B98:
/* 809A8B98  38 00 00 00 */	li r0, 0
/* 809A8B9C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809A8BA0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809A8BA4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809A8BA8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809A8BAC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809A8BB0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809A8BB4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809A8BB8  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 809A8BBC  38 81 00 14 */	addi r4, r1, 0x14
/* 809A8BC0  38 A1 00 20 */	addi r5, r1, 0x20
/* 809A8BC4  80 DF 0F 84 */	lwz r6, 0xf84(r31)
/* 809A8BC8  A0 C6 00 00 */	lhz r6, 0(r6)
/* 809A8BCC  38 E0 00 02 */	li r7, 2
/* 809A8BD0  4B 79 D3 E5 */	bl getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii
/* 809A8BD4  7C 7E 1B 78 */	mr r30, r3
/* 809A8BD8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809A8BDC  D0 01 00 08 */	stfs f0, 8(r1)
/* 809A8BE0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809A8BE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809A8BE8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 809A8BEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809A8BF0  7F E3 FB 78 */	mr r3, r31
/* 809A8BF4  38 81 00 08 */	addi r4, r1, 8
/* 809A8BF8  7F C5 F3 78 */	mr r5, r30
/* 809A8BFC  38 C0 00 04 */	li r6, 4
/* 809A8C00  38 E0 08 00 */	li r7, 0x800
/* 809A8C04  4B 7A 2C 05 */	bl calcSpeedAndAngle__8daNpcT_cF4cXyziss
/* 809A8C08  2C 1E 00 00 */	cmpwi r30, 0
/* 809A8C0C  41 82 00 38 */	beq lbl_809A8C44
/* 809A8C10  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 809A8C14  FC 00 02 10 */	fabs f0, f0
/* 809A8C18  FC 20 00 18 */	frsp f1, f0
/* 809A8C1C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 809A8C20  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 809A8C24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A8C28  40 80 00 1C */	bge lbl_809A8C44
/* 809A8C2C  38 00 00 01 */	li r0, 1
/* 809A8C30  98 1F 0F C4 */	stb r0, 0xfc4(r31)
/* 809A8C34  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809A8C38  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 809A8C3C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809A8C40  4B 79 CA BD */	bl remove__18daNpcT_ActorMngr_cFv
lbl_809A8C44:
/* 809A8C44  38 00 00 00 */	li r0, 0
/* 809A8C48  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 809A8C4C  48 00 00 10 */	b lbl_809A8C5C
lbl_809A8C50:
/* 809A8C50  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 809A8C54  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 809A8C58  90 1F 06 B8 */	stw r0, 0x6b8(r31)
lbl_809A8C5C:
/* 809A8C5C  38 60 00 01 */	li r3, 1
/* 809A8C60  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 809A8C64  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 809A8C68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809A8C6C  7C 08 03 A6 */	mtlr r0
/* 809A8C70  38 21 00 40 */	addi r1, r1, 0x40
/* 809A8C74  4E 80 00 20 */	blr 
