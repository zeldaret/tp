lbl_80A3CCC0:
/* 80A3CCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3CCC4  7C 08 02 A6 */	mflr r0
/* 80A3CCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3CCCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3CCD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A3CCD4  7C 7F 1B 78 */	mr r31, r3
/* 80A3CCD8  A0 03 0E 2A */	lhz r0, 0xe2a(r3)
/* 80A3CCDC  2C 00 00 02 */	cmpwi r0, 2
/* 80A3CCE0  41 82 00 BC */	beq lbl_80A3CD9C
/* 80A3CCE4  40 80 00 FC */	bge lbl_80A3CDE0
/* 80A3CCE8  2C 00 00 00 */	cmpwi r0, 0
/* 80A3CCEC  40 80 00 0C */	bge lbl_80A3CCF8
/* 80A3CCF0  48 00 00 F0 */	b lbl_80A3CDE0
/* 80A3CCF4  48 00 00 EC */	b lbl_80A3CDE0
lbl_80A3CCF8:
/* 80A3CCF8  80 1F 0B 8C */	lwz r0, 0xb8c(r31)
/* 80A3CCFC  2C 00 00 01 */	cmpwi r0, 1
/* 80A3CD00  41 82 00 28 */	beq lbl_80A3CD28
/* 80A3CD04  83 DF 0B 90 */	lwz r30, 0xb90(r31)
/* 80A3CD08  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A3CD0C  4B 70 8B 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3CD10  93 DF 0B 90 */	stw r30, 0xb90(r31)
/* 80A3CD14  38 00 00 01 */	li r0, 1
/* 80A3CD18  90 1F 0B 8C */	stw r0, 0xb8c(r31)
/* 80A3CD1C  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A3CD20  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A3CD24  D0 1F 0B 9C */	stfs f0, 0xb9c(r31)
lbl_80A3CD28:
/* 80A3CD28  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A3CD2C  2C 00 00 00 */	cmpwi r0, 0
/* 80A3CD30  41 82 00 28 */	beq lbl_80A3CD58
/* 80A3CD34  83 DF 0B B4 */	lwz r30, 0xbb4(r31)
/* 80A3CD38  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A3CD3C  4B 70 8B 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3CD40  93 DF 0B B4 */	stw r30, 0xbb4(r31)
/* 80A3CD44  38 00 00 00 */	li r0, 0
/* 80A3CD48  90 1F 0B B0 */	stw r0, 0xbb0(r31)
/* 80A3CD4C  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A3CD50  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A3CD54  D0 1F 0B C0 */	stfs f0, 0xbc0(r31)
lbl_80A3CD58:
/* 80A3CD58  80 1F 0D 14 */	lwz r0, 0xd14(r31)
/* 80A3CD5C  2C 00 00 01 */	cmpwi r0, 1
/* 80A3CD60  41 82 00 2C */	beq lbl_80A3CD8C
/* 80A3CD64  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A3CD68  4B 70 89 95 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A3CD6C  38 00 00 00 */	li r0, 0
/* 80A3CD70  90 1F 0B FC */	stw r0, 0xbfc(r31)
/* 80A3CD74  3C 60 80 A4 */	lis r3, lit_4204@ha /* 0x80A40900@ha */
/* 80A3CD78  C0 03 09 00 */	lfs f0, lit_4204@l(r3)  /* 0x80A40900@l */
/* 80A3CD7C  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80A3CD80  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A3CD84  38 00 00 01 */	li r0, 1
/* 80A3CD88  90 1F 0D 14 */	stw r0, 0xd14(r31)
lbl_80A3CD8C:
/* 80A3CD8C  38 00 00 00 */	li r0, 0
/* 80A3CD90  98 1F 0D 33 */	stb r0, 0xd33(r31)
/* 80A3CD94  38 00 00 02 */	li r0, 2
/* 80A3CD98  B0 1F 0E 2A */	sth r0, 0xe2a(r31)
lbl_80A3CD9C:
/* 80A3CD9C  38 00 00 05 */	li r0, 5
/* 80A3CDA0  B0 1F 0E 36 */	sth r0, 0xe36(r31)
/* 80A3CDA4  38 00 00 01 */	li r0, 1
/* 80A3CDA8  98 1F 0E 39 */	stb r0, 0xe39(r31)
/* 80A3CDAC  7F E3 FB 78 */	mr r3, r31
/* 80A3CDB0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3CDB4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3CDB8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3CDBC  4B 5D D9 55 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3CDC0  7C 64 1B 78 */	mr r4, r3
/* 80A3CDC4  38 7F 0D AE */	addi r3, r31, 0xdae
/* 80A3CDC8  38 A0 00 02 */	li r5, 2
/* 80A3CDCC  38 C0 08 00 */	li r6, 0x800
/* 80A3CDD0  4B 83 38 39 */	bl cLib_addCalcAngleS2__FPssss
/* 80A3CDD4  7F E3 FB 78 */	mr r3, r31
/* 80A3CDD8  A8 9F 0D AE */	lha r4, 0xdae(r31)
/* 80A3CDDC  4B FF DD 15 */	bl setAngle__10daNpc_Kn_cFs
lbl_80A3CDE0:
/* 80A3CDE0  38 60 00 01 */	li r3, 1
/* 80A3CDE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3CDE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A3CDEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3CDF0  7C 08 03 A6 */	mtlr r0
/* 80A3CDF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3CDF8  4E 80 00 20 */	blr 
