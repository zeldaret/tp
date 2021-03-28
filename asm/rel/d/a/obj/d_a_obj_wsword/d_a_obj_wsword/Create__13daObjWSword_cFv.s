lbl_80D3BA40:
/* 80D3BA40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3BA44  7C 08 02 A6 */	mflr r0
/* 80D3BA48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3BA4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3BA50  7C 7F 1B 78 */	mr r31, r3
/* 80D3BA54  4B FF FF 45 */	bl initBaseMtx__13daObjWSword_cFv
/* 80D3BA58  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D3BA5C  38 03 00 24 */	addi r0, r3, 0x24
/* 80D3BA60  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D3BA64  38 7F 07 8C */	addi r3, r31, 0x78c
/* 80D3BA68  38 80 00 FF */	li r4, 0xff
/* 80D3BA6C  38 A0 00 FF */	li r5, 0xff
/* 80D3BA70  7F E6 FB 78 */	mr r6, r31
/* 80D3BA74  4B 34 7D EC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D3BA78  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 80D3BA7C  3C 80 80 D4 */	lis r4, l_cyl_src@ha
/* 80D3BA80  38 84 BF 30 */	addi r4, r4, l_cyl_src@l
/* 80D3BA84  4B 34 8E 30 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D3BA88  38 1F 07 8C */	addi r0, r31, 0x78c
/* 80D3BA8C  90 1F 08 0C */	stw r0, 0x80c(r31)
/* 80D3BA90  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D3BA94  80 83 00 04 */	lwz r4, 4(r3)
/* 80D3BA98  7F E3 FB 78 */	mr r3, r31
/* 80D3BA9C  4B 2D EA DC */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D3BAA0  38 60 00 01 */	li r3, 1
/* 80D3BAA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3BAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3BAAC  7C 08 03 A6 */	mtlr r0
/* 80D3BAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3BAB4  4E 80 00 20 */	blr 
