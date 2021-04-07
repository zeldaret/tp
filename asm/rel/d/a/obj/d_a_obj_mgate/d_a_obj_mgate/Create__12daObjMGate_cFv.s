lbl_80593760:
/* 80593760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593764  7C 08 02 A6 */	mflr r0
/* 80593768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059376C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80593770  7C 7F 1B 78 */	mr r31, r3
/* 80593774  4B FF FE 45 */	bl initBaseMtx__12daObjMGate_cFv
/* 80593778  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 8059377C  38 03 00 24 */	addi r0, r3, 0x24
/* 80593780  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80593784  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80593788  80 83 00 04 */	lwz r4, 4(r3)
/* 8059378C  7F E3 FB 78 */	mr r3, r31
/* 80593790  4B A8 6D E9 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80593794  38 60 00 01 */	li r3, 1
/* 80593798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059379C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805937A0  7C 08 03 A6 */	mtlr r0
/* 805937A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805937A8  4E 80 00 20 */	blr 
