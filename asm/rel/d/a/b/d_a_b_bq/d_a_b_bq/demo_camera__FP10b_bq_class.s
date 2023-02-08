lbl_805B63EC:
/* 805B63EC  94 21 FD C0 */	stwu r1, -0x240(r1)
/* 805B63F0  7C 08 02 A6 */	mflr r0
/* 805B63F4  90 01 02 44 */	stw r0, 0x244(r1)
/* 805B63F8  DB E1 02 30 */	stfd f31, 0x230(r1)
/* 805B63FC  F3 E1 02 38 */	psq_st f31, 568(r1), 0, 0 /* qr0 */
/* 805B6400  39 61 02 30 */	addi r11, r1, 0x230
/* 805B6404  4B DA BD C5 */	bl _savegpr_24
/* 805B6408  7C 7F 1B 78 */	mr r31, r3
/* 805B640C  3C 60 80 5C */	lis r3, lit_3816@ha /* 0x805BA588@ha */
/* 805B6410  3B C3 A5 88 */	addi r30, r3, lit_3816@l /* 0x805BA588@l */
/* 805B6414  38 60 00 00 */	li r3, 0
/* 805B6418  48 00 3E 01 */	bl dComIfGp_getPlayerCameraID__Fi
/* 805B641C  48 00 3D E5 */	bl dComIfGp_getCamera__Fi
/* 805B6420  7C 7D 1B 78 */	mr r29, r3
/* 805B6424  38 60 00 00 */	li r3, 0
/* 805B6428  48 00 3D D9 */	bl dComIfGp_getCamera__Fi
/* 805B642C  7C 7A 1B 78 */	mr r26, r3
/* 805B6430  38 60 00 00 */	li r3, 0
/* 805B6434  48 00 3D B5 */	bl dComIfGp_getPlayer__Fi
/* 805B6438  7C 79 1B 78 */	mr r25, r3
/* 805B643C  88 1F 12 3C */	lbz r0, 0x123c(r31)
/* 805B6440  54 00 10 3A */	slwi r0, r0, 2
/* 805B6444  7C 7F 02 14 */	add r3, r31, r0
/* 805B6448  80 03 06 E0 */	lwz r0, 0x6e0(r3)
/* 805B644C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805B6450  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805B6454  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805B6458  38 81 00 1C */	addi r4, r1, 0x1c
/* 805B645C  4B A6 33 9D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805B6460  7C 7B 1B 78 */	mr r27, r3
/* 805B6464  80 1F 06 E8 */	lwz r0, 0x6e8(r31)
/* 805B6468  90 01 00 18 */	stw r0, 0x18(r1)
/* 805B646C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805B6470  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805B6474  38 81 00 18 */	addi r4, r1, 0x18
/* 805B6478  4B A6 33 81 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805B647C  7C 78 1B 78 */	mr r24, r3
/* 805B6480  C3 FE 00 04 */	lfs f31, 4(r30)
/* 805B6484  3B 80 00 00 */	li r28, 0
/* 805B6488  A8 1F 12 38 */	lha r0, 0x1238(r31)
/* 805B648C  28 00 00 36 */	cmplwi r0, 0x36
/* 805B6490  41 81 22 94 */	bgt lbl_805B8724
/* 805B6494  3C 60 80 5C */	lis r3, lit_6076@ha /* 0x805BAA80@ha */
/* 805B6498  38 63 AA 80 */	addi r3, r3, lit_6076@l /* 0x805BAA80@l */
/* 805B649C  54 00 10 3A */	slwi r0, r0, 2
/* 805B64A0  7C 03 00 2E */	lwzx r0, r3, r0
/* 805B64A4  7C 09 03 A6 */	mtctr r0
/* 805B64A8  4E 80 04 20 */	bctr 
lbl_805B64AC:
/* 805B64AC  38 00 00 00 */	li r0, 0
/* 805B64B0  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B64B4  38 00 00 02 */	li r0, 2
/* 805B64B8  B0 1F 12 38 */	sth r0, 0x1238(r31)
lbl_805B64BC:
/* 805B64BC  A8 7F 12 3A */	lha r3, 0x123a(r31)
/* 805B64C0  38 03 00 01 */	addi r0, r3, 1
/* 805B64C4  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B64C8  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B64CC  2C 00 00 07 */	cmpwi r0, 7
/* 805B64D0  40 80 00 38 */	bge lbl_805B6508
/* 805B64D4  38 61 01 64 */	addi r3, r1, 0x164
/* 805B64D8  38 80 FF FF */	li r4, -1
/* 805B64DC  4B FF D7 45 */	bl __dt__4cXyzFv
/* 805B64E0  38 61 01 70 */	addi r3, r1, 0x170
/* 805B64E4  38 80 FF FF */	li r4, -1
/* 805B64E8  4B FF D7 39 */	bl __dt__4cXyzFv
/* 805B64EC  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B64F0  38 80 FF FF */	li r4, -1
/* 805B64F4  4B FF D7 2D */	bl __dt__4cXyzFv
/* 805B64F8  38 61 01 88 */	addi r3, r1, 0x188
/* 805B64FC  38 80 FF FF */	li r4, -1
/* 805B6500  4B FF D7 21 */	bl __dt__4cXyzFv
/* 805B6504  48 00 24 E0 */	b lbl_805B89E4
lbl_805B6508:
/* 805B6508  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805B650C  48 00 3C C9 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 805B6510  2C 03 00 00 */	cmpwi r3, 0
/* 805B6514  40 82 00 5C */	bne lbl_805B6570
/* 805B6518  7F E3 FB 78 */	mr r3, r31
/* 805B651C  38 80 00 02 */	li r4, 2
/* 805B6520  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805B6524  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805B6528  38 C0 00 00 */	li r6, 0
/* 805B652C  4B A6 53 DD */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805B6530  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805B6534  38 80 00 02 */	li r4, 2
/* 805B6538  48 00 3C 8D */	bl onCondition__11dEvt_info_cFUs
/* 805B653C  38 61 01 64 */	addi r3, r1, 0x164
/* 805B6540  38 80 FF FF */	li r4, -1
/* 805B6544  4B FF D6 DD */	bl __dt__4cXyzFv
/* 805B6548  38 61 01 70 */	addi r3, r1, 0x170
/* 805B654C  38 80 FF FF */	li r4, -1
/* 805B6550  4B FF D6 D1 */	bl __dt__4cXyzFv
/* 805B6554  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B6558  38 80 FF FF */	li r4, -1
/* 805B655C  4B FF D6 C5 */	bl __dt__4cXyzFv
/* 805B6560  38 61 01 88 */	addi r3, r1, 0x188
/* 805B6564  38 80 FF FF */	li r4, -1
/* 805B6568  4B FF D6 B9 */	bl __dt__4cXyzFv
/* 805B656C  48 00 24 78 */	b lbl_805B89E4
lbl_805B6570:
/* 805B6570  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B6574  4B BA AF 5D */	bl Stop__9dCamera_cFv
/* 805B6578  38 00 00 03 */	li r0, 3
/* 805B657C  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B6580  38 00 00 00 */	li r0, 0
/* 805B6584  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B6588  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 805B658C  D0 1F 12 A4 */	stfs f0, 0x12a4(r31)
/* 805B6590  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B6594  38 80 00 03 */	li r4, 3
/* 805B6598  4B BA CA 75 */	bl SetTrimSize__9dCamera_cFl
/* 805B659C  48 00 3C 19 */	bl daPy_getPlayerActorClass__Fv
/* 805B65A0  48 00 3C 01 */	bl changeOriginalDemo__9daPy_py_cFv
/* 805B65A4  48 00 3C 11 */	bl daPy_getPlayerActorClass__Fv
/* 805B65A8  38 80 00 0C */	li r4, 0xc
/* 805B65AC  38 A0 00 00 */	li r5, 0
/* 805B65B0  38 C0 00 00 */	li r6, 0
/* 805B65B4  38 E0 00 00 */	li r7, 0
/* 805B65B8  48 00 3B D5 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805B65BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B65C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B65C4  80 63 00 00 */	lwz r3, 0(r3)
/* 805B65C8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805B65CC  38 80 00 1E */	li r4, 0x1e
/* 805B65D0  38 A0 00 00 */	li r5, 0
/* 805B65D4  4B CF 8E 35 */	bl bgmStop__8Z2SeqMgrFUll
/* 805B65D8  38 60 00 06 */	li r3, 6
/* 805B65DC  38 80 FF FF */	li r4, -1
/* 805B65E0  4B A7 74 BD */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_805B65E4:
/* 805B65E4  38 60 00 00 */	li r3, 0
/* 805B65E8  4B A7 63 95 */	bl getLayerNo__14dComIfG_play_cFi
/* 805B65EC  2C 03 00 04 */	cmpwi r3, 4
/* 805B65F0  40 82 00 0C */	bne lbl_805B65FC
/* 805B65F4  38 00 01 22 */	li r0, 0x122
/* 805B65F8  B0 1F 12 3A */	sth r0, 0x123a(r31)
lbl_805B65FC:
/* 805B65FC  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6600  2C 00 00 00 */	cmpwi r0, 0
/* 805B6604  40 82 00 48 */	bne lbl_805B664C
/* 805B6608  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 805B660C  D0 1F 12 98 */	stfs f0, 0x1298(r31)
/* 805B6610  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805B6614  D0 1F 12 40 */	stfs f0, 0x1240(r31)
/* 805B6618  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805B661C  D0 1F 12 44 */	stfs f0, 0x1244(r31)
/* 805B6620  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 805B6624  C0 1F 12 98 */	lfs f0, 0x1298(r31)
/* 805B6628  EC 01 00 2A */	fadds f0, f1, f0
/* 805B662C  D0 1F 12 48 */	stfs f0, 0x1248(r31)
/* 805B6630  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805B6634  D0 1F 12 4C */	stfs f0, 0x124c(r31)
/* 805B6638  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805B663C  D0 1F 12 50 */	stfs f0, 0x1250(r31)
/* 805B6640  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 805B6644  D0 1F 12 54 */	stfs f0, 0x1254(r31)
/* 805B6648  48 00 01 00 */	b lbl_805B6748
lbl_805B664C:
/* 805B664C  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B6650  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805B6654  48 00 3B 1D */	bl __as__4cXyzFRC4cXyz
/* 805B6658  C0 21 01 84 */	lfs f1, 0x184(r1)
/* 805B665C  C0 1F 12 98 */	lfs f0, 0x1298(r31)
/* 805B6660  EC 01 00 2A */	fadds f0, f1, f0
/* 805B6664  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805B6668  38 7F 12 98 */	addi r3, r31, 0x1298
/* 805B666C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805B6670  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805B6674  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 805B6678  4B CB 93 C5 */	bl cLib_addCalc2__FPffff
/* 805B667C  C0 21 01 80 */	lfs f1, 0x180(r1)
/* 805B6680  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 805B6684  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B6688  40 80 00 18 */	bge lbl_805B66A0
/* 805B668C  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B6690  38 9F 12 40 */	addi r4, r31, 0x1240
/* 805B6694  48 00 3A DD */	bl __as__4cXyzFRC4cXyz
/* 805B6698  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 805B669C  D0 01 01 80 */	stfs f0, 0x180(r1)
lbl_805B66A0:
/* 805B66A0  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B66A4  C0 21 01 7C */	lfs f1, 0x17c(r1)
/* 805B66A8  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B66AC  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 805B66B0  4B CB 93 8D */	bl cLib_addCalc2__FPffff
/* 805B66B4  38 7F 12 44 */	addi r3, r31, 0x1244
/* 805B66B8  C0 21 01 80 */	lfs f1, 0x180(r1)
/* 805B66BC  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B66C0  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 805B66C4  4B CB 93 79 */	bl cLib_addCalc2__FPffff
/* 805B66C8  38 7F 12 48 */	addi r3, r31, 0x1248
/* 805B66CC  C0 21 01 84 */	lfs f1, 0x184(r1)
/* 805B66D0  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B66D4  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 805B66D8  4B CB 93 65 */	bl cLib_addCalc2__FPffff
/* 805B66DC  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B66E0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805B66E4  48 00 3A 8D */	bl __as__4cXyzFRC4cXyz
/* 805B66E8  C0 21 01 80 */	lfs f1, 0x180(r1)
/* 805B66EC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B66F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B66F4  40 80 00 18 */	bge lbl_805B670C
/* 805B66F8  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B66FC  38 9F 12 4C */	addi r4, r31, 0x124c
/* 805B6700  48 00 3A 71 */	bl __as__4cXyzFRC4cXyz
/* 805B6704  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B6708  D0 01 01 80 */	stfs f0, 0x180(r1)
lbl_805B670C:
/* 805B670C  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B6710  C0 21 01 7C */	lfs f1, 0x17c(r1)
/* 805B6714  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B6718  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 805B671C  4B CB 93 21 */	bl cLib_addCalc2__FPffff
/* 805B6720  38 7F 12 50 */	addi r3, r31, 0x1250
/* 805B6724  C0 21 01 80 */	lfs f1, 0x180(r1)
/* 805B6728  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B672C  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 805B6730  4B CB 93 0D */	bl cLib_addCalc2__FPffff
/* 805B6734  38 7F 12 54 */	addi r3, r31, 0x1254
/* 805B6738  C0 21 01 84 */	lfs f1, 0x184(r1)
/* 805B673C  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B6740  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 805B6744  4B CB 92 F9 */	bl cLib_addCalc2__FPffff
lbl_805B6748:
/* 805B6748  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B674C  2C 00 00 CD */	cmpwi r0, 0xcd
/* 805B6750  40 82 00 0C */	bne lbl_805B675C
/* 805B6754  38 00 00 02 */	li r0, 2
/* 805B6758  98 1F 06 ED */	stb r0, 0x6ed(r31)
lbl_805B675C:
/* 805B675C  3B 80 00 01 */	li r28, 1
/* 805B6760  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6764  2C 00 01 22 */	cmpwi r0, 0x122
/* 805B6768  40 82 1F BC */	bne lbl_805B8724
/* 805B676C  38 00 00 04 */	li r0, 4
/* 805B6770  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B6774  38 00 00 00 */	li r0, 0
/* 805B6778  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B677C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805B6780  D0 1F 12 A4 */	stfs f0, 0x12a4(r31)
/* 805B6784  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B6788  D0 1F 12 9C */	stfs f0, 0x129c(r31)
/* 805B678C  A8 7F 06 CC */	lha r3, 0x6cc(r31)
/* 805B6790  38 03 00 01 */	addi r0, r3, 1
/* 805B6794  B0 1F 06 CC */	sth r0, 0x6cc(r31)
/* 805B6798  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 805B679C  D0 1F 12 58 */	stfs f0, 0x1258(r31)
/* 805B67A0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 805B67A4  D0 1F 12 5C */	stfs f0, 0x125c(r31)
/* 805B67A8  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 805B67AC  D0 1F 12 60 */	stfs f0, 0x1260(r31)
/* 805B67B0  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B67B4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805B67B8  48 00 39 B9 */	bl __as__4cXyzFRC4cXyz
/* 805B67BC  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B67C0  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 805B67C4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805B67C8  C0 7E 00 94 */	lfs f3, 0x94(r30)
/* 805B67CC  48 00 39 95 */	bl set__4cXyzFfff
/* 805B67D0  48 00 39 E5 */	bl daPy_getPlayerActorClass__Fv
/* 805B67D4  38 81 01 7C */	addi r4, r1, 0x17c
/* 805B67D8  38 A0 80 00 */	li r5, -32768
/* 805B67DC  38 C0 00 00 */	li r6, 0
/* 805B67E0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805B67E4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805B67E8  7D 89 03 A6 */	mtctr r12
/* 805B67EC  4E 80 04 21 */	bctrl 
lbl_805B67F0:
/* 805B67F0  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B67F4  2C 00 00 96 */	cmpwi r0, 0x96
/* 805B67F8  40 82 00 14 */	bne lbl_805B680C
/* 805B67FC  3C 60 80 5B */	lis r3, s_bi_del_sub__FPvPv@ha /* 0x805B3DAC@ha */
/* 805B6800  38 63 3D AC */	addi r3, r3, s_bi_del_sub__FPvPv@l /* 0x805B3DAC@l */
/* 805B6804  7F E4 FB 78 */	mr r4, r31
/* 805B6808  4B A6 AB 31 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_805B680C:
/* 805B680C  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6810  2C 00 01 0E */	cmpwi r0, 0x10e
/* 805B6814  40 82 00 0C */	bne lbl_805B6820
/* 805B6818  38 00 00 14 */	li r0, 0x14
/* 805B681C  98 1F 13 94 */	stb r0, 0x1394(r31)
lbl_805B6820:
/* 805B6820  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B6824  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805B6828  48 00 39 49 */	bl __as__4cXyzFRC4cXyz
/* 805B682C  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B6830  38 9F 12 58 */	addi r4, r31, 0x1258
/* 805B6834  48 00 3D 0D */	bl __apl__4cXyzFRC3Vec
/* 805B6838  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B683C  2C 00 01 40 */	cmpwi r0, 0x140
/* 805B6840  41 80 00 18 */	blt lbl_805B6858
/* 805B6844  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B6848  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 805B684C  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B6850  C0 7E 00 98 */	lfs f3, 0x98(r30)
/* 805B6854  4B CB 91 E9 */	bl cLib_addCalc2__FPffff
lbl_805B6858:
/* 805B6858  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B685C  2C 00 00 50 */	cmpwi r0, 0x50
/* 805B6860  41 80 00 A0 */	blt lbl_805B6900
/* 805B6864  38 7F 12 58 */	addi r3, r31, 0x1258
/* 805B6868  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 805B686C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805B6870  C0 7E 00 A0 */	lfs f3, 0xa0(r30)
/* 805B6874  C0 1F 12 A0 */	lfs f0, 0x12a0(r31)
/* 805B6878  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B687C  4B CB 91 C1 */	bl cLib_addCalc2__FPffff
/* 805B6880  38 7F 12 5C */	addi r3, r31, 0x125c
/* 805B6884  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 805B6888  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805B688C  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 805B6890  C0 1F 12 A0 */	lfs f0, 0x12a0(r31)
/* 805B6894  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B6898  4B CB 91 A5 */	bl cLib_addCalc2__FPffff
/* 805B689C  38 7F 12 A0 */	addi r3, r31, 0x12a0
/* 805B68A0  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 805B68A4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B68A8  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 805B68AC  4B CB 91 91 */	bl cLib_addCalc2__FPffff
/* 805B68B0  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B68B4  2C 00 00 C3 */	cmpwi r0, 0xc3
/* 805B68B8  41 80 00 20 */	blt lbl_805B68D8
/* 805B68BC  38 7F 12 50 */	addi r3, r31, 0x1250
/* 805B68C0  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 805B68C4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805B68C8  EC 21 00 2A */	fadds f1, f1, f0
/* 805B68CC  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B68D0  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 805B68D4  4B CB 91 69 */	bl cLib_addCalc2__FPffff
lbl_805B68D8:
/* 805B68D8  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B68DC  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 805B68E0  40 81 00 18 */	ble lbl_805B68F8
/* 805B68E4  2C 00 01 18 */	cmpwi r0, 0x118
/* 805B68E8  40 80 00 10 */	bge lbl_805B68F8
/* 805B68EC  38 00 00 B4 */	li r0, 0xb4
/* 805B68F0  B0 1F 12 AE */	sth r0, 0x12ae(r31)
/* 805B68F4  48 00 00 0C */	b lbl_805B6900
lbl_805B68F8:
/* 805B68F8  38 00 00 00 */	li r0, 0
/* 805B68FC  B0 1F 12 AE */	sth r0, 0x12ae(r31)
lbl_805B6900:
/* 805B6900  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6904  2C 00 00 14 */	cmpwi r0, 0x14
/* 805B6908  41 80 02 5C */	blt lbl_805B6B64
/* 805B690C  40 82 00 38 */	bne lbl_805B6944
/* 805B6910  38 61 01 1C */	addi r3, r1, 0x11c
/* 805B6914  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B6918  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B691C  FC 60 08 90 */	fmr f3, f1
/* 805B6920  48 00 3C 11 */	bl __ct__4cXyzFfff
/* 805B6924  48 00 3B FD */	bl dComIfGp_getVibration__Fv
/* 805B6928  38 80 00 02 */	li r4, 2
/* 805B692C  38 A0 00 01 */	li r5, 1
/* 805B6930  38 C1 01 1C */	addi r6, r1, 0x11c
/* 805B6934  4B AB 91 DD */	bl StartQuake__12dVibration_cFii4cXyz
/* 805B6938  38 61 01 1C */	addi r3, r1, 0x11c
/* 805B693C  38 80 FF FF */	li r4, -1
/* 805B6940  4B FF D2 E1 */	bl __dt__4cXyzFv
lbl_805B6944:
/* 805B6944  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6948  2C 00 00 BE */	cmpwi r0, 0xbe
/* 805B694C  40 80 00 2C */	bge lbl_805B6978
/* 805B6950  3C 60 80 5B */	lis r3, s_fw_sub1__FPvPv@ha /* 0x805B3B0C@ha */
/* 805B6954  38 63 3B 0C */	addi r3, r3, s_fw_sub1__FPvPv@l /* 0x805B3B0C@l */
/* 805B6958  7F E4 FB 78 */	mr r4, r31
/* 805B695C  4B A6 A9 DD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 805B6960  38 7F 12 A8 */	addi r3, r31, 0x12a8
/* 805B6964  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805B6968  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B696C  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 805B6970  4B CB 90 CD */	bl cLib_addCalc2__FPffff
/* 805B6974  48 00 00 94 */	b lbl_805B6A08
lbl_805B6978:
/* 805B6978  40 82 00 90 */	bne lbl_805B6A08
/* 805B697C  48 00 3B A5 */	bl dComIfGp_getVibration__Fv
/* 805B6980  38 80 00 1F */	li r4, 0x1f
/* 805B6984  4B AB 94 11 */	bl StopQuake__12dVibration_cFi
/* 805B6988  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805B698C  D0 1F 12 A8 */	stfs f0, 0x12a8(r31)
/* 805B6990  38 61 01 10 */	addi r3, r1, 0x110
/* 805B6994  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B6998  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B699C  FC 60 08 90 */	fmr f3, f1
/* 805B69A0  48 00 3B 91 */	bl __ct__4cXyzFfff
/* 805B69A4  48 00 3B 7D */	bl dComIfGp_getVibration__Fv
/* 805B69A8  38 80 00 08 */	li r4, 8
/* 805B69AC  38 A0 00 01 */	li r5, 1
/* 805B69B0  38 C1 01 10 */	addi r6, r1, 0x110
/* 805B69B4  4B AB 91 5D */	bl StartQuake__12dVibration_cFii4cXyz
/* 805B69B8  38 61 01 10 */	addi r3, r1, 0x110
/* 805B69BC  38 80 FF FF */	li r4, -1
/* 805B69C0  4B FF D2 61 */	bl __dt__4cXyzFv
/* 805B69C4  38 00 00 00 */	li r0, 0
/* 805B69C8  3C 60 80 5C */	lis r3, data_805BAD70@ha /* 0x805BAD70@ha */
/* 805B69CC  98 03 AD 70 */	stb r0, data_805BAD70@l(r3)  /* 0x805BAD70@l */
/* 805B69D0  3C 60 80 5B */	lis r3, s_fw_sub2__FPvPv@ha /* 0x805B3C5C@ha */
/* 805B69D4  38 63 3C 5C */	addi r3, r3, s_fw_sub2__FPvPv@l /* 0x805B3C5C@l */
/* 805B69D8  7F E4 FB 78 */	mr r4, r31
/* 805B69DC  4B A6 A9 5D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 805B69E0  38 00 00 04 */	li r0, 4
/* 805B69E4  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 805B69E8  48 00 37 CD */	bl daPy_getPlayerActorClass__Fv
/* 805B69EC  38 80 00 17 */	li r4, 0x17
/* 805B69F0  38 A0 00 01 */	li r5, 1
/* 805B69F4  38 C0 00 02 */	li r6, 2
/* 805B69F8  38 E0 00 00 */	li r7, 0
/* 805B69FC  48 00 37 91 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805B6A00  38 00 00 03 */	li r0, 3
/* 805B6A04  98 1F 06 ED */	stb r0, 0x6ed(r31)
lbl_805B6A08:
/* 805B6A08  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6A0C  2C 00 00 D2 */	cmpwi r0, 0xd2
/* 805B6A10  40 82 00 38 */	bne lbl_805B6A48
/* 805B6A14  38 61 01 04 */	addi r3, r1, 0x104
/* 805B6A18  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B6A1C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B6A20  FC 60 08 90 */	fmr f3, f1
/* 805B6A24  48 00 3B 0D */	bl __ct__4cXyzFfff
/* 805B6A28  48 00 3A F9 */	bl dComIfGp_getVibration__Fv
/* 805B6A2C  38 80 00 06 */	li r4, 6
/* 805B6A30  38 A0 00 01 */	li r5, 1
/* 805B6A34  38 C1 01 04 */	addi r6, r1, 0x104
/* 805B6A38  4B AB 90 D9 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805B6A3C  38 61 01 04 */	addi r3, r1, 0x104
/* 805B6A40  38 80 FF FF */	li r4, -1
/* 805B6A44  4B FF D1 DD */	bl __dt__4cXyzFv
lbl_805B6A48:
/* 805B6A48  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6A4C  2C 00 00 E6 */	cmpwi r0, 0xe6
/* 805B6A50  40 82 00 38 */	bne lbl_805B6A88
/* 805B6A54  38 61 00 F8 */	addi r3, r1, 0xf8
/* 805B6A58  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B6A5C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B6A60  FC 60 08 90 */	fmr f3, f1
/* 805B6A64  48 00 3A CD */	bl __ct__4cXyzFfff
/* 805B6A68  48 00 3A B9 */	bl dComIfGp_getVibration__Fv
/* 805B6A6C  38 80 00 04 */	li r4, 4
/* 805B6A70  38 A0 00 01 */	li r5, 1
/* 805B6A74  38 C1 00 F8 */	addi r6, r1, 0xf8
/* 805B6A78  4B AB 90 99 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805B6A7C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 805B6A80  38 80 FF FF */	li r4, -1
/* 805B6A84  4B FF D1 9D */	bl __dt__4cXyzFv
lbl_805B6A88:
/* 805B6A88  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6A8C  2C 00 00 FA */	cmpwi r0, 0xfa
/* 805B6A90  40 82 00 38 */	bne lbl_805B6AC8
/* 805B6A94  38 61 00 EC */	addi r3, r1, 0xec
/* 805B6A98  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B6A9C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B6AA0  FC 60 08 90 */	fmr f3, f1
/* 805B6AA4  48 00 3A 8D */	bl __ct__4cXyzFfff
/* 805B6AA8  48 00 3A 79 */	bl dComIfGp_getVibration__Fv
/* 805B6AAC  38 80 00 02 */	li r4, 2
/* 805B6AB0  38 A0 00 01 */	li r5, 1
/* 805B6AB4  38 C1 00 EC */	addi r6, r1, 0xec
/* 805B6AB8  4B AB 90 59 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805B6ABC  38 61 00 EC */	addi r3, r1, 0xec
/* 805B6AC0  38 80 FF FF */	li r4, -1
/* 805B6AC4  4B FF D1 5D */	bl __dt__4cXyzFv
lbl_805B6AC8:
/* 805B6AC8  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6ACC  2C 00 01 04 */	cmpwi r0, 0x104
/* 805B6AD0  40 82 00 10 */	bne lbl_805B6AE0
/* 805B6AD4  48 00 3A 4D */	bl dComIfGp_getVibration__Fv
/* 805B6AD8  38 80 00 1F */	li r4, 0x1f
/* 805B6ADC  4B AB 92 B9 */	bl StopQuake__12dVibration_cFi
lbl_805B6AE0:
/* 805B6AE0  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6AE4  2C 00 01 54 */	cmpwi r0, 0x154
/* 805B6AE8  40 82 00 38 */	bne lbl_805B6B20
/* 805B6AEC  38 61 00 E0 */	addi r3, r1, 0xe0
/* 805B6AF0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B6AF4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B6AF8  FC 60 08 90 */	fmr f3, f1
/* 805B6AFC  48 00 3A 35 */	bl __ct__4cXyzFfff
/* 805B6B00  48 00 3A 21 */	bl dComIfGp_getVibration__Fv
/* 805B6B04  38 80 00 03 */	li r4, 3
/* 805B6B08  38 A0 00 01 */	li r5, 1
/* 805B6B0C  38 C1 00 E0 */	addi r6, r1, 0xe0
/* 805B6B10  4B AB 90 01 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805B6B14  38 61 00 E0 */	addi r3, r1, 0xe0
/* 805B6B18  38 80 FF FF */	li r4, -1
/* 805B6B1C  4B FF D1 05 */	bl __dt__4cXyzFv
lbl_805B6B20:
/* 805B6B20  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6B24  2C 00 01 86 */	cmpwi r0, 0x186
/* 805B6B28  40 82 00 10 */	bne lbl_805B6B38
/* 805B6B2C  48 00 39 F5 */	bl dComIfGp_getVibration__Fv
/* 805B6B30  38 80 00 1F */	li r4, 0x1f
/* 805B6B34  4B AB 92 61 */	bl StopQuake__12dVibration_cFi
lbl_805B6B38:
/* 805B6B38  38 7F 12 A4 */	addi r3, r31, 0x12a4
/* 805B6B3C  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 805B6B40  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805B6B44  C0 7F 12 9C */	lfs f3, 0x129c(r31)
/* 805B6B48  4B CB 8E F5 */	bl cLib_addCalc2__FPffff
/* 805B6B4C  38 7F 12 9C */	addi r3, r31, 0x129c
/* 805B6B50  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805B6B54  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B6B58  C0 7E 00 C0 */	lfs f3, 0xc0(r30)
/* 805B6B5C  4B CB 8E E1 */	bl cLib_addCalc2__FPffff
/* 805B6B60  48 00 00 14 */	b lbl_805B6B74
lbl_805B6B64:
/* 805B6B64  3C 60 80 5B */	lis r3, s_fw_sub0__FPvPv@ha /* 0x805B3ABC@ha */
/* 805B6B68  38 63 3A BC */	addi r3, r3, s_fw_sub0__FPvPv@l /* 0x805B3ABC@l */
/* 805B6B6C  7F E4 FB 78 */	mr r4, r31
/* 805B6B70  4B A6 A7 C9 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_805B6B74:
/* 805B6B74  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6B78  2C 00 01 54 */	cmpwi r0, 0x154
/* 805B6B7C  40 82 00 1C */	bne lbl_805B6B98
/* 805B6B80  7F 23 CB 78 */	mr r3, r25
/* 805B6B84  38 80 00 22 */	li r4, 0x22
/* 805B6B88  38 A0 00 00 */	li r5, 0
/* 805B6B8C  38 C0 00 00 */	li r6, 0
/* 805B6B90  38 E0 00 00 */	li r7, 0
/* 805B6B94  48 00 35 F9 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805B6B98:
/* 805B6B98  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6B9C  2C 00 01 AE */	cmpwi r0, 0x1ae
/* 805B6BA0  40 82 1B 84 */	bne lbl_805B8724
/* 805B6BA4  38 00 00 64 */	li r0, 0x64
/* 805B6BA8  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B6BAC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B6BB0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B6BB4  80 63 00 00 */	lwz r3, 0(r3)
/* 805B6BB8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805B6BBC  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100000E@ha */
/* 805B6BC0  38 84 00 0E */	addi r4, r4, 0x000E /* 0x0100000E@l */
/* 805B6BC4  38 A0 00 00 */	li r5, 0
/* 805B6BC8  38 C0 00 00 */	li r6, 0
/* 805B6BCC  4B CF 84 45 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 805B6BD0  38 00 00 03 */	li r0, 3
/* 805B6BD4  98 1F 13 92 */	stb r0, 0x1392(r31)
/* 805B6BD8  48 00 1B 4C */	b lbl_805B8724
lbl_805B6BDC:
/* 805B6BDC  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805B6BE0  48 00 35 F5 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 805B6BE4  2C 03 00 00 */	cmpwi r3, 0
/* 805B6BE8  40 82 00 5C */	bne lbl_805B6C44
/* 805B6BEC  7F E3 FB 78 */	mr r3, r31
/* 805B6BF0  38 80 00 02 */	li r4, 2
/* 805B6BF4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805B6BF8  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805B6BFC  38 C0 00 00 */	li r6, 0
/* 805B6C00  4B A6 4D 09 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805B6C04  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805B6C08  38 80 00 02 */	li r4, 2
/* 805B6C0C  48 00 35 B9 */	bl onCondition__11dEvt_info_cFUs
/* 805B6C10  38 61 01 64 */	addi r3, r1, 0x164
/* 805B6C14  38 80 FF FF */	li r4, -1
/* 805B6C18  4B FF D0 09 */	bl __dt__4cXyzFv
/* 805B6C1C  38 61 01 70 */	addi r3, r1, 0x170
/* 805B6C20  38 80 FF FF */	li r4, -1
/* 805B6C24  4B FF CF FD */	bl __dt__4cXyzFv
/* 805B6C28  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B6C2C  38 80 FF FF */	li r4, -1
/* 805B6C30  4B FF CF F1 */	bl __dt__4cXyzFv
/* 805B6C34  38 61 01 88 */	addi r3, r1, 0x188
/* 805B6C38  38 80 FF FF */	li r4, -1
/* 805B6C3C  4B FF CF E5 */	bl __dt__4cXyzFv
/* 805B6C40  48 00 1D A4 */	b lbl_805B89E4
lbl_805B6C44:
/* 805B6C44  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B6C48  4B BA A8 89 */	bl Stop__9dCamera_cFv
/* 805B6C4C  38 00 00 0B */	li r0, 0xb
/* 805B6C50  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B6C54  38 00 00 00 */	li r0, 0
/* 805B6C58  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B6C5C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805B6C60  D0 1F 12 A4 */	stfs f0, 0x12a4(r31)
/* 805B6C64  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B6C68  38 80 00 03 */	li r4, 3
/* 805B6C6C  4B BA C3 A1 */	bl SetTrimSize__9dCamera_cFl
/* 805B6C70  48 00 35 45 */	bl daPy_getPlayerActorClass__Fv
/* 805B6C74  48 00 35 2D */	bl changeOriginalDemo__9daPy_py_cFv
/* 805B6C78  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B6C7C  38 9A 00 D8 */	addi r4, r26, 0xd8
/* 805B6C80  48 00 34 F1 */	bl __as__4cXyzFRC4cXyz
/* 805B6C84  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B6C88  38 9A 00 E4 */	addi r4, r26, 0xe4
/* 805B6C8C  48 00 34 E5 */	bl __as__4cXyzFRC4cXyz
/* 805B6C90  48 00 38 81 */	bl dComIfGp_getEvent__Fv
/* 805B6C94  7F E4 FB 78 */	mr r4, r31
/* 805B6C98  48 00 38 4D */	bl startCheckSkipEdge__14dEvt_control_cFPv
lbl_805B6C9C:
/* 805B6C9C  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6CA0  2C 00 00 08 */	cmpwi r0, 8
/* 805B6CA4  40 82 00 1C */	bne lbl_805B6CC0
/* 805B6CA8  48 00 35 0D */	bl daPy_getPlayerActorClass__Fv
/* 805B6CAC  38 80 00 19 */	li r4, 0x19
/* 805B6CB0  38 A0 00 00 */	li r5, 0
/* 805B6CB4  38 C0 00 00 */	li r6, 0
/* 805B6CB8  38 E0 00 00 */	li r7, 0
/* 805B6CBC  48 00 34 D1 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805B6CC0:
/* 805B6CC0  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6CC4  2C 00 00 32 */	cmpwi r0, 0x32
/* 805B6CC8  41 80 1A 5C */	blt lbl_805B8724
/* 805B6CCC  40 82 00 A4 */	bne lbl_805B6D70
/* 805B6CD0  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 805B6CD4  D0 1F 12 A4 */	stfs f0, 0x12a4(r31)
/* 805B6CD8  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B6CDC  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 805B6CE0  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 805B6CE4  C0 7E 00 CC */	lfs f3, 0xcc(r30)
/* 805B6CE8  48 00 34 79 */	bl set__4cXyzFfff
/* 805B6CEC  38 7F 12 64 */	addi r3, r31, 0x1264
/* 805B6CF0  38 9F 12 4C */	addi r4, r31, 0x124c
/* 805B6CF4  48 00 34 7D */	bl __as__4cXyzFRC4cXyz
/* 805B6CF8  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B6CFC  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 805B6D00  C0 5E 00 D4 */	lfs f2, 0xd4(r30)
/* 805B6D04  C0 7E 00 D8 */	lfs f3, 0xd8(r30)
/* 805B6D08  48 00 34 59 */	bl set__4cXyzFfff
/* 805B6D0C  38 7F 12 70 */	addi r3, r31, 0x1270
/* 805B6D10  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 805B6D14  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 805B6D18  C0 7E 00 E0 */	lfs f3, 0xe0(r30)
/* 805B6D1C  48 00 34 45 */	bl set__4cXyzFfff
/* 805B6D20  38 7F 12 58 */	addi r3, r31, 0x1258
/* 805B6D24  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 805B6D28  C0 5E 00 D4 */	lfs f2, 0xd4(r30)
/* 805B6D2C  C0 7E 00 D8 */	lfs f3, 0xd8(r30)
/* 805B6D30  48 00 34 31 */	bl set__4cXyzFfff
/* 805B6D34  C0 3F 12 70 */	lfs f1, 0x1270(r31)
/* 805B6D38  C0 1F 12 4C */	lfs f0, 0x124c(r31)
/* 805B6D3C  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B6D40  48 00 37 99 */	bl fabsf__3stdFf
/* 805B6D44  D0 3F 12 88 */	stfs f1, 0x1288(r31)
/* 805B6D48  C0 3F 12 74 */	lfs f1, 0x1274(r31)
/* 805B6D4C  C0 1F 12 50 */	lfs f0, 0x1250(r31)
/* 805B6D50  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B6D54  48 00 37 85 */	bl fabsf__3stdFf
/* 805B6D58  D0 3F 12 8C */	stfs f1, 0x128c(r31)
/* 805B6D5C  C0 3F 12 78 */	lfs f1, 0x1278(r31)
/* 805B6D60  C0 1F 12 54 */	lfs f0, 0x1254(r31)
/* 805B6D64  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B6D68  48 00 37 71 */	bl fabsf__3stdFf
/* 805B6D6C  D0 3F 12 90 */	stfs f1, 0x1290(r31)
lbl_805B6D70:
/* 805B6D70  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B6D74  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B6D78  FC 40 08 90 */	fmr f2, f1
/* 805B6D7C  C0 7E 00 E4 */	lfs f3, 0xe4(r30)
/* 805B6D80  48 00 33 E1 */	bl set__4cXyzFfff
/* 805B6D84  48 00 34 31 */	bl daPy_getPlayerActorClass__Fv
/* 805B6D88  38 81 01 7C */	addi r4, r1, 0x17c
/* 805B6D8C  38 A0 80 00 */	li r5, -32768
/* 805B6D90  38 C0 00 00 */	li r6, 0
/* 805B6D94  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805B6D98  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805B6D9C  7D 89 03 A6 */	mtctr r12
/* 805B6DA0  4E 80 04 21 */	bctrl 
/* 805B6DA4  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6DA8  2C 00 00 46 */	cmpwi r0, 0x46
/* 805B6DAC  40 81 00 B0 */	ble lbl_805B6E5C
/* 805B6DB0  7F E3 FB 78 */	mr r3, r31
/* 805B6DB4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805B6DB8  4B FF F4 AD */	bl cam_3d_morf__FP10b_bq_classf
/* 805B6DBC  38 7F 12 9C */	addi r3, r31, 0x129c
/* 805B6DC0  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 805B6DC4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B6DC8  C0 7E 00 E8 */	lfs f3, 0xe8(r30)
/* 805B6DCC  4B CB 8C 71 */	bl cLib_addCalc2__FPffff
/* 805B6DD0  38 61 00 D4 */	addi r3, r1, 0xd4
/* 805B6DD4  38 9F 12 70 */	addi r4, r31, 0x1270
/* 805B6DD8  38 BF 12 64 */	addi r5, r31, 0x1264
/* 805B6DDC  4B CA FD 59 */	bl __mi__4cXyzCFRC3Vec
/* 805B6DE0  38 61 01 88 */	addi r3, r1, 0x188
/* 805B6DE4  38 81 00 D4 */	addi r4, r1, 0xd4
/* 805B6DE8  48 00 33 89 */	bl __as__4cXyzFRC4cXyz
/* 805B6DEC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 805B6DF0  38 80 FF FF */	li r4, -1
/* 805B6DF4  4B FF CE 2D */	bl __dt__4cXyzFv
/* 805B6DF8  38 61 01 88 */	addi r3, r1, 0x188
/* 805B6DFC  48 00 35 C9 */	bl abs__4cXyzCFv
/* 805B6E00  FF E0 08 90 */	fmr f31, f1
/* 805B6E04  38 61 00 C8 */	addi r3, r1, 0xc8
/* 805B6E08  38 9F 12 70 */	addi r4, r31, 0x1270
/* 805B6E0C  38 BF 12 4C */	addi r5, r31, 0x124c
/* 805B6E10  4B CA FD 25 */	bl __mi__4cXyzCFRC3Vec
/* 805B6E14  38 61 01 88 */	addi r3, r1, 0x188
/* 805B6E18  38 81 00 C8 */	addi r4, r1, 0xc8
/* 805B6E1C  48 00 33 55 */	bl __as__4cXyzFRC4cXyz
/* 805B6E20  38 61 00 C8 */	addi r3, r1, 0xc8
/* 805B6E24  38 80 FF FF */	li r4, -1
/* 805B6E28  4B FF CD F9 */	bl __dt__4cXyzFv
/* 805B6E2C  38 61 01 88 */	addi r3, r1, 0x188
/* 805B6E30  48 00 35 95 */	bl abs__4cXyzCFv
/* 805B6E34  C0 5E 00 EC */	lfs f2, 0xec(r30)
/* 805B6E38  EC 01 F8 24 */	fdivs f0, f1, f31
/* 805B6E3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805B6E40  FC 00 00 1E */	fctiwz f0, f0
/* 805B6E44  D8 01 02 08 */	stfd f0, 0x208(r1)
/* 805B6E48  80 61 02 0C */	lwz r3, 0x20c(r1)
/* 805B6E4C  48 00 35 65 */	bl cM_ssin__Fs
/* 805B6E50  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805B6E54  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805B6E58  EF E0 00 72 */	fmuls f31, f0, f1
lbl_805B6E5C:
/* 805B6E5C  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6E60  2C 00 01 40 */	cmpwi r0, 0x140
/* 805B6E64  40 82 18 C0 */	bne lbl_805B8724
/* 805B6E68  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B6E6C  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 805B6E70  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 805B6E74  C0 7E 00 F8 */	lfs f3, 0xf8(r30)
/* 805B6E78  48 00 32 E9 */	bl set__4cXyzFfff
/* 805B6E7C  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B6E80  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 805B6E84  C0 5E 01 00 */	lfs f2, 0x100(r30)
/* 805B6E88  C0 7E 01 04 */	lfs f3, 0x104(r30)
/* 805B6E8C  48 00 32 D5 */	bl set__4cXyzFfff
/* 805B6E90  38 7F 12 70 */	addi r3, r31, 0x1270
/* 805B6E94  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 805B6E98  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 805B6E9C  C0 7E 01 10 */	lfs f3, 0x110(r30)
/* 805B6EA0  48 00 32 C1 */	bl set__4cXyzFfff
/* 805B6EA4  38 7F 12 58 */	addi r3, r31, 0x1258
/* 805B6EA8  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 805B6EAC  C0 5E 01 18 */	lfs f2, 0x118(r30)
/* 805B6EB0  C0 7E 01 1C */	lfs f3, 0x11c(r30)
/* 805B6EB4  48 00 32 AD */	bl set__4cXyzFfff
/* 805B6EB8  C0 3F 12 58 */	lfs f1, 0x1258(r31)
/* 805B6EBC  C0 1F 12 40 */	lfs f0, 0x1240(r31)
/* 805B6EC0  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B6EC4  48 00 36 15 */	bl fabsf__3stdFf
/* 805B6EC8  D0 3F 12 7C */	stfs f1, 0x127c(r31)
/* 805B6ECC  C0 3F 12 5C */	lfs f1, 0x125c(r31)
/* 805B6ED0  C0 1F 12 44 */	lfs f0, 0x1244(r31)
/* 805B6ED4  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B6ED8  48 00 36 01 */	bl fabsf__3stdFf
/* 805B6EDC  D0 3F 12 80 */	stfs f1, 0x1280(r31)
/* 805B6EE0  C0 3F 12 60 */	lfs f1, 0x1260(r31)
/* 805B6EE4  C0 1F 12 48 */	lfs f0, 0x1248(r31)
/* 805B6EE8  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B6EEC  48 00 35 ED */	bl fabsf__3stdFf
/* 805B6EF0  D0 3F 12 84 */	stfs f1, 0x1284(r31)
/* 805B6EF4  C0 3F 12 70 */	lfs f1, 0x1270(r31)
/* 805B6EF8  C0 1F 12 4C */	lfs f0, 0x124c(r31)
/* 805B6EFC  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B6F00  48 00 35 D9 */	bl fabsf__3stdFf
/* 805B6F04  D0 3F 12 88 */	stfs f1, 0x1288(r31)
/* 805B6F08  C0 3F 12 74 */	lfs f1, 0x1274(r31)
/* 805B6F0C  C0 1F 12 50 */	lfs f0, 0x1250(r31)
/* 805B6F10  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B6F14  48 00 35 C5 */	bl fabsf__3stdFf
/* 805B6F18  D0 3F 12 8C */	stfs f1, 0x128c(r31)
/* 805B6F1C  C0 3F 12 78 */	lfs f1, 0x1278(r31)
/* 805B6F20  C0 1F 12 54 */	lfs f0, 0x1254(r31)
/* 805B6F24  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B6F28  48 00 35 B1 */	bl fabsf__3stdFf
/* 805B6F2C  D0 3F 12 90 */	stfs f1, 0x1290(r31)
/* 805B6F30  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B6F34  D0 1F 12 9C */	stfs f0, 0x129c(r31)
/* 805B6F38  38 00 00 0C */	li r0, 0xc
/* 805B6F3C  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B6F40  38 00 00 00 */	li r0, 0
/* 805B6F44  B0 1F 12 3A */	sth r0, 0x123a(r31)
lbl_805B6F48:
/* 805B6F48  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6F4C  2C 00 01 04 */	cmpwi r0, 0x104
/* 805B6F50  40 82 00 0C */	bne lbl_805B6F5C
/* 805B6F54  38 00 00 02 */	li r0, 2
/* 805B6F58  98 1F 06 F9 */	stb r0, 0x6f9(r31)
lbl_805B6F5C:
/* 805B6F5C  7F E3 FB 78 */	mr r3, r31
/* 805B6F60  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805B6F64  4B FF F3 01 */	bl cam_3d_morf__FP10b_bq_classf
/* 805B6F68  38 7F 12 9C */	addi r3, r31, 0x129c
/* 805B6F6C  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 805B6F70  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B6F74  C0 7E 00 E8 */	lfs f3, 0xe8(r30)
/* 805B6F78  4B CB 8A C5 */	bl cLib_addCalc2__FPffff
/* 805B6F7C  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B6F80  2C 00 01 54 */	cmpwi r0, 0x154
/* 805B6F84  40 82 17 A0 */	bne lbl_805B8724
/* 805B6F88  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B6F8C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805B6F90  48 00 31 E1 */	bl __as__4cXyzFRC4cXyz
/* 805B6F94  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B6F98  D0 1F 12 50 */	stfs f0, 0x1250(r31)
/* 805B6F9C  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B6FA0  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 805B6FA4  C0 5E 01 24 */	lfs f2, 0x124(r30)
/* 805B6FA8  C0 7E 01 28 */	lfs f3, 0x128(r30)
/* 805B6FAC  48 00 31 B5 */	bl set__4cXyzFfff
/* 805B6FB0  38 00 00 0D */	li r0, 0xd
/* 805B6FB4  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B6FB8  38 00 00 00 */	li r0, 0
/* 805B6FBC  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B6FC0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B6FC4  D0 1F 12 9C */	stfs f0, 0x129c(r31)
/* 805B6FC8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070141@ha */
/* 805B6FCC  38 63 01 41 */	addi r3, r3, 0x0141 /* 0x00070141@l */
/* 805B6FD0  38 80 00 00 */	li r4, 0
/* 805B6FD4  38 A0 00 00 */	li r5, 0
/* 805B6FD8  38 C0 00 00 */	li r6, 0
/* 805B6FDC  48 00 33 71 */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 805B6FE0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B6FE4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B6FE8  80 63 00 00 */	lwz r3, 0(r3)
/* 805B6FEC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805B6FF0  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100000C@ha */
/* 805B6FF4  38 84 00 0C */	addi r4, r4, 0x000C /* 0x0100000C@l */
/* 805B6FF8  4B CF 84 A5 */	bl subBgmStart__8Z2SeqMgrFUl
/* 805B6FFC  48 00 17 28 */	b lbl_805B8724
lbl_805B7000:
/* 805B7000  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7004  2C 00 00 02 */	cmpwi r0, 2
/* 805B7008  40 82 00 38 */	bne lbl_805B7040
/* 805B700C  38 61 00 BC */	addi r3, r1, 0xbc
/* 805B7010  FC 20 F8 90 */	fmr f1, f31
/* 805B7014  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B7018  FC 60 F8 90 */	fmr f3, f31
/* 805B701C  48 00 35 15 */	bl __ct__4cXyzFfff
/* 805B7020  48 00 35 01 */	bl dComIfGp_getVibration__Fv
/* 805B7024  38 80 00 01 */	li r4, 1
/* 805B7028  38 A0 00 01 */	li r5, 1
/* 805B702C  38 C1 00 BC */	addi r6, r1, 0xbc
/* 805B7030  4B AB 8A E1 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805B7034  38 61 00 BC */	addi r3, r1, 0xbc
/* 805B7038  38 80 FF FF */	li r4, -1
/* 805B703C  4B FF CB E5 */	bl __dt__4cXyzFv
lbl_805B7040:
/* 805B7040  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7044  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805B7048  40 82 00 38 */	bne lbl_805B7080
/* 805B704C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805B7050  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B7054  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B7058  FC 60 08 90 */	fmr f3, f1
/* 805B705C  48 00 34 D5 */	bl __ct__4cXyzFfff
/* 805B7060  48 00 34 C1 */	bl dComIfGp_getVibration__Fv
/* 805B7064  38 80 00 01 */	li r4, 1
/* 805B7068  38 A0 00 01 */	li r5, 1
/* 805B706C  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 805B7070  4B AB 8A A1 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805B7074  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805B7078  38 80 FF FF */	li r4, -1
/* 805B707C  4B FF CB A5 */	bl __dt__4cXyzFv
lbl_805B7080:
/* 805B7080  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7084  2C 00 00 3C */	cmpwi r0, 0x3c
/* 805B7088  40 82 00 38 */	bne lbl_805B70C0
/* 805B708C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 805B7090  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B7094  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B7098  FC 60 08 90 */	fmr f3, f1
/* 805B709C  48 00 34 95 */	bl __ct__4cXyzFfff
/* 805B70A0  48 00 34 81 */	bl dComIfGp_getVibration__Fv
/* 805B70A4  38 80 00 02 */	li r4, 2
/* 805B70A8  38 A0 00 01 */	li r5, 1
/* 805B70AC  38 C1 00 A4 */	addi r6, r1, 0xa4
/* 805B70B0  4B AB 8A 61 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805B70B4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 805B70B8  38 80 FF FF */	li r4, -1
/* 805B70BC  4B FF CB 65 */	bl __dt__4cXyzFv
lbl_805B70C0:
/* 805B70C0  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B70C4  2C 00 00 6F */	cmpwi r0, 0x6f
/* 805B70C8  40 82 00 10 */	bne lbl_805B70D8
/* 805B70CC  48 00 34 55 */	bl dComIfGp_getVibration__Fv
/* 805B70D0  38 80 00 1F */	li r4, 0x1f
/* 805B70D4  4B AB 8C C1 */	bl StopQuake__12dVibration_cFi
lbl_805B70D8:
/* 805B70D8  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B70DC  2C 00 00 71 */	cmpwi r0, 0x71
/* 805B70E0  40 82 00 38 */	bne lbl_805B7118
/* 805B70E4  38 61 00 98 */	addi r3, r1, 0x98
/* 805B70E8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B70EC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B70F0  FC 60 08 90 */	fmr f3, f1
/* 805B70F4  48 00 34 3D */	bl __ct__4cXyzFfff
/* 805B70F8  48 00 34 29 */	bl dComIfGp_getVibration__Fv
/* 805B70FC  38 80 00 06 */	li r4, 6
/* 805B7100  38 A0 00 01 */	li r5, 1
/* 805B7104  38 C1 00 98 */	addi r6, r1, 0x98
/* 805B7108  4B AB 8A 09 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805B710C  38 61 00 98 */	addi r3, r1, 0x98
/* 805B7110  38 80 FF FF */	li r4, -1
/* 805B7114  4B FF CB 0D */	bl __dt__4cXyzFv
lbl_805B7118:
/* 805B7118  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B711C  2C 00 00 96 */	cmpwi r0, 0x96
/* 805B7120  40 82 00 10 */	bne lbl_805B7130
/* 805B7124  48 00 33 FD */	bl dComIfGp_getVibration__Fv
/* 805B7128  38 80 00 1F */	li r4, 0x1f
/* 805B712C  4B AB 8C 69 */	bl StopQuake__12dVibration_cFi
lbl_805B7130:
/* 805B7130  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7134  2C 00 00 64 */	cmpwi r0, 0x64
/* 805B7138  40 82 00 0C */	bne lbl_805B7144
/* 805B713C  38 00 00 02 */	li r0, 2
/* 805B7140  98 1F 06 F9 */	stb r0, 0x6f9(r31)
lbl_805B7144:
/* 805B7144  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7148  2C 00 00 35 */	cmpwi r0, 0x35
/* 805B714C  40 82 00 0C */	bne lbl_805B7158
/* 805B7150  38 00 00 0F */	li r0, 0xf
/* 805B7154  98 1F 06 ED */	stb r0, 0x6ed(r31)
lbl_805B7158:
/* 805B7158  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B715C  2C 00 00 6E */	cmpwi r0, 0x6e
/* 805B7160  41 80 00 D0 */	blt lbl_805B7230
/* 805B7164  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B7168  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 805B716C  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B7170  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 805B7174  4B CB 88 C9 */	bl cLib_addCalc2__FPffff
/* 805B7178  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 805B717C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805B7180  EC 21 00 2A */	fadds f1, f1, f0
/* 805B7184  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B7188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B718C  40 81 00 14 */	ble lbl_805B71A0
/* 805B7190  38 7F 12 50 */	addi r3, r31, 0x1250
/* 805B7194  C0 5E 01 2C */	lfs f2, 0x12c(r30)
/* 805B7198  C0 7E 01 30 */	lfs f3, 0x130(r30)
/* 805B719C  4B CB 88 A1 */	bl cLib_addCalc2__FPffff
lbl_805B71A0:
/* 805B71A0  38 7F 12 54 */	addi r3, r31, 0x1254
/* 805B71A4  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 805B71A8  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B71AC  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 805B71B0  4B CB 88 8D */	bl cLib_addCalc2__FPffff
/* 805B71B4  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B71B8  2C 00 00 71 */	cmpwi r0, 0x71
/* 805B71BC  40 82 00 14 */	bne lbl_805B71D0
/* 805B71C0  38 00 00 02 */	li r0, 2
/* 805B71C4  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 805B71C8  38 00 00 01 */	li r0, 1
/* 805B71CC  98 1F 06 ED */	stb r0, 0x6ed(r31)
lbl_805B71D0:
/* 805B71D0  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B71D4  2C 00 00 96 */	cmpwi r0, 0x96
/* 805B71D8  41 80 00 58 */	blt lbl_805B7230
/* 805B71DC  38 7F 12 44 */	addi r3, r31, 0x1244
/* 805B71E0  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 805B71E4  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B71E8  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 805B71EC  C0 1F 12 9C */	lfs f0, 0x129c(r31)
/* 805B71F0  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B71F4  4B CB 88 49 */	bl cLib_addCalc2__FPffff
/* 805B71F8  38 7F 12 9C */	addi r3, r31, 0x129c
/* 805B71FC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B7200  FC 40 08 90 */	fmr f2, f1
/* 805B7204  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 805B7208  4B CB 88 35 */	bl cLib_addCalc2__FPffff
/* 805B720C  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7210  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 805B7214  40 82 00 1C */	bne lbl_805B7230
/* 805B7218  48 00 2F 9D */	bl daPy_getPlayerActorClass__Fv
/* 805B721C  38 80 00 17 */	li r4, 0x17
/* 805B7220  38 A0 00 01 */	li r5, 1
/* 805B7224  38 C0 00 02 */	li r6, 2
/* 805B7228  38 E0 00 00 */	li r7, 0
/* 805B722C  48 00 2F 61 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805B7230:
/* 805B7230  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7234  2C 00 01 18 */	cmpwi r0, 0x118
/* 805B7238  40 82 14 EC */	bne lbl_805B8724
/* 805B723C  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B7240  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B7244  C0 5E 01 38 */	lfs f2, 0x138(r30)
/* 805B7248  C0 7E 01 3C */	lfs f3, 0x13c(r30)
/* 805B724C  48 00 2F 15 */	bl set__4cXyzFfff
/* 805B7250  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B7254  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B7258  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 805B725C  C0 7E 01 40 */	lfs f3, 0x140(r30)
/* 805B7260  48 00 2F 01 */	bl set__4cXyzFfff
/* 805B7264  38 7F 12 70 */	addi r3, r31, 0x1270
/* 805B7268  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B726C  C0 5E 01 44 */	lfs f2, 0x144(r30)
/* 805B7270  C0 7E 01 48 */	lfs f3, 0x148(r30)
/* 805B7274  48 00 2E ED */	bl set__4cXyzFfff
/* 805B7278  38 7F 12 58 */	addi r3, r31, 0x1258
/* 805B727C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B7280  C0 5E 01 4C */	lfs f2, 0x14c(r30)
/* 805B7284  C0 7E 01 50 */	lfs f3, 0x150(r30)
/* 805B7288  48 00 2E D9 */	bl set__4cXyzFfff
/* 805B728C  C0 3F 12 58 */	lfs f1, 0x1258(r31)
/* 805B7290  C0 1F 12 40 */	lfs f0, 0x1240(r31)
/* 805B7294  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B7298  48 00 32 41 */	bl fabsf__3stdFf
/* 805B729C  D0 3F 12 7C */	stfs f1, 0x127c(r31)
/* 805B72A0  C0 3F 12 5C */	lfs f1, 0x125c(r31)
/* 805B72A4  C0 1F 12 44 */	lfs f0, 0x1244(r31)
/* 805B72A8  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B72AC  48 00 32 2D */	bl fabsf__3stdFf
/* 805B72B0  D0 3F 12 80 */	stfs f1, 0x1280(r31)
/* 805B72B4  C0 3F 12 60 */	lfs f1, 0x1260(r31)
/* 805B72B8  C0 1F 12 48 */	lfs f0, 0x1248(r31)
/* 805B72BC  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B72C0  48 00 32 19 */	bl fabsf__3stdFf
/* 805B72C4  D0 3F 12 84 */	stfs f1, 0x1284(r31)
/* 805B72C8  C0 3F 12 70 */	lfs f1, 0x1270(r31)
/* 805B72CC  C0 1F 12 4C */	lfs f0, 0x124c(r31)
/* 805B72D0  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B72D4  48 00 32 05 */	bl fabsf__3stdFf
/* 805B72D8  D0 3F 12 88 */	stfs f1, 0x1288(r31)
/* 805B72DC  C0 3F 12 74 */	lfs f1, 0x1274(r31)
/* 805B72E0  C0 1F 12 50 */	lfs f0, 0x1250(r31)
/* 805B72E4  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B72E8  48 00 31 F1 */	bl fabsf__3stdFf
/* 805B72EC  D0 3F 12 8C */	stfs f1, 0x128c(r31)
/* 805B72F0  C0 3F 12 78 */	lfs f1, 0x1278(r31)
/* 805B72F4  C0 1F 12 54 */	lfs f0, 0x1254(r31)
/* 805B72F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B72FC  48 00 31 DD */	bl fabsf__3stdFf
/* 805B7300  D0 3F 12 90 */	stfs f1, 0x1290(r31)
/* 805B7304  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B7308  D0 1F 12 9C */	stfs f0, 0x129c(r31)
/* 805B730C  38 00 00 0E */	li r0, 0xe
/* 805B7310  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B7314  38 00 00 00 */	li r0, 0
/* 805B7318  B0 1F 12 3A */	sth r0, 0x123a(r31)
lbl_805B731C:
/* 805B731C  7F E3 FB 78 */	mr r3, r31
/* 805B7320  C0 3E 01 54 */	lfs f1, 0x154(r30)
/* 805B7324  4B FF EF 41 */	bl cam_3d_morf__FP10b_bq_classf
/* 805B7328  38 7F 12 9C */	addi r3, r31, 0x129c
/* 805B732C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805B7330  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B7334  C0 7E 01 58 */	lfs f3, 0x158(r30)
/* 805B7338  4B CB 87 05 */	bl cLib_addCalc2__FPffff
/* 805B733C  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7340  2C 00 00 14 */	cmpwi r0, 0x14
/* 805B7344  40 82 00 0C */	bne lbl_805B7350
/* 805B7348  38 60 04 7F */	li r3, 0x47f
/* 805B734C  4B A6 8C 79 */	bl fopMsgM_messageSetDemo__FUl
lbl_805B7350:
/* 805B7350  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7354  2C 00 00 82 */	cmpwi r0, 0x82
/* 805B7358  40 82 13 CC */	bne lbl_805B8724
/* 805B735C  38 00 00 64 */	li r0, 0x64
/* 805B7360  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B7364  38 00 00 02 */	li r0, 2
/* 805B7368  98 1F 06 F9 */	stb r0, 0x6f9(r31)
/* 805B736C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B7370  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B7374  80 63 00 00 */	lwz r3, 0(r3)
/* 805B7378  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805B737C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100000D@ha */
/* 805B7380  38 84 00 0D */	addi r4, r4, 0x000D /* 0x0100000D@l */
/* 805B7384  38 A0 00 00 */	li r5, 0
/* 805B7388  38 C0 00 00 */	li r6, 0
/* 805B738C  4B CF 7C 85 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 805B7390  38 00 00 02 */	li r0, 2
/* 805B7394  98 1F 13 92 */	stb r0, 0x1392(r31)
/* 805B7398  48 00 13 8C */	b lbl_805B8724
lbl_805B739C:
/* 805B739C  38 00 00 00 */	li r0, 0
/* 805B73A0  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B73A4  38 00 00 15 */	li r0, 0x15
/* 805B73A8  B0 1F 12 38 */	sth r0, 0x1238(r31)
lbl_805B73AC:
/* 805B73AC  A8 7F 12 3A */	lha r3, 0x123a(r31)
/* 805B73B0  38 03 00 01 */	addi r0, r3, 1
/* 805B73B4  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B73B8  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B73BC  2C 00 00 07 */	cmpwi r0, 7
/* 805B73C0  40 80 00 38 */	bge lbl_805B73F8
/* 805B73C4  38 61 01 64 */	addi r3, r1, 0x164
/* 805B73C8  38 80 FF FF */	li r4, -1
/* 805B73CC  4B FF C8 55 */	bl __dt__4cXyzFv
/* 805B73D0  38 61 01 70 */	addi r3, r1, 0x170
/* 805B73D4  38 80 FF FF */	li r4, -1
/* 805B73D8  4B FF C8 49 */	bl __dt__4cXyzFv
/* 805B73DC  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B73E0  38 80 FF FF */	li r4, -1
/* 805B73E4  4B FF C8 3D */	bl __dt__4cXyzFv
/* 805B73E8  38 61 01 88 */	addi r3, r1, 0x188
/* 805B73EC  38 80 FF FF */	li r4, -1
/* 805B73F0  4B FF C8 31 */	bl __dt__4cXyzFv
/* 805B73F4  48 00 15 F0 */	b lbl_805B89E4
lbl_805B73F8:
/* 805B73F8  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805B73FC  48 00 2D D9 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 805B7400  2C 03 00 00 */	cmpwi r3, 0
/* 805B7404  40 82 00 5C */	bne lbl_805B7460
/* 805B7408  7F E3 FB 78 */	mr r3, r31
/* 805B740C  38 80 00 02 */	li r4, 2
/* 805B7410  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805B7414  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805B7418  38 C0 00 00 */	li r6, 0
/* 805B741C  4B A6 44 ED */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805B7420  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805B7424  38 80 00 02 */	li r4, 2
/* 805B7428  48 00 2D 9D */	bl onCondition__11dEvt_info_cFUs
/* 805B742C  38 61 01 64 */	addi r3, r1, 0x164
/* 805B7430  38 80 FF FF */	li r4, -1
/* 805B7434  4B FF C7 ED */	bl __dt__4cXyzFv
/* 805B7438  38 61 01 70 */	addi r3, r1, 0x170
/* 805B743C  38 80 FF FF */	li r4, -1
/* 805B7440  4B FF C7 E1 */	bl __dt__4cXyzFv
/* 805B7444  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B7448  38 80 FF FF */	li r4, -1
/* 805B744C  4B FF C7 D5 */	bl __dt__4cXyzFv
/* 805B7450  38 61 01 88 */	addi r3, r1, 0x188
/* 805B7454  38 80 FF FF */	li r4, -1
/* 805B7458  4B FF C7 C9 */	bl __dt__4cXyzFv
/* 805B745C  48 00 15 88 */	b lbl_805B89E4
lbl_805B7460:
/* 805B7460  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B7464  4B BA A0 6D */	bl Stop__9dCamera_cFv
/* 805B7468  38 00 00 16 */	li r0, 0x16
/* 805B746C  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B7470  38 00 00 00 */	li r0, 0
/* 805B7474  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B7478  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 805B747C  D0 1F 12 A4 */	stfs f0, 0x12a4(r31)
/* 805B7480  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B7484  38 80 00 03 */	li r4, 3
/* 805B7488  4B BA BB 85 */	bl SetTrimSize__9dCamera_cFl
/* 805B748C  48 00 2D 29 */	bl daPy_getPlayerActorClass__Fv
/* 805B7490  48 00 2D 11 */	bl changeOriginalDemo__9daPy_py_cFv
/* 805B7494  38 60 00 05 */	li r3, 5
/* 805B7498  38 80 FF FF */	li r4, -1
/* 805B749C  4B A7 66 01 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_805B74A0:
/* 805B74A0  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B74A4  2C 00 00 00 */	cmpwi r0, 0
/* 805B74A8  40 82 00 48 */	bne lbl_805B74F0
/* 805B74AC  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 805B74B0  D0 1F 12 98 */	stfs f0, 0x1298(r31)
/* 805B74B4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805B74B8  D0 1F 12 40 */	stfs f0, 0x1240(r31)
/* 805B74BC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805B74C0  D0 1F 12 44 */	stfs f0, 0x1244(r31)
/* 805B74C4  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 805B74C8  C0 1F 12 98 */	lfs f0, 0x1298(r31)
/* 805B74CC  EC 01 00 2A */	fadds f0, f1, f0
/* 805B74D0  D0 1F 12 48 */	stfs f0, 0x1248(r31)
/* 805B74D4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805B74D8  D0 1F 12 4C */	stfs f0, 0x124c(r31)
/* 805B74DC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805B74E0  D0 1F 12 50 */	stfs f0, 0x1250(r31)
/* 805B74E4  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 805B74E8  D0 1F 12 54 */	stfs f0, 0x1254(r31)
/* 805B74EC  48 00 01 00 */	b lbl_805B75EC
lbl_805B74F0:
/* 805B74F0  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B74F4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805B74F8  48 00 2C 79 */	bl __as__4cXyzFRC4cXyz
/* 805B74FC  C0 21 01 84 */	lfs f1, 0x184(r1)
/* 805B7500  C0 1F 12 98 */	lfs f0, 0x1298(r31)
/* 805B7504  EC 01 00 2A */	fadds f0, f1, f0
/* 805B7508  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805B750C  38 7F 12 98 */	addi r3, r31, 0x1298
/* 805B7510  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805B7514  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805B7518  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 805B751C  4B CB 85 21 */	bl cLib_addCalc2__FPffff
/* 805B7520  C0 21 01 80 */	lfs f1, 0x180(r1)
/* 805B7524  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 805B7528  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B752C  40 80 00 18 */	bge lbl_805B7544
/* 805B7530  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B7534  38 9F 12 40 */	addi r4, r31, 0x1240
/* 805B7538  48 00 2C 39 */	bl __as__4cXyzFRC4cXyz
/* 805B753C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 805B7540  D0 01 01 80 */	stfs f0, 0x180(r1)
lbl_805B7544:
/* 805B7544  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B7548  C0 21 01 7C */	lfs f1, 0x17c(r1)
/* 805B754C  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B7550  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 805B7554  4B CB 84 E9 */	bl cLib_addCalc2__FPffff
/* 805B7558  38 7F 12 44 */	addi r3, r31, 0x1244
/* 805B755C  C0 21 01 80 */	lfs f1, 0x180(r1)
/* 805B7560  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B7564  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 805B7568  4B CB 84 D5 */	bl cLib_addCalc2__FPffff
/* 805B756C  38 7F 12 48 */	addi r3, r31, 0x1248
/* 805B7570  C0 21 01 84 */	lfs f1, 0x184(r1)
/* 805B7574  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B7578  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 805B757C  4B CB 84 C1 */	bl cLib_addCalc2__FPffff
/* 805B7580  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B7584  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805B7588  48 00 2B E9 */	bl __as__4cXyzFRC4cXyz
/* 805B758C  C0 21 01 80 */	lfs f1, 0x180(r1)
/* 805B7590  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B7594  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B7598  40 80 00 18 */	bge lbl_805B75B0
/* 805B759C  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B75A0  38 9F 12 4C */	addi r4, r31, 0x124c
/* 805B75A4  48 00 2B CD */	bl __as__4cXyzFRC4cXyz
/* 805B75A8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B75AC  D0 01 01 80 */	stfs f0, 0x180(r1)
lbl_805B75B0:
/* 805B75B0  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B75B4  C0 21 01 7C */	lfs f1, 0x17c(r1)
/* 805B75B8  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B75BC  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 805B75C0  4B CB 84 7D */	bl cLib_addCalc2__FPffff
/* 805B75C4  38 7F 12 50 */	addi r3, r31, 0x1250
/* 805B75C8  C0 21 01 80 */	lfs f1, 0x180(r1)
/* 805B75CC  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B75D0  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 805B75D4  4B CB 84 69 */	bl cLib_addCalc2__FPffff
/* 805B75D8  38 7F 12 54 */	addi r3, r31, 0x1254
/* 805B75DC  C0 21 01 84 */	lfs f1, 0x184(r1)
/* 805B75E0  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B75E4  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 805B75E8  4B CB 84 55 */	bl cLib_addCalc2__FPffff
lbl_805B75EC:
/* 805B75EC  3B 80 00 01 */	li r28, 1
/* 805B75F0  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B75F4  2C 00 00 E6 */	cmpwi r0, 0xe6
/* 805B75F8  40 82 11 2C */	bne lbl_805B8724
/* 805B75FC  38 00 00 64 */	li r0, 0x64
/* 805B7600  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B7604  48 00 11 20 */	b lbl_805B8724
lbl_805B7608:
/* 805B7608  38 78 00 F4 */	addi r3, r24, 0xf4
/* 805B760C  48 00 2B C9 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 805B7610  2C 03 00 00 */	cmpwi r3, 0
/* 805B7614  40 82 00 5C */	bne lbl_805B7670
/* 805B7618  7F 03 C3 78 */	mr r3, r24
/* 805B761C  38 80 00 02 */	li r4, 2
/* 805B7620  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805B7624  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805B7628  38 C0 00 00 */	li r6, 0
/* 805B762C  4B A6 42 DD */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805B7630  38 78 00 F4 */	addi r3, r24, 0xf4
/* 805B7634  38 80 00 02 */	li r4, 2
/* 805B7638  48 00 2B 8D */	bl onCondition__11dEvt_info_cFUs
/* 805B763C  38 61 01 64 */	addi r3, r1, 0x164
/* 805B7640  38 80 FF FF */	li r4, -1
/* 805B7644  4B FF C5 DD */	bl __dt__4cXyzFv
/* 805B7648  38 61 01 70 */	addi r3, r1, 0x170
/* 805B764C  38 80 FF FF */	li r4, -1
/* 805B7650  4B FF C5 D1 */	bl __dt__4cXyzFv
/* 805B7654  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B7658  38 80 FF FF */	li r4, -1
/* 805B765C  4B FF C5 C5 */	bl __dt__4cXyzFv
/* 805B7660  38 61 01 88 */	addi r3, r1, 0x188
/* 805B7664  38 80 FF FF */	li r4, -1
/* 805B7668  4B FF C5 B9 */	bl __dt__4cXyzFv
/* 805B766C  48 00 13 78 */	b lbl_805B89E4
lbl_805B7670:
/* 805B7670  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B7674  4B BA 9E 5D */	bl Stop__9dCamera_cFv
/* 805B7678  38 00 00 1F */	li r0, 0x1f
/* 805B767C  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B7680  38 00 00 00 */	li r0, 0
/* 805B7684  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B7688  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 805B768C  D0 1F 12 A4 */	stfs f0, 0x12a4(r31)
/* 805B7690  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B7694  38 80 00 03 */	li r4, 3
/* 805B7698  4B BA B9 75 */	bl SetTrimSize__9dCamera_cFl
/* 805B769C  48 00 2B 19 */	bl daPy_getPlayerActorClass__Fv
/* 805B76A0  48 00 2B 01 */	bl changeOriginalDemo__9daPy_py_cFv
/* 805B76A4  48 00 2B 11 */	bl daPy_getPlayerActorClass__Fv
/* 805B76A8  38 80 00 01 */	li r4, 1
/* 805B76AC  38 A0 00 01 */	li r5, 1
/* 805B76B0  38 C0 00 00 */	li r6, 0
/* 805B76B4  38 E0 00 00 */	li r7, 0
/* 805B76B8  48 00 2A D5 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805B76BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B76C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B76C4  80 63 00 00 */	lwz r3, 0(r3)
/* 805B76C8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805B76CC  38 80 00 01 */	li r4, 1
/* 805B76D0  4B CF 88 BD */	bl changeBgmStatus__8Z2SeqMgrFl
/* 805B76D4  38 60 00 07 */	li r3, 7
/* 805B76D8  38 80 FF FF */	li r4, -1
/* 805B76DC  4B A7 63 C1 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_805B76E0:
/* 805B76E0  38 00 00 20 */	li r0, 0x20
/* 805B76E4  B0 1F 12 38 */	sth r0, 0x1238(r31)
lbl_805B76E8:
/* 805B76E8  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B76EC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B76F0  FC 40 08 90 */	fmr f2, f1
/* 805B76F4  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 805B76F8  48 00 2A 69 */	bl set__4cXyzFfff
/* 805B76FC  48 00 2A B9 */	bl daPy_getPlayerActorClass__Fv
/* 805B7700  38 81 01 7C */	addi r4, r1, 0x17c
/* 805B7704  38 A0 80 00 */	li r5, -32768
/* 805B7708  38 C0 00 00 */	li r6, 0
/* 805B770C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805B7710  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805B7714  7D 89 03 A6 */	mtctr r12
/* 805B7718  4E 80 04 21 */	bctrl 
/* 805B771C  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7720  2C 00 00 00 */	cmpwi r0, 0
/* 805B7724  40 82 00 10 */	bne lbl_805B7734
/* 805B7728  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B772C  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 805B7730  48 00 2A 41 */	bl __as__4cXyzFRC4cXyz
lbl_805B7734:
/* 805B7734  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 805B7738  D0 1F 12 40 */	stfs f0, 0x1240(r31)
/* 805B773C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 805B7740  D0 1F 12 44 */	stfs f0, 0x1244(r31)
/* 805B7744  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 805B7748  D0 1F 12 48 */	stfs f0, 0x1248(r31)
/* 805B774C  80 78 05 C8 */	lwz r3, 0x5c8(r24)
/* 805B7750  80 63 00 04 */	lwz r3, 4(r3)
/* 805B7754  38 80 00 1C */	li r4, 0x1c
/* 805B7758  48 00 2B E1 */	bl getAnmMtx__8J3DModelFi
/* 805B775C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805B7760  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805B7764  4B D8 ED 4D */	bl PSMTXCopy
/* 805B7768  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 805B776C  C0 5E 01 64 */	lfs f2, 0x164(r30)
/* 805B7770  C0 7E 01 68 */	lfs f3, 0x168(r30)
/* 805B7774  4B A5 56 29 */	bl transM__14mDoMtx_stack_cFfff
/* 805B7778  38 61 01 64 */	addi r3, r1, 0x164
/* 805B777C  48 00 2B 99 */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 805B7780  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B7784  C0 21 01 64 */	lfs f1, 0x164(r1)
/* 805B7788  C0 5E 01 6C */	lfs f2, 0x16c(r30)
/* 805B778C  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 805B7790  4B CB 82 AD */	bl cLib_addCalc2__FPffff
/* 805B7794  38 7F 12 50 */	addi r3, r31, 0x1250
/* 805B7798  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 805B779C  C0 01 01 68 */	lfs f0, 0x168(r1)
/* 805B77A0  EC 21 00 2A */	fadds f1, f1, f0
/* 805B77A4  C0 5E 01 6C */	lfs f2, 0x16c(r30)
/* 805B77A8  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 805B77AC  4B CB 82 91 */	bl cLib_addCalc2__FPffff
/* 805B77B0  38 7F 12 54 */	addi r3, r31, 0x1254
/* 805B77B4  C0 21 01 6C */	lfs f1, 0x16c(r1)
/* 805B77B8  C0 5E 01 6C */	lfs f2, 0x16c(r30)
/* 805B77BC  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 805B77C0  4B CB 82 7D */	bl cLib_addCalc2__FPffff
/* 805B77C4  A8 1F 12 38 */	lha r0, 0x1238(r31)
/* 805B77C8  2C 00 00 21 */	cmpwi r0, 0x21
/* 805B77CC  40 82 0F 58 */	bne lbl_805B8724
/* 805B77D0  38 00 00 22 */	li r0, 0x22
/* 805B77D4  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B77D8  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B77DC  C0 3E 01 70 */	lfs f1, 0x170(r30)
/* 805B77E0  C0 5E 01 74 */	lfs f2, 0x174(r30)
/* 805B77E4  C0 7E 01 78 */	lfs f3, 0x178(r30)
/* 805B77E8  48 00 29 79 */	bl set__4cXyzFfff
/* 805B77EC  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B77F0  C0 3E 01 7C */	lfs f1, 0x17c(r30)
/* 805B77F4  C0 5E 01 80 */	lfs f2, 0x180(r30)
/* 805B77F8  C0 7E 01 84 */	lfs f3, 0x184(r30)
/* 805B77FC  48 00 29 65 */	bl set__4cXyzFfff
/* 805B7800  38 7F 12 70 */	addi r3, r31, 0x1270
/* 805B7804  C0 3E 01 88 */	lfs f1, 0x188(r30)
/* 805B7808  C0 5E 01 8C */	lfs f2, 0x18c(r30)
/* 805B780C  C0 7E 01 90 */	lfs f3, 0x190(r30)
/* 805B7810  48 00 29 51 */	bl set__4cXyzFfff
/* 805B7814  38 7F 12 58 */	addi r3, r31, 0x1258
/* 805B7818  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 805B781C  C0 5E 01 98 */	lfs f2, 0x198(r30)
/* 805B7820  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 805B7824  48 00 29 3D */	bl set__4cXyzFfff
/* 805B7828  C0 3F 12 58 */	lfs f1, 0x1258(r31)
/* 805B782C  C0 1F 12 40 */	lfs f0, 0x1240(r31)
/* 805B7830  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B7834  48 00 2C A5 */	bl fabsf__3stdFf
/* 805B7838  D0 3F 12 7C */	stfs f1, 0x127c(r31)
/* 805B783C  C0 3F 12 5C */	lfs f1, 0x125c(r31)
/* 805B7840  C0 1F 12 44 */	lfs f0, 0x1244(r31)
/* 805B7844  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B7848  48 00 2C 91 */	bl fabsf__3stdFf
/* 805B784C  D0 3F 12 80 */	stfs f1, 0x1280(r31)
/* 805B7850  C0 3F 12 60 */	lfs f1, 0x1260(r31)
/* 805B7854  C0 1F 12 48 */	lfs f0, 0x1248(r31)
/* 805B7858  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B785C  48 00 2C 7D */	bl fabsf__3stdFf
/* 805B7860  D0 3F 12 84 */	stfs f1, 0x1284(r31)
/* 805B7864  C0 3F 12 70 */	lfs f1, 0x1270(r31)
/* 805B7868  C0 1F 12 4C */	lfs f0, 0x124c(r31)
/* 805B786C  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B7870  48 00 2C 69 */	bl fabsf__3stdFf
/* 805B7874  D0 3F 12 88 */	stfs f1, 0x1288(r31)
/* 805B7878  C0 3F 12 74 */	lfs f1, 0x1274(r31)
/* 805B787C  C0 1F 12 50 */	lfs f0, 0x1250(r31)
/* 805B7880  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B7884  48 00 2C 55 */	bl fabsf__3stdFf
/* 805B7888  D0 3F 12 8C */	stfs f1, 0x128c(r31)
/* 805B788C  C0 3F 12 78 */	lfs f1, 0x1278(r31)
/* 805B7890  C0 1F 12 54 */	lfs f0, 0x1254(r31)
/* 805B7894  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B7898  48 00 2C 41 */	bl fabsf__3stdFf
/* 805B789C  D0 3F 12 90 */	stfs f1, 0x1290(r31)
/* 805B78A0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B78A4  D0 1F 12 9C */	stfs f0, 0x129c(r31)
/* 805B78A8  38 00 00 22 */	li r0, 0x22
/* 805B78AC  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B78B0  38 00 00 00 */	li r0, 0
/* 805B78B4  B0 1F 12 3A */	sth r0, 0x123a(r31)
lbl_805B78B8:
/* 805B78B8  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B78BC  2C 00 00 28 */	cmpwi r0, 0x28
/* 805B78C0  40 81 00 44 */	ble lbl_805B7904
/* 805B78C4  7F E3 FB 78 */	mr r3, r31
/* 805B78C8  C0 3E 01 54 */	lfs f1, 0x154(r30)
/* 805B78CC  4B FF E9 99 */	bl cam_3d_morf__FP10b_bq_classf
/* 805B78D0  38 7F 12 9C */	addi r3, r31, 0x129c
/* 805B78D4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805B78D8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B78DC  C0 7E 00 C0 */	lfs f3, 0xc0(r30)
/* 805B78E0  4B CB 81 5D */	bl cLib_addCalc2__FPffff
/* 805B78E4  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B78E8  2C 00 00 85 */	cmpwi r0, 0x85
/* 805B78EC  40 81 00 18 */	ble lbl_805B7904
/* 805B78F0  38 7F 12 A4 */	addi r3, r31, 0x12a4
/* 805B78F4  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 805B78F8  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 805B78FC  C0 7E 01 9C */	lfs f3, 0x19c(r30)
/* 805B7900  4B CB 81 3D */	bl cLib_addCalc2__FPffff
lbl_805B7904:
/* 805B7904  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7908  2C 00 00 D2 */	cmpwi r0, 0xd2
/* 805B790C  40 82 0E 18 */	bne lbl_805B8724
/* 805B7910  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B7914  C0 3E 01 A0 */	lfs f1, 0x1a0(r30)
/* 805B7918  C0 5E 01 A4 */	lfs f2, 0x1a4(r30)
/* 805B791C  C0 7E 01 A8 */	lfs f3, 0x1a8(r30)
/* 805B7920  48 00 28 41 */	bl set__4cXyzFfff
/* 805B7924  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B7928  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 805B792C  48 00 28 45 */	bl __as__4cXyzFRC4cXyz
/* 805B7930  C0 3F 12 50 */	lfs f1, 0x1250(r31)
/* 805B7934  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 805B7938  EC 01 00 2A */	fadds f0, f1, f0
/* 805B793C  D0 1F 12 50 */	stfs f0, 0x1250(r31)
/* 805B7940  38 00 00 23 */	li r0, 0x23
/* 805B7944  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B7948  38 00 00 00 */	li r0, 0
/* 805B794C  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B7950  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 805B7954  D0 1F 12 A4 */	stfs f0, 0x12a4(r31)
/* 805B7958  A8 78 05 B4 */	lha r3, 0x5b4(r24)
/* 805B795C  38 03 00 01 */	addi r0, r3, 1
/* 805B7960  B0 18 05 B4 */	sth r0, 0x5b4(r24)
lbl_805B7964:
/* 805B7964  80 78 05 C8 */	lwz r3, 0x5c8(r24)
/* 805B7968  80 63 00 04 */	lwz r3, 4(r3)
/* 805B796C  38 80 00 00 */	li r4, 0
/* 805B7970  48 00 29 C9 */	bl getAnmMtx__8J3DModelFi
/* 805B7974  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805B7978  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805B797C  4B D8 EB 35 */	bl PSMTXCopy
/* 805B7980  38 61 01 64 */	addi r3, r1, 0x164
/* 805B7984  48 00 29 91 */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 805B7988  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B798C  C0 21 01 64 */	lfs f1, 0x164(r1)
/* 805B7990  C0 5E 01 6C */	lfs f2, 0x16c(r30)
/* 805B7994  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 805B7998  4B CB 80 A5 */	bl cLib_addCalc2__FPffff
/* 805B799C  38 7F 12 50 */	addi r3, r31, 0x1250
/* 805B79A0  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 805B79A4  C0 01 01 68 */	lfs f0, 0x168(r1)
/* 805B79A8  EC 21 00 2A */	fadds f1, f1, f0
/* 805B79AC  C0 5E 01 6C */	lfs f2, 0x16c(r30)
/* 805B79B0  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 805B79B4  4B CB 80 89 */	bl cLib_addCalc2__FPffff
/* 805B79B8  38 7F 12 54 */	addi r3, r31, 0x1254
/* 805B79BC  C0 21 01 6C */	lfs f1, 0x16c(r1)
/* 805B79C0  C0 5E 01 6C */	lfs f2, 0x16c(r30)
/* 805B79C4  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 805B79C8  4B CB 80 75 */	bl cLib_addCalc2__FPffff
/* 805B79CC  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B79D0  2C 00 00 32 */	cmpwi r0, 0x32
/* 805B79D4  40 82 0D 50 */	bne lbl_805B8724
/* 805B79D8  38 00 00 64 */	li r0, 0x64
/* 805B79DC  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B79E0  48 00 0D 44 */	b lbl_805B8724
lbl_805B79E4:
/* 805B79E4  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805B79E8  48 00 27 ED */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 805B79EC  2C 03 00 00 */	cmpwi r3, 0
/* 805B79F0  40 82 00 5C */	bne lbl_805B7A4C
/* 805B79F4  7F E3 FB 78 */	mr r3, r31
/* 805B79F8  38 80 00 02 */	li r4, 2
/* 805B79FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805B7A00  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805B7A04  38 C0 00 00 */	li r6, 0
/* 805B7A08  4B A6 3F 01 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805B7A0C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 805B7A10  38 80 00 02 */	li r4, 2
/* 805B7A14  48 00 27 B1 */	bl onCondition__11dEvt_info_cFUs
/* 805B7A18  38 61 01 64 */	addi r3, r1, 0x164
/* 805B7A1C  38 80 FF FF */	li r4, -1
/* 805B7A20  4B FF C2 01 */	bl __dt__4cXyzFv
/* 805B7A24  38 61 01 70 */	addi r3, r1, 0x170
/* 805B7A28  38 80 FF FF */	li r4, -1
/* 805B7A2C  4B FF C1 F5 */	bl __dt__4cXyzFv
/* 805B7A30  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B7A34  38 80 FF FF */	li r4, -1
/* 805B7A38  4B FF C1 E9 */	bl __dt__4cXyzFv
/* 805B7A3C  38 61 01 88 */	addi r3, r1, 0x188
/* 805B7A40  38 80 FF FF */	li r4, -1
/* 805B7A44  4B FF C1 DD */	bl __dt__4cXyzFv
/* 805B7A48  48 00 0F 9C */	b lbl_805B89E4
lbl_805B7A4C:
/* 805B7A4C  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B7A50  4B BA 9A 81 */	bl Stop__9dCamera_cFv
/* 805B7A54  38 00 00 33 */	li r0, 0x33
/* 805B7A58  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B7A5C  38 00 00 00 */	li r0, 0
/* 805B7A60  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B7A64  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 805B7A68  D0 1F 12 A4 */	stfs f0, 0x12a4(r31)
/* 805B7A6C  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B7A70  38 80 00 03 */	li r4, 3
/* 805B7A74  4B BA B5 99 */	bl SetTrimSize__9dCamera_cFl
/* 805B7A78  48 00 27 3D */	bl daPy_getPlayerActorClass__Fv
/* 805B7A7C  48 00 27 25 */	bl changeOriginalDemo__9daPy_py_cFv
/* 805B7A80  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B7A84  38 9F 05 38 */	addi r4, r31, 0x538
/* 805B7A88  48 00 26 E9 */	bl __as__4cXyzFRC4cXyz
/* 805B7A8C  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B7A90  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 805B7A94  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805B7A98  C0 7E 01 AC */	lfs f3, 0x1ac(r30)
/* 805B7A9C  48 00 26 C5 */	bl set__4cXyzFfff
/* 805B7AA0  38 7F 12 58 */	addi r3, r31, 0x1258
/* 805B7AA4  C0 3E 01 B0 */	lfs f1, 0x1b0(r30)
/* 805B7AA8  C0 5E 01 B4 */	lfs f2, 0x1b4(r30)
/* 805B7AAC  C0 7E 01 B8 */	lfs f3, 0x1b8(r30)
/* 805B7AB0  48 00 26 B1 */	bl set__4cXyzFfff
/* 805B7AB4  C0 3F 12 58 */	lfs f1, 0x1258(r31)
/* 805B7AB8  C0 1F 12 40 */	lfs f0, 0x1240(r31)
/* 805B7ABC  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B7AC0  48 00 2A 19 */	bl fabsf__3stdFf
/* 805B7AC4  D0 3F 12 7C */	stfs f1, 0x127c(r31)
/* 805B7AC8  C0 3F 12 5C */	lfs f1, 0x125c(r31)
/* 805B7ACC  C0 1F 12 44 */	lfs f0, 0x1244(r31)
/* 805B7AD0  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B7AD4  48 00 2A 05 */	bl fabsf__3stdFf
/* 805B7AD8  D0 3F 12 80 */	stfs f1, 0x1280(r31)
/* 805B7ADC  C0 3F 12 60 */	lfs f1, 0x1260(r31)
/* 805B7AE0  C0 1F 12 48 */	lfs f0, 0x1248(r31)
/* 805B7AE4  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B7AE8  48 00 29 F1 */	bl fabsf__3stdFf
/* 805B7AEC  D0 3F 12 84 */	stfs f1, 0x1284(r31)
/* 805B7AF0  38 7F 12 88 */	addi r3, r31, 0x1288
/* 805B7AF4  FC 20 F8 90 */	fmr f1, f31
/* 805B7AF8  FC 40 08 90 */	fmr f2, f1
/* 805B7AFC  FC 60 08 90 */	fmr f3, f1
/* 805B7B00  48 00 26 61 */	bl set__4cXyzFfff
/* 805B7B04  FC 00 F8 90 */	fmr f0, f31
/* 805B7B08  D0 1F 12 9C */	stfs f0, 0x129c(r31)
/* 805B7B0C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B7B10  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B7B14  80 63 00 00 */	lwz r3, 0(r3)
/* 805B7B18  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805B7B1C  38 80 00 1E */	li r4, 0x1e
/* 805B7B20  38 A0 00 00 */	li r5, 0
/* 805B7B24  4B CF 78 E5 */	bl bgmStop__8Z2SeqMgrFUll
/* 805B7B28  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B7B2C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B7B30  80 63 00 00 */	lwz r3, 0(r3)
/* 805B7B34  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805B7B38  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000016@ha */
/* 805B7B3C  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x02000016@l */
/* 805B7B40  4B CF 80 55 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 805B7B44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B7B48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B7B4C  80 63 00 00 */	lwz r3, 0(r3)
/* 805B7B50  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805B7B54  4B CF 82 C5 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 805B7B58  38 60 00 00 */	li r3, 0
/* 805B7B5C  4B A7 5D A1 */	bl dComIfGs_BossLife_public_Set__FSc
/* 805B7B60  80 1F 06 E8 */	lwz r0, 0x6e8(r31)
/* 805B7B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B7B68  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805B7B6C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805B7B70  38 81 00 14 */	addi r4, r1, 0x14
/* 805B7B74  4B A6 1C 85 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805B7B78  38 00 00 05 */	li r0, 5
/* 805B7B7C  B0 03 06 9A */	sth r0, 0x69a(r3)
lbl_805B7B80:
/* 805B7B80  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7B84  2C 00 00 18 */	cmpwi r0, 0x18
/* 805B7B88  41 82 00 1C */	beq lbl_805B7BA4
/* 805B7B8C  2C 00 00 40 */	cmpwi r0, 0x40
/* 805B7B90  41 82 00 14 */	beq lbl_805B7BA4
/* 805B7B94  2C 00 00 5F */	cmpwi r0, 0x5f
/* 805B7B98  41 82 00 0C */	beq lbl_805B7BA4
/* 805B7B9C  2C 00 00 7A */	cmpwi r0, 0x7a
/* 805B7BA0  40 82 00 38 */	bne lbl_805B7BD8
lbl_805B7BA4:
/* 805B7BA4  38 61 00 8C */	addi r3, r1, 0x8c
/* 805B7BA8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B7BAC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B7BB0  FC 60 08 90 */	fmr f3, f1
/* 805B7BB4  48 00 29 7D */	bl __ct__4cXyzFfff
/* 805B7BB8  48 00 29 69 */	bl dComIfGp_getVibration__Fv
/* 805B7BBC  38 80 00 04 */	li r4, 4
/* 805B7BC0  38 A0 00 01 */	li r5, 1
/* 805B7BC4  38 C1 00 8C */	addi r6, r1, 0x8c
/* 805B7BC8  4B AB 7E 5D */	bl StartShock__12dVibration_cFii4cXyz
/* 805B7BCC  38 61 00 8C */	addi r3, r1, 0x8c
/* 805B7BD0  38 80 FF FF */	li r4, -1
/* 805B7BD4  4B FF C0 4D */	bl __dt__4cXyzFv
lbl_805B7BD8:
/* 805B7BD8  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7BDC  2C 00 00 8C */	cmpwi r0, 0x8c
/* 805B7BE0  40 82 00 38 */	bne lbl_805B7C18
/* 805B7BE4  38 61 00 80 */	addi r3, r1, 0x80
/* 805B7BE8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B7BEC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B7BF0  FC 60 08 90 */	fmr f3, f1
/* 805B7BF4  48 00 29 3D */	bl __ct__4cXyzFfff
/* 805B7BF8  48 00 29 29 */	bl dComIfGp_getVibration__Fv
/* 805B7BFC  38 80 00 02 */	li r4, 2
/* 805B7C00  38 A0 00 01 */	li r5, 1
/* 805B7C04  38 C1 00 80 */	addi r6, r1, 0x80
/* 805B7C08  4B AB 7F 09 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805B7C0C  38 61 00 80 */	addi r3, r1, 0x80
/* 805B7C10  38 80 FF FF */	li r4, -1
/* 805B7C14  4B FF C0 0D */	bl __dt__4cXyzFv
lbl_805B7C18:
/* 805B7C18  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7C1C  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 805B7C20  40 82 00 10 */	bne lbl_805B7C30
/* 805B7C24  48 00 28 FD */	bl dComIfGp_getVibration__Fv
/* 805B7C28  38 80 00 1F */	li r4, 0x1f
/* 805B7C2C  4B AB 81 69 */	bl StopQuake__12dVibration_cFi
lbl_805B7C30:
/* 805B7C30  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7C34  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 805B7C38  40 80 00 10 */	bge lbl_805B7C48
/* 805B7C3C  38 00 00 B4 */	li r0, 0xb4
/* 805B7C40  B0 1F 12 AE */	sth r0, 0x12ae(r31)
/* 805B7C44  48 00 00 0C */	b lbl_805B7C50
lbl_805B7C48:
/* 805B7C48  38 00 00 00 */	li r0, 0
/* 805B7C4C  B0 1F 12 AE */	sth r0, 0x12ae(r31)
lbl_805B7C50:
/* 805B7C50  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7C54  2C 00 01 04 */	cmpwi r0, 0x104
/* 805B7C58  40 82 00 0C */	bne lbl_805B7C64
/* 805B7C5C  38 00 00 04 */	li r0, 4
/* 805B7C60  98 1F 06 ED */	stb r0, 0x6ed(r31)
lbl_805B7C64:
/* 805B7C64  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7C68  2C 00 01 7C */	cmpwi r0, 0x17c
/* 805B7C6C  41 80 00 24 */	blt lbl_805B7C90
/* 805B7C70  7F E3 FB 78 */	mr r3, r31
/* 805B7C74  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805B7C78  4B FF E5 ED */	bl cam_3d_morf__FP10b_bq_classf
/* 805B7C7C  38 7F 12 9C */	addi r3, r31, 0x129c
/* 805B7C80  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 805B7C84  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B7C88  C0 7E 01 58 */	lfs f3, 0x158(r30)
/* 805B7C8C  4B CB 7D B1 */	bl cLib_addCalc2__FPffff
lbl_805B7C90:
/* 805B7C90  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7C94  2C 00 01 AE */	cmpwi r0, 0x1ae
/* 805B7C98  40 82 00 18 */	bne lbl_805B7CB0
/* 805B7C9C  38 00 00 01 */	li r0, 1
/* 805B7CA0  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 805B7CA4  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 805B7CA8  38 9F 05 38 */	addi r4, r31, 0x538
/* 805B7CAC  48 00 24 C5 */	bl __as__4cXyzFRC4cXyz
lbl_805B7CB0:
/* 805B7CB0  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7CB4  2C 00 01 5E */	cmpwi r0, 0x15e
/* 805B7CB8  40 80 00 1C */	bge lbl_805B7CD4
/* 805B7CBC  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B7CC0  C0 3E 01 BC */	lfs f1, 0x1bc(r30)
/* 805B7CC4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805B7CC8  C0 7E 01 C0 */	lfs f3, 0x1c0(r30)
/* 805B7CCC  48 00 24 95 */	bl set__4cXyzFfff
/* 805B7CD0  48 00 00 18 */	b lbl_805B7CE8
lbl_805B7CD4:
/* 805B7CD4  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B7CD8  C0 3E 01 C4 */	lfs f1, 0x1c4(r30)
/* 805B7CDC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805B7CE0  C0 7E 01 C8 */	lfs f3, 0x1c8(r30)
/* 805B7CE4  48 00 24 7D */	bl set__4cXyzFfff
lbl_805B7CE8:
/* 805B7CE8  48 00 24 CD */	bl daPy_getPlayerActorClass__Fv
/* 805B7CEC  38 81 01 7C */	addi r4, r1, 0x17c
/* 805B7CF0  38 A0 80 00 */	li r5, -32768
/* 805B7CF4  38 C0 00 00 */	li r6, 0
/* 805B7CF8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805B7CFC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805B7D00  7D 89 03 A6 */	mtctr r12
/* 805B7D04  4E 80 04 21 */	bctrl 
/* 805B7D08  88 1F 05 C8 */	lbz r0, 0x5c8(r31)
/* 805B7D0C  7C 00 07 75 */	extsb. r0, r0
/* 805B7D10  41 82 02 F8 */	beq lbl_805B8008
/* 805B7D14  C0 3F 05 D0 */	lfs f1, 0x5d0(r31)
/* 805B7D18  C0 1F 05 D8 */	lfs f0, 0x5d8(r31)
/* 805B7D1C  EC 01 00 2A */	fadds f0, f1, f0
/* 805B7D20  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 805B7D24  C0 3F 05 D8 */	lfs f1, 0x5d8(r31)
/* 805B7D28  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 805B7D2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B7D30  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 805B7D34  C0 3F 05 D0 */	lfs f1, 0x5d0(r31)
/* 805B7D38  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 805B7D3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B7D40  4C 40 13 82 */	cror 2, 0, 2
/* 805B7D44  40 82 00 9C */	bne lbl_805B7DE0
/* 805B7D48  D0 1F 05 D0 */	stfs f0, 0x5d0(r31)
/* 805B7D4C  C0 3F 05 D8 */	lfs f1, 0x5d8(r31)
/* 805B7D50  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 805B7D54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B7D58  40 80 00 7C */	bge lbl_805B7DD4
/* 805B7D5C  38 7F 12 20 */	addi r3, r31, 0x1220
/* 805B7D60  38 9F 12 24 */	addi r4, r31, 0x1224
/* 805B7D64  38 BF 05 CC */	addi r5, r31, 0x5cc
/* 805B7D68  38 C0 00 00 */	li r6, 0
/* 805B7D6C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B7D70  38 FF 01 0C */	addi r7, r31, 0x10c
/* 805B7D74  39 00 00 01 */	li r8, 1
/* 805B7D78  4B A6 52 A9 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 805B7D7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070145@ha */
/* 805B7D80  38 63 01 45 */	addi r3, r3, 0x0145 /* 0x00070145@l */
/* 805B7D84  38 80 00 00 */	li r4, 0
/* 805B7D88  38 A0 00 00 */	li r5, 0
/* 805B7D8C  38 C0 00 00 */	li r6, 0
/* 805B7D90  48 00 25 BD */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 805B7D94  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 805B7D98  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 805B7D9C  38 61 00 74 */	addi r3, r1, 0x74
/* 805B7DA0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B7DA4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B7DA8  FC 60 08 90 */	fmr f3, f1
/* 805B7DAC  48 00 27 85 */	bl __ct__4cXyzFfff
/* 805B7DB0  48 00 27 71 */	bl dComIfGp_getVibration__Fv
/* 805B7DB4  38 80 00 06 */	li r4, 6
/* 805B7DB8  38 A0 00 1F */	li r5, 0x1f
/* 805B7DBC  38 C1 00 74 */	addi r6, r1, 0x74
/* 805B7DC0  4B AB 7C 65 */	bl StartShock__12dVibration_cFii4cXyz
/* 805B7DC4  38 61 00 74 */	addi r3, r1, 0x74
/* 805B7DC8  38 80 FF FF */	li r4, -1
/* 805B7DCC  4B FF BE 55 */	bl __dt__4cXyzFv
/* 805B7DD0  48 00 00 2C */	b lbl_805B7DFC
lbl_805B7DD4:
/* 805B7DD4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B7DD8  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 805B7DDC  48 00 00 20 */	b lbl_805B7DFC
lbl_805B7DE0:
/* 805B7DE0  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7DE4  2C 00 01 B3 */	cmpwi r0, 0x1b3
/* 805B7DE8  41 80 00 14 */	blt lbl_805B7DFC
/* 805B7DEC  C0 3F 05 D4 */	lfs f1, 0x5d4(r31)
/* 805B7DF0  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 805B7DF4  EC 01 00 2A */	fadds f0, f1, f0
/* 805B7DF8  D0 1F 05 D4 */	stfs f0, 0x5d4(r31)
lbl_805B7DFC:
/* 805B7DFC  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805B7E00  38 80 C0 00 */	li r4, -16384
/* 805B7E04  38 A0 00 08 */	li r5, 8
/* 805B7E08  38 C0 03 00 */	li r6, 0x300
/* 805B7E0C  4B CB 87 FD */	bl cLib_addCalcAngleS2__FPssss
/* 805B7E10  C0 3F 05 CC */	lfs f1, 0x5cc(r31)
/* 805B7E14  C0 5F 05 D0 */	lfs f2, 0x5d0(r31)
/* 805B7E18  C0 7F 05 D4 */	lfs f3, 0x5d4(r31)
/* 805B7E1C  38 60 00 00 */	li r3, 0
/* 805B7E20  4B CB 90 3D */	bl MtxTrans__FfffUc
/* 805B7E24  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B7E28  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B7E2C  80 63 00 00 */	lwz r3, 0(r3)
/* 805B7E30  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805B7E34  4B A5 46 01 */	bl mDoMtx_YrotM__FPA4_fs
/* 805B7E38  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B7E3C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B7E40  80 63 00 00 */	lwz r3, 0(r3)
/* 805B7E44  A8 9F 05 DC */	lha r4, 0x5dc(r31)
/* 805B7E48  4B A5 45 55 */	bl mDoMtx_XrotM__FPA4_fs
/* 805B7E4C  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 805B7E50  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805B7E54  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805B7E58  80 84 00 00 */	lwz r4, 0(r4)
/* 805B7E5C  48 00 24 8D */	bl setBaseTRMtx__8J3DModelFPA4_f
/* 805B7E60  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B7E64  C0 3F 05 CC */	lfs f1, 0x5cc(r31)
/* 805B7E68  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B7E6C  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 805B7E70  4B CB 7B CD */	bl cLib_addCalc2__FPffff
/* 805B7E74  38 7F 12 54 */	addi r3, r31, 0x1254
/* 805B7E78  C0 3F 05 D4 */	lfs f1, 0x5d4(r31)
/* 805B7E7C  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B7E80  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 805B7E84  4B CB 7B B9 */	bl cLib_addCalc2__FPffff
/* 805B7E88  38 7F 12 50 */	addi r3, r31, 0x1250
/* 805B7E8C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 805B7E90  C0 1F 05 D0 */	lfs f0, 0x5d0(r31)
/* 805B7E94  EC 21 00 2A */	fadds f1, f1, f0
/* 805B7E98  C0 5E 01 D4 */	lfs f2, 0x1d4(r30)
/* 805B7E9C  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 805B7EA0  4B CB 7B 9D */	bl cLib_addCalc2__FPffff
/* 805B7EA4  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7EA8  2C 00 02 17 */	cmpwi r0, 0x217
/* 805B7EAC  40 82 01 0C */	bne lbl_805B7FB8
/* 805B7EB0  38 00 00 02 */	li r0, 2
/* 805B7EB4  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 805B7EB8  3B 40 00 00 */	li r26, 0
/* 805B7EBC  3B 00 00 00 */	li r24, 0
/* 805B7EC0  3C 60 80 5C */	lis r3, g_b_i@ha /* 0x805BAA64@ha */
/* 805B7EC4  3B 23 AA 64 */	addi r25, r3, g_b_i@l /* 0x805BAA64@l */
lbl_805B7EC8:
/* 805B7EC8  7C 79 C2 2E */	lhzx r3, r25, r24
/* 805B7ECC  38 9F 05 CC */	addi r4, r31, 0x5cc
/* 805B7ED0  38 A0 00 00 */	li r5, 0
/* 805B7ED4  38 C0 00 00 */	li r6, 0
/* 805B7ED8  48 00 23 9D */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 805B7EDC  3B 5A 00 01 */	addi r26, r26, 1
/* 805B7EE0  2C 1A 00 07 */	cmpwi r26, 7
/* 805B7EE4  3B 18 00 02 */	addi r24, r24, 2
/* 805B7EE8  41 80 FF E0 */	blt lbl_805B7EC8
/* 805B7EEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007016F@ha */
/* 805B7EF0  38 63 01 6F */	addi r3, r3, 0x016F /* 0x0007016F@l */
/* 805B7EF4  38 9F 05 CC */	addi r4, r31, 0x5cc
/* 805B7EF8  38 A0 00 00 */	li r5, 0
/* 805B7EFC  38 C0 00 00 */	li r6, 0
/* 805B7F00  48 00 24 4D */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 805B7F04  38 61 00 68 */	addi r3, r1, 0x68
/* 805B7F08  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B7F0C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B7F10  FC 60 08 90 */	fmr f3, f1
/* 805B7F14  48 00 26 1D */	bl __ct__4cXyzFfff
/* 805B7F18  48 00 26 09 */	bl dComIfGp_getVibration__Fv
/* 805B7F1C  38 80 00 05 */	li r4, 5
/* 805B7F20  38 A0 00 01 */	li r5, 1
/* 805B7F24  38 C1 00 68 */	addi r6, r1, 0x68
/* 805B7F28  4B AB 7A FD */	bl StartShock__12dVibration_cFii4cXyz
/* 805B7F2C  38 61 00 68 */	addi r3, r1, 0x68
/* 805B7F30  38 80 FF FF */	li r4, -1
/* 805B7F34  4B FF BC ED */	bl __dt__4cXyzFv
/* 805B7F38  38 61 01 58 */	addi r3, r1, 0x158
/* 805B7F3C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B7F40  FC 40 08 90 */	fmr f2, f1
/* 805B7F44  FC 60 08 90 */	fmr f3, f1
/* 805B7F48  48 00 25 E9 */	bl __ct__4cXyzFfff
/* 805B7F4C  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 805B7F50  38 80 00 22 */	li r4, 0x22
/* 805B7F54  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B7F58  7C 05 07 74 */	extsb r5, r0
/* 805B7F5C  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 805B7F60  38 E1 01 58 */	addi r7, r1, 0x158
/* 805B7F64  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B7F68  FC 40 08 90 */	fmr f2, f1
/* 805B7F6C  39 00 FF FF */	li r8, -1
/* 805B7F70  4B A6 41 65 */	bl fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
/* 805B7F74  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 805B7F78  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B7F7C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805B7F80  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805B7F84  38 81 00 10 */	addi r4, r1, 0x10
/* 805B7F88  4B A6 18 71 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805B7F8C  4B A6 1C F1 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 805B7F90  80 1F 06 E4 */	lwz r0, 0x6e4(r31)
/* 805B7F94  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B7F98  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805B7F9C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805B7FA0  38 81 00 0C */	addi r4, r1, 0xc
/* 805B7FA4  4B A6 18 55 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805B7FA8  4B A6 1C D5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 805B7FAC  38 61 01 58 */	addi r3, r1, 0x158
/* 805B7FB0  38 80 FF FF */	li r4, -1
/* 805B7FB4  4B FF BC 6D */	bl __dt__4cXyzFv
lbl_805B7FB8:
/* 805B7FB8  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7FBC  2C 00 02 17 */	cmpwi r0, 0x217
/* 805B7FC0  40 82 00 24 */	bne lbl_805B7FE4
/* 805B7FC4  38 00 00 34 */	li r0, 0x34
/* 805B7FC8  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B7FCC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B7FD0  D0 1F 12 9C */	stfs f0, 0x129c(r31)
/* 805B7FD4  38 00 00 00 */	li r0, 0
/* 805B7FD8  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B7FDC  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 805B7FE0  D0 1F 12 A4 */	stfs f0, 0x12a4(r31)
lbl_805B7FE4:
/* 805B7FE4  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B7FE8  2C 00 01 E0 */	cmpwi r0, 0x1e0
/* 805B7FEC  41 80 07 38 */	blt lbl_805B8724
/* 805B7FF0  38 7F 11 78 */	addi r3, r31, 0x1178
/* 805B7FF4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B7FF8  FC 40 08 90 */	fmr f2, f1
/* 805B7FFC  C0 7E 01 D8 */	lfs f3, 0x1d8(r30)
/* 805B8000  4B CB 7A 3D */	bl cLib_addCalc2__FPffff
/* 805B8004  48 00 07 20 */	b lbl_805B8724
lbl_805B8008:
/* 805B8008  38 61 01 64 */	addi r3, r1, 0x164
/* 805B800C  38 9F 05 38 */	addi r4, r31, 0x538
/* 805B8010  48 00 21 61 */	bl __as__4cXyzFRC4cXyz
/* 805B8014  C0 21 01 68 */	lfs f1, 0x168(r1)
/* 805B8018  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 805B801C  EC 21 00 2A */	fadds f1, f1, f0
/* 805B8020  D0 21 01 68 */	stfs f1, 0x168(r1)
/* 805B8024  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 805B8028  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B802C  40 81 00 0C */	ble lbl_805B8038
/* 805B8030  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 805B8034  48 00 00 14 */	b lbl_805B8048
lbl_805B8038:
/* 805B8038  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 805B803C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B8040  40 80 00 08 */	bge lbl_805B8048
/* 805B8044  D0 01 01 68 */	stfs f0, 0x168(r1)
lbl_805B8048:
/* 805B8048  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B804C  C0 21 01 64 */	lfs f1, 0x164(r1)
/* 805B8050  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B8054  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 805B8058  4B CB 79 E5 */	bl cLib_addCalc2__FPffff
/* 805B805C  38 7F 12 50 */	addi r3, r31, 0x1250
/* 805B8060  C0 21 01 68 */	lfs f1, 0x168(r1)
/* 805B8064  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B8068  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 805B806C  4B CB 79 D1 */	bl cLib_addCalc2__FPffff
/* 805B8070  38 7F 12 54 */	addi r3, r31, 0x1254
/* 805B8074  C0 21 01 6C */	lfs f1, 0x16c(r1)
/* 805B8078  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 805B807C  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 805B8080  4B CB 79 BD */	bl cLib_addCalc2__FPffff
/* 805B8084  48 00 06 A0 */	b lbl_805B8724
lbl_805B8088:
/* 805B8088  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B808C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805B8090  40 82 00 24 */	bne lbl_805B80B4
/* 805B8094  38 00 00 01 */	li r0, 1
/* 805B8098  98 1F 13 96 */	stb r0, 0x1396(r31)
/* 805B809C  7F 23 CB 78 */	mr r3, r25
/* 805B80A0  38 80 00 1E */	li r4, 0x1e
/* 805B80A4  38 A0 00 01 */	li r5, 1
/* 805B80A8  38 C0 00 00 */	li r6, 0
/* 805B80AC  38 E0 00 00 */	li r7, 0
/* 805B80B0  48 00 20 DD */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805B80B4:
/* 805B80B4  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B80B8  2C 00 00 8C */	cmpwi r0, 0x8c
/* 805B80BC  40 82 00 F8 */	bne lbl_805B81B4
/* 805B80C0  48 00 20 F5 */	bl daPy_getPlayerActorClass__Fv
/* 805B80C4  38 80 00 01 */	li r4, 1
/* 805B80C8  38 A0 00 00 */	li r5, 0
/* 805B80CC  38 C0 00 00 */	li r6, 0
/* 805B80D0  38 E0 00 00 */	li r7, 0
/* 805B80D4  48 00 20 B9 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805B80D8  38 00 00 07 */	li r0, 7
/* 805B80DC  98 1F 06 ED */	stb r0, 0x6ed(r31)
/* 805B80E0  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B80E4  C0 3E 01 E0 */	lfs f1, 0x1e0(r30)
/* 805B80E8  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 805B80EC  C0 7E 01 E4 */	lfs f3, 0x1e4(r30)
/* 805B80F0  48 00 20 71 */	bl set__4cXyzFfff
/* 805B80F4  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B80F8  C0 3E 01 E8 */	lfs f1, 0x1e8(r30)
/* 805B80FC  C0 5E 01 EC */	lfs f2, 0x1ec(r30)
/* 805B8100  C0 7E 01 F0 */	lfs f3, 0x1f0(r30)
/* 805B8104  48 00 20 5D */	bl set__4cXyzFfff
/* 805B8108  38 7F 12 70 */	addi r3, r31, 0x1270
/* 805B810C  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 805B8110  C0 5E 01 F8 */	lfs f2, 0x1f8(r30)
/* 805B8114  C0 7E 01 FC */	lfs f3, 0x1fc(r30)
/* 805B8118  48 00 20 49 */	bl set__4cXyzFfff
/* 805B811C  38 7F 12 58 */	addi r3, r31, 0x1258
/* 805B8120  C0 3E 02 00 */	lfs f1, 0x200(r30)
/* 805B8124  C0 5E 02 04 */	lfs f2, 0x204(r30)
/* 805B8128  C0 7E 02 08 */	lfs f3, 0x208(r30)
/* 805B812C  48 00 20 35 */	bl set__4cXyzFfff
/* 805B8130  C0 3F 12 58 */	lfs f1, 0x1258(r31)
/* 805B8134  C0 1F 12 40 */	lfs f0, 0x1240(r31)
/* 805B8138  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B813C  48 00 23 9D */	bl fabsf__3stdFf
/* 805B8140  D0 3F 12 7C */	stfs f1, 0x127c(r31)
/* 805B8144  C0 3F 12 5C */	lfs f1, 0x125c(r31)
/* 805B8148  C0 1F 12 44 */	lfs f0, 0x1244(r31)
/* 805B814C  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B8150  48 00 23 89 */	bl fabsf__3stdFf
/* 805B8154  D0 3F 12 80 */	stfs f1, 0x1280(r31)
/* 805B8158  C0 3F 12 60 */	lfs f1, 0x1260(r31)
/* 805B815C  C0 1F 12 48 */	lfs f0, 0x1248(r31)
/* 805B8160  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B8164  48 00 23 75 */	bl fabsf__3stdFf
/* 805B8168  D0 3F 12 84 */	stfs f1, 0x1284(r31)
/* 805B816C  C0 3F 12 70 */	lfs f1, 0x1270(r31)
/* 805B8170  C0 1F 12 4C */	lfs f0, 0x124c(r31)
/* 805B8174  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B8178  48 00 23 61 */	bl fabsf__3stdFf
/* 805B817C  D0 3F 12 88 */	stfs f1, 0x1288(r31)
/* 805B8180  C0 3F 12 74 */	lfs f1, 0x1274(r31)
/* 805B8184  C0 1F 12 50 */	lfs f0, 0x1250(r31)
/* 805B8188  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B818C  48 00 23 4D */	bl fabsf__3stdFf
/* 805B8190  D0 3F 12 8C */	stfs f1, 0x128c(r31)
/* 805B8194  C0 3F 12 78 */	lfs f1, 0x1278(r31)
/* 805B8198  C0 1F 12 54 */	lfs f0, 0x1254(r31)
/* 805B819C  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B81A0  48 00 23 39 */	bl fabsf__3stdFf
/* 805B81A4  D0 3F 12 90 */	stfs f1, 0x1290(r31)
/* 805B81A8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B81AC  D0 1F 12 9C */	stfs f0, 0x129c(r31)
/* 805B81B0  48 00 00 D0 */	b lbl_805B8280
lbl_805B81B4:
/* 805B81B4  40 80 00 CC */	bge lbl_805B8280
/* 805B81B8  2C 00 00 01 */	cmpwi r0, 1
/* 805B81BC  40 82 00 A4 */	bne lbl_805B8260
/* 805B81C0  38 7F 12 70 */	addi r3, r31, 0x1270
/* 805B81C4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 805B81C8  C0 5E 02 0C */	lfs f2, 0x20c(r30)
/* 805B81CC  C0 7E 02 10 */	lfs f3, 0x210(r30)
/* 805B81D0  48 00 1F 91 */	bl set__4cXyzFfff
/* 805B81D4  38 7F 12 58 */	addi r3, r31, 0x1258
/* 805B81D8  C0 3E 02 14 */	lfs f1, 0x214(r30)
/* 805B81DC  C0 5E 02 18 */	lfs f2, 0x218(r30)
/* 805B81E0  C0 7E 02 1C */	lfs f3, 0x21c(r30)
/* 805B81E4  48 00 1F 7D */	bl set__4cXyzFfff
/* 805B81E8  C0 3F 12 58 */	lfs f1, 0x1258(r31)
/* 805B81EC  C0 1F 12 40 */	lfs f0, 0x1240(r31)
/* 805B81F0  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B81F4  48 00 22 E5 */	bl fabsf__3stdFf
/* 805B81F8  D0 3F 12 7C */	stfs f1, 0x127c(r31)
/* 805B81FC  C0 3F 12 5C */	lfs f1, 0x125c(r31)
/* 805B8200  C0 1F 12 44 */	lfs f0, 0x1244(r31)
/* 805B8204  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B8208  48 00 22 D1 */	bl fabsf__3stdFf
/* 805B820C  D0 3F 12 80 */	stfs f1, 0x1280(r31)
/* 805B8210  C0 3F 12 60 */	lfs f1, 0x1260(r31)
/* 805B8214  C0 1F 12 48 */	lfs f0, 0x1248(r31)
/* 805B8218  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B821C  48 00 22 BD */	bl fabsf__3stdFf
/* 805B8220  D0 3F 12 84 */	stfs f1, 0x1284(r31)
/* 805B8224  C0 3F 12 70 */	lfs f1, 0x1270(r31)
/* 805B8228  C0 1F 12 4C */	lfs f0, 0x124c(r31)
/* 805B822C  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B8230  48 00 22 A9 */	bl fabsf__3stdFf
/* 805B8234  D0 3F 12 88 */	stfs f1, 0x1288(r31)
/* 805B8238  C0 3F 12 74 */	lfs f1, 0x1274(r31)
/* 805B823C  C0 1F 12 50 */	lfs f0, 0x1250(r31)
/* 805B8240  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B8244  48 00 22 95 */	bl fabsf__3stdFf
/* 805B8248  D0 3F 12 8C */	stfs f1, 0x128c(r31)
/* 805B824C  C0 3F 12 78 */	lfs f1, 0x1278(r31)
/* 805B8250  C0 1F 12 54 */	lfs f0, 0x1254(r31)
/* 805B8254  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B8258  48 00 22 81 */	bl fabsf__3stdFf
/* 805B825C  D0 3F 12 90 */	stfs f1, 0x1290(r31)
lbl_805B8260:
/* 805B8260  7F E3 FB 78 */	mr r3, r31
/* 805B8264  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805B8268  4B FF DF FD */	bl cam_3d_morf__FP10b_bq_classf
/* 805B826C  38 7F 12 9C */	addi r3, r31, 0x129c
/* 805B8270  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805B8274  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B8278  C0 7E 02 20 */	lfs f3, 0x220(r30)
/* 805B827C  4B CB 77 C1 */	bl cLib_addCalc2__FPffff
lbl_805B8280:
/* 805B8280  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B8284  2C 00 00 AA */	cmpwi r0, 0xaa
/* 805B8288  41 80 04 9C */	blt lbl_805B8724
/* 805B828C  7F E3 FB 78 */	mr r3, r31
/* 805B8290  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 805B8294  4B FF DF D1 */	bl cam_3d_morf__FP10b_bq_classf
/* 805B8298  38 7F 12 9C */	addi r3, r31, 0x129c
/* 805B829C  C0 3E 02 24 */	lfs f1, 0x224(r30)
/* 805B82A0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B82A4  C0 7E 02 28 */	lfs f3, 0x228(r30)
/* 805B82A8  4B CB 77 95 */	bl cLib_addCalc2__FPffff
/* 805B82AC  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B82B0  2C 00 01 04 */	cmpwi r0, 0x104
/* 805B82B4  40 82 00 0C */	bne lbl_805B82C0
/* 805B82B8  38 00 00 01 */	li r0, 1
/* 805B82BC  98 1F 13 97 */	stb r0, 0x1397(r31)
lbl_805B82C0:
/* 805B82C0  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B82C4  2C 00 01 9A */	cmpwi r0, 0x19a
/* 805B82C8  40 82 00 0C */	bne lbl_805B82D4
/* 805B82CC  38 00 00 01 */	li r0, 1
/* 805B82D0  98 1F 13 95 */	stb r0, 0x1395(r31)
lbl_805B82D4:
/* 805B82D4  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B82D8  2C 00 01 9C */	cmpwi r0, 0x19c
/* 805B82DC  40 82 00 0C */	bne lbl_805B82E8
/* 805B82E0  38 00 00 01 */	li r0, 1
/* 805B82E4  98 1F 06 F8 */	stb r0, 0x6f8(r31)
lbl_805B82E8:
/* 805B82E8  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B82EC  2C 00 01 9F */	cmpwi r0, 0x19f
/* 805B82F0  41 80 00 18 */	blt lbl_805B8308
/* 805B82F4  38 7F 12 A4 */	addi r3, r31, 0x12a4
/* 805B82F8  C0 3E 02 2C */	lfs f1, 0x22c(r30)
/* 805B82FC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805B8300  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 805B8304  4B CB 77 39 */	bl cLib_addCalc2__FPffff
lbl_805B8308:
/* 805B8308  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B830C  2C 00 02 14 */	cmpwi r0, 0x214
/* 805B8310  40 82 04 14 */	bne lbl_805B8724
/* 805B8314  38 00 00 35 */	li r0, 0x35
/* 805B8318  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B831C  38 00 00 00 */	li r0, 0
/* 805B8320  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B8324  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 805B8328  D0 1F 12 A4 */	stfs f0, 0x12a4(r31)
/* 805B832C  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B8330  C0 3E 02 30 */	lfs f1, 0x230(r30)
/* 805B8334  C0 5E 02 34 */	lfs f2, 0x234(r30)
/* 805B8338  C0 7E 02 38 */	lfs f3, 0x238(r30)
/* 805B833C  48 00 1E 25 */	bl set__4cXyzFfff
/* 805B8340  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B8344  C0 3E 02 3C */	lfs f1, 0x23c(r30)
/* 805B8348  C0 5E 02 40 */	lfs f2, 0x240(r30)
/* 805B834C  C0 7E 02 44 */	lfs f3, 0x244(r30)
/* 805B8350  48 00 1E 11 */	bl set__4cXyzFfff
/* 805B8354  38 7F 12 70 */	addi r3, r31, 0x1270
/* 805B8358  C0 3E 02 48 */	lfs f1, 0x248(r30)
/* 805B835C  C0 5E 02 4C */	lfs f2, 0x24c(r30)
/* 805B8360  C0 7E 02 50 */	lfs f3, 0x250(r30)
/* 805B8364  48 00 1D FD */	bl set__4cXyzFfff
/* 805B8368  38 7F 12 58 */	addi r3, r31, 0x1258
/* 805B836C  C0 3E 02 54 */	lfs f1, 0x254(r30)
/* 805B8370  C0 5E 02 58 */	lfs f2, 0x258(r30)
/* 805B8374  C0 7E 02 5C */	lfs f3, 0x25c(r30)
/* 805B8378  48 00 1D E9 */	bl set__4cXyzFfff
/* 805B837C  C0 3F 12 58 */	lfs f1, 0x1258(r31)
/* 805B8380  C0 1F 12 40 */	lfs f0, 0x1240(r31)
/* 805B8384  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B8388  48 00 21 51 */	bl fabsf__3stdFf
/* 805B838C  D0 3F 12 7C */	stfs f1, 0x127c(r31)
/* 805B8390  C0 3F 12 5C */	lfs f1, 0x125c(r31)
/* 805B8394  C0 1F 12 44 */	lfs f0, 0x1244(r31)
/* 805B8398  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B839C  48 00 21 3D */	bl fabsf__3stdFf
/* 805B83A0  D0 3F 12 80 */	stfs f1, 0x1280(r31)
/* 805B83A4  C0 3F 12 60 */	lfs f1, 0x1260(r31)
/* 805B83A8  C0 1F 12 48 */	lfs f0, 0x1248(r31)
/* 805B83AC  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B83B0  48 00 21 29 */	bl fabsf__3stdFf
/* 805B83B4  D0 3F 12 84 */	stfs f1, 0x1284(r31)
/* 805B83B8  C0 3F 12 70 */	lfs f1, 0x1270(r31)
/* 805B83BC  C0 1F 12 4C */	lfs f0, 0x124c(r31)
/* 805B83C0  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B83C4  48 00 21 15 */	bl fabsf__3stdFf
/* 805B83C8  D0 3F 12 88 */	stfs f1, 0x1288(r31)
/* 805B83CC  C0 3F 12 74 */	lfs f1, 0x1274(r31)
/* 805B83D0  C0 1F 12 50 */	lfs f0, 0x1250(r31)
/* 805B83D4  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B83D8  48 00 21 01 */	bl fabsf__3stdFf
/* 805B83DC  D0 3F 12 8C */	stfs f1, 0x128c(r31)
/* 805B83E0  C0 3F 12 78 */	lfs f1, 0x1278(r31)
/* 805B83E4  C0 1F 12 54 */	lfs f0, 0x1254(r31)
/* 805B83E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B83EC  48 00 20 ED */	bl fabsf__3stdFf
/* 805B83F0  D0 3F 12 90 */	stfs f1, 0x1290(r31)
/* 805B83F4  38 61 01 4C */	addi r3, r1, 0x14c
/* 805B83F8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B83FC  FC 40 08 90 */	fmr f2, f1
/* 805B8400  FC 60 08 90 */	fmr f3, f1
/* 805B8404  48 00 21 2D */	bl __ct__4cXyzFfff
/* 805B8408  3B 40 00 00 */	li r26, 0
/* 805B840C  3B 00 00 00 */	li r24, 0
/* 805B8410  3C 60 80 5C */	lis r3, g_e_i_5525@ha /* 0x805BAA74@ha */
/* 805B8414  3B 23 AA 74 */	addi r25, r3, g_e_i_5525@l /* 0x805BAA74@l */
lbl_805B8418:
/* 805B8418  7C 79 C2 2E */	lhzx r3, r25, r24
/* 805B841C  38 81 01 4C */	addi r4, r1, 0x14c
/* 805B8420  38 A0 00 00 */	li r5, 0
/* 805B8424  38 C0 00 00 */	li r6, 0
/* 805B8428  48 00 1E 4D */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 805B842C  3B 5A 00 01 */	addi r26, r26, 1
/* 805B8430  2C 1A 00 05 */	cmpwi r26, 5
/* 805B8434  3B 18 00 02 */	addi r24, r24, 2
/* 805B8438  41 80 FF E0 */	blt lbl_805B8418
/* 805B843C  38 61 00 20 */	addi r3, r1, 0x20
/* 805B8440  3C 80 00 07 */	lis r4, 0x0007 /* 0x0007027E@ha */
/* 805B8444  38 84 02 7E */	addi r4, r4, 0x027E /* 0x0007027E@l */
/* 805B8448  48 00 1E 25 */	bl __ct__10JAISoundIDFUl
/* 805B844C  7C 64 1B 78 */	mr r4, r3
/* 805B8450  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 805B8454  38 A0 00 00 */	li r5, 0
/* 805B8458  38 C0 00 00 */	li r6, 0
/* 805B845C  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 805B8460  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805B8464  7D 89 03 A6 */	mtctr r12
/* 805B8468  4E 80 04 21 */	bctrl 
/* 805B846C  38 61 01 4C */	addi r3, r1, 0x14c
/* 805B8470  38 80 FF FF */	li r4, -1
/* 805B8474  4B FF B7 AD */	bl __dt__4cXyzFv
/* 805B8478  48 00 02 AC */	b lbl_805B8724
lbl_805B847C:
/* 805B847C  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B8480  2C 00 00 64 */	cmpwi r0, 0x64
/* 805B8484  41 80 00 24 */	blt lbl_805B84A8
/* 805B8488  7F E3 FB 78 */	mr r3, r31
/* 805B848C  C0 3E 01 54 */	lfs f1, 0x154(r30)
/* 805B8490  4B FF DD D5 */	bl cam_3d_morf__FP10b_bq_classf
/* 805B8494  38 7F 12 9C */	addi r3, r31, 0x129c
/* 805B8498  C0 3E 02 60 */	lfs f1, 0x260(r30)
/* 805B849C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B84A0  C0 7E 02 64 */	lfs f3, 0x264(r30)
/* 805B84A4  4B CB 75 99 */	bl cLib_addCalc2__FPffff
lbl_805B84A8:
/* 805B84A8  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B84AC  2C 00 00 64 */	cmpwi r0, 0x64
/* 805B84B0  40 82 00 68 */	bne lbl_805B8518
/* 805B84B4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B84B8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B84BC  80 63 00 00 */	lwz r3, 0(r3)
/* 805B84C0  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 805B84C4  4B A5 3F 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 805B84C8  38 61 01 88 */	addi r3, r1, 0x188
/* 805B84CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B84D0  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 805B84D4  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 805B84D8  48 00 1C 89 */	bl set__4cXyzFfff
/* 805B84DC  38 61 01 88 */	addi r3, r1, 0x188
/* 805B84E0  38 81 01 7C */	addi r4, r1, 0x17c
/* 805B84E4  4B CB 8A 09 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805B84E8  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B84EC  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 805B84F0  48 00 20 51 */	bl __apl__4cXyzFRC3Vec
/* 805B84F4  38 60 02 F2 */	li r3, 0x2f2
/* 805B84F8  38 80 00 00 */	li r4, 0
/* 805B84FC  38 A1 01 7C */	addi r5, r1, 0x17c
/* 805B8500  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B8504  7C 06 07 74 */	extsb r6, r0
/* 805B8508  38 E0 00 00 */	li r7, 0
/* 805B850C  39 00 00 00 */	li r8, 0
/* 805B8510  39 20 FF FF */	li r9, -1
/* 805B8514  4B A6 18 85 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_805B8518:
/* 805B8518  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B851C  2C 00 00 78 */	cmpwi r0, 0x78
/* 805B8520  40 82 00 34 */	bne lbl_805B8554
/* 805B8524  38 00 00 01 */	li r0, 1
/* 805B8528  98 1F 11 51 */	stb r0, 0x1151(r31)
/* 805B852C  38 00 02 F2 */	li r0, 0x2f2
/* 805B8530  B0 01 00 0A */	sth r0, 0xa(r1)
/* 805B8534  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 805B8538  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 805B853C  38 81 00 0A */	addi r4, r1, 0xa
/* 805B8540  4B A6 12 B9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805B8544  28 03 00 00 */	cmplwi r3, 0
/* 805B8548  41 82 00 0C */	beq lbl_805B8554
/* 805B854C  38 00 00 00 */	li r0, 0
/* 805B8550  98 03 05 9B */	stb r0, 0x59b(r3)
lbl_805B8554:
/* 805B8554  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B8558  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 805B855C  40 82 01 C8 */	bne lbl_805B8724
/* 805B8560  38 00 00 36 */	li r0, 0x36
/* 805B8564  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B8568  38 00 00 00 */	li r0, 0
/* 805B856C  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B8570  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B8574  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 805B8578  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805B857C  C0 7E 02 68 */	lfs f3, 0x268(r30)
/* 805B8580  48 00 1B E1 */	bl set__4cXyzFfff
/* 805B8584  48 00 1C 31 */	bl daPy_getPlayerActorClass__Fv
/* 805B8588  38 81 01 7C */	addi r4, r1, 0x17c
/* 805B858C  38 A0 80 00 */	li r5, -32768
/* 805B8590  38 C0 00 00 */	li r6, 0
/* 805B8594  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805B8598  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805B859C  7D 89 03 A6 */	mtctr r12
/* 805B85A0  4E 80 04 21 */	bctrl 
/* 805B85A4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 805B85A8  D0 1F 12 98 */	stfs f0, 0x1298(r31)
/* 805B85AC  48 00 01 78 */	b lbl_805B8724
lbl_805B85B0:
/* 805B85B0  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B85B4  C0 3E 02 6C */	lfs f1, 0x26c(r30)
/* 805B85B8  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 805B85BC  C0 7E 02 70 */	lfs f3, 0x270(r30)
/* 805B85C0  48 00 1B A1 */	bl set__4cXyzFfff
/* 805B85C4  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B85C8  C0 3E 02 74 */	lfs f1, 0x274(r30)
/* 805B85CC  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 805B85D0  C0 7E 02 78 */	lfs f3, 0x278(r30)
/* 805B85D4  48 00 1B 8D */	bl set__4cXyzFfff
/* 805B85D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B85DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B85E0  80 63 00 00 */	lwz r3, 0(r3)
/* 805B85E4  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 805B85E8  4B A5 3D F5 */	bl mDoMtx_YrotS__FPA4_fs
/* 805B85EC  38 61 01 88 */	addi r3, r1, 0x188
/* 805B85F0  FC 20 F8 90 */	fmr f1, f31
/* 805B85F4  C0 5F 12 98 */	lfs f2, 0x1298(r31)
/* 805B85F8  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 805B85FC  48 00 1B 65 */	bl set__4cXyzFfff
/* 805B8600  38 61 01 88 */	addi r3, r1, 0x188
/* 805B8604  38 81 01 7C */	addi r4, r1, 0x17c
/* 805B8608  4B CB 88 E5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805B860C  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B8610  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 805B8614  48 00 1F 2D */	bl __apl__4cXyzFRC3Vec
/* 805B8618  38 7F 12 98 */	addi r3, r31, 0x1298
/* 805B861C  C0 3E 02 7C */	lfs f1, 0x27c(r30)
/* 805B8620  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 805B8624  C0 7E 00 5C */	lfs f3, 0x5c(r30)
/* 805B8628  4B CB 74 15 */	bl cLib_addCalc2__FPffff
/* 805B862C  38 00 02 F2 */	li r0, 0x2f2
/* 805B8630  B0 01 00 08 */	sth r0, 8(r1)
/* 805B8634  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 805B8638  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 805B863C  38 81 00 08 */	addi r4, r1, 8
/* 805B8640  4B A6 11 B9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805B8644  7C 78 1B 79 */	or. r24, r3, r3
/* 805B8648  41 82 00 28 */	beq lbl_805B8670
/* 805B864C  38 61 00 5C */	addi r3, r1, 0x5c
/* 805B8650  38 81 01 7C */	addi r4, r1, 0x17c
/* 805B8654  48 00 1B FD */	bl __ct__4cXyzFRC4cXyz
/* 805B8658  7F 03 C3 78 */	mr r3, r24
/* 805B865C  38 81 00 5C */	addi r4, r1, 0x5c
/* 805B8660  48 00 1B D5 */	bl setCurrentPos__16obj_ystone_classF4cXyz
/* 805B8664  38 61 00 5C */	addi r3, r1, 0x5c
/* 805B8668  38 80 FF FF */	li r4, -1
/* 805B866C  4B FF B5 B5 */	bl __dt__4cXyzFv
lbl_805B8670:
/* 805B8670  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B8674  2C 00 00 0A */	cmpwi r0, 0xa
/* 805B8678  40 82 00 64 */	bne lbl_805B86DC
/* 805B867C  38 61 01 40 */	addi r3, r1, 0x140
/* 805B8680  C0 3E 02 80 */	lfs f1, 0x280(r30)
/* 805B8684  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805B8688  C0 7E 02 84 */	lfs f3, 0x284(r30)
/* 805B868C  48 00 1E A5 */	bl __ct__4cXyzFfff
/* 805B8690  38 61 00 24 */	addi r3, r1, 0x24
/* 805B8694  38 80 00 00 */	li r4, 0
/* 805B8698  38 A0 00 00 */	li r5, 0
/* 805B869C  38 C0 00 00 */	li r6, 0
/* 805B86A0  4B CA ED 55 */	bl __ct__5csXyzFsss
/* 805B86A4  38 61 01 40 */	addi r3, r1, 0x140
/* 805B86A8  38 81 00 24 */	addi r4, r1, 0x24
/* 805B86AC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B86B0  7C 05 07 74 */	extsb r5, r0
/* 805B86B4  38 C0 00 00 */	li r6, 0
/* 805B86B8  38 E0 00 01 */	li r7, 1
/* 805B86BC  39 00 00 FF */	li r8, 0xff
/* 805B86C0  4B A6 42 9D */	bl fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc
/* 805B86C4  38 61 00 24 */	addi r3, r1, 0x24
/* 805B86C8  38 80 FF FF */	li r4, -1
/* 805B86CC  48 00 1A 59 */	bl __dt__5csXyzFv
/* 805B86D0  38 61 01 40 */	addi r3, r1, 0x140
/* 805B86D4  38 80 FF FF */	li r4, -1
/* 805B86D8  4B FF B5 49 */	bl __dt__4cXyzFv
lbl_805B86DC:
/* 805B86DC  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B86E0  2C 00 00 6E */	cmpwi r0, 0x6e
/* 805B86E4  40 82 00 40 */	bne lbl_805B8724
/* 805B86E8  38 00 00 64 */	li r0, 0x64
/* 805B86EC  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B86F0  38 00 00 01 */	li r0, 1
/* 805B86F4  98 1F 11 51 */	stb r0, 0x1151(r31)
/* 805B86F8  48 00 19 E5 */	bl dComIfGs_onStageBossEnemy__Fv
/* 805B86FC  7F E3 FB 78 */	mr r3, r31
/* 805B8700  48 00 19 D5 */	bl fopAcM_GetParam__FPCv
/* 805B8704  54 64 86 3E */	rlwinm r4, r3, 0x10, 0x18, 0x1f
/* 805B8708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B870C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B8710  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B8714  7C 05 07 74 */	extsb r5, r0
/* 805B8718  4B A7 CB 99 */	bl offSwitch__10dSv_info_cFii
/* 805B871C  7F E3 FB 78 */	mr r3, r31
/* 805B8720  4B FF DC 29 */	bl fish_set__FP10b_bq_class
lbl_805B8724:
/* 805B8724  A8 1F 12 38 */	lha r0, 0x1238(r31)
/* 805B8728  2C 00 00 0B */	cmpwi r0, 0xb
/* 805B872C  41 80 00 BC */	blt lbl_805B87E8
/* 805B8730  2C 00 00 14 */	cmpwi r0, 0x14
/* 805B8734  40 80 00 B4 */	bge lbl_805B87E8
/* 805B8738  48 00 1D D9 */	bl dComIfGp_getEvent__Fv
/* 805B873C  48 00 19 85 */	bl checkSkipEdge__14dEvt_control_cFv
/* 805B8740  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805B8744  41 82 00 A4 */	beq lbl_805B87E8
/* 805B8748  38 00 00 14 */	li r0, 0x14
/* 805B874C  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 805B8750  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 805B8754  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805B8758  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805B875C  80 63 00 00 */	lwz r3, 0(r3)
/* 805B8760  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805B8764  4B CF 71 21 */	bl subBgmStop__8Z2SeqMgrFv
/* 805B8768  7F E3 FB 78 */	mr r3, r31
/* 805B876C  48 00 19 69 */	bl fopAcM_GetParam__FPCv
/* 805B8770  54 64 C6 3E */	rlwinm r4, r3, 0x18, 0x18, 0x1f
/* 805B8774  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B8778  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B877C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B8780  7C 05 07 74 */	extsb r5, r0
/* 805B8784  4B A7 CA 7D */	bl onSwitch__10dSv_info_cFii
/* 805B8788  38 60 00 01 */	li r3, 1
/* 805B878C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805B8790  38 80 00 00 */	li r4, 0
/* 805B8794  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B8798  7C 05 07 74 */	extsb r5, r0
/* 805B879C  38 C0 00 00 */	li r6, 0
/* 805B87A0  38 E0 FF FF */	li r7, -1
/* 805B87A4  4B A6 E9 CD */	bl dStage_changeScene__FifUlScsi
/* 805B87A8  38 00 03 E8 */	li r0, 0x3e8
/* 805B87AC  B0 1F 12 38 */	sth r0, 0x1238(r31)
/* 805B87B0  48 00 18 E5 */	bl dComIfGp_event_reset__Fv
/* 805B87B4  38 61 01 64 */	addi r3, r1, 0x164
/* 805B87B8  38 80 FF FF */	li r4, -1
/* 805B87BC  4B FF B4 65 */	bl __dt__4cXyzFv
/* 805B87C0  38 61 01 70 */	addi r3, r1, 0x170
/* 805B87C4  38 80 FF FF */	li r4, -1
/* 805B87C8  4B FF B4 59 */	bl __dt__4cXyzFv
/* 805B87CC  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B87D0  38 80 FF FF */	li r4, -1
/* 805B87D4  4B FF B4 4D */	bl __dt__4cXyzFv
/* 805B87D8  38 61 01 88 */	addi r3, r1, 0x188
/* 805B87DC  38 80 FF FF */	li r4, -1
/* 805B87E0  4B FF B4 41 */	bl __dt__4cXyzFv
/* 805B87E4  48 00 02 00 */	b lbl_805B89E4
lbl_805B87E8:
/* 805B87E8  A8 1F 12 38 */	lha r0, 0x1238(r31)
/* 805B87EC  2C 00 00 64 */	cmpwi r0, 0x64
/* 805B87F0  40 82 00 6C */	bne lbl_805B885C
/* 805B87F4  38 61 00 50 */	addi r3, r1, 0x50
/* 805B87F8  38 9F 12 4C */	addi r4, r31, 0x124c
/* 805B87FC  48 00 1A 55 */	bl __ct__4cXyzFRC4cXyz
/* 805B8800  38 61 00 44 */	addi r3, r1, 0x44
/* 805B8804  38 9F 12 40 */	addi r4, r31, 0x1240
/* 805B8808  48 00 1A 49 */	bl __ct__4cXyzFRC4cXyz
/* 805B880C  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B8810  38 81 00 50 */	addi r4, r1, 0x50
/* 805B8814  38 A1 00 44 */	addi r5, r1, 0x44
/* 805B8818  4B BC 84 01 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 805B881C  38 61 00 44 */	addi r3, r1, 0x44
/* 805B8820  38 80 FF FF */	li r4, -1
/* 805B8824  4B FF B3 FD */	bl __dt__4cXyzFv
/* 805B8828  38 61 00 50 */	addi r3, r1, 0x50
/* 805B882C  38 80 FF FF */	li r4, -1
/* 805B8830  4B FF B3 F1 */	bl __dt__4cXyzFv
/* 805B8834  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B8838  4B BA 8C 75 */	bl Start__9dCamera_cFv
/* 805B883C  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B8840  38 80 00 00 */	li r4, 0
/* 805B8844  4B BA A7 C9 */	bl SetTrimSize__9dCamera_cFl
/* 805B8848  48 00 18 4D */	bl dComIfGp_event_reset__Fv
/* 805B884C  48 00 19 69 */	bl daPy_getPlayerActorClass__Fv
/* 805B8850  48 00 18 31 */	bl cancelOriginalDemo__9daPy_py_cFv
/* 805B8854  38 00 00 00 */	li r0, 0
/* 805B8858  B0 1F 12 38 */	sth r0, 0x1238(r31)
lbl_805B885C:
/* 805B885C  A8 1F 12 38 */	lha r0, 0x1238(r31)
/* 805B8860  2C 00 00 00 */	cmpwi r0, 0
/* 805B8864  41 82 01 30 */	beq lbl_805B8994
/* 805B8868  A8 1F 12 3A */	lha r0, 0x123a(r31)
/* 805B886C  1C 00 2C 00 */	mulli r0, r0, 0x2c00
/* 805B8870  7C 03 07 34 */	extsh r3, r0
/* 805B8874  48 00 01 99 */	bl cM_scos__Fs
/* 805B8878  C0 1F 12 A8 */	lfs f0, 0x12a8(r31)
/* 805B887C  EC 20 00 72 */	fmuls f1, f0, f1
/* 805B8880  C0 1E 02 88 */	lfs f0, 0x288(r30)
/* 805B8884  EC 00 00 72 */	fmuls f0, f0, f1
/* 805B8888  FC 00 00 1E */	fctiwz f0, f0
/* 805B888C  D8 01 02 08 */	stfd f0, 0x208(r1)
/* 805B8890  83 01 02 0C */	lwz r24, 0x20c(r1)
/* 805B8894  38 61 01 34 */	addi r3, r1, 0x134
/* 805B8898  38 9F 12 4C */	addi r4, r31, 0x124c
/* 805B889C  48 00 19 B5 */	bl __ct__4cXyzFRC4cXyz
/* 805B88A0  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 805B88A4  EC 00 F8 2A */	fadds f0, f0, f31
/* 805B88A8  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 805B88AC  38 61 01 28 */	addi r3, r1, 0x128
/* 805B88B0  38 9F 12 40 */	addi r4, r31, 0x1240
/* 805B88B4  48 00 19 9D */	bl __ct__4cXyzFRC4cXyz
/* 805B88B8  7F 80 07 75 */	extsb. r0, r28
/* 805B88BC  41 82 00 5C */	beq lbl_805B8918
/* 805B88C0  38 61 01 94 */	addi r3, r1, 0x194
/* 805B88C4  4B AB F3 A5 */	bl __ct__11dBgS_LinChkFv
/* 805B88C8  38 61 01 94 */	addi r3, r1, 0x194
/* 805B88CC  38 81 01 34 */	addi r4, r1, 0x134
/* 805B88D0  38 A1 01 28 */	addi r5, r1, 0x128
/* 805B88D4  7F E6 FB 78 */	mr r6, r31
/* 805B88D8  4B AB F4 8D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805B88DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B88E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B88E4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805B88E8  38 81 01 94 */	addi r4, r1, 0x194
/* 805B88EC  4B AB BA C9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 805B88F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805B88F4  41 82 00 18 */	beq lbl_805B890C
/* 805B88F8  38 61 01 94 */	addi r3, r1, 0x194
/* 805B88FC  48 00 01 09 */	bl GetCross__11cBgS_LinChkFv
/* 805B8900  7C 64 1B 78 */	mr r4, r3
/* 805B8904  38 61 01 28 */	addi r3, r1, 0x128
/* 805B8908  48 00 18 69 */	bl __as__4cXyzFRC4cXyz
lbl_805B890C:
/* 805B890C  38 61 01 94 */	addi r3, r1, 0x194
/* 805B8910  38 80 FF FF */	li r4, -1
/* 805B8914  4B AB F3 C9 */	bl __dt__11dBgS_LinChkFv
lbl_805B8918:
/* 805B8918  38 61 00 38 */	addi r3, r1, 0x38
/* 805B891C  38 81 01 34 */	addi r4, r1, 0x134
/* 805B8920  48 00 19 31 */	bl __ct__4cXyzFRC4cXyz
/* 805B8924  38 61 00 2C */	addi r3, r1, 0x2c
/* 805B8928  38 81 01 28 */	addi r4, r1, 0x128
/* 805B892C  48 00 19 25 */	bl __ct__4cXyzFRC4cXyz
/* 805B8930  38 7D 02 48 */	addi r3, r29, 0x248
/* 805B8934  38 81 00 38 */	addi r4, r1, 0x38
/* 805B8938  38 A1 00 2C */	addi r5, r1, 0x2c
/* 805B893C  7F 06 C3 78 */	mr r6, r24
/* 805B8940  C0 3F 12 A4 */	lfs f1, 0x12a4(r31)
/* 805B8944  4B BC 81 FD */	bl Set__9dCamera_cF4cXyz4cXyzsf
/* 805B8948  38 61 00 2C */	addi r3, r1, 0x2c
/* 805B894C  38 80 FF FF */	li r4, -1
/* 805B8950  4B FF B2 D1 */	bl __dt__4cXyzFv
/* 805B8954  38 61 00 38 */	addi r3, r1, 0x38
/* 805B8958  38 80 FF FF */	li r4, -1
/* 805B895C  4B FF B2 C5 */	bl __dt__4cXyzFv
/* 805B8960  38 7F 12 A8 */	addi r3, r31, 0x12a8
/* 805B8964  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B8968  FC 40 08 90 */	fmr f2, f1
/* 805B896C  4B CB 71 15 */	bl cLib_addCalc0__FPfff
/* 805B8970  A8 7F 12 3A */	lha r3, 0x123a(r31)
/* 805B8974  38 03 00 01 */	addi r0, r3, 1
/* 805B8978  B0 1F 12 3A */	sth r0, 0x123a(r31)
/* 805B897C  38 61 01 28 */	addi r3, r1, 0x128
/* 805B8980  38 80 FF FF */	li r4, -1
/* 805B8984  4B FF B2 9D */	bl __dt__4cXyzFv
/* 805B8988  38 61 01 34 */	addi r3, r1, 0x134
/* 805B898C  38 80 FF FF */	li r4, -1
/* 805B8990  4B FF B2 91 */	bl __dt__4cXyzFv
lbl_805B8994:
/* 805B8994  88 1F 13 97 */	lbz r0, 0x1397(r31)
/* 805B8998  7C 00 07 75 */	extsb. r0, r0
/* 805B899C  41 82 00 18 */	beq lbl_805B89B4
/* 805B89A0  38 7F 13 98 */	addi r3, r31, 0x1398
/* 805B89A4  C0 3E 02 8C */	lfs f1, 0x28c(r30)
/* 805B89A8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805B89AC  C0 7E 02 90 */	lfs f3, 0x290(r30)
/* 805B89B0  4B CB 70 8D */	bl cLib_addCalc2__FPffff
lbl_805B89B4:
/* 805B89B4  38 61 01 64 */	addi r3, r1, 0x164
/* 805B89B8  38 80 FF FF */	li r4, -1
/* 805B89BC  4B FF B2 65 */	bl __dt__4cXyzFv
/* 805B89C0  38 61 01 70 */	addi r3, r1, 0x170
/* 805B89C4  38 80 FF FF */	li r4, -1
/* 805B89C8  4B FF B2 59 */	bl __dt__4cXyzFv
/* 805B89CC  38 61 01 7C */	addi r3, r1, 0x17c
/* 805B89D0  38 80 FF FF */	li r4, -1
/* 805B89D4  4B FF B2 4D */	bl __dt__4cXyzFv
/* 805B89D8  38 61 01 88 */	addi r3, r1, 0x188
/* 805B89DC  38 80 FF FF */	li r4, -1
/* 805B89E0  4B FF B2 41 */	bl __dt__4cXyzFv
lbl_805B89E4:
/* 805B89E4  E3 E1 02 38 */	psq_l f31, 568(r1), 0, 0 /* qr0 */
/* 805B89E8  CB E1 02 30 */	lfd f31, 0x230(r1)
/* 805B89EC  39 61 02 30 */	addi r11, r1, 0x230
/* 805B89F0  4B DA 98 25 */	bl _restgpr_24
/* 805B89F4  80 01 02 44 */	lwz r0, 0x244(r1)
/* 805B89F8  7C 08 03 A6 */	mtlr r0
/* 805B89FC  38 21 02 40 */	addi r1, r1, 0x240
/* 805B8A00  4E 80 00 20 */	blr 
