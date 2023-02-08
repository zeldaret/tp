lbl_80C270A0:
/* 80C270A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C270A4  7C 08 02 A6 */	mflr r0
/* 80C270A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C270AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C270B0  7C 7F 1B 78 */	mr r31, r3
/* 80C270B4  4B FF FB 9D */	bl initBaseMtx__12daObjIkada_cFv
/* 80C270B8  3C 60 80 C2 */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80C26CD8@ha */
/* 80C270BC  38 03 6C D8 */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80C26CD8@l */
/* 80C270C0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C270C4  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C270C8  38 60 00 04 */	li r3, 4
/* 80C270CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C270D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C270D4  7C 08 03 A6 */	mtlr r0
/* 80C270D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C270DC  4E 80 00 20 */	blr 
