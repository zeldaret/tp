lbl_80C30498:
/* 80C30498  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C3049C  7C 08 02 A6 */	mflr r0
/* 80C304A0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C304A4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80C304A8  7C 7F 1B 78 */	mr r31, r3
/* 80C304AC  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 80C304B0  4B 45 33 81 */	bl Move__10dCcD_GSttsFv
/* 80C304B4  38 7F 06 C4 */	addi r3, r31, 0x6c4
/* 80C304B8  4B 45 3F A9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C304BC  28 03 00 00 */	cmplwi r3, 0
/* 80C304C0  41 82 00 78 */	beq lbl_80C30538
/* 80C304C4  38 7F 06 C4 */	addi r3, r31, 0x6c4
/* 80C304C8  4B 45 40 31 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C304CC  90 61 00 20 */	stw r3, 0x20(r1)
/* 80C304D0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C304D4  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80C304D8  41 82 00 34 */	beq lbl_80C3050C
/* 80C304DC  3C 60 80 C3 */	lis r3, lit_4662@ha /* 0x80C3133C@ha */
/* 80C304E0  38 83 13 3C */	addi r4, r3, lit_4662@l /* 0x80C3133C@l */
/* 80C304E4  80 64 00 00 */	lwz r3, 0(r4)
/* 80C304E8  80 04 00 04 */	lwz r0, 4(r4)
/* 80C304EC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80C304F0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C304F4  80 04 00 08 */	lwz r0, 8(r4)
/* 80C304F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C304FC  7F E3 FB 78 */	mr r3, r31
/* 80C30500  38 81 00 14 */	addi r4, r1, 0x14
/* 80C30504  4B FF DF 31 */	bl setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v
/* 80C30508  48 00 00 30 */	b lbl_80C30538
lbl_80C3050C:
/* 80C3050C  3C 60 80 C3 */	lis r3, lit_4665@ha /* 0x80C31348@ha */
/* 80C30510  38 83 13 48 */	addi r4, r3, lit_4665@l /* 0x80C31348@l */
/* 80C30514  80 64 00 00 */	lwz r3, 0(r4)
/* 80C30518  80 04 00 04 */	lwz r0, 4(r4)
/* 80C3051C  90 61 00 08 */	stw r3, 8(r1)
/* 80C30520  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C30524  80 04 00 08 */	lwz r0, 8(r4)
/* 80C30528  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C3052C  7F E3 FB 78 */	mr r3, r31
/* 80C30530  38 81 00 08 */	addi r4, r1, 8
/* 80C30534  4B FF DF 01 */	bl setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v
lbl_80C30538:
/* 80C30538  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80C3053C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C30540  7C 08 03 A6 */	mtlr r0
/* 80C30544  38 21 00 50 */	addi r1, r1, 0x50
/* 80C30548  4E 80 00 20 */	blr 
