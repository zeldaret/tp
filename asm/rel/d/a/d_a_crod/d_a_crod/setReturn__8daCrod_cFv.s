lbl_804A35FC:
/* 804A35FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A3600  7C 08 02 A6 */	mflr r0
/* 804A3604  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A3608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A360C  7C 7F 1B 78 */	mr r31, r3
/* 804A3610  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 804A3614  28 00 00 04 */	cmplwi r0, 4
/* 804A3618  40 82 00 0C */	bne lbl_804A3624
/* 804A361C  38 80 00 0F */	li r4, 0xf
/* 804A3620  4B FF FF 61 */	bl setBckAnm__8daCrod_cFUs
lbl_804A3624:
/* 804A3624  38 00 00 05 */	li r0, 5
/* 804A3628  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 804A362C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A3630  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A3634  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804A3638  4B C3 DC E9 */	bl getCopyRodBallReturnSpeed__9daAlink_cCFv
/* 804A363C  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 804A3640  38 7F 07 40 */	addi r3, r31, 0x740
/* 804A3644  4B CB B6 B9 */	bl clearData__16daPy_actorKeep_cFv
/* 804A3648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A364C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A3650  7C 08 03 A6 */	mtlr r0
/* 804A3654  38 21 00 10 */	addi r1, r1, 0x10
/* 804A3658  4E 80 00 20 */	blr 
