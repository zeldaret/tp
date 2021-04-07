lbl_80C278CC:
/* 80C278CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C278D0  7C 08 02 A6 */	mflr r0
/* 80C278D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C278D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C278DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C278E0  7C 7E 1B 78 */	mr r30, r3
/* 80C278E4  3C 80 80 C3 */	lis r4, l_cyl_src@ha /* 0x80C28120@ha */
/* 80C278E8  3B E4 81 20 */	addi r31, r4, l_cyl_src@l /* 0x80C28120@l */
/* 80C278EC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C278F0  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 80C278F4  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 80C278F8  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
/* 80C278FC  4B FF FF 35 */	bl initBaseMtx__12daObjIBone_cFv
/* 80C27900  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C27904  38 03 00 24 */	addi r0, r3, 0x24
/* 80C27908  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C2790C  38 7E 05 74 */	addi r3, r30, 0x574
/* 80C27910  38 80 00 FF */	li r4, 0xff
/* 80C27914  38 A0 00 FF */	li r5, 0xff
/* 80C27918  7F C6 F3 78 */	mr r6, r30
/* 80C2791C  4B 45 BF 45 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C27920  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80C27924  38 9F 00 00 */	addi r4, r31, 0
/* 80C27928  4B 45 CF 8D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C2792C  38 1E 05 74 */	addi r0, r30, 0x574
/* 80C27930  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80C27934  3C 60 80 C2 */	lis r3, bornCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80C27714@ha */
/* 80C27938  38 03 77 14 */	addi r0, r3, bornCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80C27714@l */
/* 80C2793C  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80C27940  3C 60 80 C2 */	lis r3, bornTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80C276B8@ha */
/* 80C27944  38 03 76 B8 */	addi r0, r3, bornTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80C276B8@l */
/* 80C27948  90 1E 06 54 */	stw r0, 0x654(r30)
/* 80C2794C  38 7E 06 EC */	addi r3, r30, 0x6ec
/* 80C27950  38 9F 00 44 */	addi r4, r31, 0x44
/* 80C27954  4B 45 CF 61 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C27958  38 1E 05 74 */	addi r0, r30, 0x574
/* 80C2795C  90 1E 07 30 */	stw r0, 0x730(r30)
/* 80C27960  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C27964  80 83 00 04 */	lwz r4, 4(r3)
/* 80C27968  7F C3 F3 78 */	mr r3, r30
/* 80C2796C  4B 3F 2C 0D */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C27970  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80C27974  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C27978  38 A0 00 01 */	li r5, 1
/* 80C2797C  81 9E 08 3C */	lwz r12, 0x83c(r30)
/* 80C27980  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C27984  7D 89 03 A6 */	mtctr r12
/* 80C27988  4E 80 04 21 */	bctrl 
/* 80C2798C  38 60 00 01 */	li r3, 1
/* 80C27990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C27994  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C27998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2799C  7C 08 03 A6 */	mtlr r0
/* 80C279A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C279A4  4E 80 00 20 */	blr 
