lbl_80846718:
/* 80846718  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8084671C  7C 08 02 A6 */	mflr r0
/* 80846720  90 01 00 44 */	stw r0, 0x44(r1)
/* 80846724  39 61 00 40 */	addi r11, r1, 0x40
/* 80846728  4B B1 BA B5 */	bl _savegpr_29
/* 8084672C  7C 7E 1B 78 */	mr r30, r3
/* 80846730  7C 9D 23 78 */	mr r29, r4
/* 80846734  54 84 04 3F */	clrlwi. r4, r4, 0x10
/* 80846738  40 82 01 30 */	bne lbl_80846868
/* 8084673C  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80846740  80 C3 00 1C */	lwz r6, 0x1c(r3)
/* 80846744  38 A1 00 04 */	addi r5, r1, 4
/* 80846748  38 86 FF FC */	addi r4, r6, -4
/* 8084674C  38 00 00 04 */	li r0, 4
/* 80846750  7C 09 03 A6 */	mtctr r0
lbl_80846754:
/* 80846754  80 64 00 04 */	lwz r3, 4(r4)
/* 80846758  84 04 00 08 */	lwzu r0, 8(r4)
/* 8084675C  90 65 00 04 */	stw r3, 4(r5)
/* 80846760  94 05 00 08 */	stwu r0, 8(r5)
/* 80846764  42 00 FF F0 */	bdnz lbl_80846754
/* 80846768  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8084676C  80 7E 07 04 */	lwz r3, 0x704(r30)
/* 80846770  C0 03 00 00 */	lfs f0, 0(r3)
/* 80846774  EC 01 00 28 */	fsubs f0, f1, f0
/* 80846778  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8084677C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80846780  C0 03 00 04 */	lfs f0, 4(r3)
/* 80846784  EC 01 00 28 */	fsubs f0, f1, f0
/* 80846788  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8084678C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80846790  C0 03 00 08 */	lfs f0, 8(r3)
/* 80846794  EC 01 00 28 */	fsubs f0, f1, f0
/* 80846798  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8084679C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808467A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808467A4  C0 26 00 14 */	lfs f1, 0x14(r6)
/* 808467A8  C0 46 00 18 */	lfs f2, 0x18(r6)
/* 808467AC  C0 66 00 1C */	lfs f3, 0x1c(r6)
/* 808467B0  4B B0 01 39 */	bl PSMTXTrans
/* 808467B4  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 808467B8  80 63 00 20 */	lwz r3, 0x20(r3)
/* 808467BC  4B 7C 67 C1 */	bl quatM__14mDoMtx_stack_cFPC10Quaternion
/* 808467C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808467C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808467C8  7C 64 1B 78 */	mr r4, r3
/* 808467CC  4B AF FD E5 */	bl PSMTXInverse
/* 808467D0  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 808467D4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 808467D8  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 808467DC  7F E3 FB 78 */	mr r3, r31
/* 808467E0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808467E4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808467E8  3C A0 80 43 */	lis r5, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 808467EC  38 A5 4B E4 */	addi r5, r5, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 808467F0  4B AF FC F5 */	bl PSMTXConcat
/* 808467F4  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 808467F8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 808467FC  7F E3 FB 78 */	mr r3, r31
/* 80846800  4B B0 01 E9 */	bl PSMTXQuat
/* 80846804  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80846808  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8084680C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80846810  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80846814  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80846818  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8084681C  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80846820  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80846824  7F E4 FB 78 */	mr r4, r31
/* 80846828  7C 65 1B 78 */	mr r5, r3
/* 8084682C  4B AF FC B9 */	bl PSMTXConcat
/* 80846830  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80846834  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80846838  7F E4 FB 78 */	mr r4, r31
/* 8084683C  4B AF FC 75 */	bl PSMTXCopy
/* 80846840  88 1E 06 D8 */	lbz r0, 0x6d8(r30)
/* 80846844  28 00 00 00 */	cmplwi r0, 0
/* 80846848  40 82 00 10 */	bne lbl_80846858
/* 8084684C  88 1E 06 DA */	lbz r0, 0x6da(r30)
/* 80846850  28 00 00 00 */	cmplwi r0, 0
/* 80846854  41 82 01 00 */	beq lbl_80846954
lbl_80846858:
/* 80846858  3C 60 80 85 */	lis r3, lit_3722@ha /* 0x80848E58@ha */
/* 8084685C  C0 03 8E 58 */	lfs f0, lit_3722@l(r3)  /* 0x80848E58@l */
/* 80846860  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 80846864  48 00 00 F0 */	b lbl_80846954
lbl_80846868:
/* 80846868  28 04 00 17 */	cmplwi r4, 0x17
/* 8084686C  40 82 00 2C */	bne lbl_80846898
/* 80846870  88 1E 06 D8 */	lbz r0, 0x6d8(r30)
/* 80846874  28 00 00 00 */	cmplwi r0, 0
/* 80846878  40 82 00 10 */	bne lbl_80846888
/* 8084687C  88 1E 06 DA */	lbz r0, 0x6da(r30)
/* 80846880  28 00 00 00 */	cmplwi r0, 0
/* 80846884  41 82 00 D0 */	beq lbl_80846954
lbl_80846888:
/* 80846888  3C 60 80 85 */	lis r3, lit_3697@ha /* 0x80848E54@ha */
/* 8084688C  C0 03 8E 54 */	lfs f0, lit_3697@l(r3)  /* 0x80848E54@l */
/* 80846890  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 80846894  48 00 00 C0 */	b lbl_80846954
lbl_80846898:
/* 80846898  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8084689C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 808468A0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 808468A4  1F E4 00 30 */	mulli r31, r4, 0x30
/* 808468A8  7C 60 FA 14 */	add r3, r0, r31
/* 808468AC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808468B0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808468B4  4B AF FB FD */	bl PSMTXCopy
/* 808468B8  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 808468BC  28 00 00 01 */	cmplwi r0, 1
/* 808468C0  40 82 00 34 */	bne lbl_808468F4
/* 808468C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808468C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808468CC  A8 9E 06 F4 */	lha r4, 0x6f4(r30)
/* 808468D0  4B 7C 5A CD */	bl mDoMtx_XrotM__FPA4_fs
/* 808468D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808468D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808468DC  A8 9E 06 F2 */	lha r4, 0x6f2(r30)
/* 808468E0  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 808468E4  7C 04 00 50 */	subf r0, r4, r0
/* 808468E8  7C 04 07 34 */	extsh r4, r0
/* 808468EC  4B 7C 5B E1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 808468F0  48 00 00 2C */	b lbl_8084691C
lbl_808468F4:
/* 808468F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808468F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808468FC  A8 9E 06 EE */	lha r4, 0x6ee(r30)
/* 80846900  4B 7C 5A 9D */	bl mDoMtx_XrotM__FPA4_fs
/* 80846904  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80846908  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084690C  A8 1E 06 EC */	lha r0, 0x6ec(r30)
/* 80846910  7C 00 00 D0 */	neg r0, r0
/* 80846914  7C 04 07 34 */	extsh r4, r0
/* 80846918  4B 7C 5B B5 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8084691C:
/* 8084691C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80846920  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80846924  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80846928  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8084692C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80846930  7C 80 FA 14 */	add r4, r0, r31
/* 80846934  4B AF FB 7D */	bl PSMTXCopy
/* 80846938  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8084693C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80846940  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80846944  7C 60 FA 14 */	add r3, r0, r31
/* 80846948  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8084694C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80846950  4B AF FB 61 */	bl PSMTXCopy
lbl_80846954:
/* 80846954  39 61 00 40 */	addi r11, r1, 0x40
/* 80846958  4B B1 B8 D1 */	bl _restgpr_29
/* 8084695C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80846960  7C 08 03 A6 */	mtlr r0
/* 80846964  38 21 00 40 */	addi r1, r1, 0x40
/* 80846968  4E 80 00 20 */	blr 
