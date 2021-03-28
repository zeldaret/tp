lbl_80BE2AE8:
/* 80BE2AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE2AEC  7C 08 02 A6 */	mflr r0
/* 80BE2AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE2AF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE2AF8  7C 7F 1B 78 */	mr r31, r3
/* 80BE2AFC  4B FF FC 0D */	bl initBaseMtx__11daObjDust_cFv
/* 80BE2B00  3C 60 80 BE */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80BE2B04  38 03 27 90 */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80BE2B08  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BE2B0C  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80BE2B10  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BE2B14  4B 43 B2 70 */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80BE2B18  38 60 00 04 */	li r3, 4
/* 80BE2B1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE2B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE2B24  7C 08 03 A6 */	mtlr r0
/* 80BE2B28  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE2B2C  4E 80 00 20 */	blr 
