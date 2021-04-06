lbl_80C60B7C:
/* 80C60B7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C60B80  7C 08 02 A6 */	mflr r0
/* 80C60B84  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C60B88  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C60B8C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C60B90  7C 7E 1B 78 */	mr r30, r3
/* 80C60B94  3C 60 80 C6 */	lis r3, lit_3709@ha /* 0x80C61B38@ha */
/* 80C60B98  3B E3 1B 38 */	addi r31, r3, lit_3709@l /* 0x80C61B38@l */
/* 80C60B9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C60BA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C60BA4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C60BA8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C60BAC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C60BB0  7C 05 07 74 */	extsb r5, r0
/* 80C60BB4  4B 3D 47 AD */	bl isSwitch__10dSv_info_cCFii
/* 80C60BB8  2C 03 00 00 */	cmpwi r3, 0
/* 80C60BBC  40 82 00 20 */	bne lbl_80C60BDC
/* 80C60BC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C60BC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C60BC8  38 63 09 58 */	addi r3, r3, 0x958
/* 80C60BCC  38 80 00 03 */	li r4, 3
/* 80C60BD0  4B 3D 3D 65 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 80C60BD4  2C 03 00 00 */	cmpwi r3, 0
/* 80C60BD8  41 82 00 34 */	beq lbl_80C60C0C
lbl_80C60BDC:
/* 80C60BDC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C60BE0  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80C60BE4  7F C3 F3 78 */	mr r3, r30
/* 80C60BE8  48 00 07 D9 */	bl mode_init_dead__14daObjLv4Wall_cFv
/* 80C60BEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C60BF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C60BF4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C60BF8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C60BFC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C60C00  7C 05 07 74 */	extsb r5, r0
/* 80C60C04  4B 3D 45 FD */	bl onSwitch__10dSv_info_cFii
/* 80C60C08  48 00 00 14 */	b lbl_80C60C1C
lbl_80C60C0C:
/* 80C60C0C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C60C10  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80C60C14  7F C3 F3 78 */	mr r3, r30
/* 80C60C18  48 00 03 35 */	bl mode_init_wait__14daObjLv4Wall_cFv
lbl_80C60C1C:
/* 80C60C1C  7F C3 F3 78 */	mr r3, r30
/* 80C60C20  4B FF FE A5 */	bl initBaseMtx__14daObjLv4Wall_cFv
/* 80C60C24  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C60C28  38 03 00 24 */	addi r0, r3, 0x24
/* 80C60C2C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C60C30  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C60C34  80 83 00 04 */	lwz r4, 4(r3)
/* 80C60C38  7F C3 F3 78 */	mr r3, r30
/* 80C60C3C  4B 3B 99 3D */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C60C40  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C60C44  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C60C48  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C60C4C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C60C50  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C60C54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C60C58  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C60C5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C60C60  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C60C64  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C60C68  7C 07 07 74 */	extsb r7, r0
/* 80C60C6C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C60C70  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80C60C74  38 00 00 00 */	li r0, 0
/* 80C60C78  90 01 00 08 */	stw r0, 8(r1)
/* 80C60C7C  38 60 00 B3 */	li r3, 0xb3
/* 80C60C80  28 1E 00 00 */	cmplwi r30, 0
/* 80C60C84  41 82 00 0C */	beq lbl_80C60C90
/* 80C60C88  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C60C8C  48 00 00 08 */	b lbl_80C60C94
lbl_80C60C90:
/* 80C60C90  38 80 FF FF */	li r4, -1
lbl_80C60C94:
/* 80C60C94  54 A5 44 2E */	rlwinm r5, r5, 8, 0x10, 0x17
/* 80C60C98  38 C1 00 10 */	addi r6, r1, 0x10
/* 80C60C9C  39 00 00 00 */	li r8, 0
/* 80C60CA0  39 20 00 00 */	li r9, 0
/* 80C60CA4  39 40 FF FF */	li r10, -1
/* 80C60CA8  4B 3B 92 49 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80C60CAC  38 00 00 00 */	li r0, 0
/* 80C60CB0  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 80C60CB4  38 60 00 01 */	li r3, 1
/* 80C60CB8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C60CBC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C60CC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C60CC4  7C 08 03 A6 */	mtlr r0
/* 80C60CC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C60CCC  4E 80 00 20 */	blr 
