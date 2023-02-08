lbl_80A2B654:
/* 80A2B654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2B658  7C 08 02 A6 */	mflr r0
/* 80A2B65C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2B660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2B664  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2B668  7C 7E 1B 78 */	mr r30, r3
/* 80A2B66C  48 00 D2 C5 */	bl execute__10daNpc_Kn_cFv
/* 80A2B670  7C 7F 1B 78 */	mr r31, r3
/* 80A2B674  7F C3 F3 78 */	mr r3, r30
/* 80A2B678  48 00 BC 59 */	bl setPrtcl__10daNpc_Kn_cFv
/* 80A2B67C  7F C3 F3 78 */	mr r3, r30
/* 80A2B680  48 00 BF 19 */	bl calcMagicBallPos__10daNpc_Kn_cFv
/* 80A2B684  7F C3 F3 78 */	mr r3, r30
/* 80A2B688  48 00 BF E9 */	bl setSwordChargePtcl__10daNpc_Kn_cFv
/* 80A2B68C  7F C3 F3 78 */	mr r3, r30
/* 80A2B690  48 00 C9 CD */	bl setSe__10daNpc_Kn_cFv
/* 80A2B694  7F E3 FB 78 */	mr r3, r31
/* 80A2B698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2B69C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2B6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2B6A4  7C 08 03 A6 */	mtlr r0
/* 80A2B6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2B6AC  4E 80 00 20 */	blr 
