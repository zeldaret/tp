lbl_80A944F0:
/* 80A944F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A944F4  7C 08 02 A6 */	mflr r0
/* 80A944F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A944FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A94500  7C 7F 1B 78 */	mr r31, r3
/* 80A94504  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A94508  28 00 00 00 */	cmplwi r0, 0
/* 80A9450C  40 82 00 D8 */	bne lbl_80A945E4
/* 80A94510  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80A94514  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80A94518  38 80 00 1F */	li r4, 0x1f
/* 80A9451C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A94520  28 00 00 00 */	cmplwi r0, 0
/* 80A94524  41 82 00 10 */	beq lbl_80A94534
/* 80A94528  38 60 00 00 */	li r3, 0
/* 80A9452C  38 80 00 00 */	li r4, 0
/* 80A94530  48 00 00 18 */	b lbl_80A94548
lbl_80A94534:
/* 80A94534  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A94538  2C 00 00 00 */	cmpwi r0, 0
/* 80A9453C  41 82 00 0C */	beq lbl_80A94548
/* 80A94540  38 60 00 00 */	li r3, 0
/* 80A94544  38 80 00 00 */	li r4, 0
lbl_80A94548:
/* 80A94548  38 00 00 79 */	li r0, 0x79
/* 80A9454C  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80A94550  90 7F 0E 6C */	stw r3, 0xe6c(r31)
/* 80A94554  90 9F 0E 5C */	stw r4, 0xe5c(r31)
/* 80A94558  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80A9455C  60 00 00 04 */	ori r0, r0, 4
/* 80A94560  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80A94564  3C 60 80 A9 */	lis r3, lit_4347@ha /* 0x80A96B0C@ha */
/* 80A94568  C0 03 6B 0C */	lfs f0, lit_4347@l(r3)  /* 0x80A96B0C@l */
/* 80A9456C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A94570  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A94574  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A94578  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A9457C  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80A94580  4B 7D AC 79 */	bl SetH__8cM3dGCylFf
/* 80A94584  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A94588  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80A9458C  4B 7D AC 75 */	bl SetR__8cM3dGCylFf
/* 80A94590  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A94594  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A94598  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80A9459C  4B 57 7E 41 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A945A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A945A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A945A8  38 81 00 08 */	addi r4, r1, 8
/* 80A945AC  7C 85 23 78 */	mr r5, r4
/* 80A945B0  4B 8B 27 BD */	bl PSMTXMultVec
/* 80A945B4  38 61 00 08 */	addi r3, r1, 8
/* 80A945B8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A945BC  7C 65 1B 78 */	mr r5, r3
/* 80A945C0  4B 8B 2A D1 */	bl PSVECAdd
/* 80A945C4  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A945C8  38 81 00 08 */	addi r4, r1, 8
/* 80A945CC  4B 7D AC 11 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80A945D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A945D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A945D8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A945DC  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80A945E0  4B 7D 05 C9 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80A945E4:
/* 80A945E4  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A945E8  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A945EC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A945F0  7D 89 03 A6 */	mtctr r12
/* 80A945F4  4E 80 04 21 */	bctrl 
/* 80A945F8  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A945FC  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A94600  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A94604  7D 89 03 A6 */	mtctr r12
/* 80A94608  4E 80 04 21 */	bctrl 
/* 80A9460C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A94610  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A94614  7C 08 03 A6 */	mtlr r0
/* 80A94618  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9461C  4E 80 00 20 */	blr 
