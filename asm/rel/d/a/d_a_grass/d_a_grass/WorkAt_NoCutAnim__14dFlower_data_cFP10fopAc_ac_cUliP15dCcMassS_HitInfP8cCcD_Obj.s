lbl_80520B34:
/* 80520B34  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80520B38  7C 08 02 A6 */	mflr r0
/* 80520B3C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80520B40  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80520B44  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80520B48  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80520B4C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80520B50  7C 7F 1B 78 */	mr r31, r3
/* 80520B54  7C 9E 23 78 */	mr r30, r4
/* 80520B58  7D 03 43 78 */	mr r3, r8
/* 80520B5C  4B B6 3C 41 */	bl dCcD_GetGObjInf__FP8cCcD_Obj
/* 80520B60  C0 43 00 84 */	lfs f2, 0x84(r3)
/* 80520B64  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80520B68  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80520B6C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80520B70  C0 23 00 8C */	lfs f1, 0x8c(r3)
/* 80520B74  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80520B78  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80520B7C  3C 60 80 52 */	lis r3, lit_4000@ha /* 0x8052302C@ha */
/* 80520B80  C0 03 30 2C */	lfs f0, lit_4000@l(r3)  /* 0x8052302C@l */
/* 80520B84  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80520B88  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80520B8C  38 61 00 20 */	addi r3, r1, 0x20
/* 80520B90  4B E2 65 A9 */	bl PSVECSquareMag
/* 80520B94  FC 00 0A 10 */	fabs f0, f1
/* 80520B98  FC 20 00 18 */	frsp f1, f0
/* 80520B9C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80520BA0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80520BA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80520BA8  40 80 00 5C */	bge lbl_80520C04
/* 80520BAC  A8 1E 00 08 */	lha r0, 8(r30)
/* 80520BB0  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80520BB4  40 82 00 50 */	bne lbl_80520C04
/* 80520BB8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80520BBC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80520BC0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80520BC4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80520BC8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80520BCC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80520BD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80520BD4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80520BD8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80520BDC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80520BE0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80520BE4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80520BE8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80520BEC  3C 60 80 52 */	lis r3, lit_4000@ha /* 0x8052302C@ha */
/* 80520BF0  C0 03 30 2C */	lfs f0, lit_4000@l(r3)  /* 0x8052302C@l */
/* 80520BF4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80520BF8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80520BFC  38 61 00 14 */	addi r3, r1, 0x14
/* 80520C00  4B E2 65 39 */	bl PSVECSquareMag
lbl_80520C04:
/* 80520C04  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80520C08  D0 01 00 08 */	stfs f0, 8(r1)
/* 80520C0C  3C 60 80 52 */	lis r3, lit_4000@ha /* 0x8052302C@ha */
/* 80520C10  C0 03 30 2C */	lfs f0, lit_4000@l(r3)  /* 0x8052302C@l */
/* 80520C14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80520C18  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80520C1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80520C20  38 61 00 08 */	addi r3, r1, 8
/* 80520C24  4B E2 65 15 */	bl PSVECSquareMag
/* 80520C28  FF E0 08 90 */	fmr f31, f1
/* 80520C2C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80520C30  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80520C34  4B D4 6A 41 */	bl cM_atan2s__Fff
/* 80520C38  7C 7E 1B 78 */	mr r30, r3
/* 80520C3C  3C 60 80 52 */	lis r3, lit_4000@ha /* 0x8052302C@ha */
/* 80520C40  C0 03 30 2C */	lfs f0, lit_4000@l(r3)  /* 0x8052302C@l */
/* 80520C44  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80520C48  40 81 00 0C */	ble lbl_80520C54
/* 80520C4C  FC 00 F8 34 */	frsqrte f0, f31
/* 80520C50  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_80520C54:
/* 80520C54  88 1F 00 01 */	lbz r0, 1(r31)
/* 80520C58  7C 04 07 74 */	extsb r4, r0
/* 80520C5C  2C 04 00 08 */	cmpwi r4, 8
/* 80520C60  40 80 00 48 */	bge lbl_80520CA8
/* 80520C64  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha /* 0x80450DB4@ha */
/* 80520C68  38 63 0D B4 */	addi r3, r3, m_flower__9daGrass_c@l /* 0x80450DB4@l */
/* 80520C6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80520C70  48 00 22 D1 */	bl newAnm__16dFlower_packet_cFv
/* 80520C74  2C 03 00 00 */	cmpwi r3, 0
/* 80520C78  41 80 00 64 */	blt lbl_80520CDC
/* 80520C7C  98 7F 00 01 */	stb r3, 1(r31)
/* 80520C80  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha /* 0x80450DB4@ha */
/* 80520C84  80 83 0D B4 */	lwz r4, m_flower__9daGrass_c@l(r3)  /* 0x80450DB4@l */
/* 80520C88  88 1F 00 01 */	lbz r0, 1(r31)
/* 80520C8C  7C 00 07 74 */	extsb r0, r0
/* 80520C90  1C 60 00 38 */	mulli r3, r0, 0x38
/* 80520C94  3C 63 00 01 */	addis r3, r3, 1
/* 80520C98  38 63 19 54 */	addi r3, r3, 0x1954
/* 80520C9C  7C 64 1A 14 */	add r3, r4, r3
/* 80520CA0  7C 7F 1B 78 */	mr r31, r3
/* 80520CA4  48 00 00 20 */	b lbl_80520CC4
lbl_80520CA8:
/* 80520CA8  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha /* 0x80450DB4@ha */
/* 80520CAC  80 03 0D B4 */	lwz r0, m_flower__9daGrass_c@l(r3)  /* 0x80450DB4@l */
/* 80520CB0  1C 64 00 38 */	mulli r3, r4, 0x38
/* 80520CB4  3C 63 00 01 */	addis r3, r3, 1
/* 80520CB8  38 63 19 54 */	addi r3, r3, 0x1954
/* 80520CBC  7C 60 1A 14 */	add r3, r0, r3
/* 80520CC0  7C 7F 1B 78 */	mr r31, r3
lbl_80520CC4:
/* 80520CC4  B3 DF 00 02 */	sth r30, 2(r31)
/* 80520CC8  FC 20 F8 90 */	fmr f1, f31
/* 80520CCC  3C 60 80 52 */	lis r3, lit_5352@ha /* 0x80523164@ha */
/* 80520CD0  C0 43 31 64 */	lfs f2, lit_5352@l(r3)  /* 0x80523164@l */
/* 80520CD4  4B D4 69 A1 */	bl cM_atan2s__Fff
/* 80520CD8  B0 7F 00 04 */	sth r3, 4(r31)
lbl_80520CDC:
/* 80520CDC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80520CE0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80520CE4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80520CE8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80520CEC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80520CF0  7C 08 03 A6 */	mtlr r0
/* 80520CF4  38 21 00 50 */	addi r1, r1, 0x50
/* 80520CF8  4E 80 00 20 */	blr 
