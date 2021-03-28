lbl_80BACDD8:
/* 80BACDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BACDDC  7C 08 02 A6 */	mflr r0
/* 80BACDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BACDE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BACDE8  7C 7F 1B 78 */	mr r31, r3
/* 80BACDEC  4B FF FF 4D */	bl initBaseMtx__11daObjBBox_cFv
/* 80BACDF0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BACDF4  38 03 00 24 */	addi r0, r3, 0x24
/* 80BACDF8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BACDFC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80BACE00  38 80 00 FF */	li r4, 0xff
/* 80BACE04  38 A0 00 FF */	li r5, 0xff
/* 80BACE08  7F E6 FB 78 */	mr r6, r31
/* 80BACE0C  4B 4D 6A 54 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BACE10  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80BACE14  3C 80 80 BB */	lis r4, l_cyl_src@ha
/* 80BACE18  38 84 D4 74 */	addi r4, r4, l_cyl_src@l
/* 80BACE1C  4B 4D 7A 98 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BACE20  38 1F 05 AC */	addi r0, r31, 0x5ac
/* 80BACE24  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80BACE28  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BACE2C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BACE30  7F E3 FB 78 */	mr r3, r31
/* 80BACE34  4B 46 D7 44 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BACE38  38 60 00 01 */	li r3, 1
/* 80BACE3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BACE40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BACE44  7C 08 03 A6 */	mtlr r0
/* 80BACE48  38 21 00 10 */	addi r1, r1, 0x10
/* 80BACE4C  4E 80 00 20 */	blr 
