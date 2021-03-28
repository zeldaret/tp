lbl_80BB9B84:
/* 80BB9B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB9B88  7C 08 02 A6 */	mflr r0
/* 80BB9B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB9B90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB9B94  7C 7F 1B 78 */	mr r31, r3
/* 80BB9B98  4B FF FE C1 */	bl initBaseMtx__11daObjBmSh_cFv
/* 80BB9B9C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BB9BA0  38 03 00 24 */	addi r0, r3, 0x24
/* 80BB9BA4  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BB9BA8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BB9BAC  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB9BB0  7F E3 FB 78 */	mr r3, r31
/* 80BB9BB4  4B 46 09 C4 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BB9BB8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BB9BBC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80BB9BC0  98 1F 05 AE */	stb r0, 0x5ae(r31)
/* 80BB9BC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB9BC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BB9BCC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80BB9BD0  7F E4 FB 78 */	mr r4, r31
/* 80BB9BD4  88 BF 05 AE */	lbz r5, 0x5ae(r31)
/* 80BB9BD8  4B 48 DA C0 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80BB9BDC  B0 7F 05 AC */	sth r3, 0x5ac(r31)
/* 80BB9BE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB9BE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BB9BE8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BB9BEC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BB9BF0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BB9BF4  7C 05 07 74 */	extsb r5, r0
/* 80BB9BF8  4B 47 B7 68 */	b isSwitch__10dSv_info_cCFii
/* 80BB9BFC  2C 03 00 00 */	cmpwi r3, 0
/* 80BB9C00  41 82 00 18 */	beq lbl_80BB9C18
/* 80BB9C04  38 00 00 03 */	li r0, 3
/* 80BB9C08  98 1F 05 AF */	stb r0, 0x5af(r31)
/* 80BB9C0C  38 00 00 02 */	li r0, 2
/* 80BB9C10  98 1F 05 B0 */	stb r0, 0x5b0(r31)
/* 80BB9C14  48 00 00 10 */	b lbl_80BB9C24
lbl_80BB9C18:
/* 80BB9C18  38 00 00 00 */	li r0, 0
/* 80BB9C1C  98 1F 05 AF */	stb r0, 0x5af(r31)
/* 80BB9C20  98 1F 05 B0 */	stb r0, 0x5b0(r31)
lbl_80BB9C24:
/* 80BB9C24  88 1F 05 AE */	lbz r0, 0x5ae(r31)
/* 80BB9C28  28 00 00 FF */	cmplwi r0, 0xff
/* 80BB9C2C  40 82 00 0C */	bne lbl_80BB9C38
/* 80BB9C30  38 00 00 03 */	li r0, 3
/* 80BB9C34  98 1F 05 AF */	stb r0, 0x5af(r31)
lbl_80BB9C38:
/* 80BB9C38  38 60 00 01 */	li r3, 1
/* 80BB9C3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB9C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB9C44  7C 08 03 A6 */	mtlr r0
/* 80BB9C48  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9C4C  4E 80 00 20 */	blr 
