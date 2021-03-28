lbl_80B61A0C:
/* 80B61A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B61A10  7C 08 02 A6 */	mflr r0
/* 80B61A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B61A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B61A1C  7C 7F 1B 78 */	mr r31, r3
/* 80B61A20  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B61A24  28 00 00 02 */	cmplwi r0, 2
/* 80B61A28  40 82 00 64 */	bne lbl_80B61A8C
/* 80B61A2C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B61A30  54 04 46 3E */	srwi r4, r0, 0x18
/* 80B61A34  28 04 00 FF */	cmplwi r4, 0xff
/* 80B61A38  41 82 00 54 */	beq lbl_80B61A8C
/* 80B61A3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B61A40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B61A44  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B61A48  7C 05 07 74 */	extsb r5, r0
/* 80B61A4C  4B 4D 39 14 */	b isSwitch__10dSv_info_cCFii
/* 80B61A50  2C 03 00 00 */	cmpwi r3, 0
/* 80B61A54  40 82 00 38 */	bne lbl_80B61A8C
/* 80B61A58  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B61A5C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B61A60  28 04 00 FF */	cmplwi r4, 0xff
/* 80B61A64  41 82 00 28 */	beq lbl_80B61A8C
/* 80B61A68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B61A6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B61A70  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B61A74  7C 05 07 74 */	extsb r5, r0
/* 80B61A78  4B 4D 38 E8 */	b isSwitch__10dSv_info_cCFii
/* 80B61A7C  2C 03 00 00 */	cmpwi r3, 0
/* 80B61A80  41 82 00 0C */	beq lbl_80B61A8C
/* 80B61A84  38 60 00 01 */	li r3, 1
/* 80B61A88  48 00 00 08 */	b lbl_80B61A90
lbl_80B61A8C:
/* 80B61A8C  38 60 00 00 */	li r3, 0
lbl_80B61A90:
/* 80B61A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B61A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B61A98  7C 08 03 A6 */	mtlr r0
/* 80B61A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B61AA0  4E 80 00 20 */	blr 
