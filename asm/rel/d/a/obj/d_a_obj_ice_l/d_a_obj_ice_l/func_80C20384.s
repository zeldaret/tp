lbl_80C20384:
/* 80C20384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C20388  7C 08 02 A6 */	mflr r0
/* 80C2038C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C20390  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C20394  7C 7F 1B 78 */	mr r31, r3
/* 80C20398  4B FF F9 35 */	bl initBaseMtx__12daObjIce_l_cFv
/* 80C2039C  3C 60 80 C2 */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80C203A0  38 03 FD 5C */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80C203A4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C203A8  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C203AC  38 60 00 04 */	li r3, 4
/* 80C203B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C203B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C203B8  7C 08 03 A6 */	mtlr r0
/* 80C203BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C203C0  4E 80 00 20 */	blr 
