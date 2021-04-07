lbl_80A3AF64:
/* 80A3AF64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3AF68  7C 08 02 A6 */	mflr r0
/* 80A3AF6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3AF70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3AF74  7C 7F 1B 78 */	mr r31, r3
/* 80A3AF78  38 7F 0B CC */	addi r3, r31, 0xbcc
/* 80A3AF7C  4B 70 A7 8D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A3AF80  28 03 00 00 */	cmplwi r3, 0
/* 80A3AF84  41 82 00 28 */	beq lbl_80A3AFAC
/* 80A3AF88  7F E3 FB 78 */	mr r3, r31
/* 80A3AF8C  38 80 00 01 */	li r4, 1
/* 80A3AF90  A8 BF 0D AE */	lha r5, 0xdae(r31)
/* 80A3AF94  4B FF FD BD */	bl chkFindPlayer__10daNpc_Kn_cFis
/* 80A3AF98  2C 03 00 00 */	cmpwi r3, 0
/* 80A3AF9C  40 82 00 3C */	bne lbl_80A3AFD8
/* 80A3AFA0  38 7F 0B CC */	addi r3, r31, 0xbcc
/* 80A3AFA4  4B 70 A7 59 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A3AFA8  48 00 00 30 */	b lbl_80A3AFD8
lbl_80A3AFAC:
/* 80A3AFAC  7F E3 FB 78 */	mr r3, r31
/* 80A3AFB0  38 80 00 00 */	li r4, 0
/* 80A3AFB4  A8 BF 0D AE */	lha r5, 0xdae(r31)
/* 80A3AFB8  4B FF FD 99 */	bl chkFindPlayer__10daNpc_Kn_cFis
/* 80A3AFBC  2C 03 00 00 */	cmpwi r3, 0
/* 80A3AFC0  41 82 00 18 */	beq lbl_80A3AFD8
/* 80A3AFC4  38 7F 0B CC */	addi r3, r31, 0xbcc
/* 80A3AFC8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3AFCC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3AFD0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3AFD4  4B 70 A7 0D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A3AFD8:
/* 80A3AFD8  38 7F 0B CC */	addi r3, r31, 0xbcc
/* 80A3AFDC  4B 70 A7 2D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A3AFE0  30 03 FF FF */	addic r0, r3, -1
/* 80A3AFE4  7C 00 19 10 */	subfe r0, r0, r3
/* 80A3AFE8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80A3AFEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3AFF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3AFF4  7C 08 03 A6 */	mtlr r0
/* 80A3AFF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3AFFC  4E 80 00 20 */	blr 
