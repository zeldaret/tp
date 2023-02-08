lbl_80B9DB44:
/* 80B9DB44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9DB48  7C 08 02 A6 */	mflr r0
/* 80B9DB4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9DB50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9DB54  7C 7F 1B 78 */	mr r31, r3
/* 80B9DB58  38 9F 05 CC */	addi r4, r31, 0x5cc
/* 80B9DB5C  4B 47 CB 71 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80B9DB60  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 80B9DB64  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9DB68  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9DB6C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B9DB70  4B 4D 8F 3D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80B9DB74  7F E3 FB 78 */	mr r3, r31
/* 80B9DB78  48 00 00 19 */	bl bgCheck__10daTurara_cFv
/* 80B9DB7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9DB80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9DB84  7C 08 03 A6 */	mtlr r0
/* 80B9DB88  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9DB8C  4E 80 00 20 */	blr 
