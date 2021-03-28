lbl_80CCD1F0:
/* 80CCD1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCD1F4  7C 08 02 A6 */	mflr r0
/* 80CCD1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCD1FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCD200  7C 7F 1B 78 */	mr r31, r3
/* 80CCD204  48 00 06 0D */	bl initBaseMtx__16daObj_SekiDoor_cFv
/* 80CCD208  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CCD20C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CCD210  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CCD214  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CCD218  80 83 00 04 */	lwz r4, 4(r3)
/* 80CCD21C  7F E3 FB 78 */	mr r3, r31
/* 80CCD220  4B 34 D3 58 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CCD224  38 60 00 01 */	li r3, 1
/* 80CCD228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCD22C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD230  7C 08 03 A6 */	mtlr r0
/* 80CCD234  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD238  4E 80 00 20 */	blr 
