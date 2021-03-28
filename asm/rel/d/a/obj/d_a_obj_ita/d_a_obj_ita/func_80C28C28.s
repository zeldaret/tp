lbl_80C28C28:
/* 80C28C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C28C2C  7C 08 02 A6 */	mflr r0
/* 80C28C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C28C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C28C38  7C 7F 1B 78 */	mr r31, r3
/* 80C28C3C  4B FF FB 4D */	bl initBaseMtx__10daObjIta_cFv
/* 80C28C40  3C 60 80 C3 */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80C28C44  38 03 88 38 */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80C28C48  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C28C4C  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C28C50  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C28C54  4B 3F 51 30 */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 80C28C58  38 60 00 04 */	li r3, 4
/* 80C28C5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C28C60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C28C64  7C 08 03 A6 */	mtlr r0
/* 80C28C68  38 21 00 10 */	addi r1, r1, 0x10
/* 80C28C6C  4E 80 00 20 */	blr 
