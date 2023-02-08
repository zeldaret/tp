lbl_804C8588:
/* 804C8588  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C858C  7C 08 02 A6 */	mflr r0
/* 804C8590  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C8594  39 61 00 40 */	addi r11, r1, 0x40
/* 804C8598  4B E9 9C 39 */	bl _savegpr_26
/* 804C859C  7C 7D 1B 78 */	mr r29, r3
/* 804C85A0  3C 60 80 4D */	lis r3, lit_1109@ha /* 0x804CC688@ha */
/* 804C85A4  3B E3 C6 88 */	addi r31, r3, lit_1109@l /* 0x804CC688@l */
/* 804C85A8  88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 804C85AC  7C 00 07 75 */	extsb. r0, r0
/* 804C85B0  40 82 00 34 */	bne lbl_804C85E4
/* 804C85B4  3C 60 80 4D */	lis r3, lit_5143@ha /* 0x804CC3F4@ha */
/* 804C85B8  C0 03 C3 F4 */	lfs f0, lit_5143@l(r3)  /* 0x804CC3F4@l */
/* 804C85BC  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 804C85C0  38 7F 00 50 */	addi r3, r31, 0x50
/* 804C85C4  D0 03 00 04 */	stfs f0, 4(r3)
/* 804C85C8  D0 03 00 08 */	stfs f0, 8(r3)
/* 804C85CC  3C 80 80 4C */	lis r4, __dt__4cXyzFv@ha /* 0x804C6F78@ha */
/* 804C85D0  38 84 6F 78 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804C6F78@l */
/* 804C85D4  38 BF 00 40 */	addi r5, r31, 0x40
/* 804C85D8  4B FF E7 81 */	bl __register_global_object
/* 804C85DC  38 00 00 01 */	li r0, 1
/* 804C85E0  98 1F 00 4C */	stb r0, 0x4c(r31)
lbl_804C85E4:
/* 804C85E4  80 1D 0A 3C */	lwz r0, 0xa3c(r29)
/* 804C85E8  28 00 00 00 */	cmplwi r0, 0
/* 804C85EC  40 82 00 10 */	bne lbl_804C85FC
/* 804C85F0  80 1D 0B 4C */	lwz r0, 0xb4c(r29)
/* 804C85F4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804C85F8  41 82 01 04 */	beq lbl_804C86FC
lbl_804C85FC:
/* 804C85FC  3B FD 0B B8 */	addi r31, r29, 0xbb8
/* 804C8600  3C 60 80 4D */	lis r3, enemyBombID@ha /* 0x804CC530@ha */
/* 804C8604  38 03 C5 30 */	addi r0, r3, enemyBombID@l /* 0x804CC530@l */
/* 804C8608  7C 1E 03 78 */	mr r30, r0
/* 804C860C  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 804C8610  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804C8614  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804C8618  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C861C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C8620  4B E7 DE 91 */	bl PSMTXCopy
/* 804C8624  88 1D 0B 54 */	lbz r0, 0xb54(r29)
/* 804C8628  28 00 00 05 */	cmplwi r0, 5
/* 804C862C  41 82 00 10 */	beq lbl_804C863C
/* 804C8630  80 1D 0B 4C */	lwz r0, 0xb4c(r29)
/* 804C8634  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804C8638  41 82 00 1C */	beq lbl_804C8654
lbl_804C863C:
/* 804C863C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C8640  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C8644  38 80 00 00 */	li r4, 0
/* 804C8648  38 A0 40 00 */	li r5, 0x4000
/* 804C864C  38 C0 40 00 */	li r6, 0x4000
/* 804C8650  4B B4 3C 51 */	bl mDoMtx_ZXYrotM__FPA4_fsss
lbl_804C8654:
/* 804C8654  3B 40 00 00 */	li r26, 0
/* 804C8658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C865C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C8660  3C 60 80 4D */	lis r3, lit_4216@ha /* 0x804CC37C@ha */
/* 804C8664  3B 83 C3 7C */	addi r28, r3, lit_4216@l /* 0x804CC37C@l */
lbl_804C8668:
/* 804C8668  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 804C866C  38 00 00 FF */	li r0, 0xff
/* 804C8670  90 01 00 08 */	stw r0, 8(r1)
/* 804C8674  38 80 00 00 */	li r4, 0
/* 804C8678  90 81 00 0C */	stw r4, 0xc(r1)
/* 804C867C  38 00 FF FF */	li r0, -1
/* 804C8680  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C8684  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C8688  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C868C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804C8690  80 9F 00 00 */	lwz r4, 0(r31)
/* 804C8694  38 A0 00 00 */	li r5, 0
/* 804C8698  A0 DE 00 00 */	lhz r6, 0(r30)
/* 804C869C  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 804C86A0  39 1D 01 0C */	addi r8, r29, 0x10c
/* 804C86A4  39 20 00 00 */	li r9, 0
/* 804C86A8  39 40 00 00 */	li r10, 0
/* 804C86AC  C0 3C 00 00 */	lfs f1, 0(r28)
/* 804C86B0  4B B8 4E 1D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804C86B4  90 7F 00 00 */	stw r3, 0(r31)
/* 804C86B8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 804C86BC  38 63 02 10 */	addi r3, r3, 0x210
/* 804C86C0  80 9F 00 00 */	lwz r4, 0(r31)
/* 804C86C4  4B B8 32 55 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804C86C8  7C 65 1B 79 */	or. r5, r3, r3
/* 804C86CC  41 82 00 18 */	beq lbl_804C86E4
/* 804C86D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804C86D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804C86D8  38 85 00 68 */	addi r4, r5, 0x68
/* 804C86DC  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 804C86E0  4B DB 81 01 */	bl func_802807E0
lbl_804C86E4:
/* 804C86E4  3B 5A 00 01 */	addi r26, r26, 1
/* 804C86E8  2C 1A 00 05 */	cmpwi r26, 5
/* 804C86EC  3B FF 00 04 */	addi r31, r31, 4
/* 804C86F0  3B DE 00 02 */	addi r30, r30, 2
/* 804C86F4  41 80 FF 74 */	blt lbl_804C8668
/* 804C86F8  48 00 00 E0 */	b lbl_804C87D8
lbl_804C86FC:
/* 804C86FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C8700  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C8704  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804C8708  38 00 00 FF */	li r0, 0xff
/* 804C870C  90 01 00 08 */	stw r0, 8(r1)
/* 804C8710  38 80 00 00 */	li r4, 0
/* 804C8714  90 81 00 0C */	stw r4, 0xc(r1)
/* 804C8718  38 00 FF FF */	li r0, -1
/* 804C871C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C8720  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C8724  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C8728  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804C872C  80 9D 0B B8 */	lwz r4, 0xbb8(r29)
/* 804C8730  38 A0 00 00 */	li r5, 0
/* 804C8734  38 C0 01 DF */	li r6, 0x1df
/* 804C8738  38 FD 0B CC */	addi r7, r29, 0xbcc
/* 804C873C  39 1D 01 0C */	addi r8, r29, 0x10c
/* 804C8740  39 20 00 00 */	li r9, 0
/* 804C8744  39 5F 00 50 */	addi r10, r31, 0x50
/* 804C8748  3D 60 80 4D */	lis r11, lit_4216@ha /* 0x804CC37C@ha */
/* 804C874C  C0 2B C3 7C */	lfs f1, lit_4216@l(r11)  /* 0x804CC37C@l */
/* 804C8750  4B B8 4D 7D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804C8754  90 7D 0B B8 */	stw r3, 0xbb8(r29)
/* 804C8758  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804C875C  38 63 02 10 */	addi r3, r3, 0x210
/* 804C8760  80 9D 0B B8 */	lwz r4, 0xbb8(r29)
/* 804C8764  4B B8 31 B5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804C8768  28 03 00 00 */	cmplwi r3, 0
/* 804C876C  41 82 00 18 */	beq lbl_804C8784
/* 804C8770  3C 80 80 45 */	lis r4, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 804C8774  38 04 0E C8 */	addi r0, r4, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
/* 804C8778  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 804C877C  38 1D 0B E4 */	addi r0, r29, 0xbe4
/* 804C8780  90 03 00 C0 */	stw r0, 0xc0(r3)
lbl_804C8784:
/* 804C8784  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804C8788  38 00 00 FF */	li r0, 0xff
/* 804C878C  90 01 00 08 */	stw r0, 8(r1)
/* 804C8790  38 80 00 00 */	li r4, 0
/* 804C8794  90 81 00 0C */	stw r4, 0xc(r1)
/* 804C8798  38 00 FF FF */	li r0, -1
/* 804C879C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C87A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C87A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C87A8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804C87AC  80 9D 0B BC */	lwz r4, 0xbbc(r29)
/* 804C87B0  38 A0 00 00 */	li r5, 0
/* 804C87B4  38 C0 01 DE */	li r6, 0x1de
/* 804C87B8  38 FD 0B CC */	addi r7, r29, 0xbcc
/* 804C87BC  39 1D 01 0C */	addi r8, r29, 0x10c
/* 804C87C0  39 20 00 00 */	li r9, 0
/* 804C87C4  39 5F 00 50 */	addi r10, r31, 0x50
/* 804C87C8  3D 60 80 4D */	lis r11, lit_4216@ha /* 0x804CC37C@ha */
/* 804C87CC  C0 2B C3 7C */	lfs f1, lit_4216@l(r11)  /* 0x804CC37C@l */
/* 804C87D0  4B B8 4C FD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804C87D4  90 7D 0B BC */	stw r3, 0xbbc(r29)
lbl_804C87D8:
/* 804C87D8  39 61 00 40 */	addi r11, r1, 0x40
/* 804C87DC  4B E9 9A 41 */	bl _restgpr_26
/* 804C87E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C87E4  7C 08 03 A6 */	mtlr r0
/* 804C87E8  38 21 00 40 */	addi r1, r1, 0x40
/* 804C87EC  4E 80 00 20 */	blr 
