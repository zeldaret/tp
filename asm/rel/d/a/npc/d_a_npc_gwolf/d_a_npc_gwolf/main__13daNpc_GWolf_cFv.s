lbl_809F4390:
/* 809F4390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809F4394  7C 08 02 A6 */	mflr r0
/* 809F4398  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F439C  39 61 00 20 */	addi r11, r1, 0x20
/* 809F43A0  4B 96 DE 3D */	bl _savegpr_29
/* 809F43A4  7C 7E 1B 78 */	mr r30, r3
/* 809F43A8  3C 80 80 A0 */	lis r4, cNullVec__6Z2Calc@ha /* 0x809F87F4@ha */
/* 809F43AC  3B E4 87 F4 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x809F87F4@l */
/* 809F43B0  48 00 14 D5 */	bl doEvent__13daNpc_GWolf_cFv
/* 809F43B4  2C 03 00 00 */	cmpwi r3, 0
/* 809F43B8  40 82 00 10 */	bne lbl_809F43C8
/* 809F43BC  7F C3 F3 78 */	mr r3, r30
/* 809F43C0  38 80 00 01 */	li r4, 1
/* 809F43C4  48 00 13 AD */	bl doNormalAction__13daNpc_GWolf_cFi
lbl_809F43C8:
/* 809F43C8  3B A0 00 00 */	li r29, 0
/* 809F43CC  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 809F43D0  28 00 00 00 */	cmplwi r0, 0
/* 809F43D4  40 82 00 1C */	bne lbl_809F43F0
/* 809F43D8  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 809F43DC  28 00 00 00 */	cmplwi r0, 0
/* 809F43E0  41 82 00 14 */	beq lbl_809F43F4
/* 809F43E4  4B 63 B6 71 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 809F43E8  2C 03 00 00 */	cmpwi r3, 0
/* 809F43EC  40 82 00 08 */	bne lbl_809F43F4
lbl_809F43F0:
/* 809F43F0  3B A0 00 01 */	li r29, 1
lbl_809F43F4:
/* 809F43F4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 809F43F8  41 82 00 0C */	beq lbl_809F4404
/* 809F43FC  38 00 00 00 */	li r0, 0
/* 809F4400  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_809F4404:
/* 809F4404  3C 60 80 A0 */	lis r3, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F4408  38 63 84 F4 */	addi r3, r3, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F440C  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 809F4410  28 00 00 00 */	cmplwi r0, 0
/* 809F4414  40 82 00 FC */	bne lbl_809F4510
/* 809F4418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F441C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F4420  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 809F4424  28 03 00 00 */	cmplwi r3, 0
/* 809F4428  41 82 00 30 */	beq lbl_809F4458
/* 809F442C  88 1E 09 ED */	lbz r0, 0x9ed(r30)
/* 809F4430  28 00 00 00 */	cmplwi r0, 0
/* 809F4434  41 82 00 DC */	beq lbl_809F4510
/* 809F4438  38 00 00 00 */	li r0, 0
/* 809F443C  28 03 00 00 */	cmplwi r3, 0
/* 809F4440  41 82 00 0C */	beq lbl_809F444C
/* 809F4444  28 03 00 02 */	cmplwi r3, 2
/* 809F4448  40 82 00 08 */	bne lbl_809F4450
lbl_809F444C:
/* 809F444C  38 00 00 01 */	li r0, 1
lbl_809F4450:
/* 809F4450  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809F4454  41 82 00 BC */	beq lbl_809F4510
lbl_809F4458:
/* 809F4458  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809F445C  28 00 00 00 */	cmplwi r0, 0
/* 809F4460  41 82 00 24 */	beq lbl_809F4484
/* 809F4464  38 7F 00 98 */	addi r3, r31, 0x98
/* 809F4468  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 809F446C  7C 63 02 14 */	add r3, r3, r0
/* 809F4470  80 03 00 04 */	lwz r0, 4(r3)
/* 809F4474  54 00 10 3A */	slwi r0, r0, 2
/* 809F4478  38 7F 01 74 */	addi r3, r31, 0x174
/* 809F447C  7C 03 00 2E */	lwzx r0, r3, r0
/* 809F4480  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_809F4484:
/* 809F4484  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809F4488  2C 00 00 0F */	cmpwi r0, 0xf
/* 809F448C  40 80 00 4C */	bge lbl_809F44D8
/* 809F4490  2C 00 00 09 */	cmpwi r0, 9
/* 809F4494  40 80 00 08 */	bge lbl_809F449C
/* 809F4498  48 00 00 40 */	b lbl_809F44D8
lbl_809F449C:
/* 809F449C  7F C3 F3 78 */	mr r3, r30
/* 809F44A0  88 9E 09 E9 */	lbz r4, 0x9e9(r30)
/* 809F44A4  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 809F44A8  38 BF 00 98 */	addi r5, r31, 0x98
/* 809F44AC  7C 05 00 2E */	lwzx r0, r5, r0
/* 809F44B0  54 00 10 3A */	slwi r0, r0, 2
/* 809F44B4  38 BF 01 10 */	addi r5, r31, 0x110
/* 809F44B8  7C A5 00 2E */	lwzx r5, r5, r0
/* 809F44BC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809F44C0  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809F44C4  38 E0 00 04 */	li r7, 4
/* 809F44C8  39 00 00 FF */	li r8, 0xff
/* 809F44CC  39 20 00 03 */	li r9, 3
/* 809F44D0  4B 75 F3 AD */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
/* 809F44D4  48 00 00 3C */	b lbl_809F4510
lbl_809F44D8:
/* 809F44D8  7F C3 F3 78 */	mr r3, r30
/* 809F44DC  88 9E 09 E9 */	lbz r4, 0x9e9(r30)
/* 809F44E0  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 809F44E4  38 BF 00 98 */	addi r5, r31, 0x98
/* 809F44E8  7C 05 00 2E */	lwzx r0, r5, r0
/* 809F44EC  54 00 10 3A */	slwi r0, r0, 2
/* 809F44F0  38 BF 01 10 */	addi r5, r31, 0x110
/* 809F44F4  7C A5 00 2E */	lwzx r5, r5, r0
/* 809F44F8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809F44FC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809F4500  38 E0 00 28 */	li r7, 0x28
/* 809F4504  39 00 00 FF */	li r8, 0xff
/* 809F4508  39 20 00 01 */	li r9, 1
/* 809F450C  4B 75 F3 71 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_809F4510:
/* 809F4510  88 1E 09 EE */	lbz r0, 0x9ee(r30)
/* 809F4514  28 00 00 00 */	cmplwi r0, 0
/* 809F4518  41 82 00 1C */	beq lbl_809F4534
/* 809F451C  3C 60 80 A0 */	lis r3, lit_4457@ha /* 0x809F8594@ha */
/* 809F4520  C0 03 85 94 */	lfs f0, lit_4457@l(r3)  /* 0x809F8594@l */
/* 809F4524  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 809F4528  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 809F452C  38 00 00 00 */	li r0, 0
/* 809F4530  98 1E 09 EE */	stb r0, 0x9ee(r30)
lbl_809F4534:
/* 809F4534  7F C3 F3 78 */	mr r3, r30
/* 809F4538  48 00 0C D5 */	bl playMotion__13daNpc_GWolf_cFv
/* 809F453C  38 60 00 01 */	li r3, 1
/* 809F4540  39 61 00 20 */	addi r11, r1, 0x20
/* 809F4544  4B 96 DC E5 */	bl _restgpr_29
/* 809F4548  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809F454C  7C 08 03 A6 */	mtlr r0
/* 809F4550  38 21 00 20 */	addi r1, r1, 0x20
/* 809F4554  4E 80 00 20 */	blr 
