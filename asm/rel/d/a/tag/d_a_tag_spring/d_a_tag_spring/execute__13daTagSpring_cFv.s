lbl_805A6B5C:
/* 805A6B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6B60  7C 08 02 A6 */	mflr r0
/* 805A6B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6B68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A6B6C  93 C1 00 08 */	stw r30, 8(r1)
/* 805A6B70  7C 7F 1B 78 */	mr r31, r3
/* 805A6B74  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 805A6B78  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805A6B7C  28 04 00 FF */	cmplwi r4, 0xff
/* 805A6B80  41 82 00 28 */	beq lbl_805A6BA8
/* 805A6B84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A6B88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A6B8C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A6B90  7C 05 07 74 */	extsb r5, r0
/* 805A6B94  4B A8 E7 CD */	bl isSwitch__10dSv_info_cCFii
/* 805A6B98  2C 03 00 00 */	cmpwi r3, 0
/* 805A6B9C  40 82 00 0C */	bne lbl_805A6BA8
/* 805A6BA0  38 60 00 01 */	li r3, 1
/* 805A6BA4  48 00 00 C8 */	b lbl_805A6C6C
lbl_805A6BA8:
/* 805A6BA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A6BAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A6BB0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805A6BB4  28 00 00 00 */	cmplwi r0, 0
/* 805A6BB8  41 82 00 0C */	beq lbl_805A6BC4
/* 805A6BBC  38 60 00 01 */	li r3, 1
/* 805A6BC0  48 00 00 AC */	b lbl_805A6C6C
lbl_805A6BC4:
/* 805A6BC4  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 805A6BC8  7F E3 FB 78 */	mr r3, r31
/* 805A6BCC  48 00 00 B9 */	bl checkArea__13daTagSpring_cFv
/* 805A6BD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A6BD4  41 82 00 8C */	beq lbl_805A6C60
/* 805A6BD8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805A6BDC  4B A7 71 A9 */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 805A6BE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A6BE4  41 82 00 7C */	beq lbl_805A6C60
/* 805A6BE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A6BEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A6BF0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 805A6BF4  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 805A6BF8  40 82 00 18 */	bne lbl_805A6C10
/* 805A6BFC  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha /* 0x80450CD8@ha */
/* 805A6C00  C0 23 0C D8 */	lfs f1, mWaterY__11fopAcM_wt_c@l(r3)  /* 0x80450CD8@l */
/* 805A6C04  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805A6C08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A6C0C  41 81 00 0C */	bgt lbl_805A6C18
lbl_805A6C10:
/* 805A6C10  28 00 00 00 */	cmplwi r0, 0
/* 805A6C14  41 82 00 4C */	beq lbl_805A6C60
lbl_805A6C18:
/* 805A6C18  88 7F 05 68 */	lbz r3, 0x568(r31)
/* 805A6C1C  28 03 00 00 */	cmplwi r3, 0
/* 805A6C20  41 82 00 10 */	beq lbl_805A6C30
/* 805A6C24  38 03 FF FF */	addi r0, r3, -1
/* 805A6C28  98 1F 05 68 */	stb r0, 0x568(r31)
/* 805A6C2C  48 00 00 3C */	b lbl_805A6C68
lbl_805A6C30:
/* 805A6C30  38 00 00 1E */	li r0, 0x1e
/* 805A6C34  98 1F 05 68 */	stb r0, 0x568(r31)
/* 805A6C38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A6C3C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A6C40  C0 24 5D C0 */	lfs f1, 0x5dc0(r4)
/* 805A6C44  3C 60 80 5A */	lis r3, lit_3728@ha /* 0x805A6E6C@ha */
/* 805A6C48  C0 03 6E 6C */	lfs f0, lit_3728@l(r3)  /* 0x805A6E6C@l */
/* 805A6C4C  EC 01 00 2A */	fadds f0, f1, f0
/* 805A6C50  D0 04 5D C0 */	stfs f0, 0x5dc0(r4)
/* 805A6C54  38 00 00 01 */	li r0, 1
/* 805A6C58  98 04 5E B6 */	stb r0, 0x5eb6(r4)
/* 805A6C5C  48 00 00 0C */	b lbl_805A6C68
lbl_805A6C60:
/* 805A6C60  38 00 00 1E */	li r0, 0x1e
/* 805A6C64  98 1F 05 68 */	stb r0, 0x568(r31)
lbl_805A6C68:
/* 805A6C68  38 60 00 01 */	li r3, 1
lbl_805A6C6C:
/* 805A6C6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A6C70  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A6C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6C78  7C 08 03 A6 */	mtlr r0
/* 805A6C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6C80  4E 80 00 20 */	blr 
