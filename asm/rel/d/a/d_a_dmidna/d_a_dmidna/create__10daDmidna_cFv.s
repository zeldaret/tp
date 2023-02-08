lbl_8045CFE4:
/* 8045CFE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045CFE8  7C 08 02 A6 */	mflr r0
/* 8045CFEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045CFF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045CFF4  93 C1 00 08 */	stw r30, 8(r1)
/* 8045CFF8  7C 7E 1B 78 */	mr r30, r3
/* 8045CFFC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8045D000  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8045D004  40 82 00 1C */	bne lbl_8045D020
/* 8045D008  28 1E 00 00 */	cmplwi r30, 0
/* 8045D00C  41 82 00 08 */	beq lbl_8045D014
/* 8045D010  4B BB BB 55 */	bl __ct__10fopAc_ac_cFv
lbl_8045D014:
/* 8045D014  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8045D018  60 00 00 08 */	ori r0, r0, 8
/* 8045D01C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8045D020:
/* 8045D020  38 7E 05 68 */	addi r3, r30, 0x568
/* 8045D024  3C 80 80 46 */	lis r4, l_arcName@ha /* 0x8045D290@ha */
/* 8045D028  38 84 D2 90 */	addi r4, r4, l_arcName@l /* 0x8045D290@l */
/* 8045D02C  4B BC FE 91 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8045D030  7C 7F 1B 78 */	mr r31, r3
/* 8045D034  2C 1F 00 04 */	cmpwi r31, 4
/* 8045D038  40 82 00 40 */	bne lbl_8045D078
/* 8045D03C  7F C3 F3 78 */	mr r3, r30
/* 8045D040  3C 80 80 46 */	lis r4, daDmidna_createHeap__FP10fopAc_ac_c@ha /* 0x8045CFC4@ha */
/* 8045D044  38 84 CF C4 */	addi r4, r4, daDmidna_createHeap__FP10fopAc_ac_c@l /* 0x8045CFC4@l */
/* 8045D048  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000AEE0@ha */
/* 8045D04C  38 A5 AE E0 */	addi r5, r5, 0xAEE0 /* 0x0000AEE0@l */
/* 8045D050  4B BB D4 61 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8045D054  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8045D058  40 82 00 0C */	bne lbl_8045D064
/* 8045D05C  38 60 00 05 */	li r3, 5
/* 8045D060  48 00 00 1C */	b lbl_8045D07C
lbl_8045D064:
/* 8045D064  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8045D068  80 03 00 04 */	lwz r0, 4(r3)
/* 8045D06C  90 1E 05 24 */	stw r0, 0x524(r30)
/* 8045D070  7F C3 F3 78 */	mr r3, r30
/* 8045D074  48 00 00 D1 */	bl setMatrix__10daDmidna_cFv
lbl_8045D078:
/* 8045D078  7F E3 FB 78 */	mr r3, r31
lbl_8045D07C:
/* 8045D07C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045D080  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045D084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D088  7C 08 03 A6 */	mtlr r0
/* 8045D08C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D090  4E 80 00 20 */	blr 
