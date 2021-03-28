lbl_80CDFA3C:
/* 80CDFA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDFA40  7C 08 02 A6 */	mflr r0
/* 80CDFA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDFA48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDFA4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDFA50  7C 7E 1B 78 */	mr r30, r3
/* 80CDFA54  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CDFA58  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CDFA5C  40 82 00 1C */	bne lbl_80CDFA78
/* 80CDFA60  28 1E 00 00 */	cmplwi r30, 0
/* 80CDFA64  41 82 00 08 */	beq lbl_80CDFA6C
/* 80CDFA68  4B FF FE 11 */	bl __ct__15daObjSnowSoup_cFv
lbl_80CDFA6C:
/* 80CDFA6C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CDFA70  60 00 00 08 */	ori r0, r0, 8
/* 80CDFA74  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CDFA78:
/* 80CDFA78  7F C3 F3 78 */	mr r3, r30
/* 80CDFA7C  28 1E 00 00 */	cmplwi r30, 0
/* 80CDFA80  41 82 00 08 */	beq lbl_80CDFA88
/* 80CDFA84  38 7E 05 68 */	addi r3, r30, 0x568
lbl_80CDFA88:
/* 80CDFA88  3C 80 80 CE */	lis r4, l_arcName@ha
/* 80CDFA8C  38 84 02 80 */	addi r4, r4, l_arcName@l
/* 80CDFA90  80 84 00 00 */	lwz r4, 0(r4)
/* 80CDFA94  4B 34 D4 28 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CDFA98  7C 7F 1B 78 */	mr r31, r3
/* 80CDFA9C  2C 1F 00 04 */	cmpwi r31, 4
/* 80CDFAA0  40 82 00 B4 */	bne lbl_80CDFB54
/* 80CDFAA4  7F C3 F3 78 */	mr r3, r30
/* 80CDFAA8  3C 80 80 CE */	lis r4, daObjSnowSoup_c_createHeap__FP10fopAc_ac_c@ha
/* 80CDFAAC  38 84 F8 58 */	addi r4, r4, daObjSnowSoup_c_createHeap__FP10fopAc_ac_c@l
/* 80CDFAB0  38 A0 65 00 */	li r5, 0x6500
/* 80CDFAB4  4B 33 A9 FC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CDFAB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CDFABC  40 82 00 0C */	bne lbl_80CDFAC8
/* 80CDFAC0  38 60 00 05 */	li r3, 5
/* 80CDFAC4  48 00 00 94 */	b lbl_80CDFB58
lbl_80CDFAC8:
/* 80CDFAC8  7F C3 F3 78 */	mr r3, r30
/* 80CDFACC  48 00 03 49 */	bl init__15daObjSnowSoup_cFv
/* 80CDFAD0  7F C3 F3 78 */	mr r3, r30
/* 80CDFAD4  48 00 03 D1 */	bl setModelMtx__15daObjSnowSoup_cFv
/* 80CDFAD8  88 1E 05 C0 */	lbz r0, 0x5c0(r30)
/* 80CDFADC  54 00 10 3A */	slwi r0, r0, 2
/* 80CDFAE0  7C 7E 02 14 */	add r3, r30, r0
/* 80CDFAE4  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80CDFAE8  38 03 00 24 */	addi r0, r3, 0x24
/* 80CDFAEC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CDFAF0  88 1E 05 C0 */	lbz r0, 0x5c0(r30)
/* 80CDFAF4  54 00 10 3A */	slwi r0, r0, 2
/* 80CDFAF8  7C 7E 02 14 */	add r3, r30, r0
/* 80CDFAFC  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80CDFB00  80 83 00 04 */	lwz r4, 4(r3)
/* 80CDFB04  7F C3 F3 78 */	mr r3, r30
/* 80CDFB08  4B 33 AA 70 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CDFB0C  7F C3 F3 78 */	mr r3, r30
/* 80CDFB10  48 00 04 05 */	bl createSmkEmtCommon__15daObjSnowSoup_cFv
/* 80CDFB14  7F C3 F3 78 */	mr r3, r30
/* 80CDFB18  88 9E 05 C0 */	lbz r4, 0x5c0(r30)
/* 80CDFB1C  48 00 05 21 */	bl createSmkEmtChange__15daObjSnowSoup_cFi
/* 80CDFB20  3C 60 80 CE */	lis r3, SOUP_MODEL_OFFSET@ha
/* 80CDFB24  38 63 02 3C */	addi r3, r3, SOUP_MODEL_OFFSET@l
/* 80CDFB28  C0 43 00 08 */	lfs f2, 8(r3)
/* 80CDFB2C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80CDFB30  C0 03 00 00 */	lfs f0, 0(r3)
/* 80CDFB34  D0 1E 05 80 */	stfs f0, 0x580(r30)
/* 80CDFB38  D0 3E 05 84 */	stfs f1, 0x584(r30)
/* 80CDFB3C  D0 5E 05 88 */	stfs f2, 0x588(r30)
/* 80CDFB40  D0 1E 05 74 */	stfs f0, 0x574(r30)
/* 80CDFB44  3C 60 80 CE */	lis r3, lit_3706@ha
/* 80CDFB48  C0 03 02 54 */	lfs f0, lit_3706@l(r3)
/* 80CDFB4C  D0 1E 05 78 */	stfs f0, 0x578(r30)
/* 80CDFB50  D0 5E 05 7C */	stfs f2, 0x57c(r30)
lbl_80CDFB54:
/* 80CDFB54  7F E3 FB 78 */	mr r3, r31
lbl_80CDFB58:
/* 80CDFB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDFB5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDFB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDFB64  7C 08 03 A6 */	mtlr r0
/* 80CDFB68  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDFB6C  4E 80 00 20 */	blr 
