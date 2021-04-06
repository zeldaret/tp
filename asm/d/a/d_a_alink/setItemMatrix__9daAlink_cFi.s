lbl_800A9450:
/* 800A9450  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A9454  7C 08 02 A6 */	mflr r0
/* 800A9458  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A945C  39 61 00 20 */	addi r11, r1, 0x20
/* 800A9460  48 2B 8D 79 */	bl _savegpr_28
/* 800A9464  7C 7F 1B 78 */	mr r31, r3
/* 800A9468  7C 9E 23 78 */	mr r30, r4
/* 800A946C  80 63 06 50 */	lwz r3, 0x650(r3)
/* 800A9470  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9474  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9478  A0 1F 30 B6 */	lhz r0, 0x30b6(r31)
/* 800A947C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A9480  7C 63 02 14 */	add r3, r3, r0
/* 800A9484  80 9F 06 BC */	lwz r4, 0x6bc(r31)
/* 800A9488  38 84 00 24 */	addi r4, r4, 0x24
/* 800A948C  48 29 D0 25 */	bl PSMTXCopy
/* 800A9490  7F E3 FB 78 */	mr r3, r31
/* 800A9494  80 9F 06 BC */	lwz r4, 0x6bc(r31)
/* 800A9498  48 02 2D C5 */	bl modelCalc__9daAlink_cFP8J3DModel
/* 800A949C  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800A94A0  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 800A94A4  40 82 00 B4 */	bne lbl_800A9558
/* 800A94A8  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800A94AC  28 00 01 03 */	cmplwi r0, 0x103
/* 800A94B0  41 82 00 0C */	beq lbl_800A94BC
/* 800A94B4  2C 1E 00 00 */	cmpwi r30, 0
/* 800A94B8  41 82 00 30 */	beq lbl_800A94E8
lbl_800A94BC:
/* 800A94BC  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A94C0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A94C4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A94C8  A0 1F 30 C0 */	lhz r0, 0x30c0(r31)
/* 800A94CC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A94D0  7C 63 02 14 */	add r3, r3, r0
/* 800A94D4  80 9F 06 B8 */	lwz r4, 0x6b8(r31)
/* 800A94D8  38 84 00 24 */	addi r4, r4, 0x24
/* 800A94DC  48 29 CF D5 */	bl PSMTXCopy
/* 800A94E0  3B A0 00 01 */	li r29, 1
/* 800A94E4  48 00 00 68 */	b lbl_800A954C
lbl_800A94E8:
/* 800A94E8  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A94EC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A94F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A94F4  A0 1F 30 B6 */	lhz r0, 0x30b6(r31)
/* 800A94F8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A94FC  7C 63 02 14 */	add r3, r3, r0
/* 800A9500  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9504  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9508  48 29 CF A9 */	bl PSMTXCopy
/* 800A950C  C0 22 98 48 */	lfs f1, lit_61025(r2)
/* 800A9510  C0 42 98 4C */	lfs f2, lit_61026(r2)
/* 800A9514  C0 62 98 50 */	lfs f3, lit_61027(r2)
/* 800A9518  4B F6 38 85 */	bl transM__14mDoMtx_stack_cFfff
/* 800A951C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9520  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9524  38 80 00 00 */	li r4, 0
/* 800A9528  38 A0 17 89 */	li r5, 0x1789
/* 800A952C  38 C0 00 00 */	li r6, 0
/* 800A9530  4B F6 2C 35 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 800A9534  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9538  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A953C  80 9F 06 B8 */	lwz r4, 0x6b8(r31)
/* 800A9540  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9544  48 29 CF 6D */	bl PSMTXCopy
/* 800A9548  3B A0 00 02 */	li r29, 2
lbl_800A954C:
/* 800A954C  7F E3 FB 78 */	mr r3, r31
/* 800A9550  80 9F 06 B8 */	lwz r4, 0x6b8(r31)
/* 800A9554  48 02 2D 09 */	bl modelCalc__9daAlink_cFP8J3DModel
lbl_800A9558:
/* 800A9558  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A955C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A9560  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800A9564  28 00 00 FF */	cmplwi r0, 0xff
/* 800A9568  40 82 00 0C */	bne lbl_800A9574
/* 800A956C  38 80 00 00 */	li r4, 0
/* 800A9570  48 00 00 2C */	b lbl_800A959C
lbl_800A9574:
/* 800A9574  28 00 00 49 */	cmplwi r0, 0x49
/* 800A9578  40 82 00 0C */	bne lbl_800A9584
/* 800A957C  38 80 00 03 */	li r4, 3
/* 800A9580  48 00 00 1C */	b lbl_800A959C
lbl_800A9584:
/* 800A9584  48 0B 5E 15 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 800A9588  2C 03 00 00 */	cmpwi r3, 0
/* 800A958C  41 82 00 0C */	beq lbl_800A9598
/* 800A9590  38 80 00 02 */	li r4, 2
/* 800A9594  48 00 00 08 */	b lbl_800A959C
lbl_800A9598:
/* 800A9598  38 80 00 01 */	li r4, 1
lbl_800A959C:
/* 800A959C  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800A95A0  7F A5 EB 78 */	mr r5, r29
/* 800A95A4  48 21 9C 85 */	bl setLinkSwordType__14Z2CreatureLinkFll
/* 800A95A8  88 1F 2F D1 */	lbz r0, 0x2fd1(r31)
/* 800A95AC  28 00 00 00 */	cmplwi r0, 0
/* 800A95B0  40 82 02 38 */	bne lbl_800A97E8
/* 800A95B4  2C 1E 00 00 */	cmpwi r30, 0
/* 800A95B8  40 82 00 90 */	bne lbl_800A9648
/* 800A95BC  7F E3 FB 78 */	mr r3, r31
/* 800A95C0  48 03 39 45 */	bl checkPlayerGuardAndAttack__9daAlink_cCFv
/* 800A95C4  2C 03 00 00 */	cmpwi r3, 0
/* 800A95C8  41 82 00 1C */	beq lbl_800A95E4
/* 800A95CC  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800A95D0  28 00 00 42 */	cmplwi r0, 0x42
/* 800A95D4  41 82 00 10 */	beq lbl_800A95E4
/* 800A95D8  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800A95DC  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800A95E0  41 82 00 68 */	beq lbl_800A9648
lbl_800A95E4:
/* 800A95E4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800A95E8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800A95EC  40 82 00 5C */	bne lbl_800A9648
/* 800A95F0  A0 7F 2F E8 */	lhz r3, 0x2fe8(r31)
/* 800A95F4  28 03 01 3D */	cmplwi r3, 0x13d
/* 800A95F8  40 82 00 10 */	bne lbl_800A9608
/* 800A95FC  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800A9600  2C 00 00 00 */	cmpwi r0, 0
/* 800A9604  40 82 00 44 */	bne lbl_800A9648
lbl_800A9608:
/* 800A9608  28 03 00 25 */	cmplwi r3, 0x25
/* 800A960C  40 82 00 10 */	bne lbl_800A961C
/* 800A9610  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800A9614  2C 00 00 00 */	cmpwi r0, 0
/* 800A9618  40 82 00 30 */	bne lbl_800A9648
lbl_800A961C:
/* 800A961C  28 03 00 1F */	cmplwi r3, 0x1f
/* 800A9620  41 82 00 28 */	beq lbl_800A9648
/* 800A9624  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800A9628  28 00 01 03 */	cmplwi r0, 0x103
/* 800A962C  40 82 00 D0 */	bne lbl_800A96FC
/* 800A9630  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800A9634  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 800A9638  40 82 00 C4 */	bne lbl_800A96FC
/* 800A963C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800A9640  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800A9644  40 82 00 B8 */	bne lbl_800A96FC
lbl_800A9648:
/* 800A9648  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A964C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9650  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9654  A0 1F 30 C2 */	lhz r0, 0x30c2(r31)
/* 800A9658  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A965C  7C 63 02 14 */	add r3, r3, r0
/* 800A9660  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 800A9664  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9668  48 29 CE 49 */	bl PSMTXCopy
/* 800A966C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A9670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A9674  88 03 00 15 */	lbz r0, 0x15(r3)
/* 800A9678  28 00 00 FF */	cmplwi r0, 0xff
/* 800A967C  41 82 00 2C */	beq lbl_800A96A8
/* 800A9680  80 1F 2E 50 */	lwz r0, 0x2e50(r31)
/* 800A9684  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800A9688  90 1F 2E 50 */	stw r0, 0x2e50(r31)
/* 800A968C  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 800A9690  28 03 00 00 */	cmplwi r3, 0
/* 800A9694  41 82 00 38 */	beq lbl_800A96CC
/* 800A9698  38 80 00 01 */	li r4, 1
/* 800A969C  38 A0 00 01 */	li r5, 1
/* 800A96A0  48 21 9B ED */	bl setLinkShieldType__14Z2CreatureLinkFll
/* 800A96A4  48 00 00 28 */	b lbl_800A96CC
lbl_800A96A8:
/* 800A96A8  80 1F 2E 50 */	lwz r0, 0x2e50(r31)
/* 800A96AC  60 00 80 00 */	ori r0, r0, 0x8000
/* 800A96B0  90 1F 2E 50 */	stw r0, 0x2e50(r31)
/* 800A96B4  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 800A96B8  28 03 00 00 */	cmplwi r3, 0
/* 800A96BC  41 82 00 10 */	beq lbl_800A96CC
/* 800A96C0  38 80 00 00 */	li r4, 0
/* 800A96C4  38 A0 00 02 */	li r5, 2
/* 800A96C8  48 21 9B C5 */	bl setLinkShieldType__14Z2CreatureLinkFll
lbl_800A96CC:
/* 800A96CC  80 1F 2E 50 */	lwz r0, 0x2e50(r31)
/* 800A96D0  64 00 00 01 */	oris r0, r0, 1
/* 800A96D4  90 1F 2E 50 */	stw r0, 0x2e50(r31)
/* 800A96D8  38 80 00 00 */	li r4, 0
/* 800A96DC  38 60 00 00 */	li r3, 0
/* 800A96E0  38 00 00 10 */	li r0, 0x10
/* 800A96E4  7C 09 03 A6 */	mtctr r0
lbl_800A96E8:
/* 800A96E8  38 04 2F 7C */	addi r0, r4, 0x2f7c
/* 800A96EC  7C 7F 01 AE */	stbx r3, r31, r0
/* 800A96F0  38 84 00 01 */	addi r4, r4, 1
/* 800A96F4  42 00 FF F4 */	bdnz lbl_800A96E8
/* 800A96F8  48 00 00 E4 */	b lbl_800A97DC
lbl_800A96FC:
/* 800A96FC  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9700  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9704  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9708  A0 1F 30 B6 */	lhz r0, 0x30b6(r31)
/* 800A970C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A9710  7C 63 02 14 */	add r3, r3, r0
/* 800A9714  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9718  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A971C  48 29 CD 95 */	bl PSMTXCopy
/* 800A9720  C0 22 98 54 */	lfs f1, lit_61028(r2)
/* 800A9724  C0 42 98 58 */	lfs f2, lit_61029(r2)
/* 800A9728  C0 62 95 90 */	lfs f3, lit_25059(r2)
/* 800A972C  4B F6 36 71 */	bl transM__14mDoMtx_stack_cFfff
/* 800A9730  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9734  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9738  38 80 40 B6 */	li r4, 0x40b6
/* 800A973C  38 A0 28 88 */	li r5, 0x2888
/* 800A9740  38 C0 80 00 */	li r6, -32768
/* 800A9744  4B F6 2A 21 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 800A9748  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A974C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9750  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 800A9754  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9758  48 29 CD 59 */	bl PSMTXCopy
/* 800A975C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A9760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A9764  88 03 00 15 */	lbz r0, 0x15(r3)
/* 800A9768  28 00 00 FF */	cmplwi r0, 0xff
/* 800A976C  40 82 00 2C */	bne lbl_800A9798
/* 800A9770  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 800A9774  28 03 00 00 */	cmplwi r3, 0
/* 800A9778  41 82 00 10 */	beq lbl_800A9788
/* 800A977C  38 80 00 00 */	li r4, 0
/* 800A9780  38 A0 00 02 */	li r5, 2
/* 800A9784  48 21 9B 09 */	bl setLinkShieldType__14Z2CreatureLinkFll
lbl_800A9788:
/* 800A9788  80 1F 2E 50 */	lwz r0, 0x2e50(r31)
/* 800A978C  64 00 00 01 */	oris r0, r0, 1
/* 800A9790  90 1F 2E 50 */	stw r0, 0x2e50(r31)
/* 800A9794  48 00 00 28 */	b lbl_800A97BC
lbl_800A9798:
/* 800A9798  80 1F 2E 50 */	lwz r0, 0x2e50(r31)
/* 800A979C  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 800A97A0  90 1F 2E 50 */	stw r0, 0x2e50(r31)
/* 800A97A4  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 800A97A8  28 03 00 00 */	cmplwi r3, 0
/* 800A97AC  41 82 00 10 */	beq lbl_800A97BC
/* 800A97B0  38 80 00 01 */	li r4, 1
/* 800A97B4  38 A0 00 02 */	li r5, 2
/* 800A97B8  48 21 9A D5 */	bl setLinkShieldType__14Z2CreatureLinkFll
lbl_800A97BC:
/* 800A97BC  80 1F 2E 50 */	lwz r0, 0x2e50(r31)
/* 800A97C0  60 00 80 00 */	ori r0, r0, 0x8000
/* 800A97C4  90 1F 2E 50 */	stw r0, 0x2e50(r31)
/* 800A97C8  7F E3 FB 78 */	mr r3, r31
/* 800A97CC  38 80 00 00 */	li r4, 0
/* 800A97D0  48 03 2F CD */	bl stickArrowIncrement__9daAlink_cFi
/* 800A97D4  7F E3 FB 78 */	mr r3, r31
/* 800A97D8  48 07 BD E5 */	bl clearWoodShieldBurnEffect__9daAlink_cFv
lbl_800A97DC:
/* 800A97DC  7F E3 FB 78 */	mr r3, r31
/* 800A97E0  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 800A97E4  48 02 2A 79 */	bl modelCalc__9daAlink_cFP8J3DModel
lbl_800A97E8:
/* 800A97E8  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A97EC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A97F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A97F4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 800A97F8  80 9F 06 54 */	lwz r4, 0x654(r31)
/* 800A97FC  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9800  48 29 CC B1 */	bl PSMTXCopy
/* 800A9804  7F E3 FB 78 */	mr r3, r31
/* 800A9808  80 9F 06 54 */	lwz r4, 0x654(r31)
/* 800A980C  48 02 2A 51 */	bl modelCalc__9daAlink_cFP8J3DModel
/* 800A9810  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9814  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9818  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A981C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 800A9820  80 9F 06 58 */	lwz r4, 0x658(r31)
/* 800A9824  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9828  48 29 CC 89 */	bl PSMTXCopy
/* 800A982C  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 800A9830  28 03 00 00 */	cmplwi r3, 0
/* 800A9834  41 82 00 4C */	beq lbl_800A9880
/* 800A9838  80 9F 06 58 */	lwz r4, 0x658(r31)
/* 800A983C  28 04 00 00 */	cmplwi r4, 0
/* 800A9840  41 82 00 40 */	beq lbl_800A9880
/* 800A9844  88 1F 2F BF */	lbz r0, 0x2fbf(r31)
/* 800A9848  28 00 00 00 */	cmplwi r0, 0
/* 800A984C  40 82 00 34 */	bne lbl_800A9880
/* 800A9850  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800A9854  28 00 00 00 */	cmplwi r0, 0
/* 800A9858  41 82 00 14 */	beq lbl_800A986C
/* 800A985C  80 84 00 04 */	lwz r4, 4(r4)
/* 800A9860  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 800A9864  4B F6 41 69 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 800A9868  48 00 00 18 */	b lbl_800A9880
lbl_800A986C:
/* 800A986C  80 64 00 04 */	lwz r3, 4(r4)
/* 800A9870  80 63 00 28 */	lwz r3, 0x28(r3)
/* 800A9874  80 63 00 00 */	lwz r3, 0(r3)
/* 800A9878  38 00 00 00 */	li r0, 0
/* 800A987C  90 03 00 54 */	stw r0, 0x54(r3)
lbl_800A9880:
/* 800A9880  7F E3 FB 78 */	mr r3, r31
/* 800A9884  80 9F 06 58 */	lwz r4, 0x658(r31)
/* 800A9888  48 02 29 D5 */	bl modelCalc__9daAlink_cFP8J3DModel
/* 800A988C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800A9890  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A9894  41 82 01 40 */	beq lbl_800A99D4
/* 800A9898  3B 80 00 00 */	li r28, 0
/* 800A989C  3B C0 00 00 */	li r30, 0
lbl_800A98A0:
/* 800A98A0  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A98A4  38 63 00 24 */	addi r3, r3, 0x24
/* 800A98A8  3B BE 07 84 */	addi r29, r30, 0x784
/* 800A98AC  7C 9F E8 2E */	lwzx r4, r31, r29
/* 800A98B0  38 84 00 24 */	addi r4, r4, 0x24
/* 800A98B4  48 29 CB FD */	bl PSMTXCopy
/* 800A98B8  7F E3 FB 78 */	mr r3, r31
/* 800A98BC  7C 9F E8 2E */	lwzx r4, r31, r29
/* 800A98C0  48 02 29 9D */	bl modelCalc__9daAlink_cFP8J3DModel
/* 800A98C4  3B 9C 00 01 */	addi r28, r28, 1
/* 800A98C8  2C 1C 00 02 */	cmpwi r28, 2
/* 800A98CC  3B DE 00 04 */	addi r30, r30, 4
/* 800A98D0  41 80 FF D0 */	blt lbl_800A98A0
/* 800A98D4  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A98D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A98DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A98E0  38 63 03 90 */	addi r3, r3, 0x390
/* 800A98E4  80 9F 07 84 */	lwz r4, 0x784(r31)
/* 800A98E8  80 84 00 84 */	lwz r4, 0x84(r4)
/* 800A98EC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800A98F0  38 84 00 30 */	addi r4, r4, 0x30
/* 800A98F4  48 29 CB BD */	bl PSMTXCopy
/* 800A98F8  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A98FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9900  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9904  38 63 03 C0 */	addi r3, r3, 0x3c0
/* 800A9908  80 9F 07 84 */	lwz r4, 0x784(r31)
/* 800A990C  80 84 00 84 */	lwz r4, 0x84(r4)
/* 800A9910  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800A9914  38 84 00 60 */	addi r4, r4, 0x60
/* 800A9918  48 29 CB 99 */	bl PSMTXCopy
/* 800A991C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9920  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9924  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9928  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 800A992C  80 9F 07 84 */	lwz r4, 0x784(r31)
/* 800A9930  80 84 00 84 */	lwz r4, 0x84(r4)
/* 800A9934  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800A9938  38 84 00 90 */	addi r4, r4, 0x90
/* 800A993C  48 29 CB 75 */	bl PSMTXCopy
/* 800A9940  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9944  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9948  38 80 80 00 */	li r4, -32768
/* 800A994C  4B F6 29 F9 */	bl mDoMtx_XrotS__FPA4_fs
/* 800A9950  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 800A9954  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9958  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A995C  38 A3 00 30 */	addi r5, r3, 0x30
/* 800A9960  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9964  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9968  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A996C  38 63 04 80 */	addi r3, r3, 0x480
/* 800A9970  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9974  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9978  48 29 CB 6D */	bl PSMTXConcat
/* 800A997C  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 800A9980  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9984  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9988  38 A3 00 60 */	addi r5, r3, 0x60
/* 800A998C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9990  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9994  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9998  38 63 04 B0 */	addi r3, r3, 0x4b0
/* 800A999C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A99A0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A99A4  48 29 CB 41 */	bl PSMTXConcat
/* 800A99A8  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 800A99AC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A99B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A99B4  38 A3 00 90 */	addi r5, r3, 0x90
/* 800A99B8  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A99BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A99C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A99C4  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 800A99C8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A99CC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A99D0  48 29 CB 15 */	bl PSMTXConcat
lbl_800A99D4:
/* 800A99D4  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800A99D8  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 800A99DC  40 82 05 58 */	bne lbl_800A9F34
/* 800A99E0  80 9F 06 84 */	lwz r4, 0x684(r31)
/* 800A99E4  28 04 00 00 */	cmplwi r4, 0
/* 800A99E8  41 82 00 30 */	beq lbl_800A9A18
/* 800A99EC  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A99F0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A99F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A99F8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 800A99FC  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9A00  48 29 CA B1 */	bl PSMTXCopy
/* 800A9A04  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 800A9A08  81 83 00 00 */	lwz r12, 0(r3)
/* 800A9A0C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800A9A10  7D 89 03 A6 */	mtctr r12
/* 800A9A14  4E 80 04 21 */	bctrl 
lbl_800A9A18:
/* 800A9A18  80 9F 06 88 */	lwz r4, 0x688(r31)
/* 800A9A1C  28 04 00 00 */	cmplwi r4, 0
/* 800A9A20  41 82 00 4C */	beq lbl_800A9A6C
/* 800A9A24  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9A28  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9A2C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9A30  38 63 00 C0 */	addi r3, r3, 0xc0
/* 800A9A34  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9A38  48 29 CA 79 */	bl PSMTXCopy
/* 800A9A3C  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 800A9A40  28 03 00 00 */	cmplwi r3, 0
/* 800A9A44  41 82 00 14 */	beq lbl_800A9A58
/* 800A9A48  80 9F 06 88 */	lwz r4, 0x688(r31)
/* 800A9A4C  80 84 00 04 */	lwz r4, 4(r4)
/* 800A9A50  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 800A9A54  4B F6 3F 79 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_800A9A58:
/* 800A9A58  80 7F 06 88 */	lwz r3, 0x688(r31)
/* 800A9A5C  81 83 00 00 */	lwz r12, 0(r3)
/* 800A9A60  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800A9A64  7D 89 03 A6 */	mtctr r12
/* 800A9A68  4E 80 04 21 */	bctrl 
lbl_800A9A6C:
/* 800A9A6C  80 BF 07 08 */	lwz r5, 0x708(r31)
/* 800A9A70  28 05 00 00 */	cmplwi r5, 0
/* 800A9A74  41 82 03 48 */	beq lbl_800A9DBC
/* 800A9A78  A0 9F 2F DC */	lhz r4, 0x2fdc(r31)
/* 800A9A7C  28 04 01 06 */	cmplwi r4, 0x106
/* 800A9A80  40 82 00 20 */	bne lbl_800A9AA0
/* 800A9A84  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9A88  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9A8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9A90  38 63 00 C0 */	addi r3, r3, 0xc0
/* 800A9A94  38 85 00 24 */	addi r4, r5, 0x24
/* 800A9A98  48 29 CA 19 */	bl PSMTXCopy
/* 800A9A9C  48 00 02 A0 */	b lbl_800A9D3C
lbl_800A9AA0:
/* 800A9AA0  7F E3 FB 78 */	mr r3, r31
/* 800A9AA4  48 06 4A E1 */	bl checkOilBottleItemNotGet__9daAlink_cFUs
/* 800A9AA8  2C 03 00 00 */	cmpwi r3, 0
/* 800A9AAC  41 82 00 68 */	beq lbl_800A9B14
/* 800A9AB0  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9AB4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9AB8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9ABC  A0 1F 30 C2 */	lhz r0, 0x30c2(r31)
/* 800A9AC0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A9AC4  7C 63 02 14 */	add r3, r3, r0
/* 800A9AC8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9ACC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9AD0  48 29 C9 E1 */	bl PSMTXCopy
/* 800A9AD4  C0 22 93 2C */	lfs f1, lit_7624(r2)
/* 800A9AD8  C0 42 98 5C */	lfs f2, lit_61030(r2)
/* 800A9ADC  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800A9AE0  4B F6 32 BD */	bl transM__14mDoMtx_stack_cFfff
/* 800A9AE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9AE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9AEC  38 80 82 22 */	li r4, -32222
/* 800A9AF0  38 A0 7D 27 */	li r5, 0x7d27
/* 800A9AF4  38 C0 76 C1 */	li r6, 0x76c1
/* 800A9AF8  4B F6 26 6D */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 800A9AFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9B00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9B04  80 9F 07 08 */	lwz r4, 0x708(r31)
/* 800A9B08  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9B0C  48 29 C9 A5 */	bl PSMTXCopy
/* 800A9B10  48 00 02 2C */	b lbl_800A9D3C
lbl_800A9B14:
/* 800A9B14  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800A9B18  48 0B 4F 71 */	bl checkBottleItem__9daPy_py_cFi
/* 800A9B1C  2C 03 00 00 */	cmpwi r3, 0
/* 800A9B20  41 82 00 A4 */	beq lbl_800A9BC4
/* 800A9B24  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9B28  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9B2C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9B30  A0 1F 30 C0 */	lhz r0, 0x30c0(r31)
/* 800A9B34  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A9B38  7C 63 02 14 */	add r3, r3, r0
/* 800A9B3C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9B40  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9B44  48 29 C9 6D */	bl PSMTXCopy
/* 800A9B48  C0 22 93 9C */	lfs f1, lit_9053(r2)
/* 800A9B4C  C0 42 93 4C */	lfs f2, lit_8131(r2)
/* 800A9B50  C0 62 98 60 */	lfs f3, lit_61031(r2)
/* 800A9B54  4B F6 32 49 */	bl transM__14mDoMtx_stack_cFfff
/* 800A9B58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9B5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9B60  38 80 7B BB */	li r4, 0x7bbb
/* 800A9B64  38 A0 DE 94 */	li r5, -8556
/* 800A9B68  38 C0 42 D8 */	li r6, 0x42d8
/* 800A9B6C  4B F6 25 F9 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 800A9B70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9B74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9B78  80 9F 07 08 */	lwz r4, 0x708(r31)
/* 800A9B7C  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9B80  48 29 C9 31 */	bl PSMTXCopy
/* 800A9B84  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 800A9B88  28 00 00 00 */	cmplwi r0, 0
/* 800A9B8C  41 82 01 B0 */	beq lbl_800A9D3C
/* 800A9B90  80 7F 07 60 */	lwz r3, 0x760(r31)
/* 800A9B94  4B FF F6 B5 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800A9B98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9B9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9BA0  80 9F 07 0C */	lwz r4, 0x70c(r31)
/* 800A9BA4  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9BA8  48 29 C9 09 */	bl PSMTXCopy
/* 800A9BAC  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 800A9BB0  81 83 00 00 */	lwz r12, 0(r3)
/* 800A9BB4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800A9BB8  7D 89 03 A6 */	mtctr r12
/* 800A9BBC  4E 80 04 21 */	bctrl 
/* 800A9BC0  48 00 01 7C */	b lbl_800A9D3C
lbl_800A9BC4:
/* 800A9BC4  7F E3 FB 78 */	mr r3, r31
/* 800A9BC8  A0 9F 2F DC */	lhz r4, 0x2fdc(r31)
/* 800A9BCC  48 03 4B B5 */	bl checkBowAndSlingItem__9daAlink_cFi
/* 800A9BD0  2C 03 00 00 */	cmpwi r3, 0
/* 800A9BD4  41 82 00 A0 */	beq lbl_800A9C74
/* 800A9BD8  7F E3 FB 78 */	mr r3, r31
/* 800A9BDC  48 03 5F ED */	bl checkBowGrabLeftHand__9daAlink_cCFv
/* 800A9BE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A9BE4  41 82 00 68 */	beq lbl_800A9C4C
/* 800A9BE8  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9BEC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9BF0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9BF4  A0 1F 30 C0 */	lhz r0, 0x30c0(r31)
/* 800A9BF8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A9BFC  7C 63 02 14 */	add r3, r3, r0
/* 800A9C00  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9C04  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9C08  48 29 C8 A9 */	bl PSMTXCopy
/* 800A9C0C  C0 22 98 64 */	lfs f1, lit_61032(r2)
/* 800A9C10  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800A9C14  C0 62 94 14 */	lfs f3, lit_14616(r2)
/* 800A9C18  4B F6 31 85 */	bl transM__14mDoMtx_stack_cFfff
/* 800A9C1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9C20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9C24  38 80 CB 61 */	li r4, -13471
/* 800A9C28  38 A0 1F 01 */	li r5, 0x1f01
/* 800A9C2C  38 C0 01 59 */	li r6, 0x159
/* 800A9C30  4B F6 25 35 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 800A9C34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9C38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9C3C  80 9F 07 08 */	lwz r4, 0x708(r31)
/* 800A9C40  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9C44  48 29 C8 6D */	bl PSMTXCopy
/* 800A9C48  48 00 00 F4 */	b lbl_800A9D3C
lbl_800A9C4C:
/* 800A9C4C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9C50  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9C54  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9C58  A0 1F 30 C2 */	lhz r0, 0x30c2(r31)
/* 800A9C5C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A9C60  7C 63 02 14 */	add r3, r3, r0
/* 800A9C64  80 9F 07 08 */	lwz r4, 0x708(r31)
/* 800A9C68  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9C6C  48 29 C8 45 */	bl PSMTXCopy
/* 800A9C70  48 00 00 CC */	b lbl_800A9D3C
lbl_800A9C74:
/* 800A9C74  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800A9C78  48 0B 4F 41 */	bl checkHookshotItem__9daPy_py_cFi
/* 800A9C7C  2C 03 00 00 */	cmpwi r3, 0
/* 800A9C80  41 82 00 10 */	beq lbl_800A9C90
/* 800A9C84  7F E3 FB 78 */	mr r3, r31
/* 800A9C88  48 05 FF 55 */	bl setHookshotPos__9daAlink_cFv
/* 800A9C8C  48 00 00 B0 */	b lbl_800A9D3C
lbl_800A9C90:
/* 800A9C90  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800A9C94  28 00 00 42 */	cmplwi r0, 0x42
/* 800A9C98  40 82 00 10 */	bne lbl_800A9CA8
/* 800A9C9C  7F E3 FB 78 */	mr r3, r31
/* 800A9CA0  48 06 A0 B9 */	bl setIronBallPos__9daAlink_cFv
/* 800A9CA4  48 00 00 98 */	b lbl_800A9D3C
lbl_800A9CA8:
/* 800A9CA8  28 00 00 46 */	cmplwi r0, 0x46
/* 800A9CAC  40 82 00 6C */	bne lbl_800A9D18
/* 800A9CB0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A9CB4  28 00 00 66 */	cmplwi r0, 0x66
/* 800A9CB8  41 82 00 60 */	beq lbl_800A9D18
/* 800A9CBC  7F E3 FB 78 */	mr r3, r31
/* 800A9CC0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800A9CC4  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 800A9CC8  7D 89 03 A6 */	mtctr r12
/* 800A9CCC  4E 80 04 21 */	bctrl 
/* 800A9CD0  2C 03 00 00 */	cmpwi r3, 0
/* 800A9CD4  41 82 00 38 */	beq lbl_800A9D0C
/* 800A9CD8  80 7F 07 24 */	lwz r3, 0x724(r31)
/* 800A9CDC  A8 03 00 06 */	lha r0, 6(r3)
/* 800A9CE0  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A9CE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A9CE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800A9CEC  3C 00 43 30 */	lis r0, 0x4330
/* 800A9CF0  90 01 00 08 */	stw r0, 8(r1)
/* 800A9CF4  C8 01 00 08 */	lfd f0, 8(r1)
/* 800A9CF8  EC 20 08 28 */	fsubs f1, f0, f1
/* 800A9CFC  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 800A9D00  EC 01 00 28 */	fsubs f0, f1, f0
/* 800A9D04  D0 03 00 08 */	stfs f0, 8(r3)
/* 800A9D08  48 00 00 10 */	b lbl_800A9D18
lbl_800A9D0C:
/* 800A9D0C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A9D10  80 7F 07 24 */	lwz r3, 0x724(r31)
/* 800A9D14  D0 03 00 08 */	stfs f0, 8(r3)
lbl_800A9D18:
/* 800A9D18  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9D1C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9D20  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9D24  A0 1F 30 C0 */	lhz r0, 0x30c0(r31)
/* 800A9D28  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A9D2C  7C 63 02 14 */	add r3, r3, r0
/* 800A9D30  80 9F 07 08 */	lwz r4, 0x708(r31)
/* 800A9D34  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9D38  48 29 C7 79 */	bl PSMTXCopy
lbl_800A9D3C:
/* 800A9D3C  80 7F 07 44 */	lwz r3, 0x744(r31)
/* 800A9D40  28 03 00 00 */	cmplwi r3, 0
/* 800A9D44  41 82 00 64 */	beq lbl_800A9DA8
/* 800A9D48  A8 03 00 06 */	lha r0, 6(r3)
/* 800A9D4C  C0 5F 33 DC */	lfs f2, 0x33dc(r31)
/* 800A9D50  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A9D54  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800A9D58  90 61 00 0C */	stw r3, 0xc(r1)
/* 800A9D5C  3C 00 43 30 */	lis r0, 0x4330
/* 800A9D60  90 01 00 08 */	stw r0, 8(r1)
/* 800A9D64  C8 01 00 08 */	lfd f0, 8(r1)
/* 800A9D68  EC 00 08 28 */	fsubs f0, f0, f1
/* 800A9D6C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800A9D70  4C 41 13 82 */	cror 2, 1, 2
/* 800A9D74  40 82 00 20 */	bne lbl_800A9D94
/* 800A9D78  90 61 00 0C */	stw r3, 0xc(r1)
/* 800A9D7C  90 01 00 08 */	stw r0, 8(r1)
/* 800A9D80  C8 01 00 08 */	lfd f0, 8(r1)
/* 800A9D84  EC 20 08 28 */	fsubs f1, f0, f1
/* 800A9D88  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 800A9D8C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800A9D90  D0 1F 33 DC */	stfs f0, 0x33dc(r31)
lbl_800A9D94:
/* 800A9D94  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 800A9D98  80 83 00 04 */	lwz r4, 4(r3)
/* 800A9D9C  38 7F 07 30 */	addi r3, r31, 0x730
/* 800A9DA0  C0 3F 33 DC */	lfs f1, 0x33dc(r31)
/* 800A9DA4  4B F6 3C 29 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_800A9DA8:
/* 800A9DA8  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 800A9DAC  81 83 00 00 */	lwz r12, 0(r3)
/* 800A9DB0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800A9DB4  7D 89 03 A6 */	mtctr r12
/* 800A9DB8  4E 80 04 21 */	bctrl 
lbl_800A9DBC:
/* 800A9DBC  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800A9DC0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800A9DC4  40 82 00 10 */	bne lbl_800A9DD4
/* 800A9DC8  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800A9DCC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800A9DD0  41 82 01 44 */	beq lbl_800A9F14
lbl_800A9DD4:
/* 800A9DD4  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 800A9DD8  4B FF F4 71 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800A9DDC  A0 7F 2F E8 */	lhz r3, 0x2fe8(r31)
/* 800A9DE0  28 03 01 46 */	cmplwi r3, 0x146
/* 800A9DE4  41 82 00 FC */	beq lbl_800A9EE0
/* 800A9DE8  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800A9DEC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800A9DF0  40 82 00 F0 */	bne lbl_800A9EE0
/* 800A9DF4  28 03 01 48 */	cmplwi r3, 0x148
/* 800A9DF8  40 82 00 10 */	bne lbl_800A9E08
/* 800A9DFC  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800A9E00  2C 00 00 00 */	cmpwi r0, 0
/* 800A9E04  40 82 00 DC */	bne lbl_800A9EE0
lbl_800A9E08:
/* 800A9E08  A0 9F 2F DC */	lhz r4, 0x2fdc(r31)
/* 800A9E0C  28 04 00 48 */	cmplwi r4, 0x48
/* 800A9E10  41 82 00 14 */	beq lbl_800A9E24
/* 800A9E14  7F E3 FB 78 */	mr r3, r31
/* 800A9E18  48 06 47 6D */	bl checkOilBottleItemNotGet__9daAlink_cFUs
/* 800A9E1C  2C 03 00 00 */	cmpwi r3, 0
/* 800A9E20  41 82 00 68 */	beq lbl_800A9E88
lbl_800A9E24:
/* 800A9E24  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9E28  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9E2C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9E30  A0 1F 30 C0 */	lhz r0, 0x30c0(r31)
/* 800A9E34  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A9E38  7C 63 02 14 */	add r3, r3, r0
/* 800A9E3C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9E40  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9E44  48 29 C6 6D */	bl PSMTXCopy
/* 800A9E48  C0 22 93 6C */	lfs f1, lit_8473(r2)
/* 800A9E4C  C0 42 98 68 */	lfs f2, lit_61033(r2)
/* 800A9E50  C0 62 98 6C */	lfs f3, lit_61034(r2)
/* 800A9E54  4B F6 2F 49 */	bl transM__14mDoMtx_stack_cFfff
/* 800A9E58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9E5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9E60  38 80 47 1C */	li r4, 0x471c
/* 800A9E64  38 A0 06 9D */	li r5, 0x69d
/* 800A9E68  38 C0 82 22 */	li r6, -32222
/* 800A9E6C  4B F6 22 F9 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 800A9E70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9E74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9E78  80 9F 06 FC */	lwz r4, 0x6fc(r31)
/* 800A9E7C  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9E80  48 29 C6 31 */	bl PSMTXCopy
/* 800A9E84  48 00 00 5C */	b lbl_800A9EE0
lbl_800A9E88:
/* 800A9E88  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9E8C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9E90  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9E94  38 63 03 00 */	addi r3, r3, 0x300
/* 800A9E98  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9E9C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9EA0  48 29 C6 11 */	bl PSMTXCopy
/* 800A9EA4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800A9EA8  C0 42 95 48 */	lfs f2, lit_23416(r2)
/* 800A9EAC  C0 62 93 34 */	lfs f3, lit_7710(r2)
/* 800A9EB0  4B F6 2E ED */	bl transM__14mDoMtx_stack_cFfff
/* 800A9EB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9EB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9EBC  38 80 CA AB */	li r4, -13653
/* 800A9EC0  38 A0 2C 16 */	li r5, 0x2c16
/* 800A9EC4  38 C0 3F 49 */	li r6, 0x3f49
/* 800A9EC8  4B F6 22 9D */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 800A9ECC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9ED0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9ED4  80 9F 06 FC */	lwz r4, 0x6fc(r31)
/* 800A9ED8  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9EDC  48 29 C5 D5 */	bl PSMTXCopy
lbl_800A9EE0:
/* 800A9EE0  7F E3 FB 78 */	mr r3, r31
/* 800A9EE4  80 9F 06 FC */	lwz r4, 0x6fc(r31)
/* 800A9EE8  48 02 23 75 */	bl modelCalc__9daAlink_cFP8J3DModel
/* 800A9EEC  38 7F 36 0C */	addi r3, r31, 0x360c
/* 800A9EF0  4B F6 2E 75 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800A9EF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9EF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9EFC  80 9F 07 00 */	lwz r4, 0x700(r31)
/* 800A9F00  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9F04  48 29 C5 AD */	bl PSMTXCopy
/* 800A9F08  7F E3 FB 78 */	mr r3, r31
/* 800A9F0C  80 9F 07 00 */	lwz r4, 0x700(r31)
/* 800A9F10  48 02 23 4D */	bl modelCalc__9daAlink_cFP8J3DModel
lbl_800A9F14:
/* 800A9F14  7F E3 FB 78 */	mr r3, r31
/* 800A9F18  4B FF F3 D9 */	bl setSwordPos__9daAlink_cFv
/* 800A9F1C  80 7F 06 C8 */	lwz r3, 0x6c8(r31)
/* 800A9F20  4B FF F3 29 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800A9F24  80 7F 06 CC */	lwz r3, 0x6cc(r31)
/* 800A9F28  4B FF F3 21 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800A9F2C  7F E3 FB 78 */	mr r3, r31
/* 800A9F30  48 04 33 E1 */	bl setHorseStirrup__9daAlink_cFv
lbl_800A9F34:
/* 800A9F34  39 61 00 20 */	addi r11, r1, 0x20
/* 800A9F38  48 2B 82 ED */	bl _restgpr_28
/* 800A9F3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A9F40  7C 08 03 A6 */	mtlr r0
/* 800A9F44  38 21 00 20 */	addi r1, r1, 0x20
/* 800A9F48  4E 80 00 20 */	blr 
