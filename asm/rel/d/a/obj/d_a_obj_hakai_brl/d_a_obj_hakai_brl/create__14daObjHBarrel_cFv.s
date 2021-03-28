lbl_80C16B08:
/* 80C16B08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C16B0C  7C 08 02 A6 */	mflr r0
/* 80C16B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16B14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16B18  93 C1 00 08 */	stw r30, 8(r1)
/* 80C16B1C  7C 7E 1B 78 */	mr r30, r3
/* 80C16B20  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C16B24  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C16B28  40 82 00 1C */	bne lbl_80C16B44
/* 80C16B2C  28 1E 00 00 */	cmplwi r30, 0
/* 80C16B30  41 82 00 08 */	beq lbl_80C16B38
/* 80C16B34  4B FF FC 25 */	bl __ct__14daObjHBarrel_cFv
lbl_80C16B38:
/* 80C16B38  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C16B3C  60 00 00 08 */	ori r0, r0, 8
/* 80C16B40  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C16B44:
/* 80C16B44  7F C3 F3 78 */	mr r3, r30
/* 80C16B48  28 1E 00 00 */	cmplwi r30, 0
/* 80C16B4C  41 82 00 08 */	beq lbl_80C16B54
/* 80C16B50  38 7E 05 68 */	addi r3, r30, 0x568
lbl_80C16B54:
/* 80C16B54  3C 80 80 C1 */	lis r4, l_arcName@ha
/* 80C16B58  38 84 73 7C */	addi r4, r4, l_arcName@l
/* 80C16B5C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C16B60  4B 41 63 5C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C16B64  7C 7F 1B 78 */	mr r31, r3
/* 80C16B68  2C 1F 00 04 */	cmpwi r31, 4
/* 80C16B6C  40 82 00 70 */	bne lbl_80C16BDC
/* 80C16B70  7F C3 F3 78 */	mr r3, r30
/* 80C16B74  3C 80 80 C1 */	lis r4, daObjHBarrel_c_createHeap__FP10fopAc_ac_c@ha
/* 80C16B78  38 84 67 38 */	addi r4, r4, daObjHBarrel_c_createHeap__FP10fopAc_ac_c@l
/* 80C16B7C  38 A0 10 00 */	li r5, 0x1000
/* 80C16B80  4B 40 39 30 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C16B84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C16B88  40 82 00 0C */	bne lbl_80C16B94
/* 80C16B8C  38 60 00 05 */	li r3, 5
/* 80C16B90  48 00 00 50 */	b lbl_80C16BE0
lbl_80C16B94:
/* 80C16B94  7F C3 F3 78 */	mr r3, r30
/* 80C16B98  48 00 01 B9 */	bl init__14daObjHBarrel_cFv
/* 80C16B9C  7F C3 F3 78 */	mr r3, r30
/* 80C16BA0  48 00 02 4D */	bl setModelMtx__14daObjHBarrel_cFv
/* 80C16BA4  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C16BA8  38 03 00 24 */	addi r0, r3, 0x24
/* 80C16BAC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C16BB0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C16BB4  80 83 00 04 */	lwz r4, 4(r3)
/* 80C16BB8  7F C3 F3 78 */	mr r3, r30
/* 80C16BBC  4B 40 39 BC */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C16BC0  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 80C16BC4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C16BC8  38 A0 00 01 */	li r5, 1
/* 80C16BCC  81 9E 07 00 */	lwz r12, 0x700(r30)
/* 80C16BD0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C16BD4  7D 89 03 A6 */	mtctr r12
/* 80C16BD8  4E 80 04 21 */	bctrl 
lbl_80C16BDC:
/* 80C16BDC  7F E3 FB 78 */	mr r3, r31
lbl_80C16BE0:
/* 80C16BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C16BE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C16BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16BEC  7C 08 03 A6 */	mtlr r0
/* 80C16BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16BF4  4E 80 00 20 */	blr 
