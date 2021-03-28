lbl_80BB59AC:
/* 80BB59AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB59B0  7C 08 02 A6 */	mflr r0
/* 80BB59B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB59B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB59BC  7C 7F 1B 78 */	mr r31, r3
/* 80BB59C0  3C 80 80 BB */	lis r4, lit_3655@ha
/* 80BB59C4  38 84 5F 00 */	addi r4, r4, lit_3655@l
/* 80BB59C8  C0 24 00 44 */	lfs f1, 0x44(r4)
/* 80BB59CC  C0 44 00 48 */	lfs f2, 0x48(r4)
/* 80BB59D0  C0 64 00 4C */	lfs f3, 0x4c(r4)
/* 80BB59D4  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 80BB59D8  C0 A4 00 3C */	lfs f5, 0x3c(r4)
/* 80BB59DC  C0 C4 00 54 */	lfs f6, 0x54(r4)
/* 80BB59E0  4B 46 4B 68 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BB59E4  7F E3 FB 78 */	mr r3, r31
/* 80BB59E8  4B FF FB A5 */	bl initBaseMtx__15daObjBhbridge_cFv
/* 80BB59EC  3C 60 80 BB */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80BB59F0  38 03 56 14 */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80BB59F4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BB59F8  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80BB59FC  38 60 00 04 */	li r3, 4
/* 80BB5A00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB5A04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB5A08  7C 08 03 A6 */	mtlr r0
/* 80BB5A0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB5A10  4E 80 00 20 */	blr 
