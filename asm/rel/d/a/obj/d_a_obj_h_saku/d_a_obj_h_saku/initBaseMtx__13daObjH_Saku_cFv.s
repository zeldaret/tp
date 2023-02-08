lbl_80C15E00:
/* 80C15E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C15E04  7C 08 02 A6 */	mflr r0
/* 80C15E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C15E0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C15E10  7C 7F 1B 78 */	mr r31, r3
/* 80C15E14  48 00 00 31 */	bl setBaseMtx__13daObjH_Saku_cFv
/* 80C15E18  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80C15E1C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C15E20  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C15E24  80 7F 06 2C */	lwz r3, 0x62c(r31)
/* 80C15E28  38 03 00 24 */	addi r0, r3, 0x24
/* 80C15E2C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C15E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C15E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C15E38  7C 08 03 A6 */	mtlr r0
/* 80C15E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C15E40  4E 80 00 20 */	blr 
