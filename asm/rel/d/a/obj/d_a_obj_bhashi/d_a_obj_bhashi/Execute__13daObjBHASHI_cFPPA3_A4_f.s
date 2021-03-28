lbl_805787CC:
/* 805787CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805787D0  7C 08 02 A6 */	mflr r0
/* 805787D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805787D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805787DC  4B DE 9A 00 */	b _savegpr_29
/* 805787E0  7C 7E 1B 78 */	mr r30, r3
/* 805787E4  7C 9F 23 78 */	mr r31, r4
/* 805787E8  80 03 05 A4 */	lwz r0, 0x5a4(r3)
/* 805787EC  2C 00 00 02 */	cmpwi r0, 2
/* 805787F0  41 82 00 08 */	beq lbl_805787F8
/* 805787F4  4B FF E9 F9 */	bl Obj_Damage__13daObjBHASHI_cFv
lbl_805787F8:
/* 805787F8  80 1E 05 A4 */	lwz r0, 0x5a4(r30)
/* 805787FC  2C 00 00 02 */	cmpwi r0, 2
/* 80578800  40 82 00 98 */	bne lbl_80578898
/* 80578804  A8 7E 11 E0 */	lha r3, 0x11e0(r30)
/* 80578808  38 03 FF FF */	addi r0, r3, -1
/* 8057880C  B0 1E 11 E0 */	sth r0, 0x11e0(r30)
/* 80578810  A8 1E 11 E0 */	lha r0, 0x11e0(r30)
/* 80578814  2C 00 00 00 */	cmpwi r0, 0
/* 80578818  41 81 00 0C */	bgt lbl_80578824
/* 8057881C  38 00 00 00 */	li r0, 0
/* 80578820  B0 1E 11 E0 */	sth r0, 0x11e0(r30)
lbl_80578824:
/* 80578824  3B A0 00 00 */	li r29, 0
/* 80578828  48 00 00 1C */	b lbl_80578844
lbl_8057882C:
/* 8057882C  7F A0 07 34 */	extsh r0, r29
/* 80578830  1C 60 00 34 */	mulli r3, r0, 0x34
/* 80578834  38 63 05 AC */	addi r3, r3, 0x5ac
/* 80578838  7C 7E 1A 14 */	add r3, r30, r3
/* 8057883C  4B FF F0 2D */	bl HahenMotion__7Hahen_cFv
/* 80578840  3B BD 00 01 */	addi r29, r29, 1
lbl_80578844:
/* 80578844  7F A0 07 34 */	extsh r0, r29
/* 80578848  2C 00 00 3C */	cmpwi r0, 0x3c
/* 8057884C  41 80 FF E0 */	blt lbl_8057882C
/* 80578850  38 60 02 16 */	li r3, 0x216
/* 80578854  38 81 00 08 */	addi r4, r1, 8
/* 80578858  4B AA 11 D4 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 8057885C  2C 03 00 00 */	cmpwi r3, 0
/* 80578860  41 82 00 38 */	beq lbl_80578898
/* 80578864  80 61 00 08 */	lwz r3, 8(r1)
/* 80578868  28 03 00 00 */	cmplwi r3, 0
/* 8057886C  41 82 00 2C */	beq lbl_80578898
/* 80578870  88 03 0B 05 */	lbz r0, 0xb05(r3)
/* 80578874  28 00 00 00 */	cmplwi r0, 0
/* 80578878  41 82 00 20 */	beq lbl_80578898
/* 8057887C  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 80578880  7F C3 F3 78 */	mr r3, r30
/* 80578884  3C A0 80 58 */	lis r5, lit_4626@ha
/* 80578888  C0 25 8B A0 */	lfs f1, lit_4626@l(r5)
/* 8057888C  3C A0 80 58 */	lis r5, lit_4627@ha
/* 80578890  C0 45 8B A4 */	lfs f2, lit_4627@l(r5)
/* 80578894  4B FF F5 91 */	bl Rolling__13daObjBHASHI_cFP4cXyzff
lbl_80578898:
/* 80578898  38 1E 05 6C */	addi r0, r30, 0x56c
/* 8057889C  90 1F 00 00 */	stw r0, 0(r31)
/* 805788A0  7F C3 F3 78 */	mr r3, r30
/* 805788A4  4B FF F9 59 */	bl setBaseMtx__13daObjBHASHI_cFv
/* 805788A8  80 1E 05 A4 */	lwz r0, 0x5a4(r30)
/* 805788AC  2C 00 00 02 */	cmpwi r0, 2
/* 805788B0  41 82 00 0C */	beq lbl_805788BC
/* 805788B4  7F C3 F3 78 */	mr r3, r30
/* 805788B8  4B FF E2 0D */	bl setCcCylinder__13daObjBHASHI_cFv
lbl_805788BC:
/* 805788BC  A8 7E 11 E4 */	lha r3, 0x11e4(r30)
/* 805788C0  2C 03 00 00 */	cmpwi r3, 0
/* 805788C4  41 82 00 0C */	beq lbl_805788D0
/* 805788C8  38 03 FF FF */	addi r0, r3, -1
/* 805788CC  B0 1E 11 E4 */	sth r0, 0x11e4(r30)
lbl_805788D0:
/* 805788D0  38 60 00 01 */	li r3, 1
/* 805788D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805788D8  4B DE 99 50 */	b _restgpr_29
/* 805788DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805788E0  7C 08 03 A6 */	mtlr r0
/* 805788E4  38 21 00 20 */	addi r1, r1, 0x20
/* 805788E8  4E 80 00 20 */	blr 
