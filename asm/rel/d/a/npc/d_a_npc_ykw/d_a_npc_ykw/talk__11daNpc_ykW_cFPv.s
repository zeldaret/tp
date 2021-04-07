lbl_80B6640C:
/* 80B6640C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B66410  7C 08 02 A6 */	mflr r0
/* 80B66414  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B66418  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B6641C  7C 7F 1B 78 */	mr r31, r3
/* 80B66420  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B66424  2C 00 00 02 */	cmpwi r0, 2
/* 80B66428  41 82 00 A8 */	beq lbl_80B664D0
/* 80B6642C  40 80 03 30 */	bge lbl_80B6675C
/* 80B66430  2C 00 00 00 */	cmpwi r0, 0
/* 80B66434  40 80 00 0C */	bge lbl_80B66440
/* 80B66438  48 00 03 24 */	b lbl_80B6675C
/* 80B6643C  48 00 03 20 */	b lbl_80B6675C
lbl_80B66440:
/* 80B66440  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B66444  2C 00 00 00 */	cmpwi r0, 0
/* 80B66448  40 82 00 88 */	bne lbl_80B664D0
/* 80B6644C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B66450  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B66454  80 03 09 4C */	lwz r0, 0x94c(r3)
/* 80B66458  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80B6645C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80B66460  90 03 00 88 */	stw r0, 0x88(r3)
/* 80B66464  80 1F 0A 7C */	lwz r0, 0xa7c(r31)
/* 80B66468  2C 00 01 F5 */	cmpwi r0, 0x1f5
/* 80B6646C  40 82 00 4C */	bne lbl_80B664B8
/* 80B66470  38 60 00 A3 */	li r3, 0xa3
/* 80B66474  4B 5E 66 39 */	bl daNpcT_chkEvtBit__FUl
/* 80B66478  2C 03 00 00 */	cmpwi r3, 0
/* 80B6647C  40 82 00 3C */	bne lbl_80B664B8
/* 80B66480  38 60 00 A2 */	li r3, 0xa2
/* 80B66484  4B 5E 66 29 */	bl daNpcT_chkEvtBit__FUl
/* 80B66488  2C 03 00 00 */	cmpwi r3, 0
/* 80B6648C  40 82 00 24 */	bne lbl_80B664B0
/* 80B66490  38 60 00 5C */	li r3, 0x5c
/* 80B66494  4B 5E 66 19 */	bl daNpcT_chkEvtBit__FUl
/* 80B66498  2C 03 00 00 */	cmpwi r3, 0
/* 80B6649C  40 82 00 0C */	bne lbl_80B664A8
/* 80B664A0  38 60 00 0D */	li r3, 0xd
/* 80B664A4  4B 5E 66 89 */	bl daNpcT_offTmpBit__FUl
lbl_80B664A8:
/* 80B664A8  38 60 00 0B */	li r3, 0xb
/* 80B664AC  4B 5E 66 81 */	bl daNpcT_offTmpBit__FUl
lbl_80B664B0:
/* 80B664B0  38 60 00 0C */	li r3, 0xc
/* 80B664B4  4B 5E 66 79 */	bl daNpcT_offTmpBit__FUl
lbl_80B664B8:
/* 80B664B8  7F E3 FB 78 */	mr r3, r31
/* 80B664BC  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B664C0  38 A0 00 00 */	li r5, 0
/* 80B664C4  4B 5E 57 2D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B664C8  38 00 00 02 */	li r0, 2
/* 80B664CC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B664D0:
/* 80B664D0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B664D4  2C 00 00 00 */	cmpwi r0, 0
/* 80B664D8  40 82 02 84 */	bne lbl_80B6675C
/* 80B664DC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B664E0  28 00 00 00 */	cmplwi r0, 0
/* 80B664E4  40 82 00 2C */	bne lbl_80B66510
/* 80B664E8  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80B664EC  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B664F0  7C 03 00 00 */	cmpw r3, r0
/* 80B664F4  41 82 00 1C */	beq lbl_80B66510
/* 80B664F8  3C 60 80 B7 */	lis r3, lit_7918@ha /* 0x80B68B8C@ha */
/* 80B664FC  38 63 8B 8C */	addi r3, r3, lit_7918@l /* 0x80B68B8C@l */
/* 80B66500  38 9F 0F D8 */	addi r4, r31, 0xfd8
/* 80B66504  4B 7F BB 45 */	bl __ptmf_cmpr
/* 80B66508  2C 03 00 00 */	cmpwi r3, 0
/* 80B6650C  40 82 01 F0 */	bne lbl_80B666FC
lbl_80B66510:
/* 80B66510  7F E3 FB 78 */	mr r3, r31
/* 80B66514  38 80 00 00 */	li r4, 0
/* 80B66518  38 A0 00 00 */	li r5, 0
/* 80B6651C  38 C0 00 00 */	li r6, 0
/* 80B66520  38 E0 00 00 */	li r7, 0
/* 80B66524  4B 5E 57 55 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B66528  2C 03 00 00 */	cmpwi r3, 0
/* 80B6652C  41 82 01 4C */	beq lbl_80B66678
/* 80B66530  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B66534  38 81 00 08 */	addi r4, r1, 8
/* 80B66538  4B 6E 3F F1 */	bl getEventId__10dMsgFlow_cFPi
/* 80B6653C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80B66540  38 00 00 00 */	li r0, 0
/* 80B66544  98 1F 10 6C */	stb r0, 0x106c(r31)
/* 80B66548  2C 03 00 09 */	cmpwi r3, 9
/* 80B6654C  41 82 00 90 */	beq lbl_80B665DC
/* 80B66550  40 80 00 10 */	bge lbl_80B66560
/* 80B66554  2C 03 00 01 */	cmpwi r3, 1
/* 80B66558  41 82 00 14 */	beq lbl_80B6656C
/* 80B6655C  48 00 00 88 */	b lbl_80B665E4
lbl_80B66560:
/* 80B66560  2C 03 00 0D */	cmpwi r3, 0xd
/* 80B66564  41 82 00 64 */	beq lbl_80B665C8
/* 80B66568  48 00 00 7C */	b lbl_80B665E4
lbl_80B6656C:
/* 80B6656C  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80B66570  3C 03 00 01 */	addis r0, r3, 1
/* 80B66574  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B66578  40 82 00 28 */	bne lbl_80B665A0
/* 80B6657C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B66580  80 81 00 08 */	lwz r4, 8(r1)
/* 80B66584  38 A0 00 00 */	li r5, 0
/* 80B66588  38 C0 FF FF */	li r6, -1
/* 80B6658C  38 E0 FF FF */	li r7, -1
/* 80B66590  39 00 00 00 */	li r8, 0
/* 80B66594  39 20 00 00 */	li r9, 0
/* 80B66598  4B 4B 56 51 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80B6659C  90 7F 0D 90 */	stw r3, 0xd90(r31)
lbl_80B665A0:
/* 80B665A0  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80B665A4  4B 4B AD F9 */	bl fpcEx_IsExist__FUi
/* 80B665A8  2C 03 00 00 */	cmpwi r3, 0
/* 80B665AC  41 82 00 CC */	beq lbl_80B66678
/* 80B665B0  38 00 00 01 */	li r0, 1
/* 80B665B4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B665B8  98 1F 10 62 */	stb r0, 0x1062(r31)
/* 80B665BC  7F E3 FB 78 */	mr r3, r31
/* 80B665C0  4B 5E 3C 65 */	bl evtChange__8daNpcT_cFv
/* 80B665C4  48 00 00 B4 */	b lbl_80B66678
lbl_80B665C8:
/* 80B665C8  38 00 00 08 */	li r0, 8
/* 80B665CC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B665D0  7F E3 FB 78 */	mr r3, r31
/* 80B665D4  4B 5E 3C 51 */	bl evtChange__8daNpcT_cFv
/* 80B665D8  48 00 00 A0 */	b lbl_80B66678
lbl_80B665DC:
/* 80B665DC  38 00 00 01 */	li r0, 1
/* 80B665E0  98 1F 10 62 */	stb r0, 0x1062(r31)
lbl_80B665E4:
/* 80B665E4  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B665E8  28 00 00 01 */	cmplwi r0, 1
/* 80B665EC  40 82 00 8C */	bne lbl_80B66678
/* 80B665F0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B665F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B665F8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B665FC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B66600  4B 5D F0 E1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B66604  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B66608  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B6660C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B66610  4B 4D BE 59 */	bl reset__14dEvt_control_cFv
/* 80B66614  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B66618  28 00 00 02 */	cmplwi r0, 2
/* 80B6661C  40 82 00 54 */	bne lbl_80B66670
/* 80B66620  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B66624  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B66628  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B6662C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B66630  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B66634  40 82 00 3C */	bne lbl_80B66670
/* 80B66638  88 1F 10 67 */	lbz r0, 0x1067(r31)
/* 80B6663C  28 00 00 00 */	cmplwi r0, 0
/* 80B66640  41 82 00 1C */	beq lbl_80B6665C
/* 80B66644  38 00 00 01 */	li r0, 1
/* 80B66648  98 1F 10 63 */	stb r0, 0x1063(r31)
/* 80B6664C  98 1F 10 66 */	stb r0, 0x1066(r31)
/* 80B66650  38 00 00 00 */	li r0, 0
/* 80B66654  98 1F 10 67 */	stb r0, 0x1067(r31)
/* 80B66658  48 00 00 18 */	b lbl_80B66670
lbl_80B6665C:
/* 80B6665C  88 1F 10 66 */	lbz r0, 0x1066(r31)
/* 80B66660  28 00 00 02 */	cmplwi r0, 2
/* 80B66664  40 82 00 0C */	bne lbl_80B66670
/* 80B66668  38 00 00 03 */	li r0, 3
/* 80B6666C  98 1F 10 66 */	stb r0, 0x1066(r31)
lbl_80B66670:
/* 80B66670  38 00 00 03 */	li r0, 3
/* 80B66674  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B66678:
/* 80B66678  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6667C  2C 00 00 01 */	cmpwi r0, 1
/* 80B66680  41 82 00 2C */	beq lbl_80B666AC
/* 80B66684  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B66688  4B 5D F0 75 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B6668C  38 00 00 00 */	li r0, 0
/* 80B66690  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B66694  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B66698  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B6669C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B666A0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B666A4  38 00 00 01 */	li r0, 1
/* 80B666A8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B666AC:
/* 80B666AC  38 00 00 00 */	li r0, 0
/* 80B666B0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B666B4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B666B8  28 00 00 00 */	cmplwi r0, 0
/* 80B666BC  41 82 00 A0 */	beq lbl_80B6675C
/* 80B666C0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B666C4  2C 00 00 00 */	cmpwi r0, 0
/* 80B666C8  41 82 00 28 */	beq lbl_80B666F0
/* 80B666CC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B666D0  4B 5D F0 2D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B666D4  38 00 00 00 */	li r0, 0
/* 80B666D8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B666DC  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B666E0  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B666E4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B666E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B666EC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B666F0:
/* 80B666F0  38 00 00 00 */	li r0, 0
/* 80B666F4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B666F8  48 00 00 64 */	b lbl_80B6675C
lbl_80B666FC:
/* 80B666FC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B66700  2C 00 00 01 */	cmpwi r0, 1
/* 80B66704  41 82 00 2C */	beq lbl_80B66730
/* 80B66708  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6670C  4B 5D EF F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B66710  38 00 00 00 */	li r0, 0
/* 80B66714  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B66718  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B6671C  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B66720  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B66724  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B66728  38 00 00 01 */	li r0, 1
/* 80B6672C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B66730:
/* 80B66730  38 00 00 00 */	li r0, 0
/* 80B66734  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B66738  7F E3 FB 78 */	mr r3, r31
/* 80B6673C  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80B66740  38 A0 00 0D */	li r5, 0xd
/* 80B66744  38 C0 00 16 */	li r6, 0x16
/* 80B66748  3C E0 80 B6 */	lis r7, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B6674C  38 E7 7C 38 */	addi r7, r7, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B66750  A8 E7 00 B0 */	lha r7, 0xb0(r7)
/* 80B66754  39 00 00 00 */	li r8, 0
/* 80B66758  4B 5E 4E F1 */	bl step__8daNpcT_cFsiiii
lbl_80B6675C:
/* 80B6675C  38 60 00 00 */	li r3, 0
/* 80B66760  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B66764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B66768  7C 08 03 A6 */	mtlr r0
/* 80B6676C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B66770  4E 80 00 20 */	blr 
