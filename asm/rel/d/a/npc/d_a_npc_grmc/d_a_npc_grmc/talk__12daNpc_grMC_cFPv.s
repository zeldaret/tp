lbl_809D8AE8:
/* 809D8AE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D8AEC  7C 08 02 A6 */	mflr r0
/* 809D8AF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D8AF4  39 61 00 20 */	addi r11, r1, 0x20
/* 809D8AF8  4B 98 96 E4 */	b _savegpr_29
/* 809D8AFC  7C 7E 1B 78 */	mr r30, r3
/* 809D8B00  3B E0 00 00 */	li r31, 0
/* 809D8B04  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809D8B08  2C 00 00 02 */	cmpwi r0, 2
/* 809D8B0C  41 82 00 2C */	beq lbl_809D8B38
/* 809D8B10  40 80 01 40 */	bge lbl_809D8C50
/* 809D8B14  2C 00 00 00 */	cmpwi r0, 0
/* 809D8B18  40 80 00 0C */	bge lbl_809D8B24
/* 809D8B1C  48 00 01 34 */	b lbl_809D8C50
/* 809D8B20  48 00 01 30 */	b lbl_809D8C50
lbl_809D8B24:
/* 809D8B24  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809D8B28  38 A0 00 00 */	li r5, 0
/* 809D8B2C  4B 77 30 C4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809D8B30  38 00 00 02 */	li r0, 2
/* 809D8B34  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809D8B38:
/* 809D8B38  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809D8B3C  28 00 00 00 */	cmplwi r0, 0
/* 809D8B40  41 82 00 0C */	beq lbl_809D8B4C
/* 809D8B44  3B E0 00 01 */	li r31, 1
/* 809D8B48  48 00 00 B4 */	b lbl_809D8BFC
lbl_809D8B4C:
/* 809D8B4C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809D8B50  2C 00 00 01 */	cmpwi r0, 1
/* 809D8B54  41 82 00 2C */	beq lbl_809D8B80
/* 809D8B58  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D8B5C  4B 76 CB A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 809D8B60  38 00 00 00 */	li r0, 0
/* 809D8B64  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809D8B68  3C 60 80 9E */	lis r3, lit_4008@ha
/* 809D8B6C  C0 03 9E 18 */	lfs f0, lit_4008@l(r3)
/* 809D8B70  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809D8B74  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809D8B78  38 00 00 01 */	li r0, 1
/* 809D8B7C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809D8B80:
/* 809D8B80  38 00 00 00 */	li r0, 0
/* 809D8B84  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809D8B88  3C 60 80 9E */	lis r3, lit_4977@ha
/* 809D8B8C  38 63 A2 8C */	addi r3, r3, lit_4977@l
/* 809D8B90  38 9E 10 C0 */	addi r4, r30, 0x10c0
/* 809D8B94  4B 98 94 B4 */	b __ptmf_cmpr
/* 809D8B98  2C 03 00 00 */	cmpwi r3, 0
/* 809D8B9C  40 82 00 0C */	bne lbl_809D8BA8
/* 809D8BA0  3B E0 00 01 */	li r31, 1
/* 809D8BA4  48 00 00 58 */	b lbl_809D8BFC
lbl_809D8BA8:
/* 809D8BA8  7F C3 F3 78 */	mr r3, r30
/* 809D8BAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809D8BB0  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 809D8BB4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809D8BB8  4B 64 1B 58 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809D8BBC  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 809D8BC0  7C 60 07 34 */	extsh r0, r3
/* 809D8BC4  7C 04 00 00 */	cmpw r4, r0
/* 809D8BC8  41 82 00 30 */	beq lbl_809D8BF8
/* 809D8BCC  7F C3 F3 78 */	mr r3, r30
/* 809D8BD0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809D8BD4  4B 64 1B 3C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809D8BD8  7C 64 1B 78 */	mr r4, r3
/* 809D8BDC  7F C3 F3 78 */	mr r3, r30
/* 809D8BE0  38 A0 FF FF */	li r5, -1
/* 809D8BE4  38 C0 FF FF */	li r6, -1
/* 809D8BE8  38 E0 00 0F */	li r7, 0xf
/* 809D8BEC  39 00 00 00 */	li r8, 0
/* 809D8BF0  4B 77 2A 58 */	b step__8daNpcT_cFsiiii
/* 809D8BF4  48 00 00 08 */	b lbl_809D8BFC
lbl_809D8BF8:
/* 809D8BF8  3B E0 00 01 */	li r31, 1
lbl_809D8BFC:
/* 809D8BFC  2C 1F 00 00 */	cmpwi r31, 0
/* 809D8C00  41 82 00 50 */	beq lbl_809D8C50
/* 809D8C04  7F C3 F3 78 */	mr r3, r30
/* 809D8C08  38 80 00 00 */	li r4, 0
/* 809D8C0C  38 A0 00 00 */	li r5, 0
/* 809D8C10  38 C0 00 00 */	li r6, 0
/* 809D8C14  38 E0 00 00 */	li r7, 0
/* 809D8C18  4B 77 30 60 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809D8C1C  2C 03 00 00 */	cmpwi r3, 0
/* 809D8C20  41 82 00 30 */	beq lbl_809D8C50
/* 809D8C24  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809D8C28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809D8C2C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809D8C30  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809D8C34  4B 76 CA AC */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809D8C38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809D8C3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809D8C40  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809D8C44  4B 66 98 24 */	b reset__14dEvt_control_cFv
/* 809D8C48  38 00 00 03 */	li r0, 3
/* 809D8C4C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809D8C50:
/* 809D8C50  38 60 00 00 */	li r3, 0
/* 809D8C54  39 61 00 20 */	addi r11, r1, 0x20
/* 809D8C58  4B 98 95 D0 */	b _restgpr_29
/* 809D8C5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D8C60  7C 08 03 A6 */	mtlr r0
/* 809D8C64  38 21 00 20 */	addi r1, r1, 0x20
/* 809D8C68  4E 80 00 20 */	blr 
