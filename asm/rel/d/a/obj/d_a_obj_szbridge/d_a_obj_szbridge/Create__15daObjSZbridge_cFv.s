lbl_80D048C4:
/* 80D048C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D048C8  7C 08 02 A6 */	mflr r0
/* 80D048CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D048D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D048D4  7C 7F 1B 78 */	mr r31, r3
/* 80D048D8  3C 80 80 D0 */	lis r4, rideCallback__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80D04338@ha */
/* 80D048DC  38 04 43 38 */	addi r0, r4, rideCallback__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80D04338@l */
/* 80D048E0  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80D048E4  90 04 00 B4 */	stw r0, 0xb4(r4)
/* 80D048E8  4B FF FC B1 */	bl chkBg__15daObjSZbridge_cFv
/* 80D048EC  3C 60 80 D0 */	lis r3, lit_3739@ha /* 0x80D04C7C@ha */
/* 80D048F0  C0 03 4C 7C */	lfs f0, lit_3739@l(r3)  /* 0x80D04C7C@l */
/* 80D048F4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80D048F8  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 80D048FC  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80D04900  38 84 00 24 */	addi r4, r4, 0x24
/* 80D04904  4B 64 1B AD */	bl PSMTXCopy
/* 80D04908  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 80D0490C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D04910  7F E3 FB 78 */	mr r3, r31
/* 80D04914  3C 80 80 D0 */	lis r4, l_cull_box@ha /* 0x80D04C38@ha */
/* 80D04918  C4 24 4C 38 */	lfsu f1, l_cull_box@l(r4)  /* 0x80D04C38@l */
/* 80D0491C  C0 44 00 04 */	lfs f2, 4(r4)
/* 80D04920  C0 64 00 08 */	lfs f3, 8(r4)
/* 80D04924  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80D04928  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80D0492C  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80D04930  4B 31 5C 19 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D04934  38 60 00 00 */	li r3, 0
/* 80D04938  38 80 FF FF */	li r4, -1
/* 80D0493C  38 00 00 02 */	li r0, 2
/* 80D04940  7C 09 03 A6 */	mtctr r0
lbl_80D04944:
/* 80D04944  38 03 06 18 */	addi r0, r3, 0x618
/* 80D04948  7C 9F 01 2E */	stwx r4, r31, r0
/* 80D0494C  38 63 00 04 */	addi r3, r3, 4
/* 80D04950  42 00 FF F4 */	bdnz lbl_80D04944
/* 80D04954  38 00 00 00 */	li r0, 0
/* 80D04958  90 1F 06 20 */	stw r0, 0x620(r31)
/* 80D0495C  38 60 00 01 */	li r3, 1
/* 80D04960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D04964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04968  7C 08 03 A6 */	mtlr r0
/* 80D0496C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04970  4E 80 00 20 */	blr 
