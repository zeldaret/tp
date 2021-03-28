lbl_80C215F4:
/* 80C215F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C215F8  7C 08 02 A6 */	mflr r0
/* 80C215FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C21600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C21604  7C 7F 1B 78 */	mr r31, r3
/* 80C21608  4B FF F8 B9 */	bl initBaseMtx__12daObjIce_s_cFv
/* 80C2160C  3C 60 80 C2 */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80C21610  38 03 0F 48 */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80C21614  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C21618  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C2161C  38 60 00 04 */	li r3, 4
/* 80C21620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C21624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C21628  7C 08 03 A6 */	mtlr r0
/* 80C2162C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C21630  4E 80 00 20 */	blr 
