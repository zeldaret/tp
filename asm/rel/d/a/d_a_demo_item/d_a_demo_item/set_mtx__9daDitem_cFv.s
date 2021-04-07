lbl_804E111C:
/* 804E111C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1120  7C 08 02 A6 */	mflr r0
/* 804E1124  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E112C  7C 7F 1B 78 */	mr r31, r3
/* 804E1130  80 83 05 74 */	lwz r4, 0x574(r3)
/* 804E1134  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 804E1138  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 804E113C  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 804E1140  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 804E1144  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 804E1148  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 804E114C  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 804E1150  28 00 00 25 */	cmplwi r0, 0x25
/* 804E1154  41 82 00 30 */	beq lbl_804E1184
/* 804E1158  28 00 00 27 */	cmplwi r0, 0x27
/* 804E115C  41 82 00 28 */	beq lbl_804E1184
/* 804E1160  28 00 00 EC */	cmplwi r0, 0xec
/* 804E1164  41 82 00 20 */	beq lbl_804E1184
/* 804E1168  28 00 00 33 */	cmplwi r0, 0x33
/* 804E116C  41 82 00 18 */	beq lbl_804E1184
/* 804E1170  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 804E1174  38 04 01 06 */	addi r0, r4, 0x106
/* 804E1178  7C 04 07 34 */	extsh r4, r0
/* 804E117C  38 A0 01 06 */	li r5, 0x106
/* 804E1180  4B B3 94 5D */	bl fopAcM_addAngleY__FP10fopAc_ac_css
lbl_804E1184:
/* 804E1184  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E1188  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E118C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804E1190  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 804E1194  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 804E1198  4B E6 57 51 */	bl PSMTXTrans
/* 804E119C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E11A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E11A4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 804E11A8  4B B2 B2 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 804E11AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E11B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E11B4  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 804E11B8  38 84 00 24 */	addi r4, r4, 0x24
/* 804E11BC  4B E6 52 F5 */	bl PSMTXCopy
/* 804E11C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E11C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E11C8  7C 08 03 A6 */	mtlr r0
/* 804E11CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E11D0  4E 80 00 20 */	blr 
