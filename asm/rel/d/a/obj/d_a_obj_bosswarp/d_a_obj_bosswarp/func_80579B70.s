lbl_80579B70:
/* 80579B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80579B74  7C 08 02 A6 */	mflr r0
/* 80579B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80579B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80579B80  93 C1 00 08 */	stw r30, 8(r1)
/* 80579B84  7C 7E 1B 78 */	mr r30, r3
/* 80579B88  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80579B8C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80579B90  40 82 00 28 */	bne lbl_80579BB8
/* 80579B94  7F C0 F3 79 */	or. r0, r30, r30
/* 80579B98  41 82 00 14 */	beq lbl_80579BAC
/* 80579B9C  7C 1F 03 78 */	mr r31, r0
/* 80579BA0  4B A9 EF C4 */	b __ct__10fopAc_ac_cFv
/* 80579BA4  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80579BA8  4B CD 03 58 */	b __ct__10dMsgFlow_cFv
lbl_80579BAC:
/* 80579BAC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80579BB0  60 00 00 08 */	ori r0, r0, 8
/* 80579BB4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80579BB8:
/* 80579BB8  38 7E 05 68 */	addi r3, r30, 0x568
/* 80579BBC  3C 80 80 58 */	lis r4, l_arcName@ha
/* 80579BC0  38 84 B6 78 */	addi r4, r4, l_arcName@l
/* 80579BC4  80 84 00 00 */	lwz r4, 0(r4)
/* 80579BC8  4B AB 32 F4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80579BCC  7C 7F 1B 78 */	mr r31, r3
/* 80579BD0  2C 1F 00 04 */	cmpwi r31, 4
/* 80579BD4  40 82 00 40 */	bne lbl_80579C14
/* 80579BD8  7F C3 F3 78 */	mr r3, r30
/* 80579BDC  3C 80 80 58 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80579BE0  38 84 96 38 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80579BE4  38 A0 18 E0 */	li r5, 0x18e0
/* 80579BE8  4B AA 08 C8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80579BEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80579BF0  40 82 00 0C */	bne lbl_80579BFC
/* 80579BF4  38 60 00 05 */	li r3, 5
/* 80579BF8  48 00 00 20 */	b lbl_80579C18
lbl_80579BFC:
/* 80579BFC  7F C3 F3 78 */	mr r3, r30
/* 80579C00  4B FF FB B9 */	bl Create__15daObjBossWarp_cFv
/* 80579C04  2C 03 00 00 */	cmpwi r3, 0
/* 80579C08  40 82 00 0C */	bne lbl_80579C14
/* 80579C0C  38 60 00 05 */	li r3, 5
/* 80579C10  48 00 00 08 */	b lbl_80579C18
lbl_80579C14:
/* 80579C14  7F E3 FB 78 */	mr r3, r31
lbl_80579C18:
/* 80579C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80579C1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80579C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80579C24  7C 08 03 A6 */	mtlr r0
/* 80579C28  38 21 00 10 */	addi r1, r1, 0x10
/* 80579C2C  4E 80 00 20 */	blr 
