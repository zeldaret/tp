lbl_809A46C4:
/* 809A46C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809A46C8  7C 08 02 A6 */	mflr r0
/* 809A46CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 809A46D0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 809A46D4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 809A46D8  7C 7E 1B 78 */	mr r30, r3
/* 809A46DC  80 63 15 D0 */	lwz r3, 0x15d0(r3)
/* 809A46E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809A46E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809A46E8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809A46EC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A46F0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A46F4  4B 9A 1D BD */	bl PSMTXCopy
/* 809A46F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809A46FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809A4700  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 809A4704  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809A4708  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 809A470C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809A4710  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 809A4714  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809A4718  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A471C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A4720  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 809A4724  38 80 00 00 */	li r4, 0
/* 809A4728  90 81 00 08 */	stw r4, 8(r1)
/* 809A472C  38 00 FF FF */	li r0, -1
/* 809A4730  90 01 00 0C */	stw r0, 0xc(r1)
/* 809A4734  90 81 00 10 */	stw r4, 0x10(r1)
/* 809A4738  90 81 00 14 */	stw r4, 0x14(r1)
/* 809A473C  90 81 00 18 */	stw r4, 0x18(r1)
/* 809A4740  38 80 00 00 */	li r4, 0
/* 809A4744  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085F0@ha */
/* 809A4748  38 A5 85 F0 */	addi r5, r5, 0x85F0 /* 0x000085F0@l */
/* 809A474C  38 C1 00 20 */	addi r6, r1, 0x20
/* 809A4750  38 E0 00 00 */	li r7, 0
/* 809A4754  39 1E 1D 6A */	addi r8, r30, 0x1d6a
/* 809A4758  39 20 00 00 */	li r9, 0
/* 809A475C  39 40 00 FF */	li r10, 0xff
/* 809A4760  3D 60 80 9A */	lis r11, lit_5111@ha /* 0x809A502C@ha */
/* 809A4764  C0 2B 50 2C */	lfs f1, lit_5111@l(r11)  /* 0x809A502C@l */
/* 809A4768  4B 6A 83 29 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 809A476C  90 7E 1B C8 */	stw r3, 0x1bc8(r30)
/* 809A4770  80 BE 1B C8 */	lwz r5, 0x1bc8(r30)
/* 809A4774  28 05 00 00 */	cmplwi r5, 0
/* 809A4778  41 82 00 4C */	beq lbl_809A47C4
/* 809A477C  80 7E 15 D0 */	lwz r3, 0x15d0(r30)
/* 809A4780  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809A4784  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809A4788  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809A478C  38 85 00 68 */	addi r4, r5, 0x68
/* 809A4790  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 809A4794  4B 8D C0 4D */	bl func_802807E0
/* 809A4798  38 00 00 00 */	li r0, 0
/* 809A479C  80 7E 1B C8 */	lwz r3, 0x1bc8(r30)
/* 809A47A0  98 03 00 BB */	stb r0, 0xbb(r3)
/* 809A47A4  3C 60 80 9A */	lis r3, lit_4121@ha /* 0x809A4F70@ha */
/* 809A47A8  C0 03 4F 70 */	lfs f0, lit_4121@l(r3)  /* 0x809A4F70@l */
/* 809A47AC  80 7E 1B C8 */	lwz r3, 0x1bc8(r30)
/* 809A47B0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 809A47B4  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 809A47B8  38 03 0E C8 */	addi r0, r3, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
/* 809A47BC  80 7E 1B C8 */	lwz r3, 0x1bc8(r30)
/* 809A47C0  90 03 00 F0 */	stw r0, 0xf0(r3)
lbl_809A47C4:
/* 809A47C4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 809A47C8  38 80 00 00 */	li r4, 0
/* 809A47CC  90 81 00 08 */	stw r4, 8(r1)
/* 809A47D0  38 00 FF FF */	li r0, -1
/* 809A47D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 809A47D8  90 81 00 10 */	stw r4, 0x10(r1)
/* 809A47DC  90 81 00 14 */	stw r4, 0x14(r1)
/* 809A47E0  90 81 00 18 */	stw r4, 0x18(r1)
/* 809A47E4  38 80 00 00 */	li r4, 0
/* 809A47E8  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085EF@ha */
/* 809A47EC  38 A5 85 EF */	addi r5, r5, 0x85EF /* 0x000085EF@l */
/* 809A47F0  38 C1 00 20 */	addi r6, r1, 0x20
/* 809A47F4  38 E0 00 00 */	li r7, 0
/* 809A47F8  39 1E 1D 6A */	addi r8, r30, 0x1d6a
/* 809A47FC  39 20 00 00 */	li r9, 0
/* 809A4800  39 40 00 FF */	li r10, 0xff
/* 809A4804  3D 60 80 9A */	lis r11, lit_5111@ha /* 0x809A502C@ha */
/* 809A4808  C0 2B 50 2C */	lfs f1, lit_5111@l(r11)  /* 0x809A502C@l */
/* 809A480C  4B 6A 82 85 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 809A4810  90 7E 1B CC */	stw r3, 0x1bcc(r30)
/* 809A4814  80 BE 1B CC */	lwz r5, 0x1bcc(r30)
/* 809A4818  28 05 00 00 */	cmplwi r5, 0
/* 809A481C  41 82 00 4C */	beq lbl_809A4868
/* 809A4820  80 7E 15 D0 */	lwz r3, 0x15d0(r30)
/* 809A4824  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809A4828  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809A482C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809A4830  38 85 00 68 */	addi r4, r5, 0x68
/* 809A4834  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 809A4838  4B 8D BF A9 */	bl func_802807E0
/* 809A483C  38 00 00 00 */	li r0, 0
/* 809A4840  80 7E 1B CC */	lwz r3, 0x1bcc(r30)
/* 809A4844  98 03 00 BB */	stb r0, 0xbb(r3)
/* 809A4848  3C 60 80 9A */	lis r3, lit_4121@ha /* 0x809A4F70@ha */
/* 809A484C  C0 03 4F 70 */	lfs f0, lit_4121@l(r3)  /* 0x809A4F70@l */
/* 809A4850  80 7E 1B CC */	lwz r3, 0x1bcc(r30)
/* 809A4854  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 809A4858  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 809A485C  38 03 0E C8 */	addi r0, r3, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
/* 809A4860  80 7E 1B CC */	lwz r3, 0x1bcc(r30)
/* 809A4864  90 03 00 F0 */	stw r0, 0xf0(r3)
lbl_809A4868:
/* 809A4868  38 60 00 08 */	li r3, 8
/* 809A486C  38 80 00 00 */	li r4, 0
/* 809A4870  38 00 00 08 */	li r0, 8
/* 809A4874  7C 09 03 A6 */	mtctr r0
lbl_809A4878:
/* 809A4878  38 03 1B C8 */	addi r0, r3, 0x1bc8
/* 809A487C  7C 9E 01 2E */	stwx r4, r30, r0
/* 809A4880  38 63 00 04 */	addi r3, r3, 4
/* 809A4884  42 00 FF F4 */	bdnz lbl_809A4878
/* 809A4888  38 00 00 00 */	li r0, 0
/* 809A488C  98 1E 1D C4 */	stb r0, 0x1dc4(r30)
/* 809A4890  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 809A4894  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 809A4898  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809A489C  7C 08 03 A6 */	mtlr r0
/* 809A48A0  38 21 00 40 */	addi r1, r1, 0x40
/* 809A48A4  4E 80 00 20 */	blr 
