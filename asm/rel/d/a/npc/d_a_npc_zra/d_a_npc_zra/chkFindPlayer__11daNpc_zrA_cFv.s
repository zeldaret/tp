lbl_80B7E9E0:
/* 80B7E9E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7E9E4  7C 08 02 A6 */	mflr r0
/* 80B7E9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7E9EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7E9F0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B7E9F4  7C 7E 1B 78 */	mr r30, r3
/* 80B7E9F8  38 7E 13 1C */	addi r3, r30, 0x131c
/* 80B7E9FC  4B 5D 1C F1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B7EA00  28 03 00 00 */	cmplwi r3, 0
/* 80B7EA04  40 82 00 28 */	bne lbl_80B7EA2C
/* 80B7EA08  7F C3 F3 78 */	mr r3, r30
/* 80B7EA0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7EA10  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7EA14  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B7EA18  7F C5 F3 78 */	mr r5, r30
/* 80B7EA1C  88 DE 05 47 */	lbz r6, 0x547(r30)
/* 80B7EA20  4B 5D 51 BD */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80B7EA24  7C 7F 1B 78 */	mr r31, r3
/* 80B7EA28  48 00 00 24 */	b lbl_80B7EA4C
lbl_80B7EA2C:
/* 80B7EA2C  7F C3 F3 78 */	mr r3, r30
/* 80B7EA30  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7EA34  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7EA38  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B7EA3C  7F C5 F3 78 */	mr r5, r30
/* 80B7EA40  88 DE 05 45 */	lbz r6, 0x545(r30)
/* 80B7EA44  4B 5D 51 99 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80B7EA48  7C 7F 1B 78 */	mr r31, r3
lbl_80B7EA4C:
/* 80B7EA4C  2C 1F 00 00 */	cmpwi r31, 0
/* 80B7EA50  41 82 00 1C */	beq lbl_80B7EA6C
/* 80B7EA54  38 7E 13 1C */	addi r3, r30, 0x131c
/* 80B7EA58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7EA5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7EA60  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B7EA64  4B 5D 1C 59 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B7EA68  48 00 00 0C */	b lbl_80B7EA74
lbl_80B7EA6C:
/* 80B7EA6C  38 7E 13 1C */	addi r3, r30, 0x131c
/* 80B7EA70  4B 5D 1C 71 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80B7EA74:
/* 80B7EA74  7F E3 FB 78 */	mr r3, r31
/* 80B7EA78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7EA7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B7EA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7EA84  7C 08 03 A6 */	mtlr r0
/* 80B7EA88  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7EA8C  4E 80 00 20 */	blr 
