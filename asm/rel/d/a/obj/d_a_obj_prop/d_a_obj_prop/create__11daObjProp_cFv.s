lbl_80CB5334:
/* 80CB5334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB5338  7C 08 02 A6 */	mflr r0
/* 80CB533C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB5344  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB5348  7C 7E 1B 78 */	mr r30, r3
/* 80CB534C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CB5350  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CB5354  40 82 00 1C */	bne lbl_80CB5370
/* 80CB5358  28 1E 00 00 */	cmplwi r30, 0
/* 80CB535C  41 82 00 08 */	beq lbl_80CB5364
/* 80CB5360  4B FF FE 99 */	bl __ct__11daObjProp_cFv
lbl_80CB5364:
/* 80CB5364  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CB5368  60 00 00 08 */	ori r0, r0, 8
/* 80CB536C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CB5370:
/* 80CB5370  7F C3 F3 78 */	mr r3, r30
/* 80CB5374  28 1E 00 00 */	cmplwi r30, 0
/* 80CB5378  41 82 00 08 */	beq lbl_80CB5380
/* 80CB537C  38 7E 05 68 */	addi r3, r30, 0x568
lbl_80CB5380:
/* 80CB5380  3C 80 80 CB */	lis r4, l_arcName@ha /* 0x80CB5628@ha */
/* 80CB5384  38 84 56 28 */	addi r4, r4, l_arcName@l /* 0x80CB5628@l */
/* 80CB5388  80 84 00 00 */	lwz r4, 0(r4)
/* 80CB538C  4B 37 7B 31 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CB5390  7C 7F 1B 78 */	mr r31, r3
/* 80CB5394  2C 1F 00 04 */	cmpwi r31, 4
/* 80CB5398  40 82 00 54 */	bne lbl_80CB53EC
/* 80CB539C  7F C3 F3 78 */	mr r3, r30
/* 80CB53A0  3C 80 80 CB */	lis r4, daObjProp_c_createHeap__FP10fopAc_ac_c@ha /* 0x80CB51D8@ha */
/* 80CB53A4  38 84 51 D8 */	addi r4, r4, daObjProp_c_createHeap__FP10fopAc_ac_c@l /* 0x80CB51D8@l */
/* 80CB53A8  38 A0 10 00 */	li r5, 0x1000
/* 80CB53AC  4B 36 51 05 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CB53B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CB53B4  40 82 00 0C */	bne lbl_80CB53C0
/* 80CB53B8  38 60 00 05 */	li r3, 5
/* 80CB53BC  48 00 00 34 */	b lbl_80CB53F0
lbl_80CB53C0:
/* 80CB53C0  7F C3 F3 78 */	mr r3, r30
/* 80CB53C4  48 00 01 21 */	bl init__11daObjProp_cFv
/* 80CB53C8  7F C3 F3 78 */	mr r3, r30
/* 80CB53CC  48 00 01 29 */	bl setModelMtx__11daObjProp_cFv
/* 80CB53D0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CB53D4  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB53D8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CB53DC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CB53E0  80 83 00 04 */	lwz r4, 4(r3)
/* 80CB53E4  7F C3 F3 78 */	mr r3, r30
/* 80CB53E8  4B 36 51 91 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
lbl_80CB53EC:
/* 80CB53EC  7F E3 FB 78 */	mr r3, r31
lbl_80CB53F0:
/* 80CB53F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB53F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB53F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB53FC  7C 08 03 A6 */	mtlr r0
/* 80CB5400  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5404  4E 80 00 20 */	blr 
